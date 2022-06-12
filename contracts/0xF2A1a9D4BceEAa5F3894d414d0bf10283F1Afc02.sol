contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_ab93d873(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    idx = 0
    while idx < arg1:
        _11 = mem[64]
        mem[mem[64] + 36] = arg2
        _12 = mem[64]
        mem[mem[64]] = 36
        mem[64] = mem[64] + 68
        mem[_12 + 32] = mem[_12 + 36 len 28] or 0x35d9f2a00000000000000000000000000000000000000000000000000000000
        _15 = mem[_12]
        s = 0
        while s < _15:
            mem[_11 + s + 68] = mem[_12 + s + 32]
            s = s + 32
            continue 
        if ceil32(_15) <= _15:
            delegate address(arg3).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _11 + _15 + -mem[64] + 64]
            if return_data.size:
                _23 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_23] = return_data.size
                mem[_23 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_11 + _15 + 68] = 0
            delegate address(arg3).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _11 + _15 + -mem[64] + 64]
            if return_data.size:
                _25 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_25] = return_data.size
                mem[_25 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require delegate.return_code
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
