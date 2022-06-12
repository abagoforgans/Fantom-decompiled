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
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[64] = 6656
    mem[6496] = 0
    mem[6528] = 0
    mem[6560] = 0
    mem[6592] = 0
    mem[6624] = 0
    mem[var16001] = 6496
    s = var16001
    idx = var16002
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[6496] = 0
        mem[6528] = 0
        mem[6560] = 0
        mem[6592] = 0
        mem[6624] = 0
        mem[s + 32] = 6496
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require ext_code.size(stor1)
        staticcall stor1.summoner(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _38 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _40 = mem[_38]
        require mem[_38] == mem[_38]
        _43 = mem[_38 + 32]
        require mem[_38 + 32] == mem[_38 + 32]
        _46 = mem[_38 + 64]
        require mem[_38 + 64] == mem[_38 + 64]
        _48 = mem[_38 + 96]
        require mem[_38 + 96] == mem[_38 + 96]
        _49 = mem[64]
        mem[64] = mem[64] + 160
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[_49] = cd[((32 * idx) + cd[4] + 36)]
        mem[_49 + 32] = _40
        mem[_49 + 64] = _46
        mem[_49 + 96] = _48
        mem[_49 + 128] = _43
        if idx >= 200:
            revert with 'NH{q', 50
        mem[(32 * idx) + 96] = _49
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _35 = mem[64]
    idx = 0
    s = 96
    t = mem[64]
    while idx < 200:
        _50 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_50 + 32]
        mem[t + 64] = mem[_50 + 64]
        mem[t + 96] = mem[_50 + 96]
        mem[t + 128] = mem[_50 + 128]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    return memory
      from mem[64]
       len _35 + -mem[64] + 32000
}



}
