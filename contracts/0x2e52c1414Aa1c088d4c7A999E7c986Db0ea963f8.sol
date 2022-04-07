contract main {




// =====================  Runtime code  =====================


address sushiRouterAddress;
array of struct sub_6a0341b8;
address sub_eb0cdcbbAddress;

function sub_6a0341b8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_6a0341b8.length
    return sub_6a0341b8[arg1].field_0
}

function sushiRouter() payable {
    return sushiRouterAddress
}

function sub_eb0cdcbb(?) payable {
    return sub_eb0cdcbbAddress
}

function _fallback() payable {
    revert
}

function sub_ea555ef3(?) payable {
    mem[96] = 0x7062c09400000000000000000000000000000000000000000000000000000000
    mem[100] = 1
    require ext_code.size(sub_eb0cdcbbAddress)
    call sub_eb0cdcbbAddress.0x7062c094 with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= 4294967296
    require mem[96 len 4], 0 + 32 <= return_data.size
    require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + mem[mem[96 len 4], 0 + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
}

function sub_a08d520e(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0x4af0d34900000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = 64
    mem[164] = sub_6a0341b8.length
    if not sub_6a0341b8.length:
        require ext_code.size(sub_eb0cdcbbAddress)
        call sub_eb0cdcbbAddress.0x4af0d349 with:
             gas gas_remaining wei
            args arg1, 64, sub_6a0341b8.length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _5 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    else:
        mem[0] = 1
        mem[196] = address(sub_6a0341b8.field_0)
        idx = 196
        s = 0
        while (32 * sub_6a0341b8.length) + 196 > idx + 32:
            mem[idx + 32] = sub_6a0341b8[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(sub_eb0cdcbbAddress)
        call sub_eb0cdcbbAddress.0x4af0d349 with:
             gas gas_remaining wei
            args arg1, Array(len=sub_6a0341b8.length, data=mem[196 len 32 * sub_6a0341b8.length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _15 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
}

function sub_50c0dd69(?) payable {
    mem[96] = 0x7062c09400000000000000000000000000000000000000000000000000000000
    mem[100] = 2
    require ext_code.size(sub_eb0cdcbbAddress)
    call sub_eb0cdcbbAddress.0x7062c094 with:
         gas gas_remaining wei
        args 2
    if not ext_call.success:
        emit Log(Array(len=20, data='external call failed'));
    else:
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _6 = mem[96 len 4], 0
        require mem[96 len 4], 0 <= 4294967296
        require mem[96 len 4], 0 + 32 <= return_data.size
        require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + mem[mem[96 len 4], 0 + 96] + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
        _9 = mem[_6 + 96]
        mem[ceil32(return_data.size) + 128 len ceil32(mem[_6 + 96])] = mem[_6 + 128 len ceil32(mem[_6 + 96])]
        if not _9 % 32:
            mem[_9 + ceil32(return_data.size) + 128] = 32
            mem[_9 + ceil32(return_data.size) + 160] = mem[ceil32(return_data.size) + 96]
            mem[_9 + ceil32(return_data.size) + 192 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                emit Log(string rg1):
                         32,
                         mem[_9 + ceil32(return_data.size) + 160 len mem[ceil32(return_data.size) + 96] + 32],
            else:
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _9 + ceil32(return_data.size) + 192] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _9 + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 224 len mem[ceil32(return_data.size) + 96] % 32]
                emit Log(Array(len=mem[ceil32(return_data.size) + 96], data=mem[_9 + ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 96]) + 32]));
        else:
            mem[floor32(_9) + ceil32(return_data.size) + 128] = mem[floor32(_9) + ceil32(return_data.size) + -(_9 % 32) + 160 len _9 % 32]
            mem[floor32(_9) + ceil32(return_data.size) + 160] = 32
            mem[floor32(_9) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
            mem[floor32(_9) + ceil32(return_data.size) + 224 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                emit Log(string rg1):
                         32,
                         mem[floor32(_9) + ceil32(return_data.size) + 192 len mem[ceil32(return_data.size) + 96] + 32],
            else:
                mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_9) + ceil32(return_data.size) + 224] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_9) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 256 len mem[ceil32(return_data.size) + 96] % 32]
                emit Log(Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_9) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96]) + 32]));
}

