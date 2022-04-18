contract main {




// =====================  Runtime code  =====================


#
#  - sub_9763f707(?)
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
    call arg2.transfer(address rg1, uint256 rg2) with:
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
    _80 = mem[64]
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
    mem[_80 + 100] = this.address
    mem[_80 + 132] = block.timestamp + 15
    require ext_code.size(address(_77))
    call address(_77).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _80 + (32 * _81) + -mem[64] + 192]
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
        _175 = mem[64]
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
        mem[_175 + 100] = this.address
        mem[_175 + 132] = block.timestamp + 15
        require ext_code.size(address(_168))
        call address(_168).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _175 + (32 * _177) + -mem[64] + 192]
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
    mem[mem[64] + 132] = block.timestamp + 15
    require ext_code.size(address(_72))
    call address(_72).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args cd[68], 0, 160, address(this.address), block.timestamp + 15, mem[mem[64] + 164 len (32 * _77) + 32]
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
        _152 = mem[64]
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
        mem[_152 + 100] = this.address
        mem[_152 + 132] = block.timestamp + 15
        require ext_code.size(address(_146))
        call address(_146).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _152 + (32 * _153) + -mem[64] + 192]
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
    _354 = mem[64]
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
    mem[_354 + 100] = this.address
    mem[_354 + 132] = block.timestamp + 15
    require ext_code.size(address(_349))
    call address(_349).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _354 + (32 * _357) + -mem[64] + 192]
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
        mem[mem[64] + 132] = block.timestamp + 15
        require ext_code.size(address(_459))
        call address(_459).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args _463, 0, 160, address(this.address), block.timestamp + 15, mem[mem[64] + 164 len (32 * _468) + 32]
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

