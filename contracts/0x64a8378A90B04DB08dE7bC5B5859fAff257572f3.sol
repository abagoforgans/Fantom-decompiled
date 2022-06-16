contract main {




// =====================  Runtime code  =====================


address sub_aabfc454Address;
array of struct sub_92e17250;

function sub_92e17250(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_92e17250[arg1].field_0 <= 0:
        revert with 0, 'No adventures active'
    if sub_92e17250[arg1].field_0 < 1:
        revert with 'NH{q', 17
    if sub_92e17250[arg1].field_0 - 1 >= sub_92e17250[arg1].field_0:
        revert with 'NH{q', 50
    return sub_92e17250[arg1][sub_92e17250[arg1].field_0 - 1].field_0, 
           sub_92e17250[arg1][sub_92e17250[arg1].field_0 - 1].field_256,
           bool(sub_92e17250[arg1][sub_92e17250[arg1].field_0 - 1].field_512),
           sub_92e17250[arg1][sub_92e17250[arg1].field_0 - 1].field_768
}

function sub_aabfc454(?) payable {
    return sub_aabfc454Address
}

function _fallback() payable {
    revert
}

function sub_164b5de1(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(sub_aabfc454Address)
    call sub_aabfc454Address.levelUp(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2effefa8(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(sub_aabfc454Address)
    call sub_aabfc454Address.0x7291d2cc with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    sub_92e17250[arg1].field_0++
    sub_92e17250[arg1][sub_92e17250[arg1].field_0].field_0 = block.timestamp
    sub_92e17250[arg1][sub_92e17250[arg1].field_0].field_256 = arg2
    sub_92e17250[arg1][sub_92e17250[arg1].field_0].field_512 = 0
    sub_92e17250[arg1][sub_92e17250[arg1].field_0].field_768 = 0
}

function discover(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_92e17250[arg1].field_0 <= 0:
        revert with 0, 'No adventures active'
    if sub_92e17250[arg1].field_0 < 1:
        revert with 'NH{q', 17
    if sub_92e17250[arg1].field_0 - 1 >= sub_92e17250[arg1].field_0:
        revert with 'NH{q', 50
    if sub_92e17250[arg1][sub_92e17250[arg1].field_0 - 1].field_512:
        revert with 0, 'Adventure already completed'
    require ext_code.size(sub_aabfc454Address)
    call sub_aabfc454Address.0x77600891 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if sub_92e17250[arg1].field_0 - 1 >= sub_92e17250[arg1].field_0:
        revert with 'NH{q', 50
    if sub_92e17250[arg1].field_0 - 1 >= sub_92e17250[arg1].field_0:
        revert with 'NH{q', 50
    sub_92e17250[arg1][sub_92e17250[arg1].field_0 - 1].field_512 = 1
    sub_92e17250[arg1][sub_92e17250[arg1].field_0 - 1].field_768 = ext_call.return_data[0]
}

function sub_f1cac90d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0xa1cc1b8200000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(sub_aabfc454Address)
    staticcall sub_aabfc454Address.0xa1cc1b82 with:
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
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128 > test266151307() or ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _23 = uint32(arg1), mem[132 len 28]
        require uint32(arg1), mem[132 len 28] == uint32(arg1), mem[132 len 28]
        _25 = mem[160]
        require mem[160] == mem[160]
        _27 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = _5
        mem[mem[64] + 128 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) > _5:
            mem[mem[64] + _5 + 128] = 0
        mem[mem[64] + 32] = _23
        mem[_27 + 64] = _25
        return memory
          from mem[64]
           len _27 + ceil32(_5) + -mem[64] + 128
    mem[ceil32(return_data.size) + _5 + 128] = 0
    _24 = uint32(arg1), mem[132 len 28]
    require uint32(arg1), mem[132 len 28] == uint32(arg1), mem[132 len 28]
    _26 = mem[160]
    require mem[160] == mem[160]
    _28 = mem[64]
    mem[mem[64]] = 96
    mem[mem[64] + 96] = _5
    mem[mem[64] + 128 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[mem[64] + _5 + 128] = 0
    mem[mem[64] + 32] = _24
    mem[_28 + 64] = _26
    return memory
      from mem[64]
       len _28 + ceil32(_5) + -mem[64] + 128
}

function sub_a79b77e0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0xa1cc1b8200000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(sub_aabfc454Address)
    staticcall sub_aabfc454Address.0xa1cc1b82 with:
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
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128 > test266151307() or ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        require uint32(arg1), mem[132 len 28] == uint32(arg1), mem[132 len 28]
        _27 = mem[160]
        require mem[160] == mem[160]
        mem[mem[64] + 4] = mem[160]
        require ext_code.size(sub_aabfc454Address)
        staticcall sub_aabfc454Address.xpRequired(uint256 arg1) with:
                gas gas_remaining wei
               args _27
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _33 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_33] == mem[_33]
        mem[mem[64]] = mem[_33]
    else:
        mem[ceil32(return_data.size) + _5 + 128] = 0
        require uint32(arg1), mem[132 len 28] == uint32(arg1), mem[132 len 28]
        _28 = mem[160]
        require mem[160] == mem[160]
        mem[mem[64] + 4] = mem[160]
        require ext_code.size(sub_aabfc454Address)
        staticcall sub_aabfc454Address.xpRequired(uint256 arg1) with:
                gas gas_remaining wei
               args _28
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _34 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_34] == mem[_34]
        mem[mem[64]] = mem[_34]
    return memory
      from mem[64]
       len 32
}



}
