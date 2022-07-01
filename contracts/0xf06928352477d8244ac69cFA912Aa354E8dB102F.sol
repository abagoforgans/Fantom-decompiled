contract main {




// =====================  Runtime code  =====================


address sub_58f04d4fAddress;
address sub_6a0f3a10Address;
address sub_fc97c29fAddress;
address sub_6ccbc93eAddress;
address sub_13aef7a2Address;
address stor6;
address stor7;
address stor8;
address stor9;
address stor10;
array of struct sub_b7e386a9;
array of struct sub_f7c32cea;
array of struct sub_2b9b00fc;
array of struct sub_a0fb4041;
array of struct sub_68faa775;

function sub_13aef7a2(?) payable {
    return sub_13aef7a2Address
}

function sub_2b9b00fc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_2b9b00fc.length
    return sub_2b9b00fc[arg1].field_0
}

function sub_58f04d4f(?) payable {
    return sub_58f04d4fAddress
}

function sub_68faa775(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_68faa775.length
    return sub_68faa775[arg1].field_0
}

function sub_6a0f3a10(?) payable {
    return sub_6a0f3a10Address
}

function sub_6ccbc93e(?) payable {
    return sub_6ccbc93eAddress
}

function sub_a0fb4041(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_a0fb4041.length
    return sub_a0fb4041[arg1].field_0
}

function sub_b7e386a9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_b7e386a9.length
    return sub_b7e386a9[arg1].field_0
}

function sub_f7c32cea(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_f7c32cea.length
    return sub_f7c32cea[arg1].field_0
}

function sub_fc97c29f(?) payable {
    return sub_fc97c29fAddress
}

function _fallback() payable {
    revert
}

function sub_aa93b124(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x3e0dc34e with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 132] = address(arg1)
    require ext_code.size(sub_58f04d4fAddress)
    staticcall sub_58f04d4fAddress.0xa279b07f with:
            gas gas_remaining wei
           args ext_call.return_data[0], address(arg1)
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xbc063e1a with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x90321e1a with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x257ae0de with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if uint255(ext_call.return_data[0]) and 45 > -1 / 2 * ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[(8 * ceil32(return_data.size)) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 100] = 90 * ext_call.return_data[0] / 1000
    mem[(8 * ceil32(return_data.size)) + 132] = 64
    mem[(8 * ceil32(return_data.size)) + 164] = sub_b7e386a9.length
    mem[0] = 11
    idx = 0
    s = 0
    t = (8 * ceil32(return_data.size)) + 196
    while idx < sub_b7e386a9.length:
        mem[t] = sub_b7e386a9[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 90 * ext_call.return_data[0] / 1000, Array(len=sub_b7e386a9.length, data=mem[(8 * ceil32(return_data.size)) + 196 len 32 * sub_b7e386a9.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(8 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (10 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _39 = mem[(8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, 90 * ext_call.return_data[0] / 1000) >> 32
    require mem[(8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, 90 * ext_call.return_data[0] / 1000) >> 32 <= test266151307()
    require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, 90 * ext_call.return_data[0] / 1000) >> 32 + 127 < (8 * ceil32(return_data.size)) + return_data.size + 96
    _40 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, 90 * ext_call.return_data[0] / 1000) >> 32 + 96]
    if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, 90 * ext_call.return_data[0] / 1000) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, 90 * ext_call.return_data[0] / 1000) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, 90 * ext_call.return_data[0] / 1000) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, 90 * ext_call.return_data[0] / 1000) >> 32 + 96]) + 97
    mem[(10 * ceil32(return_data.size)) + 96] = _40
    require _39 + (32 * _40) + 32 <= return_data.size
    idx = 0
    s = (8 * ceil32(return_data.size)) + _39 + 128
    t = (10 * ceil32(return_data.size)) + 128
    while idx < _40:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _40:
        revert with 'NH{q', 50
    if mem[(10 * ceil32(return_data.size)) + 160] and ext_call.return_data[0] > -1 / mem[(10 * ceil32(return_data.size)) + 160]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    mem[mem[64]] = mem[(10 * ceil32(return_data.size)) + 160] * ext_call.return_data[0] / ext_call.return_data[0]
    return memory
      from mem[64]
       len 32
}

