contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getReserves(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg1.length <= test266151307()
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _38 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _41 = mem[_38]
            require mem[_38] == mem[_38 + 18 len 14]
            _47 = mem[_38 + 32]
            require mem[_38 + 32] == mem[_38 + 50 len 14]
            require mem[_38 + 64] == mem[_38 + 92 len 4]
            _50 = mem[64]
            mem[64] = mem[64] + 64
            mem[_50] = Mask(112, 0, _41)
            mem[_50 + 32] = Mask(112, 0, _47)
            require idx < mem[96]
            mem[(32 * idx) + 128] = _50
            idx = idx + 1
            continue 
        _30 = mem[64]
        mem[mem[64]] = 64
        _31 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _31:
            u = 0
            v = t
            w = mem[v]
            while u < 2:
                mem[v] = mem[w]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            u = 3
            v = t + 96
            t = t + 64
            continue 
        mem[_30 + 32] = block.number
    else:
        mem[64] = (32 * arg1.length) + 192
        mem[(32 * arg1.length) + 128 len 64] = call.data[calldata.size len 64]
        mem[var15001] = (32 * arg1.length) + 128
        s = var15001
        idx = var15002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * arg1.length) + 128 len 64] = call.data[calldata.size len 64]
            mem[s + 32] = (32 * arg1.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _81 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _82 = mem[_81]
            require mem[_81] == mem[_81 + 18 len 14]
            _83 = mem[_81 + 32]
            require mem[_81 + 32] == mem[_81 + 50 len 14]
            require mem[_81 + 64] == mem[_81 + 92 len 4]
            _85 = mem[64]
            mem[64] = mem[64] + 64
            mem[_85] = Mask(112, 0, _82)
            mem[_85 + 32] = Mask(112, 0, _83)
            require idx < mem[96]
            mem[(32 * idx) + 128] = _85
            idx = idx + 1
            continue 
        _73 = mem[64]
        mem[mem[64]] = 64
        _75 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _75:
            u = 0
            v = t
            w = mem[v]
            while u < 2:
                mem[v] = mem[w]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            u = 3
            v = t + 96
            t = t + 64
            continue 
        mem[_73 + 32] = block.number
    return memory
      from mem[64]
       len t - mem[64]
}



}