function sub_4c796628(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0x4af0d34900000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + 132] = arg1
    mem[(32 * arg2.length) + 164] = 64
    mem[(32 * arg2.length) + 196] = arg2.length
    mem[(32 * arg2.length) + 228 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(sub_eb0cdcbbAddress)
    call sub_eb0cdcbbAddress.0x4af0d349 with:
         gas gas_remaining wei
        args arg1, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 228 len (32 * arg2.length) - floor32(arg2.length)])
    if not ext_call.success:
        emit Log(Array(len=20, data='external call failed'));
    else:
        mem[(32 * arg2.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg2.length) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        _83 = mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32
        require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128] <= 4294967296 and mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128] + 32 <= return_data.size
        mem[(32 * arg2.length) + ceil32(return_data.size) + 128] = mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128]
        _86 = mem[_83 + (32 * arg2.length) + 128]
        mem[(32 * arg2.length) + ceil32(return_data.size) + 160 len ceil32(mem[_83 + (32 * arg2.length) + 128])] = mem[_83 + (32 * arg2.length) + 160 len ceil32(mem[_83 + (32 * arg2.length) + 128])]
        if not _86 % 32:
            mem[64] = _86 + (32 * arg2.length) + ceil32(return_data.size) + 160
            mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 160] = 32
            mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 192] = mem[(32 * arg2.length) + ceil32(return_data.size) + 128]
            mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 224 len ceil32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128])] = mem[(32 * arg2.length) + ceil32(return_data.size) + 160 len ceil32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128])]
            if not mem[(32 * arg2.length) + ceil32(return_data.size) + 128] % 32:
                emit Log(string rg1):
                         32,
                         mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 192 len mem[(32 * arg2.length) + ceil32(return_data.size) + 128] + 32],
                mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 160] = 0x2f79339700000000000000000000000000000000000000000000000000000000
                mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 164] = arg1
                mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 196] = 64
                mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 228] = arg2.length
                mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 260 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                require ext_code.size(sub_eb0cdcbbAddress)
                call sub_eb0cdcbbAddress.0x2f793397 with:
                     gas gas_remaining wei
                    args arg1, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 260 len (32 * arg2.length) - floor32(arg2.length)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _86 + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160
                require return_data.size >= 32
                _283 = mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32
            else:
                mem[floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128]) + _86 + (32 * arg2.length) + ceil32(return_data.size) + 224] = mem[floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128]) + _86 + (32 * arg2.length) + ceil32(return_data.size) + -(mem[(32 * arg2.length) + ceil32(return_data.size) + 128] % 32) + 256 len mem[(32 * arg2.length) + ceil32(return_data.size) + 128] % 32]
                emit Log(Array(len=mem[(32 * arg2.length) + ceil32(return_data.size) + 128], data=mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 224 len floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128]) + 32]));
                mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 160] = 0x2f79339700000000000000000000000000000000000000000000000000000000
                mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 164] = arg1
                mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 196] = 64
                mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 228] = arg2.length
                mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 260 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                require ext_code.size(sub_eb0cdcbbAddress)
                call sub_eb0cdcbbAddress.0x2f793397 with:
                     gas gas_remaining wei
                    args arg1, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 260 len (32 * arg2.length) - floor32(arg2.length)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _86 + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160
                require return_data.size >= 32
                _285 = mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32
            require mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
            require mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
            require mem[mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + _86 + (32 * arg2.length) + ceil32(return_data.size) + 160] <= 4294967296 and mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + _86 + (32 * arg2.length) + ceil32(return_data.size) + 160] + 32 <= return_data.size
            mem[_86 + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] = mem[mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + _86 + (32 * arg2.length) + ceil32(return_data.size) + 160]
        else:
            mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 160] = mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + -(_86 % 32) + 192 len _86 % 32]
            mem[64] = floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 192
            mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 192] = 32
            mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 224] = mem[(32 * arg2.length) + ceil32(return_data.size) + 128]
            mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 256 len ceil32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128])] = mem[(32 * arg2.length) + ceil32(return_data.size) + 160 len ceil32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128])]
            if not mem[(32 * arg2.length) + ceil32(return_data.size) + 128] % 32:
                emit Log(string rg1):
                         32,
                         mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 224 len mem[(32 * arg2.length) + ceil32(return_data.size) + 128] + 32],
                mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 192] = 0x2f79339700000000000000000000000000000000000000000000000000000000
                mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 196] = arg1
                mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 228] = 64
                mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 260] = arg2.length
                mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 292 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                require ext_code.size(sub_eb0cdcbbAddress)
                call sub_eb0cdcbbAddress.0x2f793397 with:
                     gas gas_remaining wei
                    args arg1, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 292 len (32 * arg2.length) - floor32(arg2.length)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(_86) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _287 = mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
            else:
                mem[floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128]) + floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 256] = mem[floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128]) + floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + -(mem[(32 * arg2.length) + ceil32(return_data.size) + 128] % 32) + 288 len mem[(32 * arg2.length) + ceil32(return_data.size) + 128] % 32]
                emit Log(Array(len=mem[(32 * arg2.length) + ceil32(return_data.size) + 128], data=mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 256 len floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128]) + 32]));
                mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 192] = 0x2f79339700000000000000000000000000000000000000000000000000000000
                mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 196] = arg1
                mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 228] = 64
                mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 260] = arg2.length
                mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 292 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                require ext_code.size(sub_eb0cdcbbAddress)
                call sub_eb0cdcbbAddress.0x2f793397 with:
                     gas gas_remaining wei
                    args arg1, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 292 len (32 * arg2.length) - floor32(arg2.length)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(_86) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _289 = mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
            require mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
            require mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
            require mem[mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 192] <= 4294967296 and mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 192] + 32 <= return_data.size
            mem[floor32(_86) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192] = mem[mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 192]
}



}
