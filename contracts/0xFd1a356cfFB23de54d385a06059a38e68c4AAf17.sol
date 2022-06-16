contract main {




// =====================  Runtime code  =====================


address sub_c2a3d838Address;
array of struct sub_1d16eb4d;

function sub_1d16eb4d(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_1d16eb4d[arg1].field_0
    return sub_1d16eb4d[arg1][arg2].field_0, 
           sub_1d16eb4d[arg1][arg2].field_256,
           bool(sub_1d16eb4d[arg1][arg2].field_512),
           sub_1d16eb4d[arg1][arg2].field_768
}

function sub_c2a3d838(?) payable {
    return sub_c2a3d838Address
}

function _fallback() payable {
    revert
}

function sub_164b5de1(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_c2a3d838Address)
    call sub_c2a3d838Address.levelUp(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_763d000b(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_c2a3d838Address)
    call sub_c2a3d838Address.0x7291d2cc with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_1d16eb4d[arg1].field_0++
    sub_1d16eb4d[arg1][sub_1d16eb4d[arg1].field_0].field_0 = block.timestamp
    sub_1d16eb4d[arg1][sub_1d16eb4d[arg1].field_0].field_256 = arg2
    sub_1d16eb4d[arg1][sub_1d16eb4d[arg1].field_0].field_512 = 0
    sub_1d16eb4d[arg1][sub_1d16eb4d[arg1].field_0].field_768 = 0
}

function discover(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not sub_1d16eb4d[arg1].field_0:
        revert with 0, 'No adventures active'
    if sub_1d16eb4d[arg1].field_0 < 1:
        revert with 0, 17
    if sub_1d16eb4d[arg1].field_0 - 1 >= sub_1d16eb4d[arg1].field_0:
        revert with 0, 50
    if sub_1d16eb4d[arg1][sub_1d16eb4d[arg1].field_0 - 1].field_512:
        revert with 0, 'Adventure already completed'
    require ext_code.size(sub_c2a3d838Address)
    call sub_c2a3d838Address.0x77600891 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_1d16eb4d[arg1].field_0 - 1 >= sub_1d16eb4d[arg1].field_0:
        revert with 0, 50
    sub_1d16eb4d[arg1][sub_1d16eb4d[arg1].field_0 - 1].field_512 = 1
    if sub_1d16eb4d[arg1].field_0 - 1 >= sub_1d16eb4d[arg1].field_0:
        revert with 0, 50
    sub_1d16eb4d[arg1][sub_1d16eb4d[arg1].field_0 - 1].field_768 = ext_call.return_data[0]
}

function sub_f1cac90d(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0xa1cc1b8200000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(sub_c2a3d838Address)
    staticcall sub_c2a3d838Address.0xa1cc1b82 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 96
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _23 = uint32(arg1), mem[132 len 28]
        _24 = mem[160]
        _27 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = _5
        mem[mem[64] + 128 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) > _5:
            mem[mem[64] + _5 + 128] = 0
        mem[mem[64] + 32] = _23
        mem[_27 + 64] = _24
        return memory
          from mem[64]
           len ceil32(_5) + _27 + -mem[64] + 128
    mem[ceil32(return_data.size) + _5 + 128] = 0
    _25 = uint32(arg1), mem[132 len 28]
    _26 = mem[160]
    _29 = mem[64]
    mem[mem[64]] = 96
    mem[mem[64] + 96] = _5
    mem[mem[64] + 128 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[mem[64] + _5 + 128] = 0
    mem[mem[64] + 32] = _25
    mem[_29 + 64] = _26
    return memory
      from mem[64]
       len ceil32(_5) + _29 + -mem[64] + 128
}

function sub_a79b77e0(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0xa1cc1b8200000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(sub_c2a3d838Address)
    staticcall sub_c2a3d838Address.0xa1cc1b82 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 96
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _26 = mem[160]
        mem[mem[64] + 4] = mem[160]
        require ext_code.size(sub_c2a3d838Address)
        staticcall sub_c2a3d838Address.xpRequired(uint256 arg1) with:
                gas gas_remaining wei
               args _26
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _33 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64]] = mem[_33]
    else:
        mem[ceil32(return_data.size) + _5 + 128] = 0
        _28 = mem[160]
        mem[mem[64] + 4] = mem[160]
        require ext_code.size(sub_c2a3d838Address)
        staticcall sub_c2a3d838Address.xpRequired(uint256 arg1) with:
                gas gas_remaining wei
               args _28
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _34 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64]] = mem[_34]
    return memory
      from mem[64]
       len 32
}



}