function sub_2e4bc0fa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    require ext_code.size(stor7)
    staticcall stor7.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x3e0dc34e with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 132] = address(arg1)
    require ext_code.size(sub_6a0f3a10Address)
    staticcall sub_6a0f3a10Address.0x1778809f with:
            gas gas_remaining wei
           args ext_call.return_data[0], address(arg1)
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    mem[(4 * ceil32(return_data.size)) + 96] = sub_f7c32cea.length
    if not sub_f7c32cea.length:
        require ext_code.size(address(arg1))
        staticcall address(arg1).PERCENT_DIVISOR() with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x90321e1a with:
                gas gas_remaining wei
        mem[(6 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).uniRouter() with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(arg1))
        staticcall address(arg1).PERCENT_DIVISOR() with:
                gas gas_remaining wei
        mem[(8 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).totalFee() with:
                gas gas_remaining wei
        mem[(10 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if uint255(ext_call.return_data[0]) and ext_call.return_data[0] > -1 / 2 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 132] = (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]
        mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 164] = 64
        mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 196] = sub_f7c32cea.length
        idx = 0
        s = (4 * ceil32(return_data.size)) + 128
        t = (11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 228
        while idx < sub_f7c32cea.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 132 len (96 * sub_f7c32cea.length) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (12 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128
        require return_data.size >= 32
        _49 = mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32
        require mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 <= test266151307()
        require (11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 159 < (11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + return_data.size + 128
        _50 = mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]
        if mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128] > test266151307():
            revert with 'NH{q', 65
        if (12 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + floor32(mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]) + 129 > test266151307() or floor32(mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (12 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + floor32(mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]) + 129
        mem[(12 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128] = _50
        require _49 + (32 * _50) + 32 <= return_data.size
        idx = 0
        s = (11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + _49 + 160
        t = (12 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 160
        while idx < _50:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _50:
            revert with 'NH{q', 50
    else:
        mem[0] = 12
        mem[(4 * ceil32(return_data.size)) + 128] = address(sub_f7c32cea.field_0)
        idx = (4 * ceil32(return_data.size)) + 128
        s = 0
        while (4 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 96 > idx:
            mem[idx + 32] = sub_f7c32cea[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(address(arg1))
        staticcall address(arg1).PERCENT_DIVISOR() with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x90321e1a with:
                gas gas_remaining wei
        mem[(6 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).uniRouter() with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(arg1))
        staticcall address(arg1).PERCENT_DIVISOR() with:
                gas gas_remaining wei
        mem[(8 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).totalFee() with:
                gas gas_remaining wei
        mem[(10 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if uint255(ext_call.return_data[0]) and ext_call.return_data[0] > -1 / 2 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 132] = (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]
        mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 164] = 64
        mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 196] = sub_f7c32cea.length
        idx = 0
        s = (4 * ceil32(return_data.size)) + 128
        t = (11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 228
        while idx < sub_f7c32cea.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 132 len (96 * sub_f7c32cea.length) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (12 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128
        require return_data.size >= 32
        _98 = mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32
        require mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 <= test266151307()
        require (11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 159 < (11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + return_data.size + 128
        _99 = mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]
        if mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128] > test266151307():
            revert with 'NH{q', 65
        if (12 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + floor32(mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]) + 129 > test266151307() or floor32(mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (12 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + floor32(mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]) + 129
        mem[(12 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 128] = _99
        require _98 + (32 * _99) + 32 <= return_data.size
        idx = 0
        s = (11 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + _98 + 160
        t = (12 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 160
        while idx < _99:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _99:
            revert with 'NH{q', 50
    if mem[(12 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 192] and ext_call.return_data[0] > -1 / mem[(12 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 192]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    mem[mem[64]] = mem[(12 * ceil32(return_data.size)) + (32 * sub_f7c32cea.length) + 192] * ext_call.return_data[0] / ext_call.return_data[0]
    return memory
      from mem[64]
       len 32
}

function sub_b1f8992d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    require ext_code.size(stor9)
    staticcall stor9.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x3e0dc34e with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 132] = address(arg1)
    require ext_code.size(sub_6ccbc93eAddress)
    staticcall sub_6ccbc93eAddress.0xbd2d2bb1 with:
            gas gas_remaining wei
           args ext_call.return_data[0], address(arg1)
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    mem[(4 * ceil32(return_data.size)) + 96] = sub_a0fb4041.length
    if not sub_a0fb4041.length:
        require ext_code.size(address(arg1))
        staticcall address(arg1).PERCENT_DIVISOR() with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x90321e1a with:
                gas gas_remaining wei
        mem[(6 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).uniRouter() with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(arg1))
        staticcall address(arg1).PERCENT_DIVISOR() with:
                gas gas_remaining wei
        mem[(8 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).totalFee() with:
                gas gas_remaining wei
        mem[(10 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if uint255(ext_call.return_data[0]) and ext_call.return_data[0] > -1 / 2 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 132] = (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]
        mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 164] = 64
        mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 196] = sub_a0fb4041.length
        idx = 0
        s = (4 * ceil32(return_data.size)) + 128
        t = (11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 228
        while idx < sub_a0fb4041.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 132 len (96 * sub_a0fb4041.length) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (12 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128
        require return_data.size >= 32
        _49 = mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32
        require mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 <= test266151307()
        require (11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 159 < (11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + return_data.size + 128
        _50 = mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]
        if mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128] > test266151307():
            revert with 'NH{q', 65
        if (12 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + floor32(mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]) + 129 > test266151307() or floor32(mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (12 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + floor32(mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]) + 129
        mem[(12 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128] = _50
        require _49 + (32 * _50) + 32 <= return_data.size
        idx = 0
        s = (11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + _49 + 160
        t = (12 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 160
        while idx < _50:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _50:
            revert with 'NH{q', 50
    else:
        mem[0] = 14
        mem[(4 * ceil32(return_data.size)) + 128] = address(sub_a0fb4041.field_0)
        idx = (4 * ceil32(return_data.size)) + 128
        s = 0
        while (4 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 96 > idx:
            mem[idx + 32] = sub_a0fb4041[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(address(arg1))
        staticcall address(arg1).PERCENT_DIVISOR() with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x90321e1a with:
                gas gas_remaining wei
        mem[(6 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).uniRouter() with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(arg1))
        staticcall address(arg1).PERCENT_DIVISOR() with:
                gas gas_remaining wei
        mem[(8 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).totalFee() with:
                gas gas_remaining wei
        mem[(10 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if uint255(ext_call.return_data[0]) and ext_call.return_data[0] > -1 / 2 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 132] = (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]
        mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 164] = 64
        mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 196] = sub_a0fb4041.length
        idx = 0
        s = (4 * ceil32(return_data.size)) + 128
        t = (11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 228
        while idx < sub_a0fb4041.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 132 len (96 * sub_a0fb4041.length) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (12 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128
        require return_data.size >= 32
        _98 = mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32
        require mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 <= test266151307()
        require (11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 159 < (11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + return_data.size + 128
        _99 = mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]
        if mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128] > test266151307():
            revert with 'NH{q', 65
        if (12 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + floor32(mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]) + 129 > test266151307() or floor32(mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (12 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + floor32(mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]) + 129
        mem[(12 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 128] = _99
        require _98 + (32 * _99) + 32 <= return_data.size
        idx = 0
        s = (11 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + _98 + 160
        t = (12 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 160
        while idx < _99:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _99:
            revert with 'NH{q', 50
    if mem[(12 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 192] and ext_call.return_data[0] > -1 / mem[(12 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 192]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    mem[mem[64]] = mem[(12 * ceil32(return_data.size)) + (32 * sub_a0fb4041.length) + 192] * ext_call.return_data[0] / ext_call.return_data[0]
    return memory
      from mem[64]
       len 32
}

function sub_c148a60e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x3e0dc34e with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 132] = address(arg1)
    require ext_code.size(sub_58f04d4fAddress)
    staticcall sub_58f04d4fAddress.0xa279b07f with:
            gas gas_remaining wei
           args ext_call.return_data[0], address(arg1)
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    mem[(4 * ceil32(return_data.size)) + 96] = sub_b7e386a9.length
    if not sub_b7e386a9.length:
        require ext_code.size(address(arg1))
        staticcall address(arg1).PERCENT_DIVISOR() with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x90321e1a with:
                gas gas_remaining wei
        mem[(6 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).uniRouter() with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(arg1))
        staticcall address(arg1).PERCENT_DIVISOR() with:
                gas gas_remaining wei
        mem[(8 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).totalFee() with:
                gas gas_remaining wei
        mem[(10 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if uint255(ext_call.return_data[0]) and ext_call.return_data[0] > -1 / 2 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 132] = (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]
        mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 164] = 64
        mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 196] = sub_b7e386a9.length
        idx = 0
        s = (4 * ceil32(return_data.size)) + 128
        t = (11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 228
        while idx < sub_b7e386a9.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 132 len (96 * sub_b7e386a9.length) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (12 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128
        require return_data.size >= 32
        _49 = mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32
        require mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 <= test266151307()
        require (11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 159 < (11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + return_data.size + 128
        _50 = mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]
        if mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128] > test266151307():
            revert with 'NH{q', 65
        if (12 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + floor32(mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]) + 129 > test266151307() or floor32(mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (12 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + floor32(mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]) + 129
        mem[(12 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128] = _50
        require _49 + (32 * _50) + 32 <= return_data.size
        idx = 0
        s = (11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + _49 + 160
        t = (12 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 160
        while idx < _50:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _50:
            revert with 'NH{q', 50
    else:
        mem[0] = 11
        mem[(4 * ceil32(return_data.size)) + 128] = address(sub_b7e386a9.field_0)
        idx = (4 * ceil32(return_data.size)) + 128
        s = 0
        while (4 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 96 > idx:
            mem[idx + 32] = sub_b7e386a9[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(address(arg1))
        staticcall address(arg1).PERCENT_DIVISOR() with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x90321e1a with:
                gas gas_remaining wei
        mem[(6 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).uniRouter() with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(arg1))
        staticcall address(arg1).PERCENT_DIVISOR() with:
                gas gas_remaining wei
        mem[(8 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).totalFee() with:
                gas gas_remaining wei
        mem[(10 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if uint255(ext_call.return_data[0]) and ext_call.return_data[0] > -1 / 2 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 132] = (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]
        mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 164] = 64
        mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 196] = sub_b7e386a9.length
        idx = 0
        s = (4 * ceil32(return_data.size)) + 128
        t = (11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 228
        while idx < sub_b7e386a9.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 132 len (96 * sub_b7e386a9.length) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (12 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128
        require return_data.size >= 32
        _98 = mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32
        require mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 <= test266151307()
        require (11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 159 < (11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + return_data.size + 128
        _99 = mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]
        if mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128] > test266151307():
            revert with 'NH{q', 65
        if (12 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + floor32(mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]) + 129 > test266151307() or floor32(mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (12 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + floor32(mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]) + 129
        mem[(12 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 128] = _99
        require _98 + (32 * _99) + 32 <= return_data.size
        idx = 0
        s = (11 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + _98 + 160
        t = (12 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 160
        while idx < _99:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _99:
            revert with 'NH{q', 50
    if mem[(12 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 192] and ext_call.return_data[0] > -1 / mem[(12 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 192]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    mem[mem[64]] = mem[(12 * ceil32(return_data.size)) + (32 * sub_b7e386a9.length) + 192] * ext_call.return_data[0] / ext_call.return_data[0]
    return memory
      from mem[64]
       len 32
}

function sub_715c57d5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    require ext_code.size(stor8)
    staticcall stor8.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x3e0dc34e with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 132] = address(arg1)
    require ext_code.size(sub_fc97c29fAddress)
    staticcall sub_fc97c29fAddress.pendingIce(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], address(arg1)
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    mem[(4 * ceil32(return_data.size)) + 96] = sub_2b9b00fc.length
    if not sub_2b9b00fc.length:
        require ext_code.size(address(arg1))
        staticcall address(arg1).PERCENT_DIVISOR() with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x90321e1a with:
                gas gas_remaining wei
        mem[(6 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).uniRouter() with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(arg1))
        staticcall address(arg1).PERCENT_DIVISOR() with:
                gas gas_remaining wei
        mem[(8 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).totalFee() with:
                gas gas_remaining wei
        mem[(10 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if uint255(ext_call.return_data[0]) and ext_call.return_data[0] > -1 / 2 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 132] = (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]
        mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 164] = 64
        mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 196] = sub_2b9b00fc.length
        idx = 0
        s = (4 * ceil32(return_data.size)) + 128
        t = (11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 228
        while idx < sub_2b9b00fc.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 132 len (96 * sub_2b9b00fc.length) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (12 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128
        require return_data.size >= 32
        _49 = mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32
        require mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 <= test266151307()
        require (11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 159 < (11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + return_data.size + 128
        _50 = mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]
        if mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128] > test266151307():
            revert with 'NH{q', 65
        if (12 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + floor32(mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]) + 129 > test266151307() or floor32(mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (12 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + floor32(mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]) + 129
        mem[(12 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128] = _50
        require _49 + (32 * _50) + 32 <= return_data.size
        idx = 0
        s = (11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + _49 + 160
        t = (12 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 160
        while idx < _50:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _50:
            revert with 'NH{q', 50
    else:
        mem[0] = 13
        mem[(4 * ceil32(return_data.size)) + 128] = address(sub_2b9b00fc.field_0)
        idx = (4 * ceil32(return_data.size)) + 128
        s = 0
        while (4 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 96 > idx:
            mem[idx + 32] = sub_2b9b00fc[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(address(arg1))
        staticcall address(arg1).PERCENT_DIVISOR() with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x90321e1a with:
                gas gas_remaining wei
        mem[(6 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).uniRouter() with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(arg1))
        staticcall address(arg1).PERCENT_DIVISOR() with:
                gas gas_remaining wei
        mem[(8 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).totalFee() with:
                gas gas_remaining wei
        mem[(10 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if uint255(ext_call.return_data[0]) and ext_call.return_data[0] > -1 / 2 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 132] = (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]
        mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 164] = 64
        mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 196] = sub_2b9b00fc.length
        idx = 0
        s = (4 * ceil32(return_data.size)) + 128
        t = (11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 228
        while idx < sub_2b9b00fc.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 132 len (96 * sub_2b9b00fc.length) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (12 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128
        require return_data.size >= 32
        _98 = mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32
        require mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 <= test266151307()
        require (11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 159 < (11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + return_data.size + 128
        _99 = mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]
        if mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128] > test266151307():
            revert with 'NH{q', 65
        if (12 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + floor32(mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]) + 129 > test266151307() or floor32(mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (12 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + floor32(mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]) + 129
        mem[(12 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 128] = _99
        require _98 + (32 * _99) + 32 <= return_data.size
        idx = 0
        s = (11 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + _98 + 160
        t = (12 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 160
        while idx < _99:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _99:
            revert with 'NH{q', 50
    if mem[(12 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 192] and ext_call.return_data[0] > -1 / mem[(12 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 192]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    mem[mem[64]] = mem[(12 * ceil32(return_data.size)) + (32 * sub_2b9b00fc.length) + 192] * ext_call.return_data[0] / ext_call.return_data[0]
    return memory
      from mem[64]
       len 32
}

function sub_283c7e99(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x3e0dc34e with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 132] = address(arg1)
    require ext_code.size(sub_13aef7a2Address)
    staticcall sub_13aef7a2Address.pendingShare(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], address(arg1)
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    mem[(4 * ceil32(return_data.size)) + 96] = sub_68faa775.length
    if not sub_68faa775.length:
        require ext_code.size(address(arg1))
        staticcall address(arg1).PERCENT_DIVISOR() with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x90321e1a with:
                gas gas_remaining wei
        mem[(6 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).uniRouter() with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(arg1))
        staticcall address(arg1).PERCENT_DIVISOR() with:
                gas gas_remaining wei
        mem[(8 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).totalFee() with:
                gas gas_remaining wei
        mem[(10 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if uint255(ext_call.return_data[0]) and ext_call.return_data[0] > -1 / 2 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 132] = (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]
        mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 164] = 64
        mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 196] = sub_68faa775.length
        idx = 0
        s = (4 * ceil32(return_data.size)) + 128
        t = (11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 228
        while idx < sub_68faa775.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 132 len (96 * sub_68faa775.length) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (12 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128
        require return_data.size >= 32
        _49 = mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32
        require mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 <= test266151307()
        require (11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 159 < (11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + return_data.size + 128
        _50 = mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]
        if mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128] > test266151307():
            revert with 'NH{q', 65
        if (12 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + floor32(mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]) + 129 > test266151307() or floor32(mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (12 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + floor32(mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]) + 129
        mem[(12 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128] = _50
        require _49 + (32 * _50) + 32 <= return_data.size
        idx = 0
        s = (11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + _49 + 160
        t = (12 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 160
        while idx < _50:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _50:
            revert with 'NH{q', 50
    else:
        mem[0] = 15
        mem[(4 * ceil32(return_data.size)) + 128] = address(sub_68faa775.field_0)
        idx = (4 * ceil32(return_data.size)) + 128
        s = 0
        while (4 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 96 > idx:
            mem[idx + 32] = sub_68faa775[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(address(arg1))
        staticcall address(arg1).PERCENT_DIVISOR() with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x90321e1a with:
                gas gas_remaining wei
        mem[(6 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).uniRouter() with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(arg1))
        staticcall address(arg1).PERCENT_DIVISOR() with:
                gas gas_remaining wei
        mem[(8 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).totalFee() with:
                gas gas_remaining wei
        mem[(10 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if uint255(ext_call.return_data[0]) and ext_call.return_data[0] > -1 / 2 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 132] = (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]
        mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 164] = 64
        mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 196] = sub_68faa775.length
        idx = 0
        s = (4 * ceil32(return_data.size)) + 128
        t = (11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 228
        while idx < sub_68faa775.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 132 len (96 * sub_68faa775.length) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (12 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128
        require return_data.size >= 32
        _98 = mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32
        require mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 <= test266151307()
        require (11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 159 < (11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + return_data.size + 128
        _99 = mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]
        if mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128] > test266151307():
            revert with 'NH{q', 65
        if (12 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + floor32(mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]) + 129 > test266151307() or floor32(mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (12 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + floor32(mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + mem[(11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128 len 4], Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) >> 32 + 128]) + 129
        mem[(12 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 128] = _99
        require _98 + (32 * _99) + 32 <= return_data.size
        idx = 0
        s = (11 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + _98 + 160
        t = (12 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 160
        while idx < _99:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _99:
            revert with 'NH{q', 50
    if mem[(12 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 192] and ext_call.return_data[0] > -1 / mem[(12 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 192]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    mem[mem[64]] = mem[(12 * ceil32(return_data.size)) + (32 * sub_68faa775.length) + 192] * ext_call.return_data[0] / ext_call.return_data[0]
    return memory
      from mem[64]
       len 32
}



}
