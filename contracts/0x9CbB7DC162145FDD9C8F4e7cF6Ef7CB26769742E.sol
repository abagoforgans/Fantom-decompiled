contract main {




// =====================  Runtime code  =====================


#
#  - sub_c0c0d184(?)
#
address stor0;

function _fallback() payable {
    revert
}

function bk_eth(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'caller is not the owner'
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function bk(uint256 arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor0 != msg.sender:
        revert with 0, 'caller is not the owner'
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function approve(address[] arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[64] = (32 * arg1.length) + 128
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
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _22 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = arg2
        mem[mem[64] + 36] = -1
        require ext_code.size(address(_22))
        call address(_22).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg2), -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _25 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_25] == bool(mem[_25])
        idx = idx + 1
        continue 
}

function getReserves(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
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
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + 128] = arg1.length
    mem[64] = (64 * arg1.length) + 160
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _95 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_95] == mem[_95 + 18 len 14]
            _109 = mem[_95 + 32]
            require mem[_95 + 32] == mem[_95 + 50 len 14]
            _113 = mem[_95 + 64]
            require mem[_95 + 64] == mem[_95 + 92 len 4]
            require idx < mem[(32 * arg1.length) + 128]
            mem[mem[(32 * idx) + (32 * arg1.length) + 160]] = mem[_95 + 18 len 14]
            require idx < mem[(32 * arg1.length) + 128]
            mem[mem[(32 * idx) + (32 * arg1.length) + 160] + 32] = Mask(112, 0, _109)
            require idx < mem[(32 * arg1.length) + 128]
            mem[mem[(32 * idx) + (32 * arg1.length) + 160] + 64] = uint32(_113)
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _96 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
        idx = 0
        s = (32 * arg1.length) + 160
        t = mem[64] + 64
        while idx < _96:
            u = 0
            v = mem[s]
            w = t
            while u < 3:
                mem[w] = mem[v + 18 len 14]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
    else:
        mem[64] = (64 * arg1.length) + 256
        mem[(64 * arg1.length) + 160 len 96] = call.data[calldata.size len 96]
        mem[var28001] = (64 * arg1.length) + 160
        s = var28001
        idx = var28002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(64 * arg1.length) + 160 len 96] = call.data[calldata.size len 96]
            mem[s + 32] = (64 * arg1.length) + 160
            s = s + 32
            idx = idx - 1
            continue 
        _151 = mem[96]
        idx = 0
        while idx < _151:
            require idx < mem[96]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _159 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_159] == mem[_159 + 18 len 14]
            _165 = mem[_159 + 32]
            require mem[_159 + 32] == mem[_159 + 50 len 14]
            _166 = mem[_159 + 64]
            require mem[_159 + 64] == mem[_159 + 92 len 4]
            require idx < mem[(32 * arg1.length) + 128]
            mem[mem[(32 * idx) + (32 * arg1.length) + 160]] = mem[_159 + 18 len 14]
            require idx < mem[(32 * arg1.length) + 128]
            mem[mem[(32 * idx) + (32 * arg1.length) + 160] + 32] = Mask(112, 0, _165)
            require idx < mem[(32 * arg1.length) + 128]
            mem[mem[(32 * idx) + (32 * arg1.length) + 160] + 64] = uint32(_166)
            _151 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _160 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
        idx = 0
        s = (32 * arg1.length) + 160
        t = mem[64] + 64
        while idx < _160:
            u = 0
            v = mem[s]
            w = t
            while u < 3:
                mem[w] = mem[v + 18 len 14]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_cbb828f1(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307() and (32 * ('cd', 36).length) + 160 >= 128
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 <= test266151307() and (32 * ('cd', 68).length) + 192 >= 160
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
    while idx < ('cd', 68).length:
        require cd[68] + cd[s] + 67 < calldata.size
        require cd[(cd[68] + cd[s] + 36)] <= test266151307()
        _265 = mem[64]
        require mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32
        mem[_265] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + (32 * cd[(cd[68] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[68] + cd[s] + 68
        w = _265 + 32
        while u < cd[(cd[68] + cd[s] + 36)]:
            require cd[v] == ('signextend', 15, ('cd', ('var', 4)))
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _265
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _262 = mem[96]
    require mem[96] <= test266151307()
    _263 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _262) + 32
    if not _262:
        _347 = mem[96]
        idx = 0
        while idx < _347:
            require idx < mem[96]
            require idx < mem[96]
            if mem[(32 * idx) + 140 len 20] != 0x92d5ebf3593a92888c25c0abef126583d4b5312e:
                _359 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                require 0 < mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]]
                require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                require 1 < mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]]
                _393 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 64]
                require idx < mem[(32 * ('cd', 4).length) + 128]
                _401 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                mem[mem[64] + 4] = ('signextend', 15, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 192, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('cd', 4)))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('cd', 36))))), 32))), 32)))
                mem[mem[64] + 36] = ('signextend', 15, ('var', '_393'))
                mem[mem[64] + 68] = _401
                require ext_code.size(address(_359))
                staticcall address(_359).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], ('signextend', 15, ('var', '_393')), _401
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _417 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_417] == mem[_417]
                require idx < mem[_263]
                mem[(32 * idx) + _263 + 32] = mem[_417]
            else:
                _361 = mem[(32 * idx) + 128]
                require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                require 0 < mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]]
                require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                require 1 < mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]]
                _395 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 64]
                require idx < mem[(32 * ('cd', 4).length) + 128]
                _403 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                mem[mem[64] + 4] = ('signextend', 15, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 192, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('cd', 4)))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('cd', 36))))), 32))), 32)))
                mem[mem[64] + 36] = ('signextend', 15, ('var', '_395'))
                mem[mem[64] + 68] = _403
                require ext_code.size(address(_361))
                staticcall address(_361).get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], ('signextend', 15, ('var', '_395')), _403
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _418 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_418] == mem[_418]
                require idx < mem[_263]
                mem[(32 * idx) + _263 + 32] = mem[_418]
            _347 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _367 = mem[_263]
        mem[mem[64] + 32] = mem[_263]
        mem[mem[64] + 64 len 32 * _367] = mem[_263 + 32 len 32 * _367]
        return 32, mem[mem[64] + 32 len (32 * _367) + 32]
    mem[_263 + 32 len 32 * _262] = call.data[calldata.size len 32 * _262]
    _348 = mem[96]
    idx = 0
    while idx < _348:
        require idx < mem[96]
        require idx < mem[96]
        if mem[(32 * idx) + 140 len 20] != 0x92d5ebf3593a92888c25c0abef126583d4b5312e:
            _363 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            require 0 < mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            require 1 < mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]]
            _397 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 64]
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _405 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            mem[mem[64] + 4] = ('signextend', 15, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 192, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('cd', 4)))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('cd', 36))))), 32))), 32)))
            mem[mem[64] + 36] = ('signextend', 15, ('var', '_397'))
            mem[mem[64] + 68] = _405
            require ext_code.size(address(_363))
            staticcall address(_363).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], ('signextend', 15, ('var', '_397')), _405
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _419 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_419] == mem[_419]
            require idx < mem[_263]
            mem[(32 * idx) + _263 + 32] = mem[_419]
        else:
            _365 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            require 0 < mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            require 1 < mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]]
            _399 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 64]
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _407 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            mem[mem[64] + 4] = ('signextend', 15, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 192, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('cd', 4)))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('cd', 36))))), 32))), 32)))
            mem[mem[64] + 36] = ('signextend', 15, ('var', '_399'))
            mem[mem[64] + 68] = _407
            require ext_code.size(address(_365))
            staticcall address(_365).get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], ('signextend', 15, ('var', '_399')), _407
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _420 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_420] == mem[_420]
            require idx < mem[_263]
            mem[(32 * idx) + _263 + 32] = mem[_420]
        _348 = mem[96]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _372 = mem[_263]
    mem[mem[64] + 32] = mem[_263]
    mem[mem[64] + 64 len 32 * _372] = mem[_263 + 32 len 32 * _372]
    return 32, mem[mem[64] + 32 len (32 * _372) + 32]
}

