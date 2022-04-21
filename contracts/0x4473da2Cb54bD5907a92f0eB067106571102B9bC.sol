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
                call address(s).transfer(address rg1, uint256 rg2) with:
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
                call address(s).transfer(address rg1, uint256 rg2) with:
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
                call address(s).transfer(address rg1, uint256 rg2) with:
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
                call address(s).transfer(address rg1, uint256 rg2) with:
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

function sub_f4b0ae7a(?) {
    require calldata.size - 4 >= 64
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
        require cd[s] == cd[s]
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
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 4).length <= test266151307()
    if not ('cd', 4).length:
        require ('cd', 4).length <= test266151307()
        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = ('cd', 4).length
        mem[64] = (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224
        if not ('cd', 4).length:
            require ('cd', 4).length - 1 < ('cd', 4).length
            require ('cd', 4).length - 1 < ('cd', 4).length
            require 0 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = Mask(96, 0, mem[(32 * ('cd', 4).length - 1) + 128]) >> 160
            idx = 0
            while idx < ('cd', 4).length - 1:
                require idx < mem[96]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2513 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2540 = mem[_2513]
                require mem[_2513] == mem[_2513 + 18 len 14]
                require mem[_2513 + 32] == mem[_2513 + 50 len 14]
                require mem[_2513 + 64] == mem[_2513 + 92 len 4]
                require idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                _2834 = mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]
                require idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] = mem[_2513 + 50 len 14]
                mem[_2834] = Mask(112, 0, _2540)
                idx = idx + 1
                continue 
            require mem[96] - 1 < mem[96]
            require 0 < mem[(32 * ('cd', 4).length) + 128]
            if mem[(32 * mem[96] - 1) + 140 len 20] != mem[(32 * ('cd', 4).length) + 172 len 20]:
                require 0 < mem[(32 * ('cd', 4).length) + 128]
                require 0 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                require 0 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                require 1 < mem[(32 * ('cd', 4).length) + 128]
                if mem[(32 * mem[96] - 1) + 140 len 20] != mem[(32 * ('cd', 4).length) + 204 len 20]:
                    require 1 < mem[(32 * ('cd', 4).length) + 128]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[96]
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000)
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000)
                    idx = 2
                    s = mem[(32 * ('cd', 4).length) + 192]
                    s = Mask(96, 0, mem[160]) >> 160
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] * Mask(96, 0, mem[160]) >> 160 / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000) / 1000
                    t = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000)
                    while idx < mem[96] - 1:
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        if mem[(32 * mem[96] - 1) + 140 len 20] != mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]:
                            if idx < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        else:
                            if mem[96] + idx - 1 < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * mem[96] + idx - 1) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        revert
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[(32 * ('cd', 4).length - 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] = t
                    mem[mem[64]] = 32
                    _3534 = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[64] + 32] = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224
                    t = mem[64] + 64
                    while idx < _3534:
                        u = 0
                        v = mem[s]
                        w = t
                        while u < 2:
                            mem[w] = mem[v]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
                else:
                    require mem[96] < mem[(32 * ('cd', 4).length) + 128]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[96]
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000)
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000)
                    idx = 2
                    s = mem[(32 * mem[96]) + (32 * ('cd', 4).length) + 160]
                    s = Mask(96, 0, mem[160]) >> 160
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] * Mask(96, 0, mem[160]) >> 160 / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000) / 1000
                    t = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000)
                    while idx < mem[96] - 1:
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        if mem[(32 * mem[96] - 1) + 140 len 20] != mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]:
                            if idx < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        else:
                            if mem[96] + idx - 1 < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * mem[96] + idx - 1) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        revert
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[(32 * ('cd', 4).length - 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] = t
                    mem[mem[64]] = 32
                    _3537 = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[64] + 32] = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224
                    t = mem[64] + 64
                    while idx < _3537:
                        u = 0
                        v = mem[s]
                        w = t
                        while u < 2:
                            mem[w] = mem[v]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
            else:
                require mem[96] - 1 < mem[(32 * ('cd', 4).length) + 128]
                require 0 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                require 0 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                require 1 < mem[(32 * ('cd', 4).length) + 128]
                if mem[(32 * mem[96] - 1) + 140 len 20] != mem[(32 * ('cd', 4).length) + 204 len 20]:
                    require 1 < mem[(32 * ('cd', 4).length) + 128]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[96]
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000)
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000)
                    idx = 2
                    s = mem[(32 * ('cd', 4).length) + 192]
                    s = Mask(96, 0, mem[160]) >> 160
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] * Mask(96, 0, mem[160]) >> 160 / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000) / 1000
                    t = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000)
                    while idx < mem[96] - 1:
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        if mem[(32 * mem[96] - 1) + 140 len 20] != mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]:
                            if idx < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        else:
                            if mem[96] + idx - 1 < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * mem[96] + idx - 1) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        revert
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[(32 * ('cd', 4).length - 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] = t
                    mem[mem[64]] = 32
                    _3540 = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[64] + 32] = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224
                    t = mem[64] + 64
                    while idx < _3540:
                        u = 0
                        v = mem[s]
                        w = t
                        while u < 2:
                            mem[w] = mem[v]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
                else:
                    require mem[96] < mem[(32 * ('cd', 4).length) + 128]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[96]
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000)
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000)
                    idx = 2
                    s = mem[(32 * mem[96]) + (32 * ('cd', 4).length) + 160]
                    s = Mask(96, 0, mem[160]) >> 160
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] * Mask(96, 0, mem[160]) >> 160 / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000) / 1000
                    t = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000)
                    while idx < mem[96] - 1:
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        if mem[(32 * mem[96] - 1) + 140 len 20] != mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]:
                            if idx < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        else:
                            if mem[96] + idx - 1 < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * mem[96] + idx - 1) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        revert
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[(32 * ('cd', 4).length - 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] = t
                    mem[mem[64]] = 32
                    _3543 = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[64] + 32] = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224
                    t = mem[64] + 64
                    while idx < _3543:
                        u = 0
                        v = mem[s]
                        w = t
                        while u < 2:
                            mem[w] = mem[v]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
        else:
            mem[64] = (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288
            mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224 len 64] = call.data[calldata.size len 64]
            mem[var46001] = (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224
            s = var46001
            idx = var46002
            while idx - 1:
                mem[64] = mem[64] + 64
                mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224 len 64] = call.data[calldata.size len 64]
                mem[s + 32] = (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224
                s = s + 32
                idx = idx - 1
                continue 
            require ('cd', 4).length - 1 < mem[96]
            require ('cd', 4).length - 1 < mem[96]
            require 0 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = Mask(96, 0, mem[(32 * ('cd', 4).length - 1) + 128]) >> 160
            idx = 0
            while idx < ('cd', 4).length - 1:
                require idx < mem[96]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3997 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _4014 = mem[_3997]
                require mem[_3997] == mem[_3997 + 18 len 14]
                require mem[_3997 + 32] == mem[_3997 + 50 len 14]
                require mem[_3997 + 64] == mem[_3997 + 92 len 4]
                require idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                _4164 = mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]
                require idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] = mem[_3997 + 50 len 14]
                mem[_4164] = Mask(112, 0, _4014)
                idx = idx + 1
                continue 
            require mem[96] - 1 < mem[96]
            require 0 < mem[(32 * ('cd', 4).length) + 128]
            if mem[(32 * mem[96] - 1) + 140 len 20] != mem[(32 * ('cd', 4).length) + 172 len 20]:
                require 0 < mem[(32 * ('cd', 4).length) + 128]
                require 0 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                require 0 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                require 1 < mem[(32 * ('cd', 4).length) + 128]
                if mem[(32 * mem[96] - 1) + 140 len 20] != mem[(32 * ('cd', 4).length) + 204 len 20]:
                    require 1 < mem[(32 * ('cd', 4).length) + 128]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[96]
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000)
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000)
                    idx = 2
                    s = mem[(32 * ('cd', 4).length) + 192]
                    s = Mask(96, 0, mem[160]) >> 160
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] * Mask(96, 0, mem[160]) >> 160 / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000) / 1000
                    t = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000)
                    while idx < mem[96] - 1:
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        if mem[(32 * mem[96] - 1) + 140 len 20] != mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]:
                            if idx < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        else:
                            if mem[96] + idx - 1 < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * mem[96] + idx - 1) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        revert
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[(32 * ('cd', 4).length - 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] = t
                    mem[mem[64]] = 32
                    _4598 = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[64] + 32] = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224
                    t = mem[64] + 64
                    while idx < _4598:
                        u = 0
                        v = mem[s]
                        w = t
                        while u < 2:
                            mem[w] = mem[v]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
                else:
                    require mem[96] < mem[(32 * ('cd', 4).length) + 128]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[96]
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000)
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000)
                    idx = 2
                    s = mem[(32 * mem[96]) + (32 * ('cd', 4).length) + 160]
                    s = Mask(96, 0, mem[160]) >> 160
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] * Mask(96, 0, mem[160]) >> 160 / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000) / 1000
                    t = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000)
                    while idx < mem[96] - 1:
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        if mem[(32 * mem[96] - 1) + 140 len 20] != mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]:
                            if idx < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        else:
                            if mem[96] + idx - 1 < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * mem[96] + idx - 1) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        revert
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[(32 * ('cd', 4).length - 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] = t
                    mem[mem[64]] = 32
                    _4601 = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[64] + 32] = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224
                    t = mem[64] + 64
                    while idx < _4601:
                        u = 0
                        v = mem[s]
                        w = t
                        while u < 2:
                            mem[w] = mem[v]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
            else:
                require mem[96] - 1 < mem[(32 * ('cd', 4).length) + 128]
                require 0 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                require 0 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                require 1 < mem[(32 * ('cd', 4).length) + 128]
                if mem[(32 * mem[96] - 1) + 140 len 20] != mem[(32 * ('cd', 4).length) + 204 len 20]:
                    require 1 < mem[(32 * ('cd', 4).length) + 128]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[96]
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000)
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000)
                    idx = 2
                    s = mem[(32 * ('cd', 4).length) + 192]
                    s = Mask(96, 0, mem[160]) >> 160
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] * Mask(96, 0, mem[160]) >> 160 / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000) / 1000
                    t = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000)
                    while idx < mem[96] - 1:
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        if mem[(32 * mem[96] - 1) + 140 len 20] != mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]:
                            if idx < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        else:
                            if mem[96] + idx - 1 < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * mem[96] + idx - 1) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        revert
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[(32 * ('cd', 4).length - 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] = t
                    mem[mem[64]] = 32
                    _4604 = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[64] + 32] = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224
                    t = mem[64] + 64
                    while idx < _4604:
                        u = 0
                        v = mem[s]
                        w = t
                        while u < 2:
                            mem[w] = mem[v]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
                else:
                    require mem[96] < mem[(32 * ('cd', 4).length) + 128]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[96]
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000)
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000)
                    idx = 2
                    s = mem[(32 * mem[96]) + (32 * ('cd', 4).length) + 160]
                    s = Mask(96, 0, mem[160]) >> 160
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] * Mask(96, 0, mem[160]) >> 160 / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000) / 1000
                    t = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000)
                    while idx < mem[96] - 1:
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        if mem[(32 * mem[96] - 1) + 140 len 20] != mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]:
                            if idx < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        else:
                            if mem[96] + idx - 1 < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * mem[96] + idx - 1) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        revert
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[(32 * ('cd', 4).length - 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] = t
                    mem[mem[64]] = 32
                    _4607 = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[64] + 32] = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224
                    t = mem[64] + 64
                    while idx < _4607:
                        u = 0
                        v = mem[s]
                        w = t
                        while u < 2:
                            mem[w] = mem[v]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
    else:
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        require ('cd', 4).length <= test266151307()
        mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = ('cd', 4).length
        mem[64] = (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224
        if not ('cd', 4).length:
            require ('cd', 4).length - 1 < ('cd', 4).length
            require ('cd', 4).length - 1 < ('cd', 4).length
            require 0 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = Mask(96, 0, mem[(32 * ('cd', 4).length - 1) + 128]) >> 160
            idx = 0
            while idx < ('cd', 4).length - 1:
                require idx < mem[96]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2516 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2543 = mem[_2516]
                require mem[_2516] == mem[_2516 + 18 len 14]
                require mem[_2516 + 32] == mem[_2516 + 50 len 14]
                require mem[_2516 + 64] == mem[_2516 + 92 len 4]
                require idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                _2848 = mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]
                require idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] = mem[_2516 + 50 len 14]
                mem[_2848] = Mask(112, 0, _2543)
                idx = idx + 1
                continue 
            require mem[96] - 1 < mem[96]
            require 0 < mem[(32 * ('cd', 4).length) + 128]
            if mem[(32 * mem[96] - 1) + 140 len 20] != mem[(32 * ('cd', 4).length) + 172 len 20]:
                require 0 < mem[(32 * ('cd', 4).length) + 128]
                require 0 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                require 0 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                require 1 < mem[(32 * ('cd', 4).length) + 128]
                if mem[(32 * mem[96] - 1) + 140 len 20] != mem[(32 * ('cd', 4).length) + 204 len 20]:
                    require 1 < mem[(32 * ('cd', 4).length) + 128]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[96]
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000)
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000)
                    idx = 2
                    s = mem[(32 * ('cd', 4).length) + 192]
                    s = Mask(96, 0, mem[160]) >> 160
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] * Mask(96, 0, mem[160]) >> 160 / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000) / 1000
                    t = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000)
                    while idx < mem[96] - 1:
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        if mem[(32 * mem[96] - 1) + 140 len 20] != mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]:
                            if idx < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        else:
                            if mem[96] + idx - 1 < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * mem[96] + idx - 1) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        revert
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[(32 * ('cd', 4).length - 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] = t
                    mem[mem[64]] = 32
                    _3548 = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[64] + 32] = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224
                    t = mem[64] + 64
                    while idx < _3548:
                        u = 0
                        v = mem[s]
                        w = t
                        while u < 2:
                            mem[w] = mem[v]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
                else:
                    require mem[96] < mem[(32 * ('cd', 4).length) + 128]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[96]
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000)
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000)
                    idx = 2
                    s = mem[(32 * mem[96]) + (32 * ('cd', 4).length) + 160]
                    s = Mask(96, 0, mem[160]) >> 160
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] * Mask(96, 0, mem[160]) >> 160 / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000) / 1000
                    t = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000)
                    while idx < mem[96] - 1:
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        if mem[(32 * mem[96] - 1) + 140 len 20] != mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]:
                            if idx < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        else:
                            if mem[96] + idx - 1 < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * mem[96] + idx - 1) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        revert
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[(32 * ('cd', 4).length - 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] = t
                    mem[mem[64]] = 32
                    _3551 = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[64] + 32] = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224
                    t = mem[64] + 64
                    while idx < _3551:
                        u = 0
                        v = mem[s]
                        w = t
                        while u < 2:
                            mem[w] = mem[v]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
            else:
                require mem[96] - 1 < mem[(32 * ('cd', 4).length) + 128]
                require 0 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                require 0 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                require 1 < mem[(32 * ('cd', 4).length) + 128]
                if mem[(32 * mem[96] - 1) + 140 len 20] != mem[(32 * ('cd', 4).length) + 204 len 20]:
                    require 1 < mem[(32 * ('cd', 4).length) + 128]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[96]
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000)
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000)
                    idx = 2
                    s = mem[(32 * ('cd', 4).length) + 192]
                    s = Mask(96, 0, mem[160]) >> 160
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] * Mask(96, 0, mem[160]) >> 160 / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000) / 1000
                    t = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000)
                    while idx < mem[96] - 1:
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        if mem[(32 * mem[96] - 1) + 140 len 20] != mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]:
                            if idx < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        else:
                            if mem[96] + idx - 1 < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * mem[96] + idx - 1) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        revert
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[(32 * ('cd', 4).length - 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] = t
                    mem[mem[64]] = 32
                    _3554 = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[64] + 32] = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224
                    t = mem[64] + 64
                    while idx < _3554:
                        u = 0
                        v = mem[s]
                        w = t
                        while u < 2:
                            mem[w] = mem[v]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
                else:
                    require mem[96] < mem[(32 * ('cd', 4).length) + 128]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[96]
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000)
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000)
                    idx = 2
                    s = mem[(32 * mem[96]) + (32 * ('cd', 4).length) + 160]
                    s = Mask(96, 0, mem[160]) >> 160
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] * Mask(96, 0, mem[160]) >> 160 / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000) / 1000
                    t = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000)
                    while idx < mem[96] - 1:
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        if mem[(32 * mem[96] - 1) + 140 len 20] != mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]:
                            if idx < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        else:
                            if mem[96] + idx - 1 < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * mem[96] + idx - 1) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        revert
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[(32 * ('cd', 4).length - 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] = t
                    mem[mem[64]] = 32
                    _3557 = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[64] + 32] = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224
                    t = mem[64] + 64
                    while idx < _3557:
                        u = 0
                        v = mem[s]
                        w = t
                        while u < 2:
                            mem[w] = mem[v]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
        else:
            mem[64] = (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288
            mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224 len 64] = call.data[calldata.size len 64]
            mem[var47001] = (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224
            s = var47001
            idx = var47002
            while idx - 1:
                mem[64] = mem[64] + 64
                mem[(98 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224 len 64] = call.data[calldata.size len 64]
                mem[s + 32] = (98 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224
                s = s + 32
                idx = idx - 1
                continue 
            require ('cd', 4).length - 1 < mem[96]
            require ('cd', 4).length - 1 < mem[96]
            require 0 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = Mask(96, 0, mem[(32 * ('cd', 4).length - 1) + 128]) >> 160
            idx = 0
            while idx < ('cd', 4).length - 1:
                require idx < mem[96]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3999 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _4017 = mem[_3999]
                require mem[_3999] == mem[_3999 + 18 len 14]
                require mem[_3999 + 32] == mem[_3999 + 50 len 14]
                require mem[_3999 + 64] == mem[_3999 + 92 len 4]
                require idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                _4177 = mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]
                require idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] = mem[_3999 + 50 len 14]
                mem[_4177] = Mask(112, 0, _4017)
                idx = idx + 1
                continue 
            require mem[96] - 1 < mem[96]
            require 0 < mem[(32 * ('cd', 4).length) + 128]
            if mem[(32 * mem[96] - 1) + 140 len 20] != mem[(32 * ('cd', 4).length) + 172 len 20]:
                require 0 < mem[(32 * ('cd', 4).length) + 128]
                require 0 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                require 0 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                require 1 < mem[(32 * ('cd', 4).length) + 128]
                if mem[(32 * mem[96] - 1) + 140 len 20] != mem[(32 * ('cd', 4).length) + 204 len 20]:
                    require 1 < mem[(32 * ('cd', 4).length) + 128]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[96]
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000)
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000)
                    idx = 2
                    s = mem[(32 * ('cd', 4).length) + 192]
                    s = Mask(96, 0, mem[160]) >> 160
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] * Mask(96, 0, mem[160]) >> 160 / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000) / 1000
                    t = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000)
                    while idx < mem[96] - 1:
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        if mem[(32 * mem[96] - 1) + 140 len 20] != mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]:
                            if idx < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        else:
                            if mem[96] + idx - 1 < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * mem[96] + idx - 1) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        revert
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[(32 * ('cd', 4).length - 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] = t
                    mem[mem[64]] = 32
                    _4610 = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[64] + 32] = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224
                    t = mem[64] + 64
                    while idx < _4610:
                        u = 0
                        v = mem[s]
                        w = t
                        while u < 2:
                            mem[w] = mem[v]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
                else:
                    require mem[96] < mem[(32 * ('cd', 4).length) + 128]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[96]
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000)
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000)
                    idx = 2
                    s = mem[(32 * mem[96]) + (32 * ('cd', 4).length) + 160]
                    s = Mask(96, 0, mem[160]) >> 160
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] * Mask(96, 0, mem[160]) >> 160 / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000) / 1000
                    t = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / 1000)
                    while idx < mem[96] - 1:
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        if mem[(32 * mem[96] - 1) + 140 len 20] != mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]:
                            if idx < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        else:
                            if mem[96] + idx - 1 < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * mem[96] + idx - 1) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        revert
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[(32 * ('cd', 4).length - 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] = t
                    mem[mem[64]] = 32
                    _4613 = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[64] + 32] = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224
                    t = mem[64] + 64
                    while idx < _4613:
                        u = 0
                        v = mem[s]
                        w = t
                        while u < 2:
                            mem[w] = mem[v]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
            else:
                require mem[96] - 1 < mem[(32 * ('cd', 4).length) + 128]
                require 0 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                require 0 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                require 1 < mem[(32 * ('cd', 4).length) + 128]
                if mem[(32 * mem[96] - 1) + 140 len 20] != mem[(32 * ('cd', 4).length) + 204 len 20]:
                    require 1 < mem[(32 * ('cd', 4).length) + 128]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[96]
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000)
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000)
                    idx = 2
                    s = mem[(32 * ('cd', 4).length) + 192]
                    s = Mask(96, 0, mem[160]) >> 160
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] * Mask(96, 0, mem[160]) >> 160 / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000) / 1000
                    t = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000)
                    while idx < mem[96] - 1:
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        if mem[(32 * mem[96] - 1) + 140 len 20] != mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]:
                            if idx < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        else:
                            if mem[96] + idx - 1 < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * mem[96] + idx - 1) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        revert
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[(32 * ('cd', 4).length - 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] = t
                    mem[mem[64]] = 32
                    _4616 = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[64] + 32] = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224
                    t = mem[64] + 64
                    while idx < _4616:
                        u = 0
                        v = mem[s]
                        w = t
                        while u < 2:
                            mem[w] = mem[v]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
                else:
                    require mem[96] < mem[(32 * ('cd', 4).length) + 128]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require 1 < mem[96]
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000)
                    require mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000)
                    idx = 2
                    s = mem[(32 * mem[96]) + (32 * ('cd', 4).length) + 160]
                    s = Mask(96, 0, mem[160]) >> 160
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]]
                    s = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] + 32] * Mask(96, 0, mem[160]) >> 160 / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000) / 1000
                    t = mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] / mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]] + (Mask(96, 0, mem[160]) >> 160 * mem[mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / 1000)
                    while idx < mem[96] - 1:
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        if mem[(32 * mem[96] - 1) + 140 len 20] != mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]:
                            if idx < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        else:
                            if mem[96] + idx - 1 < mem[(32 * ('cd', 4).length) + 128]:
                                if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                    if idx < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                                        if idx < mem[96]:
                                            if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                if mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000):
                                                    idx = idx + 1
                                                    s = mem[(32 * mem[96] + idx - 1) + (32 * ('cd', 4).length) + 160]
                                                    s = Mask(96, 0, mem[(32 * idx) + 128]) >> 160
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32]
                                                    s = mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]]
                                                    s = s * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] + 32] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000) / 1000
                                                    t = t * mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] / mem[mem[(32 * idx) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] + (Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * s / 1000)
                                                    continue 
                        revert
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    require ('cd', 4).length - 1 < mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[(32 * ('cd', 4).length - 1) + (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224]] = t
                    mem[mem[64]] = 32
                    _4619 = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[64] + 32] = mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224
                    t = mem[64] + 64
                    while idx < _4619:
                        u = 0
                        v = mem[s]
                        w = t
                        while u < 2:
                            mem[w] = mem[v]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
