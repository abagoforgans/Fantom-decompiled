contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 price;

function price() payable {
    return price
}

function _fallback() payable {
    revert
}

function getPrice() payable {
    require ext_code.size(stor0)
    staticcall stor0.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 0x4254430000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0]
}

function savePrice(string arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if ceil32(arg1.length) <= arg1.length:
        require ext_code.size(stor0)
        staticcall stor0.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 27) + 256, 64) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 27) + 256) << (8 * ceil32(arg2.length)) - 256), ceil32(arg1.length) + 96
    else:
        mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 198] = arg2.length
        mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 230 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 27) + 256, 64) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 27) + 256
        if ceil32(arg2.length) > arg2.length:
            mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg2.length + 230] = 0
        require ext_code.size(stor0)
        staticcall stor0.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg1.length + 230 len ceil32(arg2.length) - arg1.length + ceil32(arg1.length)]), ceil32(arg1.length) + 96
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 194 <= test266151307()):
        revert with 0, 65
    price = ext_call.return_data[0]
}

function getMultiPrices() payable {
    mem[96] = 2
    s = 128
    idx = 2
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    mem[192] = 3
    mem[224] = 0x4254430000000000000000000000000000000000000000000000000000000000
    mem[128] = 192
    mem[256] = 3
    mem[288] = 0x4554480000000000000000000000000000000000000000000000000000000000
    mem[160] = 256
    mem[320] = 2
    s = 352
    idx = 2
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    mem[416] = 3
    mem[448] = 0x5553440000000000000000000000000000000000000000000000000000000000
    mem[352] = 416
    mem[64] = 544
    mem[480] = 3
    mem[512] = 0x5553440000000000000000000000000000000000000000000000000000000000
    mem[384] = 480
    mem[544] = 0xe42a071b00000000000000000000000000000000000000000000000000000000
    mem[548] = 64
    mem[612] = 2
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 100
    u = mem[64] + 100
    while idx < 2:
        mem[u] = t - 644
        _42 = mem[s]
        _43 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _43:
            mem[v + t + 32] = mem[_42 + v + 32]
            v = v + 32
            continue 
        if ceil32(_43) > _43:
            mem[t + _43 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_43) + t + 32
        u = u + 32
        continue 
    mem[580] = t - 548
    _44 = mem[320]
    mem[t] = mem[320]
    idx = 0
    s = 352
    u = t + (32 * _44) + 32
    v = t + 32
    while idx < _44:
        mem[v] = u + -t - 32
        _71 = mem[s]
        _73 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        t = 0
        while t < _73:
            mem[t + u + 32] = mem[_71 + t + 32]
            t = t + 32
            continue 
        if ceil32(_73) > _73:
            mem[u + _73 + 32] = 0
        idx = idx + 1
        s = s + 32
        u = ceil32(_73) + u + 32
        v = v + 32
        continue 
    require ext_code.size(stor0)
    staticcall stor0.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len u + -mem[64] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _76 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _77 = mem[_76]
    require mem[_76] <= test266151307()
    require _76 + mem[_76] + 31 < _76 + return_data.size
    _78 = mem[_76 + mem[_76]]
    if mem[_76 + mem[_76]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_76 + mem[_76]]) + 1 < 0 or _76 + ceil32(return_data.size) + ceil32(32 * mem[_76 + mem[_76]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _76 + ceil32(return_data.size) + ceil32(32 * mem[_76 + mem[_76]]) + 1
    mem[_76 + ceil32(return_data.size)] = _78
    require return_data.size >= _77 + (96 * _78) + 32
    s = _76 + _77 + 32
    t = _76 + ceil32(return_data.size) + 32
    idx = 0
    while idx < _78:
        require _76 + return_data.size - s >= 96
        _103 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_103] = mem[s]
        mem[_103 + 32] = mem[s + 32]
        mem[_103 + 64] = mem[s + 64]
        mem[t] = _103
        s = s + 96
        t = t + 32
        idx = idx + 1
        continue 
    _98 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    mem[_98 + 32 len 64] = call.data[calldata.size len 64]
    if 0 >= mem[_76 + ceil32(return_data.size)]:
        revert with 0, 50
    if 0 >= mem[_98]:
        revert with 0, 50
    mem[_98 + 32] = mem[mem[_76 + ceil32(return_data.size) + 32]]
    if 1 >= mem[_76 + ceil32(return_data.size)]:
        revert with 0, 50
    if 1 >= mem[_98]:
        revert with 0, 50
    mem[_98 + 64] = mem[mem[_76 + ceil32(return_data.size) + 64]]
    mem[_98 + 96] = 32
    mem[_98 + 128] = mem[_98]
    mem[_98 + 160 len 32 * mem[_98]] = mem[_98 + 32 len 32 * mem[_98]]
    return memory
      from mem[64]
       len _98 + (32 * mem[_98]) + -mem[64] + 160
}



}