function sub_0eb2e282(?) {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 <= test266151307() and (32 * ('cd', 68).length) + 160 >= 128
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 36).length) + 160
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == cd[100]
    require ('cd', 36).length + 1 <= test266151307()
    if not ('cd', 36).length + 1:
        require ('cd', 36).length <= test266151307()
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192] = ('cd', 36).length
        if not ('cd', 36).length:
            require ('cd', 36).length <= test266151307()
            mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224] = ('cd', 36).length
            mem[64] = (98 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256
            if not ('cd', 36).length:
                require 0 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = cd[100]
                idx = 0
                s = cd[4]
                while idx < ('cd', 36).length:
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3652 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3686 = mem[_3652]
                    require mem[_3652] == mem[_3652 + 12 len 20]
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3741 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3741] == mem[_3741 + 12 len 20]
                    require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]
                    require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]
                    mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256] = mem[_3741 + 12 len 20]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224] = address(_3686)
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3910 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_3910] == mem[_3910 + 18 len 14]
                    require mem[_3910 + 32] == mem[_3910 + 50 len 14]
                    require mem[_3910 + 64] == mem[_3910 + 92 len 4]
                    require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]
                    if address(_3686) != address(s):
                        if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                            if idx < mem[(32 * ('cd', 36).length) + 128]:
                                if mem[_3910 + 50 len 14] <= 0:
                                    revert with 0, 's'
                                if mem[_3910 + 18 len 14] <= 0:
                                    revert with 0, 's'
                                if not mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                    if not mem[_3910 + 18 len 14]:
                                        if 1000 * mem[_3910 + 50 len 14] / 1000 != mem[_3910 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * mem[_3910 + 50 len 14] < 1000 * mem[_3910 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if 1000 * mem[_3910 + 50 len 14]:
                                            if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3910 + 50 len 14]
                                                if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                    idx = idx + 1
                                                    s = address(_3686)
                                                    continue 
                                    else:
                                        if mem[_3910 + 18 len 14]:
                                            if 0 / mem[_3910 + 18 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3910 + 50 len 14] / 1000 != mem[_3910 + 50 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3910 + 50 len 14] < 1000 * mem[_3910 + 50 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if 1000 * mem[_3910 + 50 len 14]:
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3910 + 50 len 14]
                                                    if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                        idx = idx + 1
                                                        s = address(_3686)
                                                        continue 
                                else:
                                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                        if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] / mem[(32 * idx) + (32 * ('cd', 36).length) + 160] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_3910 + 18 len 14]:
                                            if 1000 * mem[_3910 + 50 len 14] / 1000 != mem[_3910 + 50 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if (1000 * mem[_3910 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3910 + 50 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if (1000 * mem[_3910 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * mem[_3910 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                    if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                        idx = idx + 1
                                                        s = address(_3686)
                                                        continue 
                                        else:
                                            if mem[_3910 + 18 len 14]:
                                                if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3910 + 18 len 14] / mem[_3910 + 18 len 14] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 1000 * mem[_3910 + 50 len 14] / 1000 != mem[_3910 + 50 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if (1000 * mem[_3910 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3910 + 50 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if (1000 * mem[_3910 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                    if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3910 + 18 len 14] / (1000 * mem[_3910 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                        if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                            idx = idx + 1
                                                            s = address(_3686)
                                                            continue 
                    else:
                        if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                            if idx < mem[(32 * ('cd', 36).length) + 128]:
                                if mem[_3910 + 18 len 14] <= 0:
                                    revert with 0, 's'
                                if mem[_3910 + 50 len 14] <= 0:
                                    revert with 0, 's'
                                if not mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                    if not mem[_3910 + 50 len 14]:
                                        if 1000 * mem[_3910 + 18 len 14] / 1000 != mem[_3910 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * mem[_3910 + 18 len 14] < 1000 * mem[_3910 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if 1000 * mem[_3910 + 18 len 14]:
                                            if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3910 + 18 len 14]
                                                if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                    continue 
                                    else:
                                        if mem[_3910 + 50 len 14]:
                                            if 0 / mem[_3910 + 50 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3910 + 18 len 14] / 1000 != mem[_3910 + 18 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3910 + 18 len 14] < 1000 * mem[_3910 + 18 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if 1000 * mem[_3910 + 18 len 14]:
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3910 + 18 len 14]
                                                    if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                        idx = idx + 1
                                                        s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                        continue 
                                else:
                                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                        if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] / mem[(32 * idx) + (32 * ('cd', 36).length) + 160] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_3910 + 50 len 14]:
                                            if 1000 * mem[_3910 + 18 len 14] / 1000 != mem[_3910 + 18 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if (1000 * mem[_3910 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3910 + 18 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if (1000 * mem[_3910 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * mem[_3910 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                    if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                        idx = idx + 1
                                                        s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                        continue 
                                        else:
                                            if mem[_3910 + 50 len 14]:
                                                if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3910 + 50 len 14] / mem[_3910 + 50 len 14] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 1000 * mem[_3910 + 18 len 14] / 1000 != mem[_3910 + 18 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if (1000 * mem[_3910 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3910 + 18 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if (1000 * mem[_3910 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                    if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3910 + 50 len 14] / (1000 * mem[_3910 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                        if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                            idx = idx + 1
                                                            s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                            continue 
                    revert
                require ('cd', 36).length < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                if mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] > cd[100]:
                    idx = 0
                    s = cd[4]
                    while idx < ('cd', 36).length:
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                        _4812 = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        mem[mem[64] + 36] = _4812
                        require ext_code.size(address(s))
                        call address(s).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _4812
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4836 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4836] == bool(mem[_4836])
                        require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]
                        if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 236 len 20] != address(s):
                            if idx < mem[96]:
                                _4884 = mem[(32 * idx) + 128]
                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                    _4916 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                                    _4932 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4932 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4932 + 36] = _4916
                                    mem[_4932 + 68] = 0
                                    mem[_4932 + 100] = this.address
                                    mem[_4932 + 132] = 128
                                    mem[_4932 + 164] = mem[_4932]
                                    s = 0
                                    while s < mem[_4932]:
                                        mem[_4932 + s + 196] = mem[_4932 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_4932]) > mem[_4932]:
                                        mem[_4932 + mem[_4932] + 196] = 0
                                    require ext_code.size(address(_4884))
                                    call address(_4884).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4916, 0, address(this.address), 128, mem[_4932], mem[_4932 + 196 len ceil32(mem[_4932])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                        idx = idx + 1
                                        s = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]
                                        continue 
                        else:
                            if idx < mem[96]:
                                _4886 = mem[(32 * idx) + 128]
                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                    _4917 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                                    _4933 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4933 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4933 + 36] = 0
                                    mem[_4933 + 68] = _4917
                                    mem[_4933 + 100] = this.address
                                    mem[_4933 + 132] = 128
                                    mem[_4933 + 164] = mem[_4933]
                                    s = 0
                                    while s < mem[_4933]:
                                        mem[_4933 + s + 196] = mem[_4933 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_4933]) > mem[_4933]:
                                        mem[_4933 + mem[_4933] + 196] = 0
                                    require ext_code.size(address(_4886))
                                    call address(_4886).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4917, address(this.address), 128, mem[_4933], mem[_4933 + 196 len ceil32(mem[_4933])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                        idx = idx + 1
                                        s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                        continue 
                        revert
            else:
                mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                require 0 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = cd[100]
                idx = 0
                s = cd[4]
                while idx < ('cd', 36).length:
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3653 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3689 = mem[_3653]
                    require mem[_3653] == mem[_3653 + 12 len 20]
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3743 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3743] == mem[_3743 + 12 len 20]
                    require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]
                    require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]
                    mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256] = mem[_3743 + 12 len 20]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224] = address(_3689)
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3913 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_3913] == mem[_3913 + 18 len 14]
                    require mem[_3913 + 32] == mem[_3913 + 50 len 14]
                    require mem[_3913 + 64] == mem[_3913 + 92 len 4]
                    require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]
                    if address(_3689) != address(s):
                        if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                            if idx < mem[(32 * ('cd', 36).length) + 128]:
                                if mem[_3913 + 50 len 14] <= 0:
                                    revert with 0, 's'
                                if mem[_3913 + 18 len 14] <= 0:
                                    revert with 0, 's'
                                if not mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                    if not mem[_3913 + 18 len 14]:
                                        if 1000 * mem[_3913 + 50 len 14] / 1000 != mem[_3913 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * mem[_3913 + 50 len 14] < 1000 * mem[_3913 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if 1000 * mem[_3913 + 50 len 14]:
                                            if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3913 + 50 len 14]
                                                if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                    idx = idx + 1
                                                    s = address(_3689)
                                                    continue 
                                    else:
                                        if mem[_3913 + 18 len 14]:
                                            if 0 / mem[_3913 + 18 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3913 + 50 len 14] / 1000 != mem[_3913 + 50 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3913 + 50 len 14] < 1000 * mem[_3913 + 50 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if 1000 * mem[_3913 + 50 len 14]:
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3913 + 50 len 14]
                                                    if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                        idx = idx + 1
                                                        s = address(_3689)
                                                        continue 
                                else:
                                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                        if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] / mem[(32 * idx) + (32 * ('cd', 36).length) + 160] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_3913 + 18 len 14]:
                                            if 1000 * mem[_3913 + 50 len 14] / 1000 != mem[_3913 + 50 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if (1000 * mem[_3913 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3913 + 50 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if (1000 * mem[_3913 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * mem[_3913 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                    if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                        idx = idx + 1
                                                        s = address(_3689)
                                                        continue 
                                        else:
                                            if mem[_3913 + 18 len 14]:
                                                if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3913 + 18 len 14] / mem[_3913 + 18 len 14] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 1000 * mem[_3913 + 50 len 14] / 1000 != mem[_3913 + 50 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if (1000 * mem[_3913 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3913 + 50 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if (1000 * mem[_3913 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                    if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3913 + 18 len 14] / (1000 * mem[_3913 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                        if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                            idx = idx + 1
                                                            s = address(_3689)
                                                            continue 
                    else:
                        if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                            if idx < mem[(32 * ('cd', 36).length) + 128]:
                                if mem[_3913 + 18 len 14] <= 0:
                                    revert with 0, 's'
                                if mem[_3913 + 50 len 14] <= 0:
                                    revert with 0, 's'
                                if not mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                    if not mem[_3913 + 50 len 14]:
                                        if 1000 * mem[_3913 + 18 len 14] / 1000 != mem[_3913 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * mem[_3913 + 18 len 14] < 1000 * mem[_3913 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if 1000 * mem[_3913 + 18 len 14]:
                                            if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3913 + 18 len 14]
                                                if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                    continue 
                                    else:
                                        if mem[_3913 + 50 len 14]:
                                            if 0 / mem[_3913 + 50 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3913 + 18 len 14] / 1000 != mem[_3913 + 18 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3913 + 18 len 14] < 1000 * mem[_3913 + 18 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if 1000 * mem[_3913 + 18 len 14]:
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3913 + 18 len 14]
                                                    if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                        idx = idx + 1
                                                        s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                        continue 
                                else:
                                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                        if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] / mem[(32 * idx) + (32 * ('cd', 36).length) + 160] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_3913 + 50 len 14]:
                                            if 1000 * mem[_3913 + 18 len 14] / 1000 != mem[_3913 + 18 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if (1000 * mem[_3913 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3913 + 18 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if (1000 * mem[_3913 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * mem[_3913 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                    if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                        idx = idx + 1
                                                        s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                        continue 
                                        else:
                                            if mem[_3913 + 50 len 14]:
                                                if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3913 + 50 len 14] / mem[_3913 + 50 len 14] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 1000 * mem[_3913 + 18 len 14] / 1000 != mem[_3913 + 18 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if (1000 * mem[_3913 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3913 + 18 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if (1000 * mem[_3913 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                    if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3913 + 50 len 14] / (1000 * mem[_3913 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                        if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                            idx = idx + 1
                                                            s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                            continue 
                    revert
                require ('cd', 36).length < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                if mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] > cd[100]:
                    idx = 0
                    s = cd[4]
                    while idx < ('cd', 36).length:
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                        _4814 = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        mem[mem[64] + 36] = _4814
                        require ext_code.size(address(s))
                        call address(s).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _4814
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4837 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4837] == bool(mem[_4837])
                        require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]
                        if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 236 len 20] != address(s):
                            if idx < mem[96]:
                                _4888 = mem[(32 * idx) + 128]
                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                    _4918 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                                    _4934 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4934 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4934 + 36] = _4918
                                    mem[_4934 + 68] = 0
                                    mem[_4934 + 100] = this.address
                                    mem[_4934 + 132] = 128
                                    mem[_4934 + 164] = mem[_4934]
                                    s = 0
                                    while s < mem[_4934]:
                                        mem[_4934 + s + 196] = mem[_4934 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_4934]) > mem[_4934]:
                                        mem[_4934 + mem[_4934] + 196] = 0
                                    require ext_code.size(address(_4888))
                                    call address(_4888).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4918, 0, address(this.address), 128, mem[_4934], mem[_4934 + 196 len ceil32(mem[_4934])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                        idx = idx + 1
                                        s = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]
                                        continue 
                        else:
                            if idx < mem[96]:
                                _4890 = mem[(32 * idx) + 128]
                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                    _4919 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                                    _4935 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4935 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4935 + 36] = 0
                                    mem[_4935 + 68] = _4919
                                    mem[_4935 + 100] = this.address
                                    mem[_4935 + 132] = 128
                                    mem[_4935 + 164] = mem[_4935]
                                    s = 0
                                    while s < mem[_4935]:
                                        mem[_4935 + s + 196] = mem[_4935 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_4935]) > mem[_4935]:
                                        mem[_4935 + mem[_4935] + 196] = 0
                                    require ext_code.size(address(_4890))
                                    call address(_4890).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4919, address(this.address), 128, mem[_4935], mem[_4935 + 196 len ceil32(mem[_4935])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                        idx = idx + 1
                                        s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                        continue 
                        revert
        else:
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            require ('cd', 36).length <= test266151307()
            mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224] = ('cd', 36).length
            mem[64] = (98 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256
            if not ('cd', 36).length:
                require 0 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = cd[100]
                idx = 0
                s = cd[4]
                while idx < ('cd', 36).length:
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3654 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3692 = mem[_3654]
                    require mem[_3654] == mem[_3654 + 12 len 20]
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3745 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3745] == mem[_3745 + 12 len 20]
                    require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]
                    require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]
                    mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256] = mem[_3745 + 12 len 20]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224] = address(_3692)
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3916 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_3916] == mem[_3916 + 18 len 14]
                    require mem[_3916 + 32] == mem[_3916 + 50 len 14]
                    require mem[_3916 + 64] == mem[_3916 + 92 len 4]
                    require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]
                    if address(_3692) != address(s):
                        if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                            if idx < mem[(32 * ('cd', 36).length) + 128]:
                                if mem[_3916 + 50 len 14] <= 0:
                                    revert with 0, 's'
                                if mem[_3916 + 18 len 14] <= 0:
                                    revert with 0, 's'
                                if not mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                    if not mem[_3916 + 18 len 14]:
                                        if 1000 * mem[_3916 + 50 len 14] / 1000 != mem[_3916 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * mem[_3916 + 50 len 14] < 1000 * mem[_3916 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if 1000 * mem[_3916 + 50 len 14]:
                                            if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3916 + 50 len 14]
                                                if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                    idx = idx + 1
                                                    s = address(_3692)
                                                    continue 
                                    else:
                                        if mem[_3916 + 18 len 14]:
                                            if 0 / mem[_3916 + 18 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3916 + 50 len 14] / 1000 != mem[_3916 + 50 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3916 + 50 len 14] < 1000 * mem[_3916 + 50 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if 1000 * mem[_3916 + 50 len 14]:
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3916 + 50 len 14]
                                                    if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                        idx = idx + 1
                                                        s = address(_3692)
                                                        continue 
                                else:
                                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                        if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] / mem[(32 * idx) + (32 * ('cd', 36).length) + 160] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_3916 + 18 len 14]:
                                            if 1000 * mem[_3916 + 50 len 14] / 1000 != mem[_3916 + 50 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if (1000 * mem[_3916 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3916 + 50 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if (1000 * mem[_3916 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * mem[_3916 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                    if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                        idx = idx + 1
                                                        s = address(_3692)
                                                        continue 
                                        else:
                                            if mem[_3916 + 18 len 14]:
                                                if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3916 + 18 len 14] / mem[_3916 + 18 len 14] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 1000 * mem[_3916 + 50 len 14] / 1000 != mem[_3916 + 50 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if (1000 * mem[_3916 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3916 + 50 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if (1000 * mem[_3916 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                    if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3916 + 18 len 14] / (1000 * mem[_3916 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                        if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                            idx = idx + 1
                                                            s = address(_3692)
                                                            continue 
                    else:
                        if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                            if idx < mem[(32 * ('cd', 36).length) + 128]:
                                if mem[_3916 + 18 len 14] <= 0:
                                    revert with 0, 's'
                                if mem[_3916 + 50 len 14] <= 0:
                                    revert with 0, 's'
                                if not mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                    if not mem[_3916 + 50 len 14]:
                                        if 1000 * mem[_3916 + 18 len 14] / 1000 != mem[_3916 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * mem[_3916 + 18 len 14] < 1000 * mem[_3916 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if 1000 * mem[_3916 + 18 len 14]:
                                            if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3916 + 18 len 14]
                                                if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                    continue 
                                    else:
                                        if mem[_3916 + 50 len 14]:
                                            if 0 / mem[_3916 + 50 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3916 + 18 len 14] / 1000 != mem[_3916 + 18 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3916 + 18 len 14] < 1000 * mem[_3916 + 18 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if 1000 * mem[_3916 + 18 len 14]:
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3916 + 18 len 14]
                                                    if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                        idx = idx + 1
                                                        s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                        continue 
                                else:
                                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                        if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] / mem[(32 * idx) + (32 * ('cd', 36).length) + 160] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_3916 + 50 len 14]:
                                            if 1000 * mem[_3916 + 18 len 14] / 1000 != mem[_3916 + 18 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if (1000 * mem[_3916 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3916 + 18 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if (1000 * mem[_3916 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * mem[_3916 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                    if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                        idx = idx + 1
                                                        s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                        continue 
                                        else:
                                            if mem[_3916 + 50 len 14]:
                                                if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3916 + 50 len 14] / mem[_3916 + 50 len 14] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 1000 * mem[_3916 + 18 len 14] / 1000 != mem[_3916 + 18 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if (1000 * mem[_3916 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3916 + 18 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if (1000 * mem[_3916 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                    if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3916 + 50 len 14] / (1000 * mem[_3916 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                        if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                            idx = idx + 1
                                                            s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                            continue 
                    revert
                require ('cd', 36).length < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                if mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] > cd[100]:
                    idx = 0
                    s = cd[4]
                    while idx < ('cd', 36).length:
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                        _4816 = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        mem[mem[64] + 36] = _4816
                        require ext_code.size(address(s))
                        call address(s).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _4816
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4838 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4838] == bool(mem[_4838])
                        require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]
                        if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 236 len 20] != address(s):
                            if idx < mem[96]:
                                _4892 = mem[(32 * idx) + 128]
                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                    _4920 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                                    _4936 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4936 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4936 + 36] = _4920
                                    mem[_4936 + 68] = 0
                                    mem[_4936 + 100] = this.address
                                    mem[_4936 + 132] = 128
                                    mem[_4936 + 164] = mem[_4936]
                                    s = 0
                                    while s < mem[_4936]:
                                        mem[_4936 + s + 196] = mem[_4936 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_4936]) > mem[_4936]:
                                        mem[_4936 + mem[_4936] + 196] = 0
                                    require ext_code.size(address(_4892))
                                    call address(_4892).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4920, 0, address(this.address), 128, mem[_4936], mem[_4936 + 196 len ceil32(mem[_4936])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                        idx = idx + 1
                                        s = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]
                                        continue 
                        else:
                            if idx < mem[96]:
                                _4894 = mem[(32 * idx) + 128]
                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                    _4921 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                                    _4937 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4937 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4937 + 36] = 0
                                    mem[_4937 + 68] = _4921
                                    mem[_4937 + 100] = this.address
                                    mem[_4937 + 132] = 128
                                    mem[_4937 + 164] = mem[_4937]
                                    s = 0
                                    while s < mem[_4937]:
                                        mem[_4937 + s + 196] = mem[_4937 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_4937]) > mem[_4937]:
                                        mem[_4937 + mem[_4937] + 196] = 0
                                    require ext_code.size(address(_4894))
                                    call address(_4894).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4921, address(this.address), 128, mem[_4937], mem[_4937 + 196 len ceil32(mem[_4937])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                        idx = idx + 1
                                        s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                        continue 
                        revert
            else:
                mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                require 0 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = cd[100]
                idx = 0
                s = cd[4]
                while idx < ('cd', 36).length:
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3655 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3695 = mem[_3655]
                    require mem[_3655] == mem[_3655 + 12 len 20]
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3747 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3747] == mem[_3747 + 12 len 20]
                    require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]
                    require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]
                    mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256] = mem[_3747 + 12 len 20]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224] = address(_3695)
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3919 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_3919] == mem[_3919 + 18 len 14]
                    require mem[_3919 + 32] == mem[_3919 + 50 len 14]
                    require mem[_3919 + 64] == mem[_3919 + 92 len 4]
                    require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]
                    if address(_3695) != address(s):
                        if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                            if idx < mem[(32 * ('cd', 36).length) + 128]:
                                if mem[_3919 + 50 len 14] <= 0:
                                    revert with 0, 's'
                                if mem[_3919 + 18 len 14] <= 0:
                                    revert with 0, 's'
                                if not mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                    if not mem[_3919 + 18 len 14]:
                                        if 1000 * mem[_3919 + 50 len 14] / 1000 != mem[_3919 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * mem[_3919 + 50 len 14] < 1000 * mem[_3919 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if 1000 * mem[_3919 + 50 len 14]:
                                            if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3919 + 50 len 14]
                                                if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                    idx = idx + 1
                                                    s = address(_3695)
                                                    continue 
                                    else:
                                        if mem[_3919 + 18 len 14]:
                                            if 0 / mem[_3919 + 18 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3919 + 50 len 14] / 1000 != mem[_3919 + 50 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3919 + 50 len 14] < 1000 * mem[_3919 + 50 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if 1000 * mem[_3919 + 50 len 14]:
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3919 + 50 len 14]
                                                    if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                        idx = idx + 1
                                                        s = address(_3695)
                                                        continue 
                                else:
                                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                        if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] / mem[(32 * idx) + (32 * ('cd', 36).length) + 160] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_3919 + 18 len 14]:
                                            if 1000 * mem[_3919 + 50 len 14] / 1000 != mem[_3919 + 50 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if (1000 * mem[_3919 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3919 + 50 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if (1000 * mem[_3919 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * mem[_3919 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                    if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                        idx = idx + 1
                                                        s = address(_3695)
                                                        continue 
                                        else:
                                            if mem[_3919 + 18 len 14]:
                                                if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3919 + 18 len 14] / mem[_3919 + 18 len 14] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 1000 * mem[_3919 + 50 len 14] / 1000 != mem[_3919 + 50 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if (1000 * mem[_3919 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3919 + 50 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if (1000 * mem[_3919 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                    if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3919 + 18 len 14] / (1000 * mem[_3919 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                        if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                            idx = idx + 1
                                                            s = address(_3695)
                                                            continue 
                    else:
                        if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                            if idx < mem[(32 * ('cd', 36).length) + 128]:
                                if mem[_3919 + 18 len 14] <= 0:
                                    revert with 0, 's'
                                if mem[_3919 + 50 len 14] <= 0:
                                    revert with 0, 's'
                                if not mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                    if not mem[_3919 + 50 len 14]:
                                        if 1000 * mem[_3919 + 18 len 14] / 1000 != mem[_3919 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * mem[_3919 + 18 len 14] < 1000 * mem[_3919 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if 1000 * mem[_3919 + 18 len 14]:
                                            if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3919 + 18 len 14]
                                                if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                    continue 
                                    else:
                                        if mem[_3919 + 50 len 14]:
                                            if 0 / mem[_3919 + 50 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3919 + 18 len 14] / 1000 != mem[_3919 + 18 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3919 + 18 len 14] < 1000 * mem[_3919 + 18 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if 1000 * mem[_3919 + 18 len 14]:
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3919 + 18 len 14]
                                                    if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                        idx = idx + 1
                                                        s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                        continue 
                                else:
                                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                        if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] / mem[(32 * idx) + (32 * ('cd', 36).length) + 160] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_3919 + 50 len 14]:
                                            if 1000 * mem[_3919 + 18 len 14] / 1000 != mem[_3919 + 18 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if (1000 * mem[_3919 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3919 + 18 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if (1000 * mem[_3919 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * mem[_3919 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                    if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                        idx = idx + 1
                                                        s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                        continue 
                                        else:
                                            if mem[_3919 + 50 len 14]:
                                                if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3919 + 50 len 14] / mem[_3919 + 50 len 14] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 1000 * mem[_3919 + 18 len 14] / 1000 != mem[_3919 + 18 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if (1000 * mem[_3919 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3919 + 18 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if (1000 * mem[_3919 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                    if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3919 + 50 len 14] / (1000 * mem[_3919 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                        if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                            idx = idx + 1
                                                            s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                            continue 
                    revert
                require ('cd', 36).length < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                if mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] > cd[100]:
                    idx = 0
                    s = cd[4]
                    while idx < ('cd', 36).length:
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                        _4818 = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        mem[mem[64] + 36] = _4818
                        require ext_code.size(address(s))
                        call address(s).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _4818
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4839 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4839] == bool(mem[_4839])
                        require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]
                        if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 236 len 20] != address(s):
                            if idx < mem[96]:
                                _4896 = mem[(32 * idx) + 128]
                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                    _4922 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                                    _4938 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4938 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4938 + 36] = _4922
                                    mem[_4938 + 68] = 0
                                    mem[_4938 + 100] = this.address
                                    mem[_4938 + 132] = 128
                                    mem[_4938 + 164] = mem[_4938]
                                    s = 0
                                    while s < mem[_4938]:
                                        mem[_4938 + s + 196] = mem[_4938 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_4938]) > mem[_4938]:
                                        mem[_4938 + mem[_4938] + 196] = 0
                                    require ext_code.size(address(_4896))
                                    call address(_4896).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4922, 0, address(this.address), 128, mem[_4938], mem[_4938 + 196 len ceil32(mem[_4938])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                        idx = idx + 1
                                        s = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]
                                        continue 
                        else:
                            if idx < mem[96]:
                                _4898 = mem[(32 * idx) + 128]
                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                    _4923 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                                    _4939 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4939 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4939 + 36] = 0
                                    mem[_4939 + 68] = _4923
                                    mem[_4939 + 100] = this.address
                                    mem[_4939 + 132] = 128
                                    mem[_4939 + 164] = mem[_4939]
                                    s = 0
                                    while s < mem[_4939]:
                                        mem[_4939 + s + 196] = mem[_4939 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_4939]) > mem[_4939]:
                                        mem[_4939 + mem[_4939] + 196] = 0
                                    require ext_code.size(address(_4898))
                                    call address(_4898).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4923, address(this.address), 128, mem[_4939], mem[_4939 + 196 len ceil32(mem[_4939])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                        idx = idx + 1
                                        s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                        continue 
                        revert
    else:
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 len 32 * ('cd', 36).length + 1] = call.data[calldata.size len 32 * ('cd', 36).length + 1]
        require ('cd', 36).length <= test266151307()
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192] = ('cd', 36).length
        if not ('cd', 36).length:
            require ('cd', 36).length <= test266151307()
            mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224] = ('cd', 36).length
            mem[64] = (98 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256
            if not ('cd', 36).length:
                require 0 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = cd[100]
                idx = 0
                s = cd[4]
                while idx < ('cd', 36).length:
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3656 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3698 = mem[_3656]
                    require mem[_3656] == mem[_3656 + 12 len 20]
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3749 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3749] == mem[_3749 + 12 len 20]
                    require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]
                    require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]
                    mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256] = mem[_3749 + 12 len 20]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224] = address(_3698)
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3922 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_3922] == mem[_3922 + 18 len 14]
                    require mem[_3922 + 32] == mem[_3922 + 50 len 14]
                    require mem[_3922 + 64] == mem[_3922 + 92 len 4]
                    require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]
                    if address(_3698) != address(s):
                        if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                            if idx < mem[(32 * ('cd', 36).length) + 128]:
                                if mem[_3922 + 50 len 14] <= 0:
                                    revert with 0, 's'
                                if mem[_3922 + 18 len 14] <= 0:
                                    revert with 0, 's'
                                if not mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                    if not mem[_3922 + 18 len 14]:
                                        if 1000 * mem[_3922 + 50 len 14] / 1000 != mem[_3922 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * mem[_3922 + 50 len 14] < 1000 * mem[_3922 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if 1000 * mem[_3922 + 50 len 14]:
                                            if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3922 + 50 len 14]
                                                if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                    idx = idx + 1
                                                    s = address(_3698)
                                                    continue 
                                    else:
                                        if mem[_3922 + 18 len 14]:
                                            if 0 / mem[_3922 + 18 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3922 + 50 len 14] / 1000 != mem[_3922 + 50 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3922 + 50 len 14] < 1000 * mem[_3922 + 50 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if 1000 * mem[_3922 + 50 len 14]:
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3922 + 50 len 14]
                                                    if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                        idx = idx + 1
                                                        s = address(_3698)
                                                        continue 
                                else:
                                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                        if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] / mem[(32 * idx) + (32 * ('cd', 36).length) + 160] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_3922 + 18 len 14]:
                                            if 1000 * mem[_3922 + 50 len 14] / 1000 != mem[_3922 + 50 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if (1000 * mem[_3922 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3922 + 50 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if (1000 * mem[_3922 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * mem[_3922 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                    if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                        idx = idx + 1
                                                        s = address(_3698)
                                                        continue 
                                        else:
                                            if mem[_3922 + 18 len 14]:
                                                if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3922 + 18 len 14] / mem[_3922 + 18 len 14] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 1000 * mem[_3922 + 50 len 14] / 1000 != mem[_3922 + 50 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if (1000 * mem[_3922 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3922 + 50 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if (1000 * mem[_3922 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                    if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3922 + 18 len 14] / (1000 * mem[_3922 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                        if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                            idx = idx + 1
                                                            s = address(_3698)
                                                            continue 
                    else:
                        if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                            if idx < mem[(32 * ('cd', 36).length) + 128]:
                                if mem[_3922 + 18 len 14] <= 0:
                                    revert with 0, 's'
                                if mem[_3922 + 50 len 14] <= 0:
                                    revert with 0, 's'
                                if not mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                    if not mem[_3922 + 50 len 14]:
                                        if 1000 * mem[_3922 + 18 len 14] / 1000 != mem[_3922 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * mem[_3922 + 18 len 14] < 1000 * mem[_3922 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if 1000 * mem[_3922 + 18 len 14]:
                                            if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3922 + 18 len 14]
                                                if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                    continue 
                                    else:
                                        if mem[_3922 + 50 len 14]:
                                            if 0 / mem[_3922 + 50 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3922 + 18 len 14] / 1000 != mem[_3922 + 18 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3922 + 18 len 14] < 1000 * mem[_3922 + 18 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if 1000 * mem[_3922 + 18 len 14]:
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3922 + 18 len 14]
                                                    if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                        idx = idx + 1
                                                        s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                        continue 
                                else:
                                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                        if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] / mem[(32 * idx) + (32 * ('cd', 36).length) + 160] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_3922 + 50 len 14]:
                                            if 1000 * mem[_3922 + 18 len 14] / 1000 != mem[_3922 + 18 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if (1000 * mem[_3922 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3922 + 18 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if (1000 * mem[_3922 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * mem[_3922 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                    if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                        idx = idx + 1
                                                        s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                        continue 
                                        else:
                                            if mem[_3922 + 50 len 14]:
                                                if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3922 + 50 len 14] / mem[_3922 + 50 len 14] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 1000 * mem[_3922 + 18 len 14] / 1000 != mem[_3922 + 18 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if (1000 * mem[_3922 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3922 + 18 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if (1000 * mem[_3922 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                    if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3922 + 50 len 14] / (1000 * mem[_3922 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                        if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                            idx = idx + 1
                                                            s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                            continue 
                    revert
                require ('cd', 36).length < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                if mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] > cd[100]:
                    idx = 0
                    s = cd[4]
                    while idx < ('cd', 36).length:
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                        _4820 = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        mem[mem[64] + 36] = _4820
                        require ext_code.size(address(s))
                        call address(s).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _4820
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4840 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4840] == bool(mem[_4840])
                        require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]
                        if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 236 len 20] != address(s):
                            if idx < mem[96]:
                                _4900 = mem[(32 * idx) + 128]
                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                    _4924 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                                    _4940 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4940 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4940 + 36] = _4924
                                    mem[_4940 + 68] = 0
                                    mem[_4940 + 100] = this.address
                                    mem[_4940 + 132] = 128
                                    mem[_4940 + 164] = mem[_4940]
                                    s = 0
                                    while s < mem[_4940]:
                                        mem[_4940 + s + 196] = mem[_4940 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_4940]) > mem[_4940]:
                                        mem[_4940 + mem[_4940] + 196] = 0
                                    require ext_code.size(address(_4900))
                                    call address(_4900).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4924, 0, address(this.address), 128, mem[_4940], mem[_4940 + 196 len ceil32(mem[_4940])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                        idx = idx + 1
                                        s = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]
                                        continue 
                        else:
                            if idx < mem[96]:
                                _4902 = mem[(32 * idx) + 128]
                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                    _4925 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                                    _4941 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4941 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4941 + 36] = 0
                                    mem[_4941 + 68] = _4925
                                    mem[_4941 + 100] = this.address
                                    mem[_4941 + 132] = 128
                                    mem[_4941 + 164] = mem[_4941]
                                    s = 0
                                    while s < mem[_4941]:
                                        mem[_4941 + s + 196] = mem[_4941 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_4941]) > mem[_4941]:
                                        mem[_4941 + mem[_4941] + 196] = 0
                                    require ext_code.size(address(_4902))
                                    call address(_4902).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4925, address(this.address), 128, mem[_4941], mem[_4941 + 196 len ceil32(mem[_4941])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                        idx = idx + 1
                                        s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                        continue 
                        revert
            else:
                mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                require 0 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = cd[100]
                idx = 0
                s = cd[4]
                while idx < ('cd', 36).length:
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3657 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3701 = mem[_3657]
                    require mem[_3657] == mem[_3657 + 12 len 20]
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3751 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3751] == mem[_3751 + 12 len 20]
                    require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]
                    require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]
                    mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256] = mem[_3751 + 12 len 20]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224] = address(_3701)
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3925 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_3925] == mem[_3925 + 18 len 14]
                    require mem[_3925 + 32] == mem[_3925 + 50 len 14]
                    require mem[_3925 + 64] == mem[_3925 + 92 len 4]
                    require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]
                    if address(_3701) != address(s):
                        if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                            if idx < mem[(32 * ('cd', 36).length) + 128]:
                                if mem[_3925 + 50 len 14] <= 0:
                                    revert with 0, 's'
                                if mem[_3925 + 18 len 14] <= 0:
                                    revert with 0, 's'
                                if not mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                    if not mem[_3925 + 18 len 14]:
                                        if 1000 * mem[_3925 + 50 len 14] / 1000 != mem[_3925 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * mem[_3925 + 50 len 14] < 1000 * mem[_3925 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if 1000 * mem[_3925 + 50 len 14]:
                                            if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3925 + 50 len 14]
                                                if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                    idx = idx + 1
                                                    s = address(_3701)
                                                    continue 
                                    else:
                                        if mem[_3925 + 18 len 14]:
                                            if 0 / mem[_3925 + 18 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3925 + 50 len 14] / 1000 != mem[_3925 + 50 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3925 + 50 len 14] < 1000 * mem[_3925 + 50 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if 1000 * mem[_3925 + 50 len 14]:
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3925 + 50 len 14]
                                                    if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                        idx = idx + 1
                                                        s = address(_3701)
                                                        continue 
                                else:
                                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                        if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] / mem[(32 * idx) + (32 * ('cd', 36).length) + 160] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_3925 + 18 len 14]:
                                            if 1000 * mem[_3925 + 50 len 14] / 1000 != mem[_3925 + 50 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if (1000 * mem[_3925 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3925 + 50 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if (1000 * mem[_3925 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * mem[_3925 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                    if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                        idx = idx + 1
                                                        s = address(_3701)
                                                        continue 
                                        else:
                                            if mem[_3925 + 18 len 14]:
                                                if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3925 + 18 len 14] / mem[_3925 + 18 len 14] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 1000 * mem[_3925 + 50 len 14] / 1000 != mem[_3925 + 50 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if (1000 * mem[_3925 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3925 + 50 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if (1000 * mem[_3925 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                    if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3925 + 18 len 14] / (1000 * mem[_3925 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                        if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                            idx = idx + 1
                                                            s = address(_3701)
                                                            continue 
                    else:
                        if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                            if idx < mem[(32 * ('cd', 36).length) + 128]:
                                if mem[_3925 + 18 len 14] <= 0:
                                    revert with 0, 's'
                                if mem[_3925 + 50 len 14] <= 0:
                                    revert with 0, 's'
                                if not mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                    if not mem[_3925 + 50 len 14]:
                                        if 1000 * mem[_3925 + 18 len 14] / 1000 != mem[_3925 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * mem[_3925 + 18 len 14] < 1000 * mem[_3925 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if 1000 * mem[_3925 + 18 len 14]:
                                            if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3925 + 18 len 14]
                                                if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                    continue 
                                    else:
                                        if mem[_3925 + 50 len 14]:
                                            if 0 / mem[_3925 + 50 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3925 + 18 len 14] / 1000 != mem[_3925 + 18 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3925 + 18 len 14] < 1000 * mem[_3925 + 18 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if 1000 * mem[_3925 + 18 len 14]:
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3925 + 18 len 14]
                                                    if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                        idx = idx + 1
                                                        s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                        continue 
                                else:
                                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                        if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] / mem[(32 * idx) + (32 * ('cd', 36).length) + 160] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_3925 + 50 len 14]:
                                            if 1000 * mem[_3925 + 18 len 14] / 1000 != mem[_3925 + 18 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if (1000 * mem[_3925 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3925 + 18 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if (1000 * mem[_3925 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * mem[_3925 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                    if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                        idx = idx + 1
                                                        s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                        continue 
                                        else:
                                            if mem[_3925 + 50 len 14]:
                                                if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3925 + 50 len 14] / mem[_3925 + 50 len 14] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 1000 * mem[_3925 + 18 len 14] / 1000 != mem[_3925 + 18 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if (1000 * mem[_3925 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3925 + 18 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if (1000 * mem[_3925 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                    if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3925 + 50 len 14] / (1000 * mem[_3925 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                        if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                            idx = idx + 1
                                                            s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                            continue 
                    revert
                require ('cd', 36).length < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                if mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] > cd[100]:
                    idx = 0
                    s = cd[4]
                    while idx < ('cd', 36).length:
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                        _4822 = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        mem[mem[64] + 36] = _4822
                        require ext_code.size(address(s))
                        call address(s).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _4822
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4841 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4841] == bool(mem[_4841])
                        require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]
                        if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 236 len 20] != address(s):
                            if idx < mem[96]:
                                _4904 = mem[(32 * idx) + 128]
                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                    _4926 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                                    _4942 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4942 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4942 + 36] = _4926
                                    mem[_4942 + 68] = 0
                                    mem[_4942 + 100] = this.address
                                    mem[_4942 + 132] = 128
                                    mem[_4942 + 164] = mem[_4942]
                                    s = 0
                                    while s < mem[_4942]:
                                        mem[_4942 + s + 196] = mem[_4942 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_4942]) > mem[_4942]:
                                        mem[_4942 + mem[_4942] + 196] = 0
                                    require ext_code.size(address(_4904))
                                    call address(_4904).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4926, 0, address(this.address), 128, mem[_4942], mem[_4942 + 196 len ceil32(mem[_4942])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                        idx = idx + 1
                                        s = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]
                                        continue 
                        else:
                            if idx < mem[96]:
                                _4906 = mem[(32 * idx) + 128]
                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                    _4927 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                                    _4943 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4943 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4943 + 36] = 0
                                    mem[_4943 + 68] = _4927
                                    mem[_4943 + 100] = this.address
                                    mem[_4943 + 132] = 128
                                    mem[_4943 + 164] = mem[_4943]
                                    s = 0
                                    while s < mem[_4943]:
                                        mem[_4943 + s + 196] = mem[_4943 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_4943]) > mem[_4943]:
                                        mem[_4943 + mem[_4943] + 196] = 0
                                    require ext_code.size(address(_4906))
                                    call address(_4906).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4927, address(this.address), 128, mem[_4943], mem[_4943 + 196 len ceil32(mem[_4943])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                        idx = idx + 1
                                        s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                        continue 
                        revert
        else:
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            require ('cd', 36).length <= test266151307()
            mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224] = ('cd', 36).length
            mem[64] = (98 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256
            if not ('cd', 36).length:
                require 0 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = cd[100]
                idx = 0
                s = cd[4]
                while idx < ('cd', 36).length:
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3658 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3704 = mem[_3658]
                    require mem[_3658] == mem[_3658 + 12 len 20]
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3753 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3753] == mem[_3753 + 12 len 20]
                    require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]
                    require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]
                    mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256] = mem[_3753 + 12 len 20]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224] = address(_3704)
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3928 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_3928] == mem[_3928 + 18 len 14]
                    require mem[_3928 + 32] == mem[_3928 + 50 len 14]
                    require mem[_3928 + 64] == mem[_3928 + 92 len 4]
                    require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]
                    if address(_3704) != address(s):
                        if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                            if idx < mem[(32 * ('cd', 36).length) + 128]:
                                if mem[_3928 + 50 len 14] <= 0:
                                    revert with 0, 's'
                                if mem[_3928 + 18 len 14] <= 0:
                                    revert with 0, 's'
                                if not mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                    if not mem[_3928 + 18 len 14]:
                                        if 1000 * mem[_3928 + 50 len 14] / 1000 != mem[_3928 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * mem[_3928 + 50 len 14] < 1000 * mem[_3928 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if 1000 * mem[_3928 + 50 len 14]:
                                            if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3928 + 50 len 14]
                                                if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                    idx = idx + 1
                                                    s = address(_3704)
                                                    continue 
                                    else:
                                        if mem[_3928 + 18 len 14]:
                                            if 0 / mem[_3928 + 18 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3928 + 50 len 14] / 1000 != mem[_3928 + 50 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3928 + 50 len 14] < 1000 * mem[_3928 + 50 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if 1000 * mem[_3928 + 50 len 14]:
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3928 + 50 len 14]
                                                    if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                        idx = idx + 1
                                                        s = address(_3704)
                                                        continue 
                                else:
                                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                        if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] / mem[(32 * idx) + (32 * ('cd', 36).length) + 160] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_3928 + 18 len 14]:
                                            if 1000 * mem[_3928 + 50 len 14] / 1000 != mem[_3928 + 50 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if (1000 * mem[_3928 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3928 + 50 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if (1000 * mem[_3928 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * mem[_3928 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                    if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                        idx = idx + 1
                                                        s = address(_3704)
                                                        continue 
                                        else:
                                            if mem[_3928 + 18 len 14]:
                                                if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3928 + 18 len 14] / mem[_3928 + 18 len 14] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 1000 * mem[_3928 + 50 len 14] / 1000 != mem[_3928 + 50 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if (1000 * mem[_3928 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3928 + 50 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if (1000 * mem[_3928 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                    if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3928 + 18 len 14] / (1000 * mem[_3928 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                        if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                            idx = idx + 1
                                                            s = address(_3704)
                                                            continue 
                    else:
                        if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                            if idx < mem[(32 * ('cd', 36).length) + 128]:
                                if mem[_3928 + 18 len 14] <= 0:
                                    revert with 0, 's'
                                if mem[_3928 + 50 len 14] <= 0:
                                    revert with 0, 's'
                                if not mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                    if not mem[_3928 + 50 len 14]:
                                        if 1000 * mem[_3928 + 18 len 14] / 1000 != mem[_3928 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * mem[_3928 + 18 len 14] < 1000 * mem[_3928 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if 1000 * mem[_3928 + 18 len 14]:
                                            if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3928 + 18 len 14]
                                                if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                    continue 
                                    else:
                                        if mem[_3928 + 50 len 14]:
                                            if 0 / mem[_3928 + 50 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3928 + 18 len 14] / 1000 != mem[_3928 + 18 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3928 + 18 len 14] < 1000 * mem[_3928 + 18 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if 1000 * mem[_3928 + 18 len 14]:
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3928 + 18 len 14]
                                                    if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                        idx = idx + 1
                                                        s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                        continue 
                                else:
                                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                        if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] / mem[(32 * idx) + (32 * ('cd', 36).length) + 160] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_3928 + 50 len 14]:
                                            if 1000 * mem[_3928 + 18 len 14] / 1000 != mem[_3928 + 18 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if (1000 * mem[_3928 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3928 + 18 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if (1000 * mem[_3928 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * mem[_3928 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                    if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                        idx = idx + 1
                                                        s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                        continue 
                                        else:
                                            if mem[_3928 + 50 len 14]:
                                                if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3928 + 50 len 14] / mem[_3928 + 50 len 14] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 1000 * mem[_3928 + 18 len 14] / 1000 != mem[_3928 + 18 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if (1000 * mem[_3928 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3928 + 18 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if (1000 * mem[_3928 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                    if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3928 + 50 len 14] / (1000 * mem[_3928 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                        if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                            idx = idx + 1
                                                            s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                            continue 
                    revert
                require ('cd', 36).length < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                if mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] > cd[100]:
                    idx = 0
                    s = cd[4]
                    while idx < ('cd', 36).length:
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                        _4824 = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        mem[mem[64] + 36] = _4824
                        require ext_code.size(address(s))
                        call address(s).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _4824
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4842 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4842] == bool(mem[_4842])
                        require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]
                        if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 236 len 20] != address(s):
                            if idx < mem[96]:
                                _4908 = mem[(32 * idx) + 128]
                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                    _4928 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                                    _4944 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4944 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4944 + 36] = _4928
                                    mem[_4944 + 68] = 0
                                    mem[_4944 + 100] = this.address
                                    mem[_4944 + 132] = 128
                                    mem[_4944 + 164] = mem[_4944]
                                    s = 0
                                    while s < mem[_4944]:
                                        mem[_4944 + s + 196] = mem[_4944 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_4944]) > mem[_4944]:
                                        mem[_4944 + mem[_4944] + 196] = 0
                                    require ext_code.size(address(_4908))
                                    call address(_4908).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4928, 0, address(this.address), 128, mem[_4944], mem[_4944 + 196 len ceil32(mem[_4944])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                        idx = idx + 1
                                        s = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]
                                        continue 
                        else:
                            if idx < mem[96]:
                                _4910 = mem[(32 * idx) + 128]
                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                    _4929 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                                    _4945 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4945 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4945 + 36] = 0
                                    mem[_4945 + 68] = _4929
                                    mem[_4945 + 100] = this.address
                                    mem[_4945 + 132] = 128
                                    mem[_4945 + 164] = mem[_4945]
                                    s = 0
                                    while s < mem[_4945]:
                                        mem[_4945 + s + 196] = mem[_4945 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_4945]) > mem[_4945]:
                                        mem[_4945 + mem[_4945] + 196] = 0
                                    require ext_code.size(address(_4910))
                                    call address(_4910).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4929, address(this.address), 128, mem[_4945], mem[_4945 + 196 len ceil32(mem[_4945])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                        idx = idx + 1
                                        s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                        continue 
                        revert
            else:
                mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                require 0 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = cd[100]
                idx = 0
                s = cd[4]
                while idx < ('cd', 36).length:
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3659 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3707 = mem[_3659]
                    require mem[_3659] == mem[_3659 + 12 len 20]
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3755 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3755] == mem[_3755 + 12 len 20]
                    require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]
                    require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]
                    mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256] = mem[_3755 + 12 len 20]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224] = address(_3707)
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3931 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_3931] == mem[_3931 + 18 len 14]
                    require mem[_3931 + 32] == mem[_3931 + 50 len 14]
                    require mem[_3931 + 64] == mem[_3931 + 92 len 4]
                    require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]
                    if address(_3707) != address(s):
                        if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                            if idx < mem[(32 * ('cd', 36).length) + 128]:
                                if mem[_3931 + 50 len 14] <= 0:
                                    revert with 0, 's'
                                if mem[_3931 + 18 len 14] <= 0:
                                    revert with 0, 's'
                                if not mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                    if not mem[_3931 + 18 len 14]:
                                        if 1000 * mem[_3931 + 50 len 14] / 1000 != mem[_3931 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * mem[_3931 + 50 len 14] < 1000 * mem[_3931 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if 1000 * mem[_3931 + 50 len 14]:
                                            if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3931 + 50 len 14]
                                                if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                    idx = idx + 1
                                                    s = address(_3707)
                                                    continue 
                                    else:
                                        if mem[_3931 + 18 len 14]:
                                            if 0 / mem[_3931 + 18 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3931 + 50 len 14] / 1000 != mem[_3931 + 50 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3931 + 50 len 14] < 1000 * mem[_3931 + 50 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if 1000 * mem[_3931 + 50 len 14]:
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3931 + 50 len 14]
                                                    if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                        idx = idx + 1
                                                        s = address(_3707)
                                                        continue 
                                else:
                                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                        if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] / mem[(32 * idx) + (32 * ('cd', 36).length) + 160] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_3931 + 18 len 14]:
                                            if 1000 * mem[_3931 + 50 len 14] / 1000 != mem[_3931 + 50 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if (1000 * mem[_3931 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3931 + 50 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if (1000 * mem[_3931 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * mem[_3931 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                    if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                        idx = idx + 1
                                                        s = address(_3707)
                                                        continue 
                                        else:
                                            if mem[_3931 + 18 len 14]:
                                                if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3931 + 18 len 14] / mem[_3931 + 18 len 14] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 1000 * mem[_3931 + 50 len 14] / 1000 != mem[_3931 + 50 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if (1000 * mem[_3931 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3931 + 50 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if (1000 * mem[_3931 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                    if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3931 + 18 len 14] / (1000 * mem[_3931 + 50 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                        if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                                            idx = idx + 1
                                                            s = address(_3707)
                                                            continue 
                    else:
                        if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                            if idx < mem[(32 * ('cd', 36).length) + 128]:
                                if mem[_3931 + 18 len 14] <= 0:
                                    revert with 0, 's'
                                if mem[_3931 + 50 len 14] <= 0:
                                    revert with 0, 's'
                                if not mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                    if not mem[_3931 + 50 len 14]:
                                        if 1000 * mem[_3931 + 18 len 14] / 1000 != mem[_3931 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * mem[_3931 + 18 len 14] < 1000 * mem[_3931 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if 1000 * mem[_3931 + 18 len 14]:
                                            if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3931 + 18 len 14]
                                                if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                    continue 
                                    else:
                                        if mem[_3931 + 50 len 14]:
                                            if 0 / mem[_3931 + 50 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3931 + 18 len 14] / 1000 != mem[_3931 + 18 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 1000 * mem[_3931 + 18 len 14] < 1000 * mem[_3931 + 18 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if 1000 * mem[_3931 + 18 len 14]:
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / 1000 * mem[_3931 + 18 len 14]
                                                    if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                        idx = idx + 1
                                                        s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                        continue 
                                else:
                                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                        if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] / mem[(32 * idx) + (32 * ('cd', 36).length) + 160] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_3931 + 50 len 14]:
                                            if 1000 * mem[_3931 + 18 len 14] / 1000 != mem[_3931 + 18 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if (1000 * mem[_3931 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3931 + 18 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if (1000 * mem[_3931 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                    mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0 / (1000 * mem[_3931 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                    if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                        idx = idx + 1
                                                        s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                        continue 
                                        else:
                                            if mem[_3931 + 50 len 14]:
                                                if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3931 + 50 len 14] / mem[_3931 + 50 len 14] != mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 1000 * mem[_3931 + 18 len 14] / 1000 != mem[_3931 + 18 len 14]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if (1000 * mem[_3931 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]) < 1000 * mem[_3931 + 18 len 14]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if (1000 * mem[_3931 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160]):
                                                    if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                                        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160] * mem[_3931 + 50 len 14] / (1000 * mem[_3931 + 18 len 14]) + (mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] * mem[(32 * idx) + (32 * ('cd', 36).length) + 160])
                                                        if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                                            idx = idx + 1
                                                            s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                                            continue 
                    revert
                require ('cd', 36).length < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                if mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] > cd[100]:
                    idx = 0
                    s = cd[4]
                    while idx < ('cd', 36).length:
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                        _4826 = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        mem[mem[64] + 36] = _4826
                        require ext_code.size(address(s))
                        call address(s).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _4826
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4843 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4843] == bool(mem[_4843])
                        require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]
                        if mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 236 len 20] != address(s):
                            if idx < mem[96]:
                                _4912 = mem[(32 * idx) + 128]
                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                    _4930 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                                    _4946 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4946 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4946 + 36] = _4930
                                    mem[_4946 + 68] = 0
                                    mem[_4946 + 100] = this.address
                                    mem[_4946 + 132] = 128
                                    mem[_4946 + 164] = mem[_4946]
                                    s = 0
                                    while s < mem[_4946]:
                                        mem[_4946 + s + 196] = mem[_4946 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_4946]) > mem[_4946]:
                                        mem[_4946 + mem[_4946] + 196] = 0
                                    require ext_code.size(address(_4912))
                                    call address(_4912).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _4930, 0, address(this.address), 128, mem[_4946], mem[_4946 + 196 len ceil32(mem[_4946])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 192]:
                                        idx = idx + 1
                                        s = mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]
                                        continue 
                        else:
                            if idx < mem[96]:
                                _4914 = mem[(32 * idx) + 128]
                                if idx + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]:
                                    _4931 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                                    _4947 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_4947 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_4947 + 36] = 0
                                    mem[_4947 + 68] = _4931
                                    mem[_4947 + 100] = this.address
                                    mem[_4947 + 132] = 128
                                    mem[_4947 + 164] = mem[_4947]
                                    s = 0
                                    while s < mem[_4947]:
                                        mem[_4947 + s + 196] = mem[_4947 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_4947]) > mem[_4947]:
                                        mem[_4947 + mem[_4947] + 196] = 0
                                    require ext_code.size(address(_4914))
                                    call address(_4914).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _4931, address(this.address), 128, mem[_4947], mem[_4947 + 196 len ceil32(mem[_4947])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 224]:
                                        idx = idx + 1
                                        s = mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + 256]
                                        continue 
                        revert
}



}
