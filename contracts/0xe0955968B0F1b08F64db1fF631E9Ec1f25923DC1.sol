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

function getETHUSD() payable {
    require ext_code.size(stor0)
    staticcall stor0.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 64, 128, 3, 0, 0, 3, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 320 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0]
}

function getBNBUSD() payable {
    require ext_code.size(stor0)
    staticcall stor0.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 64, 128, 3, 0, 0, 3, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 320 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0]
}

function sub_0402f21c(?) payable {
    require ext_code.size(stor0)
    staticcall stor0.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 4, 0x5553444300000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0]
}

function sub_06abf1c6(?) payable {
    require ext_code.size(stor0)
    staticcall stor0.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 0x4a50590000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0]
}

function sub_12eb1119(?) payable {
    require ext_code.size(stor0)
    staticcall stor0.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0]
}

function sub_45dd2734(?) payable {
    require ext_code.size(stor0)
    staticcall stor0.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 4, 0x5553444300000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0]
}

function sub_7ce7723d(?) payable {
    require ext_code.size(stor0)
    staticcall stor0.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 0x5553440000000000000000000000000000000000000000000000000000000000, 3, 0x4a50590000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0]
}

function sub_97c5c451(?) payable {
    require ext_code.size(stor0)
    staticcall stor0.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 4, 0x5553444300000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0]
}

function sub_e8ea721a(?) payable {
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

function sub_1a505688(?) payable {
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

function sub_a80e46f7(?) payable {
    mem[96] = 4
    s = 128
    idx = 4
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    mem[256] = 3
    mem[288] = 0x46544d0000000000000000000000000000000000000000000000000000000000
    mem[128] = 256
    mem[320] = 3
    mem[352] = 0x46544d0000000000000000000000000000000000000000000000000000000000
    mem[160] = 320
    mem[384] = 3
    mem[416] = 0x46544d0000000000000000000000000000000000000000000000000000000000
    mem[192] = 384
    mem[448] = 3
    mem[480] = 0x46544d0000000000000000000000000000000000000000000000000000000000
    mem[224] = 448
    mem[512] = 4
    s = 544
    idx = 4
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    mem[672] = 3
    mem[704] = 0x5553440000000000000000000000000000000000000000000000000000000000
    mem[544] = 672
    mem[736] = 4
    mem[768] = 0x5553444300000000000000000000000000000000000000000000000000000000
    mem[576] = 736
    mem[800] = 4
    mem[832] = 0x4652415800000000000000000000000000000000000000000000000000000000
    mem[608] = 800
    mem[64] = 928
    mem[864] = 4
    mem[896] = 0x5355534400000000000000000000000000000000000000000000000000000000
    mem[640] = 864
    mem[928] = 0xe42a071b00000000000000000000000000000000000000000000000000000000
    mem[932] = 64
    mem[996] = 4
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 100
    u = mem[64] + 100
    while idx < 4:
        mem[u] = t - 1028
        _58 = mem[s]
        _59 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _59:
            mem[v + t + 32] = mem[_58 + v + 32]
            v = v + 32
            continue 
        if ceil32(_59) > _59:
            mem[t + _59 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_59) + t + 32
        u = u + 32
        continue 
    mem[964] = t - 932
    _60 = mem[512]
    mem[t] = mem[512]
    idx = 0
    s = 544
    u = t + (32 * _60) + 32
    v = t + 32
    while idx < _60:
        mem[v] = u + -t - 32
        _95 = mem[s]
        _97 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        t = 0
        while t < _97:
            mem[t + u + 32] = mem[_95 + t + 32]
            t = t + 32
            continue 
        if ceil32(_97) > _97:
            mem[u + _97 + 32] = 0
        idx = idx + 1
        s = s + 32
        u = ceil32(_97) + u + 32
        v = v + 32
        continue 
    require ext_code.size(stor0)
    staticcall stor0.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len u + -mem[64] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _100 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _101 = mem[_100]
    require mem[_100] <= test266151307()
    require _100 + mem[_100] + 31 < _100 + return_data.size
    _102 = mem[_100 + mem[_100]]
    if mem[_100 + mem[_100]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_100 + mem[_100]]) + 1 < 0 or _100 + ceil32(return_data.size) + ceil32(32 * mem[_100 + mem[_100]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _100 + ceil32(return_data.size) + ceil32(32 * mem[_100 + mem[_100]]) + 1
    mem[_100 + ceil32(return_data.size)] = _102
    require return_data.size >= _101 + (96 * _102) + 32
    s = _100 + _101 + 32
    t = _100 + ceil32(return_data.size) + 32
    idx = 0
    while idx < _102:
        require _100 + return_data.size - s >= 96
        _135 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_135] = mem[s]
        mem[_135 + 32] = mem[s + 32]
        mem[_135 + 64] = mem[s + 64]
        mem[t] = _135
        s = s + 96
        t = t + 32
        idx = idx + 1
        continue 
    _130 = mem[64]
    mem[mem[64]] = 4
    mem[64] = mem[64] + 160
    mem[_130 + 32 len 128] = call.data[calldata.size len 128]
    if 0 >= mem[_100 + ceil32(return_data.size)]:
        revert with 0, 50
    if 0 >= mem[_130]:
        revert with 0, 50
    mem[_130 + 32] = mem[mem[_100 + ceil32(return_data.size) + 32]]
    if 1 >= mem[_100 + ceil32(return_data.size)]:
        revert with 0, 50
    if 1 >= mem[_130]:
        revert with 0, 50
    mem[_130 + 64] = mem[mem[_100 + ceil32(return_data.size) + 64]]
    if 2 >= mem[_100 + ceil32(return_data.size)]:
        revert with 0, 50
    if 2 >= mem[_130]:
        revert with 0, 50
    mem[_130 + 96] = mem[mem[_100 + ceil32(return_data.size) + 96]]
    if 3 >= mem[_100 + ceil32(return_data.size)]:
        revert with 0, 50
    if 3 >= mem[_130]:
        revert with 0, 50
    mem[_130 + 128] = mem[mem[_100 + ceil32(return_data.size) + 128]]
    mem[_130 + 160] = 32
    mem[_130 + 192] = mem[_130]
    mem[_130 + 224 len 32 * mem[_130]] = mem[_130 + 32 len 32 * mem[_130]]
    return memory
      from mem[64]
       len _130 + (32 * mem[_130]) + -mem[64] + 224
}



}
