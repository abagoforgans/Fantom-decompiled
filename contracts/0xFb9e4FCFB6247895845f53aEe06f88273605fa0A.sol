contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function calculateHealthFactor(address arg1, address arg2, address[] arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg3.length) + 97 > test266151307() or ceil32(32 * arg3.length) + 97 < 96:
        revert with 0, 65
    mem[96] = arg3.length
    require calldata.size >= arg3 + (32 * arg3.length) + 36
    s = arg3 + 36
    t = 128
    idx = 0
    while idx < arg3.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[ceil32(32 * arg3.length) + 161] = 0
    mem[ceil32(32 * arg3.length) + 193] = 0
    mem[ceil32(32 * arg3.length) + 225] = 0
    mem[ceil32(32 * arg3.length) + 97] = 0
    mem[ceil32(32 * arg3.length) + 129] = 0
    require ext_code.size(arg2)
    staticcall arg2.oracle() with:
            gas gas_remaining wei
    mem[ceil32(32 * arg3.length) + 257] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * arg3.length) + ceil32(return_data.size) + 257
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    idx = 0
    while idx < arg4:
        if idx >= mem[96]:
            revert with 0, 50
        require ext_code.size(arg2)
        staticcall arg2.markets(address arg1) with:
                gas gas_remaining wei
               args address(mem[(32 * idx) + 128])
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _104 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_104] == bool(mem[_104])
        require mem[_104 + 64] == bool(mem[_104 + 64])
        require mem[_104 + 96] == mem[_104 + 127 len 1]
        mem[ceil32(32 * arg3.length) + 225] = mem[_104 + 32]
        if idx >= mem[96]:
            revert with 0, 50
        _110 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args address(_110)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _113 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[ceil32(32 * arg3.length) + 161] = mem[_113]
        if idx >= mem[96]:
            revert with 0, 50
        _116 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = arg1
        require ext_code.size(address(_116))
        staticcall address(_116).borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _119 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[ceil32(32 * arg3.length) + 161] and mem[_119] > -1 / mem[ceil32(32 * arg3.length) + 161]:
            revert with 0, 17
        if mem[ceil32(32 * arg3.length) + 97] > !(mem[ceil32(32 * arg3.length) + 161] * mem[_119] / 10^18):
            revert with 0, 17
        mem[ceil32(32 * arg3.length) + 97] = mem[ceil32(32 * arg3.length) + 97] + (mem[ceil32(32 * arg3.length) + 161] * mem[_119] / 10^18)
        _123 = mem[ceil32(32 * arg3.length) + 225]
        if idx >= mem[96]:
            revert with 0, 50
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].exchangeRateStored() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _128 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _129 = mem[_128]
        if idx >= mem[96]:
            revert with 0, 50
        _131 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = arg1
        require ext_code.size(address(_131))
        staticcall address(_131).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _134 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _135 = mem[_134]
        if mem[_134] and _129 > -1 / mem[_134]:
            revert with 0, 17
        if mem[_134] * _129 / 10^18 and _123 > -1 / mem[_134] * _129 / 10^18:
            revert with 0, 17
        mem[ceil32(32 * arg3.length) + 193] = mem[_134] * _129 / 10^18 * _123 / 10^18
        if mem[ceil32(32 * arg3.length) + 161] and _135 * _129 / 10^18 * _123 / 10^18 > -1 / mem[ceil32(32 * arg3.length) + 161]:
            revert with 0, 17
        if mem[ceil32(32 * arg3.length) + 129] > !(mem[ceil32(32 * arg3.length) + 161] * _135 * _129 / 10^18 * _123 / 10^18 / 10^18):
            revert with 0, 17
        mem[ceil32(32 * arg3.length) + 129] = mem[ceil32(32 * arg3.length) + 129] + (mem[ceil32(32 * arg3.length) + 161] * _135 * _129 / 10^18 * _123 / 10^18 / 10^18)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _97 = mem[ceil32(32 * arg3.length) + 97]
    mem[mem[64]] = mem[ceil32(32 * arg3.length) + 129]
    return mem[mem[64]], _97
}



}
