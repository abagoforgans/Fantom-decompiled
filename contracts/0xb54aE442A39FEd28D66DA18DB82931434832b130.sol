contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function sub_2bf580c0(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _38 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(stor0)
        staticcall stor0.0x6352211e with:
                gas gas_remaining wei
               args _38
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            _41 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_41] == mem[_41 + 12 len 20]
        else:
            if idx >= mem[96]:
                revert with 0, 50
            _43 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(stor1)
            staticcall stor1.0x6352211e with:
                    gas gas_remaining wei
                   args _43
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                _47 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_47] == mem[_47 + 12 len 20]
                if not ext_code.size(mem[_47 + 12 len 20]):
                    if idx >= mem[96]:
                        revert with 0, 50
                    _50 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0x9ca9f75400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _50
                    require ext_code.size(stor0)
                    call stor0.0x9ca9f754 with:
                         gas gas_remaining wei
                        args _50
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
