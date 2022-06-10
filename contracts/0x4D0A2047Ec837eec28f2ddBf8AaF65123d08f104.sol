contract main {




// =====================  Runtime code  =====================


#
#  - sub_878829a3(?)
#  - sub_9d679c8a(?)
#
function _fallback() payable {
    revert
}

function getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require (arg4 * arg1) + (10000 * arg2)
    return (arg4 * arg1 * arg3 / (arg4 * arg1) + (10000 * arg2))
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 160 >= 128 and (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 <= test266151307()
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 36).length) + 160
    while idx < ('cd', 68).length:
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
            _257 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _262 = mem[_257]
            require mem[_257] == mem[_257 + 18 len 14]
            _266 = mem[_257 + 32]
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
                    require (mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * mem[_257 + 18 len 14])
                    require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                    mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * s * mem[_257 + 50 len 14] / (mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * mem[_257 + 18 len 14])
                    idx = idx + 1
                    s = _249
                    s = mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * s * Mask(112, 0, _266) / (mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * Mask(112, 0, _262))
                    continue 
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'MdexSwapFactory: ZERO_ADDRESS'
                require idx < mem[96]
                if mem[(32 * idx + 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                    require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + 128]
                    require (mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * mem[_257 + 18 len 14])
                    require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                    mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * s * mem[_257 + 50 len 14] / (mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * mem[_257 + 18 len 14])
                    idx = idx + 1
                    s = _249
                    s = mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * s * Mask(112, 0, _266) / (mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * Mask(112, 0, _262))
                    continue 
            require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + 128]
            require (mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * mem[_257 + 50 len 14])
            require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
            mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * s * mem[_257 + 18 len 14] / (mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * mem[_257 + 50 len 14])
            idx = idx + 1
            s = _249
            s = mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * s * Mask(112, 0, _262) / (mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * Mask(112, 0, _266))
            continue 
        mem[mem[64]] = 32
        _256 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + 32] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + 64 len 32 * _256] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 len 32 * _256]
        return 32, mem[mem[64] + 32 len (32 * _256) + 32]
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
        _259 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _263 = mem[_259]
        require mem[_259] == mem[_259 + 18 len 14]
        _267 = mem[_259 + 32]
        require mem[_259 + 32] == mem[_259 + 50 len 14]
        require mem[_259 + 64] == mem[_259 + 92 len 4]
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
                require (mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * mem[_259 + 18 len 14])
                require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * s * mem[_259 + 50 len 14] / (mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * mem[_259 + 18 len 14])
                idx = idx + 1
                s = _253
                s = mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * s * Mask(112, 0, _267) / (mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * Mask(112, 0, _263))
                continue 
        else:
            if not mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'MdexSwapFactory: ZERO_ADDRESS'
            require idx < mem[96]
            if mem[(32 * idx + 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + 128]
                require (mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * mem[_259 + 18 len 14])
                require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * s * mem[_259 + 50 len 14] / (mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * mem[_259 + 18 len 14])
                idx = idx + 1
                s = _253
                s = mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * s * Mask(112, 0, _267) / (mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * Mask(112, 0, _263))
                continue 
        require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + 128]
        require (mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * mem[_259 + 50 len 14])
        require idx - (('cd', 36).length / 2) < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
        mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * s * mem[_259 + 18 len 14] / (mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * mem[_259 + 50 len 14])
        idx = idx + 1
        s = _253
        s = mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * s * Mask(112, 0, _263) / (mem[(32 * idx - (('cd', 36).length / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * Mask(112, 0, _267))
        continue 
    mem[mem[64]] = 32
    _258 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
    mem[mem[64] + 32] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
    mem[mem[64] + 64 len 32 * _258] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 len 32 * _258]
    return 32, mem[mem[64] + 32 len (32 * _258) + 32]
}

function sub_c3c1829e(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 160 >= 128 and (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 <= test266151307()
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 36).length) + 160
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160] = 0
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 0
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256] = 96
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288] = 96
    require var49001 / 2 <= test266151307()
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320] = var49001 / 2
    mem[64] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (16 * Mask(251, 1, var49001)) + 352
    if not Mask(255, 1, var49001):
        idx = var49001 / 2
        s = 0
        s = var49010
        while idx < ('cd', 36).length - 1:
            require idx - (var49001 / 2) < mem[96]
            _616 = mem[(32 * idx - (var49001 / 2)) + 128]
            require ext_code.size(mem[(32 * idx - (var49001 / 2)) + 140 len 20])
            staticcall mem[(32 * idx - (var49001 / 2)) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _626 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _637 = mem[_626]
            require mem[_626] == mem[_626 + 18 len 14]
            _649 = mem[_626 + 32]
            require mem[_626 + 32] == mem[_626 + 50 len 14]
            require mem[_626 + 64] == mem[_626 + 92 len 4]
            require idx < mem[96]
            require idx + 1 < mem[96]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'MdexSwapFactory: IDENTICAL_ADDRESSES'
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'MdexSwapFactory: ZERO_ADDRESS'
                require idx < mem[96]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                    require idx - (var49001 / 2) < mem[(32 * ('cd', 36).length) + 128]
                    require (mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * mem[_626 + 18 len 14])
                    require idx - (var49001 / 2) < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320]
                    mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 352] = mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + 160] * s * mem[_626 + 50 len 14] / (mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * mem[_626 + 18 len 14])
                    idx = idx + 1
                    s = _616
                    s = mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + 160] * s * Mask(112, 0, _649) / (mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * Mask(112, 0, _637))
                    continue 
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'MdexSwapFactory: ZERO_ADDRESS'
                require idx < mem[96]
                if mem[(32 * idx + 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                    require idx - (var49001 / 2) < mem[(32 * ('cd', 36).length) + 128]
                    require (mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * mem[_626 + 18 len 14])
                    require idx - (var49001 / 2) < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320]
                    mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 352] = mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + 160] * s * mem[_626 + 50 len 14] / (mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * mem[_626 + 18 len 14])
                    idx = idx + 1
                    s = _616
                    s = mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + 160] * s * Mask(112, 0, _649) / (mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * Mask(112, 0, _637))
                    continue 
            require idx - (var49001 / 2) < mem[(32 * ('cd', 36).length) + 128]
            require (mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * mem[_626 + 50 len 14])
            require idx - (var49001 / 2) < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320]
            mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 352] = mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + 160] * s * mem[_626 + 18 len 14] / (mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * mem[_626 + 50 len 14])
            idx = idx + 1
            s = _616
            s = mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + 160] * s * Mask(112, 0, _637) / (mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * Mask(112, 0, _649))
            continue 
        require mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320] - 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320]
        if mem[(32 * mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320] - 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 352] - var49018 >= var49012:
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160] = var49018
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320] - 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 352]
            var49001 = mem[96]
            var49010 = var49018 + (10 * var49018 / 100)
            var49012 = mem[(32 * mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320] - 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 352] - var49018
            var49013 = mem[(32 * mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320] - 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 352]
            var49014 = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320
            var49018 = var49018 + (10 * var49018 / 100)
            continue 
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256] = 96
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288] = (32 * ('cd', 36).length) + 128
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = block.timestamp
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + 64] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 96] = block.timestamp
        mem[mem[64] + 128] = 160
        _636 = mem[96]
        mem[mem[64] + 192] = mem[96]
        s = mem[64] + 224
        idx = 0
        t = 128
        while idx < mem[96]:
            mem[s] = mem[t + 12 len 20]
            s = s + 32
            idx = idx + 1
            t = t + 32
            continue 
        _710 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288]
        mem[mem[64] + 160] = (32 * _636) + 192
        _714 = mem[_710]
        mem[mem[64] + (32 * _636) + 224] = mem[_710]
        mem[mem[64] + (32 * _636) + 256 len 32 * _714] = mem[_710 + 32 len 32 * _714]
        return mem[mem[64] len 160], (32 * _636) + 192, mem[mem[64] + 192 len (32 * _636) + (32 * _714) + 64]
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 352 len 16 * Mask(251, 1, var49001)] = call.data[calldata.size len 16 * Mask(251, 1, var49001)]
    idx = var49001 / 2
    s = 0
    s = var49010
    while idx < ('cd', 36).length - 1:
        require idx - (var49001 / 2) < mem[96]
        _621 = mem[(32 * idx - (var49001 / 2)) + 128]
        require ext_code.size(mem[(32 * idx - (var49001 / 2)) + 140 len 20])
        staticcall mem[(32 * idx - (var49001 / 2)) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _627 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _643 = mem[_627]
        require mem[_627] == mem[_627 + 18 len 14]
        _651 = mem[_627 + 32]
        require mem[_627 + 32] == mem[_627 + 50 len 14]
        require mem[_627 + 64] == mem[_627 + 92 len 4]
        require idx < mem[96]
        require idx + 1 < mem[96]
        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
            revert with 0, 'MdexSwapFactory: IDENTICAL_ADDRESSES'
        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'MdexSwapFactory: ZERO_ADDRESS'
            require idx < mem[96]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                require idx - (var49001 / 2) < mem[(32 * ('cd', 36).length) + 128]
                require (mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * mem[_627 + 18 len 14])
                require idx - (var49001 / 2) < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320]
                mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 352] = mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + 160] * s * mem[_627 + 50 len 14] / (mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * mem[_627 + 18 len 14])
                idx = idx + 1
                s = _621
                s = mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + 160] * s * Mask(112, 0, _651) / (mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * Mask(112, 0, _643))
                continue 
        else:
            if not mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'MdexSwapFactory: ZERO_ADDRESS'
            require idx < mem[96]
            if mem[(32 * idx + 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                require idx - (var49001 / 2) < mem[(32 * ('cd', 36).length) + 128]
                require (mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * mem[_627 + 18 len 14])
                require idx - (var49001 / 2) < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320]
                mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 352] = mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + 160] * s * mem[_627 + 50 len 14] / (mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * mem[_627 + 18 len 14])
                idx = idx + 1
                s = _621
                s = mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + 160] * s * Mask(112, 0, _651) / (mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * Mask(112, 0, _643))
                continue 
        require idx - (var49001 / 2) < mem[(32 * ('cd', 36).length) + 128]
        require (mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * mem[_627 + 50 len 14])
        require idx - (var49001 / 2) < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320]
        mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 352] = mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + 160] * s * mem[_627 + 18 len 14] / (mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * mem[_627 + 50 len 14])
        idx = idx + 1
        s = _621
        s = mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + 160] * s * Mask(112, 0, _643) / (mem[(32 * idx - (var49001 / 2)) + (32 * ('cd', 36).length) + 160] * s) + (10000 * Mask(112, 0, _651))
        continue 
    require mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320] - 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320]
    if mem[(32 * mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320] - 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 352] - var49018 >= var49012:
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160] = var49018
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320] - 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 352]
        var49001 = mem[96]
        var49010 = var49018 + (10 * var49018 / 100)
        var49012 = mem[(32 * mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320] - 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 352] - var49018
        var49013 = mem[(32 * mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320] - 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 352]
        var49014 = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320
        var49018 = var49018 + (10 * var49018 / 100)
        continue 
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256] = 96
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288] = (32 * ('cd', 36).length) + 128
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = block.timestamp
    _631 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
    mem[mem[64] + 64] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
    mem[mem[64] + 96] = block.timestamp
    mem[mem[64] + 128] = 160
    _642 = mem[96]
    mem[mem[64] + 192] = mem[96]
    s = mem[64] + 224
    idx = 0
    t = 128
    while idx < _642:
        mem[s] = mem[t + 12 len 20]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    _712 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288]
    mem[_631 + 160] = (32 * _642) + 192
    _715 = mem[_712]
    mem[_631 + (32 * _642) + 224] = mem[_712]
    mem[_631 + (32 * _642) + 256 len 32 * _715] = mem[_712 + 32 len 32 * _715]
    return memory
      from mem[64]
       len _631 + (32 * _642) + (32 * _715) + -mem[64] + 256
}



}
