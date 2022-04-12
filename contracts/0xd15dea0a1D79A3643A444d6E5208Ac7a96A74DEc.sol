contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_40ff98fc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    create contract with 0 wei
                    code: code.data[2128 len 974], address(arg1)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3ae1040d(?) {
    mem[96] = 0x448280d700000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor1)
    staticcall stor1.0x448280d7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96] + 96]) + 97 > test266151307() or floor32(mem[mem[96] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < _5:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        _21 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64] len 974] = code.data[2128 len 974]
        mem[mem[64] + 974] = address(_21)
        create contract with 0 wei
                        code: code.data[2128 len 974], address(_21)
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_94485923(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 4).length) + 97] = 0x448280d700000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor1)
    staticcall stor1.0x448280d7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 4).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 4).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _17 = mem[floor32(('cd', 4).length) + 97]
    require mem[floor32(('cd', 4).length) + 97] <= test266151307()
    require floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 97] + 128 < floor32(('cd', 4).length) + return_data.size + 97
    _18 = mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 97] + 97]
    if mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 97] + 97] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 97] + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 97] + 97]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 97] + 97]) + 98
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 97] = _18
    require _17 + (32 * _18) + 32 <= return_data.size
    idx = 0
    s = floor32(('cd', 4).length) + _17 + 129
    t = floor32(('cd', 4).length) + ceil32(return_data.size) + 129
    while idx < _18:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < _18:
        if idx >= mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 97]:
            revert with 'NH{q', 50
        _34 = mem[(32 * idx) + floor32(('cd', 4).length) + ceil32(return_data.size) + 129]
        mem[mem[64] len 974] = code.data[2128 len 974]
        mem[mem[64] + 974] = address(_34)
        create contract with 0 wei
                        code: code.data[2128 len 974], address(_34)
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
