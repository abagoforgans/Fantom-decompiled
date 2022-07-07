contract main {




// =====================  Runtime code  =====================


uint256 version;
address sub_375ba378Address;
address sub_b4347d06Address;
address wbnbAddress;
address busdAddress;

function sub_375ba378(?) payable {
    return sub_375ba378Address
}

function busd() payable {
    return busdAddress
}

function version() payable {
    return version
}

function wbnb() payable {
    return wbnbAddress
}

function sub_b4347d06(?) payable {
    return sub_b4347d06Address
}

function _fallback() payable {
    revert
}

function getTuringPrice() payable {
    mem[96] = 3
    mem[128] = sub_b4347d06Address
    mem[160] = wbnbAddress
    mem[192] = busdAddress
    mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[228] = 10^18
    mem[260] = 64
    mem[292] = 3
    idx = 0
    s = 128
    t = 324
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_375ba378Address)
    staticcall sub_375ba378Address.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 10^18, 64, 3, mem[324 len 96]
    if not ext_call.success:
        return 0
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 224
    require return_data.size >= 32
    _23 = mem[224 len 4], 232830643
    require mem[224 len 4], 232830643 <= test266151307()
    require mem[224 len 4], 232830643 + 255 < return_data.size + 224
    _25 = mem[mem[224 len 4], 232830643 + 224]
    if mem[mem[224 len 4], 232830643 + 224] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 232830643 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 232830643 + 224]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 232830643 + 224]) + 225
    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 232830643 + 224]
    require _23 + (32 * _25) + 32 <= return_data.size
    idx = 0
    s = _23 + 256
    t = ceil32(return_data.size) + 256
    while idx < _25:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 2 >= _25:
        revert with 'NH{q', 50
    mem[mem[64]] = mem[ceil32(return_data.size) + 320]
    return memory
      from mem[64]
       len 32
}

function getData() payable {
    require ext_code.size(sub_b4347d06Address)
    staticcall sub_b4347d06Address.totalSupply() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 3
    mem[ceil32(return_data.size) + 128] = sub_b4347d06Address
    mem[ceil32(return_data.size) + 160] = wbnbAddress
    mem[ceil32(return_data.size) + 192] = busdAddress
    mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 228] = 10^18
    mem[ceil32(return_data.size) + 260] = 64
    mem[ceil32(return_data.size) + 292] = 3
    idx = 0
    s = ceil32(return_data.size) + 128
    t = ceil32(return_data.size) + 324
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_375ba378Address)
    staticcall sub_375ba378Address.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 10^18, 64, 3, mem[ceil32(return_data.size) + 324 len 96]
    if not ext_call.success:
        return ext_call.return_data[0], ext_call.return_data[0], 0, 0
    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _27 = mem[ceil32(return_data.size) + 224 len 4], 232830643
    require mem[ceil32(return_data.size) + 224 len 4], 232830643 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 232830643 + 255 < ceil32(return_data.size) + return_data.size + 224
    _29 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 232830643 + 224]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 232830643 + 224] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 232830643 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 232830643 + 224]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 232830643 + 224]) + 225
    mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 232830643 + 224]
    require _27 + (32 * _29) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _27 + 256
    t = (2 * ceil32(return_data.size)) + 256
    while idx < _29:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 2 >= _29:
        revert with 'NH{q', 50
    return ext_call.return_data[0], ext_call.return_data[0], 0, mem[(2 * ceil32(return_data.size)) + 320]
}



}
