contract main {




// =====================  Runtime code  =====================


#
#  - sub_878829a3(?)
#
function _fallback() payable {
    revert
}

function getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require (10000 * arg2) + (arg1 * arg4)
    return (arg1 * arg4 * arg3 / (10000 * arg2) + (arg1 * arg4))
}

function sortTokens(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MdexSwapFactory: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'MdexSwapFactory: ZERO_ADDRESS'
        return address(arg1), arg2
    if not arg2:
        revert with 0, 'MdexSwapFactory: ZERO_ADDRESS'
    return address(arg2), arg1
}

function sub_a529c914(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
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
    require ('cd', 36).length / 2 <= test266151307()
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160] = ('cd', 36).length / 2
    mem[64] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (16 * Mask(251, 1, ('cd', 36).length)) + 192
    if not Mask(255, 1, ('cd', 36).length):
        idx = ('cd', 36).length / 2
        s = 0
        s = cd[4]
        while idx < ('cd', 36).length - 1:
            require idx - (('cd', 36).length / 2) < mem[96]
            _249 = mem[(32 * idx - (('cd', 36).length / 2)) + 128]
            require ext_code.size(mem[(32 * idx - (('cd', 36).length / 2)) + 140 len 20])
            staticcall mem[(32 * idx - (('cd', 36).length / 2)) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _256 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _260 = mem[_256]
            require mem[_256] == mem[_256 + 18 len 14]
            _265 = mem[_256 + 32]
            require mem[_256 + 32] == mem[_256 + 50 len 14]
            require mem[_256 + 64] == mem[_256 + 92 len 4]
            require idx < mem[96]
            require idx + 1 < mem[96]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'MdexSwapFactory: IDENTICAL_ADDRESSES'
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'MdexSwapFactory: ZERO_ADDRESS'
                require idx < mem[96]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                    require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + 128]
                    require (10000 * mem[_256 + 18 len 14]) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
                    require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                    mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * mem[_256 + 50 len 14] / (10000 * mem[_256 + 18 len 14]) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
                    idx = idx + 1
                    s = _249
                    s = s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, _265) / (10000 * Mask(112, 0, _260)) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
                    continue 
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'MdexSwapFactory: ZERO_ADDRESS'
                require idx < mem[96]
                if mem[(32 * idx + 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                    require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + 128]
                    require (10000 * mem[_256 + 18 len 14]) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
                    require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                    mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * mem[_256 + 50 len 14] / (10000 * mem[_256 + 18 len 14]) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
                    idx = idx + 1
                    s = _249
                    s = s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, _265) / (10000 * Mask(112, 0, _260)) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
                    continue 
            require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + 128]
            require (10000 * mem[_256 + 50 len 14]) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
            require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
            mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * mem[_256 + 18 len 14] / (10000 * mem[_256 + 50 len 14]) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
            idx = idx + 1
            s = _249
            s = s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, _260) / (10000 * Mask(112, 0, _265)) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
            continue 
        mem[mem[64]] = 32
        _258 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + 32] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + 64 len 32 * _258] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 len 32 * _258]
        return 32, mem[mem[64] + 32 len (32 * _258) + 32]
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 len 16 * Mask(251, 1, ('cd', 36).length)] = call.data[calldata.size len 16 * Mask(251, 1, ('cd', 36).length)]
    idx = ('cd', 36).length / 2
    s = 0
    s = cd[4]
    while idx < ('cd', 36).length - 1:
        require idx - (('cd', 36).length / 2) < mem[96]
        _253 = mem[(32 * idx - (('cd', 36).length / 2)) + 128]
        require ext_code.size(mem[(32 * idx - (('cd', 36).length / 2)) + 140 len 20])
        staticcall mem[(32 * idx - (('cd', 36).length / 2)) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _257 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _261 = mem[_257]
        require mem[_257] == mem[_257 + 18 len 14]
        _267 = mem[_257 + 32]
        require mem[_257 + 32] == mem[_257 + 50 len 14]
        require mem[_257 + 64] == mem[_257 + 92 len 4]
        require idx < mem[96]
        require idx + 1 < mem[96]
        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
            revert with 0, 'MdexSwapFactory: IDENTICAL_ADDRESSES'
        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'MdexSwapFactory: ZERO_ADDRESS'
            require idx < mem[96]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + 128]
                require (10000 * mem[_257 + 18 len 14]) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
                require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * mem[_257 + 50 len 14] / (10000 * mem[_257 + 18 len 14]) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
                idx = idx + 1
                s = _253
                s = s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, _267) / (10000 * Mask(112, 0, _261)) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
                continue 
        else:
            if not mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'MdexSwapFactory: ZERO_ADDRESS'
            require idx < mem[96]
            if mem[(32 * idx + 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + 128]
                require (10000 * mem[_257 + 18 len 14]) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
                require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * mem[_257 + 50 len 14] / (10000 * mem[_257 + 18 len 14]) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
                idx = idx + 1
                s = _253
                s = s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, _267) / (10000 * Mask(112, 0, _261)) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
                continue 
        require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + 128]
        require (10000 * mem[_257 + 50 len 14]) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
        require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
        mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * mem[_257 + 18 len 14] / (10000 * mem[_257 + 50 len 14]) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
        idx = idx + 1
        s = _253
        s = s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, _261) / (10000 * Mask(112, 0, _267)) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
        continue 
    mem[mem[64]] = 32
    _259 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
    mem[mem[64] + 32] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
    mem[mem[64] + 64 len 32 * _259] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 len 32 * _259]
    return 32, mem[mem[64] + 32 len (32 * _259) + 32]
}

