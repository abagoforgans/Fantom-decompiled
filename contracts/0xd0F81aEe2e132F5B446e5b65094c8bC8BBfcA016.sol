contract main {




// =====================  Runtime code  =====================


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

function sub_3772b434(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + 36)] <= test266151307()
        _10 = mem[64]
        require mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32
        mem[_10] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + (32 * cd[(cd[4] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[4] + cd[s] + 68
        w = _10 + 32
        while u < cd[(cd[4] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _10
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    _11 = mem[64]
    require mem[64] + (32 * ('cd', 36).length) + 32 <= test266151307() and mem[64] + (32 * ('cd', 36).length) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
    mem[_11] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = _11 + 32
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == cd[68]
    require cd[68] < mem[96]
    _19 = mem[(32 * cd[68]) + 128]
    _20 = mem[64]
    mem[mem[64]] = 32
    _21 = mem[_19]
    mem[mem[64] + 32] = mem[_19]
    idx = 0
    s = _19 + 32
    t = mem[64] + 64
    while idx < _21:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _20 + (32 * _21) + -mem[64] + 64
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

function sub_5b55d141(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + 36)] <= test266151307()
        _36 = mem[64]
        require mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32
        mem[_36] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + (32 * cd[(cd[4] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[4] + cd[s] + 68
        w = _36 + 32
        while u < cd[(cd[4] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _36
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    _37 = mem[64]
    require mem[64] + (32 * ('cd', 36).length) + 32 <= test266151307() and mem[64] + (32 * ('cd', 36).length) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
    mem[_37] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = _37 + 32
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == cd[68]
    if stor0 != msg.sender:
        revert with 0, 'caller is not the owner'
    require 0 < ('cd', 36).length
    _72 = mem[_37 + 32]
    require 0 < mem[96]
    _74 = mem[128]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[68]
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _77 = mem[_74]
    mem[mem[64] + 164] = mem[_74]
    idx = 0
    s = _74 + 32
    t = mem[64] + 196
    while idx < _77:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 5
    require ext_code.size(address(_72))
    call address(_72).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args cd[68], 0, 160, address(this.address), block.timestamp + 5, mem[mem[64] + 164 len (32 * _77) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _104 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _105 = mem[_104]
    require mem[_104] <= test266151307()
    require _104 + mem[_104] + 31 < _104 + return_data.size
    _106 = mem[_104 + mem[_104]]
    require mem[_104 + mem[_104]] <= test266151307()
    require _104 + ceil32(return_data.size) + (32 * mem[_104 + mem[_104]]) + 32 <= test266151307() and (32 * mem[_104 + mem[_104]]) + 32 >= 0
    mem[64] = _104 + ceil32(return_data.size) + (32 * mem[_104 + mem[_104]]) + 32
    mem[_104 + ceil32(return_data.size)] = _106
    require _105 + (32 * _106) + 32 <= return_data.size
    idx = 0
    s = _104 + _105 + 32
    t = _104 + ceil32(return_data.size) + 32
    while idx < _106:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _144 = mem[_37]
    idx = 1
    s = _104 + ceil32(return_data.size)
    while idx < _144:
        require idx < mem[_37]
        _146 = mem[(32 * idx) + _37 + 32]
        require mem[s] - 1 < mem[s]
        _149 = mem[(32 * mem[s] - 1) + s + 32]
        require idx < mem[96]
        _151 = mem[(32 * idx) + 128]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _149
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _153 = mem[_151]
        mem[mem[64] + 164] = mem[_151]
        s = 0
        t = _151 + 32
        u = mem[64] + 196
        while s < _153:
            mem[u] = mem[t + 12 len 20]
            _144 = mem[_37]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 5
        require ext_code.size(address(_146))
        call address(_146).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args _149, 0, 160, address(this.address), block.timestamp + 5, mem[mem[64] + 164 len (32 * _153) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _163 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _164 = mem[_163]
        require mem[_163] <= test266151307()
        require _163 + mem[_163] + 31 < _163 + return_data.size
        _165 = mem[_163 + mem[_163]]
        require mem[_163 + mem[_163]] <= test266151307()
        require _163 + ceil32(return_data.size) + (32 * mem[_163 + mem[_163]]) + 32 <= test266151307() and (32 * mem[_163 + mem[_163]]) + 32 >= 0
        mem[64] = _163 + ceil32(return_data.size) + (32 * mem[_163 + mem[_163]]) + 32
        mem[_163 + ceil32(return_data.size)] = _165
        require _164 + (32 * _165) + 32 <= return_data.size
        s = 0
        t = _163 + _164 + 32
        u = _163 + ceil32(return_data.size) + 32
        while s < _165:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            _144 = mem[_37]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        _144 = mem[_37]
        idx = idx + 1
        s = _163 + ceil32(return_data.size)
        continue 
}

function sub_06d0dd38(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + 36)] <= test266151307()
        _39 = mem[64]
        require mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32
        mem[_39] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + (32 * cd[(cd[4] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[4] + cd[s] + 68
        w = _39 + 32
        while u < cd[(cd[4] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _39
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    _40 = mem[64]
    require mem[64] + (32 * ('cd', 36).length) + 32 <= test266151307() and mem[64] + (32 * ('cd', 36).length) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
    mem[_40] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = _40 + 32
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == cd[68]
    require 0 < ('cd', 36).length
    _77 = mem[_40 + 32]
    require 0 < mem[96]
    _79 = mem[128]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[68]
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _81 = mem[_79]
    mem[mem[64] + 164] = mem[_79]
    idx = 0
    s = _79 + 32
    t = mem[64] + 196
    while idx < _81:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 5
    require ext_code.size(address(_77))
    call address(_77).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args cd[68], 0, 160, address(this.address), block.timestamp + 5, mem[mem[64] + 164 len (32 * _81) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _113 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _114 = mem[_113]
    require mem[_113] <= test266151307()
    require _113 + mem[_113] + 31 < _113 + return_data.size
    _115 = mem[_113 + mem[_113]]
    require mem[_113 + mem[_113]] <= test266151307()
    require _113 + ceil32(return_data.size) + (32 * mem[_113 + mem[_113]]) + 32 <= test266151307() and (32 * mem[_113 + mem[_113]]) + 32 >= 0
    mem[64] = _113 + ceil32(return_data.size) + (32 * mem[_113 + mem[_113]]) + 32
    mem[_113 + ceil32(return_data.size)] = _115
    require _114 + (32 * _115) + 32 <= return_data.size
    idx = 0
    s = _113 + _114 + 32
    t = _113 + ceil32(return_data.size) + 32
    while idx < _115:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _163 = mem[_40]
    idx = 1
    s = _113 + ceil32(return_data.size)
    while idx < _163:
        require idx < mem[_40]
        _168 = mem[(32 * idx) + _40 + 32]
        require mem[s] - 1 < mem[s]
        _172 = mem[(32 * mem[s] - 1) + s + 32]
        require idx < mem[96]
        _174 = mem[(32 * idx) + 128]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _172
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _177 = mem[_174]
        mem[mem[64] + 164] = mem[_174]
        s = 0
        t = _174 + 32
        u = mem[64] + 196
        while s < _177:
            mem[u] = mem[t + 12 len 20]
            _163 = mem[_40]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 5
        require ext_code.size(address(_168))
        call address(_168).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args _172, 0, 160, address(this.address), block.timestamp + 5, mem[mem[64] + 164 len (32 * _177) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _187 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _188 = mem[_187]
        require mem[_187] <= test266151307()
        require _187 + mem[_187] + 31 < _187 + return_data.size
        _189 = mem[_187 + mem[_187]]
        require mem[_187 + mem[_187]] <= test266151307()
        require _187 + ceil32(return_data.size) + (32 * mem[_187 + mem[_187]]) + 32 <= test266151307() and (32 * mem[_187 + mem[_187]]) + 32 >= 0
        mem[64] = _187 + ceil32(return_data.size) + (32 * mem[_187 + mem[_187]]) + 32
        mem[_187 + ceil32(return_data.size)] = _189
        require _188 + (32 * _189) + 32 <= return_data.size
        s = 0
        t = _187 + _188 + 32
        u = _187 + ceil32(return_data.size) + 32
        while s < _189:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            _163 = mem[_40]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        _163 = mem[_40]
        idx = idx + 1
        s = _187 + ceil32(return_data.size)
        continue 
    require mem[s] - 1 < mem[s]
    if mem[(32 * mem[s] - 1) + s + 32] <= cd[68]:
        revert with 0, 'n'
}

function sub_47c71c21(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + 36)] <= test266151307()
        _73 = mem[64]
        require mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32
        mem[_73] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + (32 * cd[(cd[4] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[4] + cd[s] + 68
        w = _73 + 32
        while u < cd[(cd[4] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _73
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    _74 = mem[64]
    require mem[64] + (32 * ('cd', 36).length) + 32 <= test266151307() and mem[64] + (32 * ('cd', 36).length) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
    mem[_74] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = _74 + 32
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == cd[68]
    require 0 < ('cd', 36).length
    _146 = mem[_74 + 32]
    require 0 < mem[96]
    _148 = mem[128]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[68]
    mem[mem[64] + 36] = 64
    _150 = mem[_148]
    mem[mem[64] + 68] = mem[_148]
    idx = 0
    s = _148 + 32
    t = mem[64] + 100
    while idx < _150:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(_146))
    staticcall address(_146).getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args cd[68], 64, mem[mem[64] + 68 len (32 * _150) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _217 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _218 = mem[_217]
    require mem[_217] <= test266151307()
    require _217 + mem[_217] + 31 < _217 + return_data.size
    _219 = mem[_217 + mem[_217]]
    require mem[_217 + mem[_217]] <= test266151307()
    require _217 + ceil32(return_data.size) + (32 * mem[_217 + mem[_217]]) + 32 <= test266151307() and (32 * mem[_217 + mem[_217]]) + 32 >= 0
    mem[64] = _217 + ceil32(return_data.size) + (32 * mem[_217 + mem[_217]]) + 32
    mem[_217 + ceil32(return_data.size)] = _219
    require _218 + (32 * _219) + 32 <= return_data.size
    idx = 0
    s = _217 + _218 + 32
    t = _217 + ceil32(return_data.size) + 32
    while idx < _219:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _337 = mem[_74]
    idx = 1
    s = _217 + ceil32(return_data.size)
    while idx < _337:
        require idx < mem[_74]
        _342 = mem[(32 * idx) + _74 + 32]
        require mem[s] - 1 < mem[s]
        _347 = mem[(32 * mem[s] - 1) + s + 32]
        require idx < mem[96]
        _351 = mem[(32 * idx) + 128]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _347
        mem[mem[64] + 36] = 64
        _356 = mem[_351]
        mem[mem[64] + 68] = mem[_351]
        s = 0
        t = _351 + 32
        u = mem[64] + 100
        while s < _356:
            mem[u] = mem[t + 12 len 20]
            _337 = mem[_74]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(_342))
        staticcall address(_342).getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args _347, 64, mem[mem[64] + 68 len (32 * _356) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _397 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _398 = mem[_397]
        require mem[_397] <= test266151307()
        require _397 + mem[_397] + 31 < _397 + return_data.size
        _399 = mem[_397 + mem[_397]]
        require mem[_397 + mem[_397]] <= test266151307()
        require _397 + ceil32(return_data.size) + (32 * mem[_397 + mem[_397]]) + 32 <= test266151307() and (32 * mem[_397 + mem[_397]]) + 32 >= 0
        mem[64] = _397 + ceil32(return_data.size) + (32 * mem[_397 + mem[_397]]) + 32
        mem[_397 + ceil32(return_data.size)] = _399
        require _398 + (32 * _399) + 32 <= return_data.size
        s = 0
        t = _397 + _398 + 32
        u = _397 + ceil32(return_data.size) + 32
        while s < _399:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            _337 = mem[_74]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        _337 = mem[_74]
        idx = idx + 1
        s = _397 + ceil32(return_data.size)
        continue 
    require mem[s] - 1 < mem[s]
    if mem[(32 * mem[s] - 1) + s + 32] <= cd[68]:
        revert with 0, 'n'
    require 0 < mem[_74]
    _349 = mem[_74 + 32]
    require 0 < mem[96]
    _353 = mem[128]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[68]
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _357 = mem[_353]
    mem[mem[64] + 164] = mem[_353]
    idx = 0
    s = _353 + 32
    t = mem[64] + 196
    while idx < _357:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 5
    require ext_code.size(address(_349))
    call address(_349).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args cd[68], 0, 160, address(this.address), block.timestamp + 5, mem[mem[64] + 164 len (32 * _357) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _402 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _403 = mem[_402]
    require mem[_402] <= test266151307()
    require _402 + mem[_402] + 31 < _402 + return_data.size
    _405 = mem[_402 + mem[_402]]
    require mem[_402 + mem[_402]] <= test266151307()
    require _402 + ceil32(return_data.size) + (32 * mem[_402 + mem[_402]]) + 32 <= test266151307() and (32 * mem[_402 + mem[_402]]) + 32 >= 0
    mem[64] = _402 + ceil32(return_data.size) + (32 * mem[_402 + mem[_402]]) + 32
    mem[_402 + ceil32(return_data.size)] = _405
    require _403 + (32 * _405) + 32 <= return_data.size
    idx = 0
    s = _402 + _403 + 32
    t = _402 + ceil32(return_data.size) + 32
    while idx < _405:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _454 = mem[_74]
    idx = 1
    s = _402 + ceil32(return_data.size)
    while idx < _454:
        require idx < mem[_74]
        _459 = mem[(32 * idx) + _74 + 32]
        require mem[s] - 1 < mem[s]
        _463 = mem[(32 * mem[s] - 1) + s + 32]
        require idx < mem[96]
        _465 = mem[(32 * idx) + 128]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _463
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _468 = mem[_465]
        mem[mem[64] + 164] = mem[_465]
        s = 0
        t = _465 + 32
        u = mem[64] + 196
        while s < _468:
            mem[u] = mem[t + 12 len 20]
            _454 = mem[_74]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 5
        require ext_code.size(address(_459))
        call address(_459).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args _463, 0, 160, address(this.address), block.timestamp + 5, mem[mem[64] + 164 len (32 * _468) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _478 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _479 = mem[_478]
        require mem[_478] <= test266151307()
        require _478 + mem[_478] + 31 < _478 + return_data.size
        _480 = mem[_478 + mem[_478]]
        require mem[_478 + mem[_478]] <= test266151307()
        require _478 + ceil32(return_data.size) + (32 * mem[_478 + mem[_478]]) + 32 <= test266151307() and (32 * mem[_478 + mem[_478]]) + 32 >= 0
        mem[64] = _478 + ceil32(return_data.size) + (32 * mem[_478 + mem[_478]]) + 32
        mem[_478 + ceil32(return_data.size)] = _480
        require _479 + (32 * _480) + 32 <= return_data.size
        s = 0
        t = _478 + _479 + 32
        u = _478 + ceil32(return_data.size) + 32
        while s < _480:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            _454 = mem[_74]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        _454 = mem[_74]
        idx = idx + 1
        s = _478 + ceil32(return_data.size)
        continue 
    require mem[s] - 1 < mem[s]
    if mem[(32 * mem[s] - 1) + s + 32] <= cd[68]:
        revert with 0, 'n'
}



}