function ps(uint256[] arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg1.length) + (32 * arg2.length) + 160 <= test266151307() and (32 * arg2.length) + 160 >= 128
    mem[(32 * arg1.length) + 128] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor0 != msg.sender:
        revert with 0, 'caller is not the owner'
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length
    mem[64] = (64 * arg1.length) + (32 * arg2.length) + 192
    if not arg1.length:
        require arg1.length - 1 < arg1.length
        require arg1.length - 1 < arg1.length
        require 0 < arg1.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 192] = Mask(96, 0, mem[(32 * arg1.length - 1) + 128]) >> 160
        idx = 0
        s = mem[(32 * arg1.length - 1) + 140 len 20]
        while idx < arg1.length - 1:
            require idx < mem[96]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _860 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_860] == mem[_860 + 18 len 14]
            require mem[_860 + 32] == mem[_860 + 50 len 14]
            require mem[_860 + 64] == mem[_860 + 92 len 4]
            require idx < mem[(32 * arg1.length) + 128]
            if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                    if idx < mem[96]:
                        if mem[_860 + 50 len 14] <= 0:
                            revert with 0, 's'
                        if mem[_860 + 18 len 14] <= 0:
                            revert with 0, 's'
                        if not Mask(256, -160, mem[(32 * idx) + 128]):
                            if not mem[_860 + 18 len 14]:
                                if 1000 * mem[_860 + 50 len 14] / 1000 != mem[_860 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * mem[_860 + 50 len 14] < 1000 * mem[_860 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if 1000 * mem[_860 + 50 len 14]:
                                    if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * mem[_860 + 50 len 14]
                                        if idx < mem[(32 * arg1.length) + 128]:
                                            idx = idx + 1
                                            s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                            continue 
                            else:
                                if mem[_860 + 18 len 14]:
                                    if 0 / mem[_860 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * mem[_860 + 50 len 14] / 1000 != mem[_860 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * mem[_860 + 50 len 14] < 1000 * mem[_860 + 50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if 1000 * mem[_860 + 50 len 14]:
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * mem[_860 + 50 len 14]
                                            if idx < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                continue 
                        else:
                            if Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / Mask(96, 0, mem[(32 * idx) + 128]) >> 160 != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_860 + 18 len 14]:
                                    if 1000 * mem[_860 + 50 len 14] / 1000 != mem[_860 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (1000 * mem[_860 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 1000 * mem[_860 + 50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (1000 * mem[_860 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / (1000 * mem[_860 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                            if idx < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                continue 
                                else:
                                    if mem[_860 + 18 len 14]:
                                        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_860 + 18 len 14] / mem[_860 + 18 len 14] != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * mem[_860 + 50 len 14] / 1000 != mem[_860 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (1000 * mem[_860 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 1000 * mem[_860 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (1000 * mem[_860 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                            if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_860 + 18 len 14] / (1000 * mem[_860 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                                if idx < mem[(32 * arg1.length) + 128]:
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                    continue 
            else:
                if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                    if idx < mem[96]:
                        if mem[_860 + 18 len 14] <= 0:
                            revert with 0, 's'
                        if mem[_860 + 50 len 14] <= 0:
                            revert with 0, 's'
                        if not Mask(256, -160, mem[(32 * idx) + 128]):
                            if not mem[_860 + 50 len 14]:
                                if 1000 * mem[_860 + 18 len 14] / 1000 != mem[_860 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * mem[_860 + 18 len 14] < 1000 * mem[_860 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if 1000 * mem[_860 + 18 len 14]:
                                    if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * mem[_860 + 18 len 14]
                                        if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                            idx = idx + 1
                                            s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                            continue 
                            else:
                                if mem[_860 + 50 len 14]:
                                    if 0 / mem[_860 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * mem[_860 + 18 len 14] / 1000 != mem[_860 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * mem[_860 + 18 len 14] < 1000 * mem[_860 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if 1000 * mem[_860 + 18 len 14]:
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * mem[_860 + 18 len 14]
                                            if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                                continue 
                        else:
                            if Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / Mask(96, 0, mem[(32 * idx) + 128]) >> 160 != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_860 + 50 len 14]:
                                    if 1000 * mem[_860 + 18 len 14] / 1000 != mem[_860 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (1000 * mem[_860 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 1000 * mem[_860 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (1000 * mem[_860 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / (1000 * mem[_860 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                            if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                                continue 
                                else:
                                    if mem[_860 + 50 len 14]:
                                        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_860 + 50 len 14] / mem[_860 + 50 len 14] != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * mem[_860 + 18 len 14] / 1000 != mem[_860 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (1000 * mem[_860 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 1000 * mem[_860 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (1000 * mem[_860 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                            if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_860 + 50 len 14] / (1000 * mem[_860 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                                if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                                    idx = idx + 1
                                                    s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                                    continue 
            revert
        require arg1.length - 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        if mem[(32 * arg1.length - 1) + (32 * arg1.length) + (32 * arg2.length) + 192] > 0:
            require arg1.length - 1 < mem[96]
            _858 = mem[(32 * arg1.length - 1) + 128]
            require arg1.length - 1 < mem[96]
            mem[(32 * arg1.length - 1) + 128] = this.address
            idx = 0
            s = address(_858)
            while idx < arg1.length - 1:
                require idx < mem[(32 * arg1.length) + 128]
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                    if idx < mem[96]:
                        _1118 = mem[(32 * idx) + 128]
                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                            _1126 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            if idx + 1 < mem[96]:
                                _1134 = mem[(32 * idx + 1) + 128]
                                _1138 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1138 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1138 + 36] = _1126
                                mem[_1138 + 68] = 0
                                mem[_1138 + 100] = address(_1134)
                                mem[_1138 + 132] = 128
                                mem[_1138 + 164] = mem[_1138]
                                s = 0
                                while s < mem[_1138]:
                                    mem[_1138 + s + 196] = mem[_1138 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1138]) > mem[_1138]:
                                    mem[_1138 + mem[_1138] + 196] = 0
                                require ext_code.size(address(_1118))
                                call address(_1118).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _1126, 0, address(_1134), 128, mem[_1138], mem[_1138 + 196 len ceil32(mem[_1138])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx < mem[(32 * arg1.length) + 128]:
                                    idx = idx + 1
                                    s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    continue 
                else:
                    if idx < mem[96]:
                        _1120 = mem[(32 * idx) + 128]
                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                            _1128 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            if idx + 1 < mem[96]:
                                _1135 = mem[(32 * idx + 1) + 128]
                                _1139 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1139 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1139 + 36] = 0
                                mem[_1139 + 68] = _1128
                                mem[_1139 + 100] = address(_1135)
                                mem[_1139 + 132] = 128
                                mem[_1139 + 164] = mem[_1139]
                                s = 0
                                while s < mem[_1139]:
                                    mem[_1139 + s + 196] = mem[_1139 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1139]) > mem[_1139]:
                                    mem[_1139 + mem[_1139] + 196] = 0
                                require ext_code.size(address(_1120))
                                call address(_1120).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _1128, address(_1135), 128, mem[_1139], mem[_1139 + 196 len ceil32(mem[_1139])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                    idx = idx + 1
                                    s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                    continue 
                revert
    else:
        mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        require arg1.length - 1 < arg1.length
        require arg1.length - 1 < arg1.length
        require 0 < arg1.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 192] = Mask(96, 0, mem[(32 * arg1.length - 1) + 128]) >> 160
        idx = 0
        s = mem[(32 * arg1.length - 1) + 140 len 20]
        while idx < arg1.length - 1:
            require idx < mem[96]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _863 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_863] == mem[_863 + 18 len 14]
            require mem[_863 + 32] == mem[_863 + 50 len 14]
            require mem[_863 + 64] == mem[_863 + 92 len 4]
            require idx < mem[(32 * arg1.length) + 128]
            if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                    if idx < mem[96]:
                        if mem[_863 + 50 len 14] <= 0:
                            revert with 0, 's'
                        if mem[_863 + 18 len 14] <= 0:
                            revert with 0, 's'
                        if not Mask(256, -160, mem[(32 * idx) + 128]):
                            if not mem[_863 + 18 len 14]:
                                if 1000 * mem[_863 + 50 len 14] / 1000 != mem[_863 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * mem[_863 + 50 len 14] < 1000 * mem[_863 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if 1000 * mem[_863 + 50 len 14]:
                                    if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * mem[_863 + 50 len 14]
                                        if idx < mem[(32 * arg1.length) + 128]:
                                            idx = idx + 1
                                            s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                            continue 
                            else:
                                if mem[_863 + 18 len 14]:
                                    if 0 / mem[_863 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * mem[_863 + 50 len 14] / 1000 != mem[_863 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * mem[_863 + 50 len 14] < 1000 * mem[_863 + 50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if 1000 * mem[_863 + 50 len 14]:
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * mem[_863 + 50 len 14]
                                            if idx < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                continue 
                        else:
                            if Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / Mask(96, 0, mem[(32 * idx) + 128]) >> 160 != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_863 + 18 len 14]:
                                    if 1000 * mem[_863 + 50 len 14] / 1000 != mem[_863 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (1000 * mem[_863 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 1000 * mem[_863 + 50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (1000 * mem[_863 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / (1000 * mem[_863 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                            if idx < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                continue 
                                else:
                                    if mem[_863 + 18 len 14]:
                                        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_863 + 18 len 14] / mem[_863 + 18 len 14] != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * mem[_863 + 50 len 14] / 1000 != mem[_863 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (1000 * mem[_863 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 1000 * mem[_863 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (1000 * mem[_863 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                            if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_863 + 18 len 14] / (1000 * mem[_863 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                                if idx < mem[(32 * arg1.length) + 128]:
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                    continue 
            else:
                if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                    if idx < mem[96]:
                        if mem[_863 + 18 len 14] <= 0:
                            revert with 0, 's'
                        if mem[_863 + 50 len 14] <= 0:
                            revert with 0, 's'
                        if not Mask(256, -160, mem[(32 * idx) + 128]):
                            if not mem[_863 + 50 len 14]:
                                if 1000 * mem[_863 + 18 len 14] / 1000 != mem[_863 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * mem[_863 + 18 len 14] < 1000 * mem[_863 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if 1000 * mem[_863 + 18 len 14]:
                                    if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * mem[_863 + 18 len 14]
                                        if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                            idx = idx + 1
                                            s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                            continue 
                            else:
                                if mem[_863 + 50 len 14]:
                                    if 0 / mem[_863 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * mem[_863 + 18 len 14] / 1000 != mem[_863 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * mem[_863 + 18 len 14] < 1000 * mem[_863 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if 1000 * mem[_863 + 18 len 14]:
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * mem[_863 + 18 len 14]
                                            if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                                continue 
                        else:
                            if Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / Mask(96, 0, mem[(32 * idx) + 128]) >> 160 != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_863 + 50 len 14]:
                                    if 1000 * mem[_863 + 18 len 14] / 1000 != mem[_863 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (1000 * mem[_863 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 1000 * mem[_863 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (1000 * mem[_863 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / (1000 * mem[_863 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                            if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                                continue 
                                else:
                                    if mem[_863 + 50 len 14]:
                                        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_863 + 50 len 14] / mem[_863 + 50 len 14] != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * mem[_863 + 18 len 14] / 1000 != mem[_863 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (1000 * mem[_863 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 1000 * mem[_863 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (1000 * mem[_863 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                            if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_863 + 50 len 14] / (1000 * mem[_863 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                                if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                                    idx = idx + 1
                                                    s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                                    continue 
            revert
        require arg1.length - 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        if mem[(32 * arg1.length - 1) + (32 * arg1.length) + (32 * arg2.length) + 192] > 0:
            require arg1.length - 1 < mem[96]
            _861 = mem[(32 * arg1.length - 1) + 128]
            require arg1.length - 1 < mem[96]
            mem[(32 * arg1.length - 1) + 128] = this.address
            idx = 0
            s = address(_861)
            while idx < arg1.length - 1:
                require idx < mem[(32 * arg1.length) + 128]
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                    if idx < mem[96]:
                        _1122 = mem[(32 * idx) + 128]
                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                            _1130 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            if idx + 1 < mem[96]:
                                _1136 = mem[(32 * idx + 1) + 128]
                                _1140 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1140 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1140 + 36] = _1130
                                mem[_1140 + 68] = 0
                                mem[_1140 + 100] = address(_1136)
                                mem[_1140 + 132] = 128
                                mem[_1140 + 164] = mem[_1140]
                                s = 0
                                while s < mem[_1140]:
                                    mem[_1140 + s + 196] = mem[_1140 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1140]) > mem[_1140]:
                                    mem[_1140 + mem[_1140] + 196] = 0
                                require ext_code.size(address(_1122))
                                call address(_1122).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _1130, 0, address(_1136), 128, mem[_1140], mem[_1140 + 196 len ceil32(mem[_1140])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx < mem[(32 * arg1.length) + 128]:
                                    idx = idx + 1
                                    s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    continue 
                else:
                    if idx < mem[96]:
                        _1124 = mem[(32 * idx) + 128]
                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                            _1132 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            if idx + 1 < mem[96]:
                                _1137 = mem[(32 * idx + 1) + 128]
                                _1141 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1141 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1141 + 36] = 0
                                mem[_1141 + 68] = _1132
                                mem[_1141 + 100] = address(_1137)
                                mem[_1141 + 132] = 128
                                mem[_1141 + 164] = mem[_1141]
                                s = 0
                                while s < mem[_1141]:
                                    mem[_1141 + s + 196] = mem[_1141 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1141]) > mem[_1141]:
                                    mem[_1141 + mem[_1141] + 196] = 0
                                require ext_code.size(address(_1124))
                                call address(_1124).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _1132, address(_1137), 128, mem[_1141], mem[_1141 + 196 len ceil32(mem[_1141])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                    idx = idx + 1
                                    s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                    continue 
                revert
}

function pl(uint256[] arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg1.length) + (32 * arg2.length) + 160 <= test266151307() and (32 * arg2.length) + 160 >= 128
    mem[(32 * arg1.length) + 128] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length
    mem[64] = (64 * arg1.length) + (32 * arg2.length) + 192
    if not arg1.length:
        require arg1.length - 1 < arg1.length
        require arg1.length - 1 < arg1.length
        require 0 < arg1.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 192] = Mask(96, 0, mem[(32 * arg1.length - 1) + 128]) >> 160
        idx = 0
        s = mem[(32 * arg1.length - 1) + 140 len 20]
        while idx < arg1.length - 1:
            require idx < mem[96]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _885 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_885] == mem[_885 + 18 len 14]
            require mem[_885 + 32] == mem[_885 + 50 len 14]
            require mem[_885 + 64] == mem[_885 + 92 len 4]
            require idx < mem[(32 * arg1.length) + 128]
            if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                    if idx < mem[96]:
                        if mem[_885 + 50 len 14] <= 0:
                            revert with 0, 's'
                        if mem[_885 + 18 len 14] <= 0:
                            revert with 0, 's'
                        if not Mask(256, -160, mem[(32 * idx) + 128]):
                            if not mem[_885 + 18 len 14]:
                                if 1000 * mem[_885 + 50 len 14] / 1000 != mem[_885 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * mem[_885 + 50 len 14] < 1000 * mem[_885 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if 1000 * mem[_885 + 50 len 14]:
                                    if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * mem[_885 + 50 len 14]
                                        if idx < mem[(32 * arg1.length) + 128]:
                                            idx = idx + 1
                                            s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                            continue 
                            else:
                                if mem[_885 + 18 len 14]:
                                    if 0 / mem[_885 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * mem[_885 + 50 len 14] / 1000 != mem[_885 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * mem[_885 + 50 len 14] < 1000 * mem[_885 + 50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if 1000 * mem[_885 + 50 len 14]:
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * mem[_885 + 50 len 14]
                                            if idx < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                continue 
                        else:
                            if Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / Mask(96, 0, mem[(32 * idx) + 128]) >> 160 != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_885 + 18 len 14]:
                                    if 1000 * mem[_885 + 50 len 14] / 1000 != mem[_885 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (1000 * mem[_885 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 1000 * mem[_885 + 50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (1000 * mem[_885 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / (1000 * mem[_885 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                            if idx < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                continue 
                                else:
                                    if mem[_885 + 18 len 14]:
                                        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_885 + 18 len 14] / mem[_885 + 18 len 14] != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * mem[_885 + 50 len 14] / 1000 != mem[_885 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (1000 * mem[_885 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 1000 * mem[_885 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (1000 * mem[_885 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                            if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_885 + 18 len 14] / (1000 * mem[_885 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                                if idx < mem[(32 * arg1.length) + 128]:
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                    continue 
            else:
                if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                    if idx < mem[96]:
                        if mem[_885 + 18 len 14] <= 0:
                            revert with 0, 's'
                        if mem[_885 + 50 len 14] <= 0:
                            revert with 0, 's'
                        if not Mask(256, -160, mem[(32 * idx) + 128]):
                            if not mem[_885 + 50 len 14]:
                                if 1000 * mem[_885 + 18 len 14] / 1000 != mem[_885 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * mem[_885 + 18 len 14] < 1000 * mem[_885 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if 1000 * mem[_885 + 18 len 14]:
                                    if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * mem[_885 + 18 len 14]
                                        if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                            idx = idx + 1
                                            s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                            continue 
                            else:
                                if mem[_885 + 50 len 14]:
                                    if 0 / mem[_885 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * mem[_885 + 18 len 14] / 1000 != mem[_885 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * mem[_885 + 18 len 14] < 1000 * mem[_885 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if 1000 * mem[_885 + 18 len 14]:
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * mem[_885 + 18 len 14]
                                            if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                                continue 
                        else:
                            if Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / Mask(96, 0, mem[(32 * idx) + 128]) >> 160 != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_885 + 50 len 14]:
                                    if 1000 * mem[_885 + 18 len 14] / 1000 != mem[_885 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (1000 * mem[_885 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 1000 * mem[_885 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (1000 * mem[_885 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / (1000 * mem[_885 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                            if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                                continue 
                                else:
                                    if mem[_885 + 50 len 14]:
                                        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_885 + 50 len 14] / mem[_885 + 50 len 14] != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * mem[_885 + 18 len 14] / 1000 != mem[_885 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (1000 * mem[_885 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 1000 * mem[_885 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (1000 * mem[_885 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                            if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_885 + 50 len 14] / (1000 * mem[_885 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                                if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                                    idx = idx + 1
                                                    s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                                    continue 
            revert
        require 0 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        require arg1.length - 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        if mem[(32 * arg1.length - 1) + (32 * arg1.length) + (32 * arg2.length) + 192] > mem[(32 * arg1.length) + (32 * arg2.length) + 192]:
            require arg1.length - 1 < mem[96]
            idx = 0
            s = mem[(32 * arg1.length - 1) + 140 len 20]
            while idx < arg1.length - 1:
                require idx < mem[96]
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                _1150 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 36] = _1150
                require ext_code.size(address(s))
                call address(s).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _1150
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1156 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1156] == bool(mem[_1156])
                require idx < mem[(32 * arg1.length) + 128]
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                    if idx < mem[96]:
                        _1168 = mem[(32 * idx) + 128]
                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                            _1176 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            _1180 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1180 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1180 + 36] = _1176
                            mem[_1180 + 68] = 0
                            mem[_1180 + 100] = this.address
                            mem[_1180 + 132] = 128
                            mem[_1180 + 164] = mem[_1180]
                            s = 0
                            while s < mem[_1180]:
                                mem[_1180 + s + 196] = mem[_1180 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1180]) > mem[_1180]:
                                mem[_1180 + mem[_1180] + 196] = 0
                            require ext_code.size(address(_1168))
                            call address(_1168).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _1176, 0, address(this.address), 128, mem[_1180], mem[_1180 + 196 len ceil32(mem[_1180])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx < mem[(32 * arg1.length) + 128]:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                continue 
                else:
                    if idx < mem[96]:
                        _1170 = mem[(32 * idx) + 128]
                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                            _1177 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            _1181 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1181 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1181 + 36] = 0
                            mem[_1181 + 68] = _1177
                            mem[_1181 + 100] = this.address
                            mem[_1181 + 132] = 128
                            mem[_1181 + 164] = mem[_1181]
                            s = 0
                            while s < mem[_1181]:
                                mem[_1181 + s + 196] = mem[_1181 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1181]) > mem[_1181]:
                                mem[_1181 + mem[_1181] + 196] = 0
                            require ext_code.size(address(_1170))
                            call address(_1170).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _1177, address(this.address), 128, mem[_1181], mem[_1181 + 196 len ceil32(mem[_1181])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                idx = idx + 1
                                s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                continue 
                revert
    else:
        mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        require arg1.length - 1 < arg1.length
        require arg1.length - 1 < arg1.length
        require 0 < arg1.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 192] = Mask(96, 0, mem[(32 * arg1.length - 1) + 128]) >> 160
        idx = 0
        s = mem[(32 * arg1.length - 1) + 140 len 20]
        while idx < arg1.length - 1:
            require idx < mem[96]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _887 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_887] == mem[_887 + 18 len 14]
            require mem[_887 + 32] == mem[_887 + 50 len 14]
            require mem[_887 + 64] == mem[_887 + 92 len 4]
            require idx < mem[(32 * arg1.length) + 128]
            if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                    if idx < mem[96]:
                        if mem[_887 + 50 len 14] <= 0:
                            revert with 0, 's'
                        if mem[_887 + 18 len 14] <= 0:
                            revert with 0, 's'
                        if not Mask(256, -160, mem[(32 * idx) + 128]):
                            if not mem[_887 + 18 len 14]:
                                if 1000 * mem[_887 + 50 len 14] / 1000 != mem[_887 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * mem[_887 + 50 len 14] < 1000 * mem[_887 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if 1000 * mem[_887 + 50 len 14]:
                                    if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * mem[_887 + 50 len 14]
                                        if idx < mem[(32 * arg1.length) + 128]:
                                            idx = idx + 1
                                            s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                            continue 
                            else:
                                if mem[_887 + 18 len 14]:
                                    if 0 / mem[_887 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * mem[_887 + 50 len 14] / 1000 != mem[_887 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * mem[_887 + 50 len 14] < 1000 * mem[_887 + 50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if 1000 * mem[_887 + 50 len 14]:
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * mem[_887 + 50 len 14]
                                            if idx < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                continue 
                        else:
                            if Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / Mask(96, 0, mem[(32 * idx) + 128]) >> 160 != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_887 + 18 len 14]:
                                    if 1000 * mem[_887 + 50 len 14] / 1000 != mem[_887 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (1000 * mem[_887 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 1000 * mem[_887 + 50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (1000 * mem[_887 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / (1000 * mem[_887 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                            if idx < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                continue 
                                else:
                                    if mem[_887 + 18 len 14]:
                                        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_887 + 18 len 14] / mem[_887 + 18 len 14] != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * mem[_887 + 50 len 14] / 1000 != mem[_887 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (1000 * mem[_887 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 1000 * mem[_887 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (1000 * mem[_887 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                            if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_887 + 18 len 14] / (1000 * mem[_887 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                                if idx < mem[(32 * arg1.length) + 128]:
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                    continue 
            else:
                if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                    if idx < mem[96]:
                        if mem[_887 + 18 len 14] <= 0:
                            revert with 0, 's'
                        if mem[_887 + 50 len 14] <= 0:
                            revert with 0, 's'
                        if not Mask(256, -160, mem[(32 * idx) + 128]):
                            if not mem[_887 + 50 len 14]:
                                if 1000 * mem[_887 + 18 len 14] / 1000 != mem[_887 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * mem[_887 + 18 len 14] < 1000 * mem[_887 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if 1000 * mem[_887 + 18 len 14]:
                                    if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * mem[_887 + 18 len 14]
                                        if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                            idx = idx + 1
                                            s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                            continue 
                            else:
                                if mem[_887 + 50 len 14]:
                                    if 0 / mem[_887 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * mem[_887 + 18 len 14] / 1000 != mem[_887 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * mem[_887 + 18 len 14] < 1000 * mem[_887 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if 1000 * mem[_887 + 18 len 14]:
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * mem[_887 + 18 len 14]
                                            if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                                continue 
                        else:
                            if Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / Mask(96, 0, mem[(32 * idx) + 128]) >> 160 != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_887 + 50 len 14]:
                                    if 1000 * mem[_887 + 18 len 14] / 1000 != mem[_887 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (1000 * mem[_887 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 1000 * mem[_887 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (1000 * mem[_887 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / (1000 * mem[_887 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                            if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                                continue 
                                else:
                                    if mem[_887 + 50 len 14]:
                                        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_887 + 50 len 14] / mem[_887 + 50 len 14] != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * mem[_887 + 18 len 14] / 1000 != mem[_887 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (1000 * mem[_887 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 1000 * mem[_887 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (1000 * mem[_887 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                            if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_887 + 50 len 14] / (1000 * mem[_887 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                                if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                                    idx = idx + 1
                                                    s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                                    continue 
            revert
        require 0 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        require arg1.length - 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        if mem[(32 * arg1.length - 1) + (32 * arg1.length) + (32 * arg2.length) + 192] > mem[(32 * arg1.length) + (32 * arg2.length) + 192]:
            require arg1.length - 1 < mem[96]
            idx = 0
            s = mem[(32 * arg1.length - 1) + 140 len 20]
            while idx < arg1.length - 1:
                require idx < mem[96]
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                _1152 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 36] = _1152
                require ext_code.size(address(s))
                call address(s).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _1152
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1157 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1157] == bool(mem[_1157])
                require idx < mem[(32 * arg1.length) + 128]
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                    if idx < mem[96]:
                        _1172 = mem[(32 * idx) + 128]
                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                            _1178 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            _1182 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1182 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1182 + 36] = _1178
                            mem[_1182 + 68] = 0
                            mem[_1182 + 100] = this.address
                            mem[_1182 + 132] = 128
                            mem[_1182 + 164] = mem[_1182]
                            s = 0
                            while s < mem[_1182]:
                                mem[_1182 + s + 196] = mem[_1182 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1182]) > mem[_1182]:
                                mem[_1182 + mem[_1182] + 196] = 0
                            require ext_code.size(address(_1172))
                            call address(_1172).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _1178, 0, address(this.address), 128, mem[_1182], mem[_1182 + 196 len ceil32(mem[_1182])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx < mem[(32 * arg1.length) + 128]:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                continue 
                else:
                    if idx < mem[96]:
                        _1174 = mem[(32 * idx) + 128]
                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                            _1179 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            _1183 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1183 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1183 + 36] = 0
                            mem[_1183 + 68] = _1179
                            mem[_1183 + 100] = this.address
                            mem[_1183 + 132] = 128
                            mem[_1183 + 164] = mem[_1183]
                            s = 0
                            while s < mem[_1183]:
                                mem[_1183 + s + 196] = mem[_1183 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1183]) > mem[_1183]:
                                mem[_1183 + mem[_1183] + 196] = 0
                            require ext_code.size(address(_1174))
                            call address(_1174).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _1179, address(this.address), 128, mem[_1183], mem[_1183 + 196 len ceil32(mem[_1183])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                idx = idx + 1
                                s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                continue 
                revert
}



}