function sub_c3c1829e(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
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
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160] = 0
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 96
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256] = 96
    require ('cd', 36).length / 2 <= test266151307()
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288] = ('cd', 36).length / 2
    mem[64] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (16 * Mask(251, 1, ('cd', 36).length)) + 320
    if not Mask(255, 1, ('cd', 36).length):
        idx = ('cd', 36).length / 2
        s = 0
        s = var56007
        while idx < ('cd', 36).length - 1:
            require idx - (('cd', 36).length / 2) < mem[96]
            _405 = mem[(32 * idx - (('cd', 36).length / 2)) + 128]
            require ext_code.size(mem[(32 * idx - (('cd', 36).length / 2)) + 140 len 20])
            staticcall mem[(32 * idx - (('cd', 36).length / 2)) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _415 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _419 = mem[_415]
            require mem[_415] == mem[_415 + 18 len 14]
            _425 = mem[_415 + 32]
            require mem[_415 + 32] == mem[_415 + 50 len 14]
            require mem[_415 + 64] == mem[_415 + 92 len 4]
            require idx < mem[96]
            require idx + 1 < mem[96]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'MdexSwapFactory: IDENTICAL_ADDRESSES'
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'MdexSwapFactory: ZERO_ADDRESS'
                require idx < mem[96]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                    require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + 128]
                    require (10000 * mem[_415 + 18 len 14]) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
                    require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288]
                    mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320] = s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * mem[_415 + 50 len 14] / (10000 * mem[_415 + 18 len 14]) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
                    idx = idx + 1
                    s = _405
                    s = s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, _425) / (10000 * Mask(112, 0, _419)) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
                    continue 
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'MdexSwapFactory: ZERO_ADDRESS'
                require idx < mem[96]
                if mem[(32 * idx + 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                    require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + 128]
                    require (10000 * mem[_415 + 18 len 14]) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
                    require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288]
                    mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320] = s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * mem[_415 + 50 len 14] / (10000 * mem[_415 + 18 len 14]) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
                    idx = idx + 1
                    s = _405
                    s = s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, _425) / (10000 * Mask(112, 0, _419)) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
                    continue 
            require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + 128]
            require (10000 * mem[_415 + 50 len 14]) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
            require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288]
            mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320] = s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * mem[_415 + 18 len 14] / (10000 * mem[_415 + 50 len 14]) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
            idx = idx + 1
            s = _405
            s = s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, _419) / (10000 * Mask(112, 0, _425)) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
            continue 
        require mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288] - 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288]
        if mem[(32 * mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288] - 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320] - var56007 >= var56001:
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160] = var56007
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288] - 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320]
            var56001 = mem[(32 * mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288] - 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320] - var56007
            var56002 = mem[(32 * mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288] - 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320]
            var56003 = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288
            var56007 = var56007 + (10 * var56007 / 100)
            continue 
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 96
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256] = (32 * ('cd', 36).length) + 128
        _417 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + 64] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 96] = 128
        _429 = mem[96]
        mem[mem[64] + 160] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 192
        while idx < _429:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _497 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256]
        mem[_417 + 128] = (32 * _429) + 160
        _499 = mem[_497]
        mem[_417 + (32 * _429) + 192] = mem[_497]
        mem[_417 + (32 * _429) + 224 len 32 * _499] = mem[_497 + 32 len 32 * _499]
        var96001 = _499
        return memory
          from mem[64]
           len _417 + (32 * _429) + (32 * _499) + -mem[64] + 224
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320 len 16 * Mask(251, 1, ('cd', 36).length)] = call.data[calldata.size len 16 * Mask(251, 1, ('cd', 36).length)]
    idx = ('cd', 36).length / 2
    s = 0
    s = var56007
    while idx < ('cd', 36).length - 1:
        require idx - (('cd', 36).length / 2) < mem[96]
        _410 = mem[(32 * idx - (('cd', 36).length / 2)) + 128]
        require ext_code.size(mem[(32 * idx - (('cd', 36).length / 2)) + 140 len 20])
        staticcall mem[(32 * idx - (('cd', 36).length / 2)) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _416 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _420 = mem[_416]
        require mem[_416] == mem[_416 + 18 len 14]
        _426 = mem[_416 + 32]
        require mem[_416 + 32] == mem[_416 + 50 len 14]
        require mem[_416 + 64] == mem[_416 + 92 len 4]
        require idx < mem[96]
        require idx + 1 < mem[96]
        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
            revert with 0, 'MdexSwapFactory: IDENTICAL_ADDRESSES'
        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'MdexSwapFactory: ZERO_ADDRESS'
            require idx < mem[96]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + 128]
                require (10000 * mem[_416 + 18 len 14]) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
                require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288]
                mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320] = s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * mem[_416 + 50 len 14] / (10000 * mem[_416 + 18 len 14]) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
                idx = idx + 1
                s = _410
                s = s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, _426) / (10000 * Mask(112, 0, _420)) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
                continue 
        else:
            if not mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'MdexSwapFactory: ZERO_ADDRESS'
            require idx < mem[96]
            if mem[(32 * idx + 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + 128]
                require (10000 * mem[_416 + 18 len 14]) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
                require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288]
                mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320] = s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * mem[_416 + 50 len 14] / (10000 * mem[_416 + 18 len 14]) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
                idx = idx + 1
                s = _410
                s = s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, _426) / (10000 * Mask(112, 0, _420)) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
                continue 
        require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + 128]
        require (10000 * mem[_416 + 50 len 14]) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
        require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288]
        mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320] = s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * mem[_416 + 18 len 14] / (10000 * mem[_416 + 50 len 14]) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
        idx = idx + 1
        s = _410
        s = s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * Mask(112, 0, _420) / (10000 * Mask(112, 0, _426)) + (s * mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160])
        continue 
    require mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288] - 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288]
    if mem[(32 * mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288] - 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320] - var56007 >= var56001:
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160] = var56007
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288] - 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320]
        var56001 = mem[(32 * mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288] - 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320] - var56007
        var56002 = mem[(32 * mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288] - 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320]
        var56003 = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288
        var56007 = var56007 + (10 * var56007 / 100)
        continue 
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 96
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256] = (32 * ('cd', 36).length) + 128
    _418 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
    mem[mem[64] + 64] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
    mem[mem[64] + 96] = 128
    _430 = mem[96]
    mem[mem[64] + 160] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 192
    while idx < _430:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _498 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256]
    mem[_418 + 128] = (32 * _430) + 160
    _500 = mem[_498]
    mem[_418 + (32 * _430) + 192] = mem[_498]
    mem[_418 + (32 * _430) + 224 len 32 * _500] = mem[_498 + 32 len 32 * _500]
    return memory
      from mem[64]
       len _418 + (32 * _430) + (32 * _500) + -mem[64] + 224
}



}
