contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_f3773b06(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 < 96 or ceil32(32 * ('cd', 68).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    s = cd[68] + 36
    t = 128
    idx = 0
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 100).length) + 98 < 97 or ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 68).length) + 97] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = ceil32(32 * ('cd', 68).length) + 129
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 162] = 0
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 194] = 0
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98] = 0
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130] = 0
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).oracle() with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 226] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 226
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    idx = 0
    while idx < cd[132]:
        if idx >= mem[96]:
            revert with 0, 50
        _126 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args address(_126)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _129 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 162] = mem[_129]
        if idx >= mem[96]:
            revert with 0, 50
        _132 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = address(cd[4])
        require ext_code.size(address(_132))
        staticcall address(_132).borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args address(cd[4])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _135 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 162] and mem[_135] > -1 / mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 162]:
            revert with 0, 17
        if mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98] > !(mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 162] * mem[_135] / 10^18):
            revert with 0, 17
        mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98] = mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98] + (mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 162] * mem[_135] / 10^18)
        if idx >= mem[ceil32(32 * ('cd', 68).length) + 97]:
            revert with 0, 50
        _140 = mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129]
        if idx >= mem[96]:
            revert with 0, 50
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].exchangeRateStored() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _145 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _146 = mem[_145]
        if idx >= mem[96]:
            revert with 0, 50
        _148 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = address(cd[4])
        require ext_code.size(address(_148))
        staticcall address(_148).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(cd[4])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _151 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _152 = mem[_151]
        if mem[_151] and _146 > -1 / mem[_151]:
            revert with 0, 17
        if mem[_151] * _146 / 10^18 and _140 > -1 / mem[_151] * _146 / 10^18:
            revert with 0, 17
        mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 194] = mem[_151] * _146 / 10^18 * _140 / 10^18
        if mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 162] and _152 * _146 / 10^18 * _140 / 10^18 > -1 / mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 162]:
            revert with 0, 17
        if mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130] > !(mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 162] * _152 * _146 / 10^18 * _140 / 10^18 / 10^18):
            revert with 0, 17
        mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130] = mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130] + (mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 162] * _152 * _146 / 10^18 * _140 / 10^18 / 10^18)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _122 = mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]
    mem[mem[64]] = mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130]
    return mem[mem[64]], _122
}



}
