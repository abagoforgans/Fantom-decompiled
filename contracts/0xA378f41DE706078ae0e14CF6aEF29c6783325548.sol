contract main {




// =====================  Runtime code  =====================


#
#  - sub_c0c0d184(?)
#  - sub_e9cfcc2e(?)
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
            _877 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_877] == mem[_877 + 18 len 14]
            require mem[_877 + 32] == mem[_877 + 50 len 14]
            require mem[_877 + 64] == mem[_877 + 92 len 4]
            require idx < mem[(32 * arg1.length) + 128]
            if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                    if idx < mem[96]:
                        if mem[_877 + 50 len 14] <= 0:
                            revert with 0, 's'
                        if mem[_877 + 18 len 14] <= 0:
                            revert with 0, 's'
                        if not Mask(256, -160, mem[(32 * idx) + 128]):
                            if not mem[_877 + 18 len 14]:
                                if 1000 * mem[_877 + 50 len 14] / 1000 != mem[_877 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * mem[_877 + 50 len 14] < 1000 * mem[_877 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if 1000 * mem[_877 + 50 len 14]:
                                    if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * mem[_877 + 50 len 14]
                                        if idx < mem[(32 * arg1.length) + 128]:
                                            idx = idx + 1
                                            s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                            continue 
                            else:
                                if mem[_877 + 18 len 14]:
                                    if 0 / mem[_877 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * mem[_877 + 50 len 14] / 1000 != mem[_877 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * mem[_877 + 50 len 14] < 1000 * mem[_877 + 50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if 1000 * mem[_877 + 50 len 14]:
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * mem[_877 + 50 len 14]
                                            if idx < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                continue 
                        else:
                            if Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / Mask(96, 0, mem[(32 * idx) + 128]) >> 160 != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_877 + 18 len 14]:
                                    if 1000 * mem[_877 + 50 len 14] / 1000 != mem[_877 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (1000 * mem[_877 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 1000 * mem[_877 + 50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (1000 * mem[_877 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / (1000 * mem[_877 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                            if idx < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                continue 
                                else:
                                    if mem[_877 + 18 len 14]:
                                        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_877 + 18 len 14] / mem[_877 + 18 len 14] != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * mem[_877 + 50 len 14] / 1000 != mem[_877 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (1000 * mem[_877 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 1000 * mem[_877 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (1000 * mem[_877 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                            if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_877 + 18 len 14] / (1000 * mem[_877 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                                if idx < mem[(32 * arg1.length) + 128]:
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                    continue 
            else:
                if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                    if idx < mem[96]:
                        if mem[_877 + 18 len 14] <= 0:
                            revert with 0, 's'
                        if mem[_877 + 50 len 14] <= 0:
                            revert with 0, 's'
                        if not Mask(256, -160, mem[(32 * idx) + 128]):
                            if not mem[_877 + 50 len 14]:
                                if 1000 * mem[_877 + 18 len 14] / 1000 != mem[_877 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * mem[_877 + 18 len 14] < 1000 * mem[_877 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if 1000 * mem[_877 + 18 len 14]:
                                    if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * mem[_877 + 18 len 14]
                                        if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                            idx = idx + 1
                                            s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                            continue 
                            else:
                                if mem[_877 + 50 len 14]:
                                    if 0 / mem[_877 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * mem[_877 + 18 len 14] / 1000 != mem[_877 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * mem[_877 + 18 len 14] < 1000 * mem[_877 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if 1000 * mem[_877 + 18 len 14]:
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * mem[_877 + 18 len 14]
                                            if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                                continue 
                        else:
                            if Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / Mask(96, 0, mem[(32 * idx) + 128]) >> 160 != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_877 + 50 len 14]:
                                    if 1000 * mem[_877 + 18 len 14] / 1000 != mem[_877 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (1000 * mem[_877 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 1000 * mem[_877 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (1000 * mem[_877 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / (1000 * mem[_877 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                            if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                                continue 
                                else:
                                    if mem[_877 + 50 len 14]:
                                        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_877 + 50 len 14] / mem[_877 + 50 len 14] != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * mem[_877 + 18 len 14] / 1000 != mem[_877 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (1000 * mem[_877 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 1000 * mem[_877 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (1000 * mem[_877 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                            if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_877 + 50 len 14] / (1000 * mem[_877 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                                if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                                    idx = idx + 1
                                                    s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                                    continue 
            revert
        require arg1.length - 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        if mem[(32 * arg1.length - 1) + (32 * arg1.length) + (32 * arg2.length) + 192] > 0:
            require arg1.length - 1 < mem[96]
            idx = 0
            s = mem[(32 * arg1.length - 1) + 140 len 20]
            while idx < arg1.length - 1:
                require idx < mem[96]
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                _1140 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 36] = _1140
                require ext_code.size(address(s))
                call address(s).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _1140
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1146 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1146] == bool(mem[_1146])
                require idx < mem[(32 * arg1.length) + 128]
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                    if idx < mem[96]:
                        _1158 = mem[(32 * idx) + 128]
                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                            _1166 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            _1170 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1170 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1170 + 36] = _1166
                            mem[_1170 + 68] = 0
                            mem[_1170 + 100] = this.address
                            mem[_1170 + 132] = 128
                            mem[_1170 + 164] = mem[_1170]
                            s = 0
                            while s < mem[_1170]:
                                mem[_1170 + s + 196] = mem[_1170 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1170]) > mem[_1170]:
                                mem[_1170 + mem[_1170] + 196] = 0
                            require ext_code.size(address(_1158))
                            call address(_1158).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _1166, 0, address(this.address), 128, mem[_1170], mem[_1170 + 196 len ceil32(mem[_1170])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx < mem[(32 * arg1.length) + 128]:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                continue 
                else:
                    if idx < mem[96]:
                        _1160 = mem[(32 * idx) + 128]
                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                            _1167 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            _1171 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1171 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1171 + 36] = 0
                            mem[_1171 + 68] = _1167
                            mem[_1171 + 100] = this.address
                            mem[_1171 + 132] = 128
                            mem[_1171 + 164] = mem[_1171]
                            s = 0
                            while s < mem[_1171]:
                                mem[_1171 + s + 196] = mem[_1171 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1171]) > mem[_1171]:
                                mem[_1171 + mem[_1171] + 196] = 0
                            require ext_code.size(address(_1160))
                            call address(_1160).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _1167, address(this.address), 128, mem[_1171], mem[_1171 + 196 len ceil32(mem[_1171])]
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
            _879 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_879] == mem[_879 + 18 len 14]
            require mem[_879 + 32] == mem[_879 + 50 len 14]
            require mem[_879 + 64] == mem[_879 + 92 len 4]
            require idx < mem[(32 * arg1.length) + 128]
            if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                    if idx < mem[96]:
                        if mem[_879 + 50 len 14] <= 0:
                            revert with 0, 's'
                        if mem[_879 + 18 len 14] <= 0:
                            revert with 0, 's'
                        if not Mask(256, -160, mem[(32 * idx) + 128]):
                            if not mem[_879 + 18 len 14]:
                                if 1000 * mem[_879 + 50 len 14] / 1000 != mem[_879 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * mem[_879 + 50 len 14] < 1000 * mem[_879 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if 1000 * mem[_879 + 50 len 14]:
                                    if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * mem[_879 + 50 len 14]
                                        if idx < mem[(32 * arg1.length) + 128]:
                                            idx = idx + 1
                                            s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                            continue 
                            else:
                                if mem[_879 + 18 len 14]:
                                    if 0 / mem[_879 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * mem[_879 + 50 len 14] / 1000 != mem[_879 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * mem[_879 + 50 len 14] < 1000 * mem[_879 + 50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if 1000 * mem[_879 + 50 len 14]:
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * mem[_879 + 50 len 14]
                                            if idx < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                continue 
                        else:
                            if Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / Mask(96, 0, mem[(32 * idx) + 128]) >> 160 != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_879 + 18 len 14]:
                                    if 1000 * mem[_879 + 50 len 14] / 1000 != mem[_879 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (1000 * mem[_879 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 1000 * mem[_879 + 50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (1000 * mem[_879 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / (1000 * mem[_879 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                            if idx < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                continue 
                                else:
                                    if mem[_879 + 18 len 14]:
                                        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_879 + 18 len 14] / mem[_879 + 18 len 14] != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * mem[_879 + 50 len 14] / 1000 != mem[_879 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (1000 * mem[_879 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 1000 * mem[_879 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (1000 * mem[_879 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                            if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_879 + 18 len 14] / (1000 * mem[_879 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                                if idx < mem[(32 * arg1.length) + 128]:
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                    continue 
            else:
                if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                    if idx < mem[96]:
                        if mem[_879 + 18 len 14] <= 0:
                            revert with 0, 's'
                        if mem[_879 + 50 len 14] <= 0:
                            revert with 0, 's'
                        if not Mask(256, -160, mem[(32 * idx) + 128]):
                            if not mem[_879 + 50 len 14]:
                                if 1000 * mem[_879 + 18 len 14] / 1000 != mem[_879 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * mem[_879 + 18 len 14] < 1000 * mem[_879 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if 1000 * mem[_879 + 18 len 14]:
                                    if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * mem[_879 + 18 len 14]
                                        if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                            idx = idx + 1
                                            s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                            continue 
                            else:
                                if mem[_879 + 50 len 14]:
                                    if 0 / mem[_879 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * mem[_879 + 18 len 14] / 1000 != mem[_879 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * mem[_879 + 18 len 14] < 1000 * mem[_879 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if 1000 * mem[_879 + 18 len 14]:
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * mem[_879 + 18 len 14]
                                            if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                                continue 
                        else:
                            if Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / Mask(96, 0, mem[(32 * idx) + 128]) >> 160 != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_879 + 50 len 14]:
                                    if 1000 * mem[_879 + 18 len 14] / 1000 != mem[_879 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (1000 * mem[_879 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 1000 * mem[_879 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (1000 * mem[_879 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / (1000 * mem[_879 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                            if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                                continue 
                                else:
                                    if mem[_879 + 50 len 14]:
                                        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_879 + 50 len 14] / mem[_879 + 50 len 14] != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * mem[_879 + 18 len 14] / 1000 != mem[_879 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (1000 * mem[_879 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 1000 * mem[_879 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (1000 * mem[_879 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                            if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_879 + 50 len 14] / (1000 * mem[_879 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                                if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                                    idx = idx + 1
                                                    s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                                    continue 
            revert
        require arg1.length - 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        if mem[(32 * arg1.length - 1) + (32 * arg1.length) + (32 * arg2.length) + 192] > 0:
            require arg1.length - 1 < mem[96]
            idx = 0
            s = mem[(32 * arg1.length - 1) + 140 len 20]
            while idx < arg1.length - 1:
                require idx < mem[96]
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                _1142 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 36] = _1142
                require ext_code.size(address(s))
                call address(s).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _1142
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1147 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1147] == bool(mem[_1147])
                require idx < mem[(32 * arg1.length) + 128]
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                    if idx < mem[96]:
                        _1162 = mem[(32 * idx) + 128]
                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                            _1168 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            _1172 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1172 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1172 + 36] = _1168
                            mem[_1172 + 68] = 0
                            mem[_1172 + 100] = this.address
                            mem[_1172 + 132] = 128
                            mem[_1172 + 164] = mem[_1172]
                            s = 0
                            while s < mem[_1172]:
                                mem[_1172 + s + 196] = mem[_1172 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1172]) > mem[_1172]:
                                mem[_1172 + mem[_1172] + 196] = 0
                            require ext_code.size(address(_1162))
                            call address(_1162).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _1168, 0, address(this.address), 128, mem[_1172], mem[_1172 + 196 len ceil32(mem[_1172])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx < mem[(32 * arg1.length) + 128]:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                continue 
                else:
                    if idx < mem[96]:
                        _1164 = mem[(32 * idx) + 128]
                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                            _1169 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            _1173 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1173 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1173 + 36] = 0
                            mem[_1173 + 68] = _1169
                            mem[_1173 + 100] = this.address
                            mem[_1173 + 132] = 128
                            mem[_1173 + 164] = mem[_1173]
                            s = 0
                            while s < mem[_1173]:
                                mem[_1173 + s + 196] = mem[_1173 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1173]) > mem[_1173]:
                                mem[_1173 + mem[_1173] + 196] = 0
                            require ext_code.size(address(_1164))
                            call address(_1164).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _1169, address(this.address), 128, mem[_1173], mem[_1173 + 196 len ceil32(mem[_1173])]
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
