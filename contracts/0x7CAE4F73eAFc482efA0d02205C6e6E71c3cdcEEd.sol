contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_fe8b9f01(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require ('cd', 68).length <= test266151307()
    mem[96] = ('cd', 68).length
    if not ('cd', 68).length:
        require ('cd', 36).length + 1 <= test266151307()
        mem[(32 * ('cd', 68).length) + 128] = ('cd', 36).length + 1
        mem[64] = (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 160
        if not ('cd', 36).length + 1:
            require 0 < ('cd', 36).length + 1
            mem[(32 * ('cd', 68).length) + 160] = eth.balance(cd[4])
            idx = 1
            while idx < ('cd', 36).length + 1:
                require idx - 1 < ('cd', 36).length
                require cd[((32 * idx - 1) + cd[36] + 36)] == address(cd[((32 * idx - 1) + cd[36] + 36)])
                mem[mem[64] + 4] = address(cd[4])
                require ext_code.size(address(cd[((32 * idx - 1) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx - 1) + cd[36] + 36)]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _129 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require idx < mem[(32 * ('cd', 68).length) + 128]
                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_129]
                idx = idx + 1
                continue 
            idx = 0
            while idx < ('cd', 68).length:
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _220 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _224 = mem[_220]
                require mem[_220] == mem[_220 + 18 len 14]
                require mem[_220 + 32] == mem[_220 + 50 len 14]
                require mem[_220 + 64] == mem[_220 + 92 len 4]
                require idx < mem[96]
                _259 = mem[(32 * idx) + 128]
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = mem[_220 + 50 len 14]
                mem[_259] = Mask(112, 0, _224)
                idx = idx + 1
                continue 
            _198 = mem[64]
            mem[mem[64]] = 64
            _200 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 96
            while idx < _200:
                _284 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_284 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            mem[_198 + 32] = (64 * _200) + 96
            _283 = mem[(32 * ('cd', 68).length) + 128]
            mem[_198 + (64 * _200) + 96] = mem[(32 * ('cd', 68).length) + 128]
            s = 0
            s = (32 * ('cd', 68).length) + 160
            t = _198 + (64 * _200) + 128
            while ('cd', 36).length + 1 < _283:
                mem[t] = mem[s]
                s = ('cd', 36).length + 2
                s = s + 32
                t = t + 32
                continue 
        else:
            mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 36).length + 1] = call.data[calldata.size len 32 * ('cd', 36).length + 1]
            require 0 < ('cd', 36).length + 1
            mem[(32 * ('cd', 68).length) + 160] = eth.balance(cd[4])
            idx = 1
            while idx < ('cd', 36).length + 1:
                require idx - 1 < ('cd', 36).length
                require cd[((32 * idx - 1) + cd[36] + 36)] == address(cd[((32 * idx - 1) + cd[36] + 36)])
                mem[mem[64] + 4] = address(cd[4])
                require ext_code.size(address(cd[((32 * idx - 1) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx - 1) + cd[36] + 36)]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _132 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require idx < mem[(32 * ('cd', 68).length) + 128]
                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_132]
                idx = idx + 1
                continue 
            idx = 0
            while idx < ('cd', 68).length:
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _222 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _225 = mem[_222]
                require mem[_222] == mem[_222 + 18 len 14]
                require mem[_222 + 32] == mem[_222 + 50 len 14]
                require mem[_222 + 64] == mem[_222 + 92 len 4]
                require idx < mem[96]
                _261 = mem[(32 * idx) + 128]
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = mem[_222 + 50 len 14]
                mem[_261] = Mask(112, 0, _225)
                idx = idx + 1
                continue 
            _199 = mem[64]
            mem[mem[64]] = 64
            _201 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 96
            while idx < _201:
                _288 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_288 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            mem[_199 + 32] = (64 * _201) + 96
            _287 = mem[(32 * ('cd', 68).length) + 128]
            mem[_199 + (64 * _201) + 96] = mem[(32 * ('cd', 68).length) + 128]
            s = 0
            s = (32 * ('cd', 68).length) + 160
            t = _199 + (64 * _201) + 128
            while ('cd', 36).length + 1 < _287:
                mem[t] = mem[s]
                s = ('cd', 36).length + 2
                s = s + 32
                t = t + 32
                continue 
    else:
        mem[64] = (32 * ('cd', 68).length) + 192
        mem[(32 * ('cd', 68).length) + 128] = 0
        mem[(32 * ('cd', 68).length) + 160] = 0
        mem[var26001] = (32 * ('cd', 68).length) + 128
        s = var26001
        idx = var26002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * ('cd', 68).length) + 128] = 0
            mem[(32 * ('cd', 68).length) + 160] = 0
            mem[s + 32] = (32 * ('cd', 68).length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        require ('cd', 36).length + 1 <= test266151307()
        _202 = mem[64]
        mem[mem[64]] = ('cd', 36).length + 1
        mem[64] = mem[64] + (32 * ('cd', 36).length + 1) + 32
        if not ('cd', 36).length + 1:
            require 0 < mem[_202]
            mem[_202 + 32] = eth.balance(cd[4])
            idx = 1
            while idx < ('cd', 36).length + 1:
                require idx - 1 < ('cd', 36).length
                require cd[((32 * idx - 1) + cd[36] + 36)] == address(cd[((32 * idx - 1) + cd[36] + 36)])
                mem[mem[64] + 4] = address(cd[4])
                require ext_code.size(address(cd[((32 * idx - 1) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx - 1) + cd[36] + 36)]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _319 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require idx < mem[_202]
                mem[(32 * idx) + _202 + 32] = mem[_319]
                idx = idx + 1
                continue 
            idx = 0
            while idx < ('cd', 68).length:
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _364 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _367 = mem[_364]
                require mem[_364] == mem[_364 + 18 len 14]
                require mem[_364 + 32] == mem[_364 + 50 len 14]
                require mem[_364 + 64] == mem[_364 + 92 len 4]
                require idx < mem[96]
                _375 = mem[(32 * idx) + 128]
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = mem[_364 + 50 len 14]
                mem[_375] = Mask(112, 0, _367)
                idx = idx + 1
                continue 
            _345 = mem[64]
            mem[mem[64]] = 64
            _347 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 96
            while idx < _347:
                _382 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_382 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            mem[_345 + 32] = (64 * _347) + 96
            _381 = mem[_202]
            mem[_345 + (64 * _347) + 96] = mem[_202]
            s = 0
            s = _202 + 32
            t = _345 + (64 * _347) + 128
            while ('cd', 36).length + 1 < _381:
                mem[t] = mem[s]
                s = ('cd', 36).length + 2
                s = s + 32
                t = t + 32
                continue 
        else:
            mem[_202 + 32 len 32 * ('cd', 36).length + 1] = call.data[calldata.size len 32 * ('cd', 36).length + 1]
            require 0 < mem[_202]
            mem[_202 + 32] = eth.balance(cd[4])
            idx = 1
            while idx < ('cd', 36).length + 1:
                require idx - 1 < ('cd', 36).length
                require cd[((32 * idx - 1) + cd[36] + 36)] == address(cd[((32 * idx - 1) + cd[36] + 36)])
                mem[mem[64] + 4] = address(cd[4])
                require ext_code.size(address(cd[((32 * idx - 1) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx - 1) + cd[36] + 36)]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(cd[4])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _322 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require idx < mem[_202]
                mem[(32 * idx) + _202 + 32] = mem[_322]
                idx = idx + 1
                continue 
            idx = 0
            while idx < ('cd', 68).length:
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _366 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _368 = mem[_366]
                require mem[_366] == mem[_366 + 18 len 14]
                require mem[_366 + 32] == mem[_366 + 50 len 14]
                require mem[_366 + 64] == mem[_366 + 92 len 4]
                require idx < mem[96]
                _377 = mem[(32 * idx) + 128]
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = mem[_366 + 50 len 14]
                mem[_377] = Mask(112, 0, _368)
                idx = idx + 1
                continue 
            _346 = mem[64]
            mem[mem[64]] = 64
            _348 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 96
            while idx < _348:
                _386 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_386 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            mem[_346 + 32] = (64 * _348) + 96
            _385 = mem[_202]
            mem[_346 + (64 * _348) + 96] = mem[_202]
            s = 0
            s = _202 + 32
            t = _346 + (64 * _348) + 128
            while ('cd', 36).length + 1 < _385:
                mem[t] = mem[s]
                s = ('cd', 36).length + 2
                s = s + 32
                t = t + 32
                continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
