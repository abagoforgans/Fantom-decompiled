contract main {




// =====================  Runtime code  =====================


address stor1;

function _fallback() payable {
    revert
}

function sub_bc150002(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    stor1 = address(arg1)
}

function sub_f5b26fc1(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        require ext_code.size(stor1)
        staticcall stor1.summoner(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _24 = mem[_22]
        require mem[_22] == mem[_22]
        _28 = mem[_22 + 32]
        require mem[_22 + 32] == mem[_22 + 32]
        _31 = mem[_22 + 64]
        require mem[_22 + 64] == mem[_22 + 64]
        _32 = mem[_22 + 96]
        require mem[_22 + 96] == mem[_22 + 96]
        _33 = mem[64]
        mem[64] = mem[64] + 128
        mem[_33] = _24
        mem[_33 + 32] = _31
        mem[_33 + 64] = _32
        mem[_33 + 96] = _28
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = _33
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _18 = mem[64]
    mem[mem[64]] = 32
    _20 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _20:
        _35 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_35 + 32]
        mem[t + 64] = mem[_35 + 64]
        mem[t + 96] = mem[_35 + 96]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _18 + (128 * _20) + -mem[64] + 64
}



}
