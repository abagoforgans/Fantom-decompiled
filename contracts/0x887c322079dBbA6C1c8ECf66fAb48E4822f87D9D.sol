contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getBalances(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if 1 > !arg2.length:
        revert with 'NH{q', 17
    if arg2.length + 1 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2.length + 1
    mem[64] = (32 * arg2.length + 1) + 128
    if not arg2.length + 1:
        if 0 >= arg2.length + 1:
            revert with 'NH{q', 50
        mem[128] = eth.balance(arg1)
        idx = 0
        while idx < arg2.length:
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
            staticcall address(cd[((32 * idx) + arg2 + 36)]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _34 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if 1 > !idx:
                revert with 'NH{q', 17
            if idx + 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx + 1) + 128] = mem[_34]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * arg2.length + 1] = call.data[calldata.size len 32 * arg2.length + 1]
        if 0 >= arg2.length + 1:
            revert with 'NH{q', 50
        mem[128] = eth.balance(arg1)
        idx = 0
        while idx < arg2.length:
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
            staticcall address(cd[((32 * idx) + arg2 + 36)]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _35 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if 1 > !idx:
                revert with 'NH{q', 17
            if idx + 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx + 1) + 128] = mem[_35]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function getReserves(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
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
            _43 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_43] == mem[_43 + 18 len 14]
            _51 = mem[_43 + 32]
            require mem[_43 + 32] == mem[_43 + 50 len 14]
            require mem[_43 + 64] == mem[_43 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128]] = mem[_43 + 18 len 14]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 32] = Mask(112, 0, _51)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _35 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _35:
            u = 0
            v = t
            w = mem[v]
            while u < 2:
                mem[v] = mem[w + 18 len 14]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            u = 3
            v = t + 96
            t = t + 64
            continue 
    else:
        mem[64] = (32 * arg1.length) + 192
        mem[(32 * arg1.length) + 128 len 64] = call.data[calldata.size len 64]
        mem[var17001] = (32 * arg1.length) + 128
        s = var17001
        idx = var17002
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
            _91 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_91] == mem[_91 + 18 len 14]
            _93 = mem[_91 + 32]
            require mem[_91 + 32] == mem[_91 + 50 len 14]
            require mem[_91 + 64] == mem[_91 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128]] = mem[_91 + 18 len 14]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 32] = Mask(112, 0, _93)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _85 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _85:
            u = 0
            v = t
            w = mem[v]
            while u < 2:
                mem[v] = mem[w + 18 len 14]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            u = 3
            v = t + 96
            t = t + 64
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
