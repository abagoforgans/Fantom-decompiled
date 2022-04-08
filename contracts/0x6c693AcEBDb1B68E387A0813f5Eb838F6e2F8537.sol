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
                    code: code.data[1550 len 974], address(arg1)
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
        mem[mem[64] len 974] = code.data[1550 len 974]
        mem[mem[64] + 974] = address(_21)
        create contract with 0 wei
                        code: code.data[1550 len 974], address(_21)
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
