contract main {




// =====================  Runtime code  =====================


address sub_956dcd1fAddress;

function sub_956dcd1f(?) payable {
    return sub_956dcd1fAddress
}

function _fallback() payable {
    revert
}

function getPriceUsdc(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x95d89b41 with:
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
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _97 = mem[64]
        mem[64] = mem[64] + 64
        mem[_97] = 4
        mem[_97 + 32] = 0x5553444300000000000000000000000000000000000000000000000000000000
        _98 = mem[64]
        mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = _5
        mem[mem[64] + 100 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            mem[ceil32(_5) + mem[64] + 100] = 4
            mem[ceil32(_5) + mem[64] + 132] = 0x5553444300000000000000000000000000000000000000000000000000000000
            mem[ceil32(_5) + mem[64] + 136] = 0
            require ext_code.size(sub_956dcd1fAddress)
            staticcall sub_956dcd1fAddress.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, ceil32(_5) + 96, _5, mem[mem[64] + 100 len ceil32(_5) + 32], 0, 0
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _283 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _291 = mem[64]
            if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_291] = mem[_283]
            mem[_291 + 32] = mem[_283 + 32]
            mem[_291 + 64] = mem[_283 + 64]
            mem[mem[64]] = mem[_291] / 10^12
        else:
            mem[mem[64] + _5 + 100] = 0
            mem[mem[64] + 36] = ceil32(_5) + 96
            mem[ceil32(_5) + _98 + 100] = 4
            mem[ceil32(_5) + _98 + 132] = 0x5553444300000000000000000000000000000000000000000000000000000000
            mem[ceil32(_5) + _98 + 136] = 0
            require ext_code.size(sub_956dcd1fAddress)
            staticcall sub_956dcd1fAddress.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len ceil32(_5) + _98 + -mem[64] + 160]
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _284 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _292 = mem[64]
            if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_292] = mem[_284]
            mem[_292 + 32] = mem[_284 + 32]
            mem[_292 + 64] = mem[_284 + 64]
            mem[mem[64]] = mem[_292] / 10^12
    else:
        mem[ceil32(return_data.size) + _5 + 128] = 0
        _99 = mem[64]
        mem[64] = mem[64] + 64
        mem[_99] = 4
        mem[_99 + 32] = 0x5553444300000000000000000000000000000000000000000000000000000000
        _100 = mem[64]
        mem[mem[64]] = 0x65555bcc00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = _5
        mem[mem[64] + 100 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            mem[ceil32(_5) + mem[64] + 100] = 4
            mem[ceil32(_5) + mem[64] + 132] = 0x5553444300000000000000000000000000000000000000000000000000000000
            mem[ceil32(_5) + mem[64] + 136] = 0
            require ext_code.size(sub_956dcd1fAddress)
            staticcall sub_956dcd1fAddress.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, ceil32(_5) + 96, _5, mem[mem[64] + 100 len ceil32(_5) + 32], 0, 0
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _285 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _293 = mem[64]
            if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_293] = mem[_285]
            mem[_293 + 32] = mem[_285 + 32]
            mem[_293 + 64] = mem[_285 + 64]
            mem[mem[64]] = mem[_293] / 10^12
        else:
            mem[mem[64] + _5 + 100] = 0
            mem[mem[64] + 36] = ceil32(_5) + 96
            mem[ceil32(_5) + _100 + 100] = 4
            mem[ceil32(_5) + _100 + 132] = 0x5553444300000000000000000000000000000000000000000000000000000000
            mem[ceil32(_5) + _100 + 136] = 0
            require ext_code.size(sub_956dcd1fAddress)
            staticcall sub_956dcd1fAddress.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len ceil32(_5) + _100 + -mem[64] + 160]
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _286 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _294 = mem[64]
            if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_294] = mem[_286]
            mem[_294 + 32] = mem[_286 + 32]
            mem[_294 + 64] = mem[_286 + 64]
            mem[mem[64]] = mem[_294] / 10^12
    return memory
      from mem[64]
       len 32
}



}
