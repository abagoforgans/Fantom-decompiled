contract main {




// =====================  Runtime code  =====================


const gum = 0x9ee6d281d77dedb1d65684c9137b7b3dc54f5d23

const candy = 0x6cfbf4d951dbe8fb0835c5e42d54c8c71e977b61


mapping of uint256 sub_3a66e06d;
mapping of uint8 sub_066e5c58;
mapping of uint8 sub_ad7f3e5e;
uint8 stor3;
uint8 stor3; offset 8
uint8 stor3; offset 16
uint8 stor3; offset 24
uint8 stor3; offset 32

function sub_012ad56e(?) payable {
    return bool(uint8(stor3.field_24))
}

function sub_066e5c58(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_066e5c58[arg1]
}

function sub_3a66e06d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_3a66e06d[arg1]
}

function sub_7a3f119e(?) payable {
    return bool(uint8(stor3.field_8))
}

function sub_9e936706(?) payable {
    return bool(uint8(stor3.field_0))
}

function sub_a3f1a462(?) payable {
    return bool(uint8(stor3.field_32))
}

function sub_ad7f3e5e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_ad7f3e5e[arg1]
}

function sub_f841e826(?) payable {
    return bool(uint8(stor3.field_16))
}

function _fallback() payable {
    revert
}

function sub_d5f90660(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] == uint8(cd[36])
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _84 = mem[64]
        mem[mem[64] + 36] = mem[(32 * idx) + 128]
        mem[mem[64] + 68] = uint8(cd[36])
        _86 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_86 + 32] = mem[_86 + 36 len 28] or 0x1d9b0aee00000000000000000000000000000000000000000000000000000000
        _89 = mem[_86]
        s = 0
        while s < _89:
            mem[_84 + s + 100] = mem[_86 + s + 32]
            s = s + 32
            continue 
        if ceil32(_89) <= _89:
            delegate 0xc7264c6028ca51e5bea1b5d3462ce3a0eeb3dfce.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _84 + _89 + -mem[64] + 96]
            if not return_data.size:
                if not delegate.return_code:
                    require mem[96]
                    revert with memory
                      from 128
                       len mem[96]
            else:
                _121 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_121] = return_data.size
                mem[_121 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not delegate.return_code:
                    require return_data.size
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[_84 + _89 + 100] = 0
            delegate 0xc7264c6028ca51e5bea1b5d3462ce3a0eeb3dfce.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _84 + _89 + -mem[64] + 96]
            if not return_data.size:
                if not delegate.return_code:
                    require mem[96]
                    revert with memory
                      from 128
                       len mem[96]
            else:
                _123 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_123] = return_data.size
                mem[_123 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not delegate.return_code:
                    require return_data.size
                    revert with ext_call.return_data[0 len return_data.size]
        # delegate.return_code
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[mem[64]] = mem[(32 * idx) + 128]
        mem[mem[64] + 32] = bool(delegate.return_code)
        emit 0x9a4486a1: mem[mem[64]], bool(delegate.return_code)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 1
}



}
