contract main {




// =====================  Runtime code  =====================


array of address sub_6a0341b8;
array of address stor1;
uint256 stor2;
uint256 stor3;

function sub_6a0341b8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_6a0341b8.length
    return sub_6a0341b8[arg1].field_0
}

function sub_eb0cdcbb(?) payable {
    return stor1.length
}

function _fallback() payable {
    revert
}

function sub_c2f93a47(?) payable {
    require calldata.size - 4 >= 256
    require arg8 <= 4294967296
    require arg8 + 36 <= calldata.size
    require arg8.length <= 4294967296 and arg8 + arg8.length + 36 <= calldata.size
    mem[96] = arg8.length
    mem[128 len arg8.length] = arg8[all]
    mem[arg8.length + 128] = 0
    mem[ceil32(arg8.length) + 128] = 0x2eeb3c6000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg8.length) + 132] = arg1
    mem[ceil32(arg8.length) + 164] = arg2
    mem[ceil32(arg8.length) + 196] = arg3
    mem[ceil32(arg8.length) + 228] = arg4
    mem[ceil32(arg8.length) + 260] = arg5
    mem[ceil32(arg8.length) + 292] = arg6
    mem[ceil32(arg8.length) + 324] = arg7
    mem[ceil32(arg8.length) + 356] = 256
    mem[ceil32(arg8.length) + 388] = arg8.length
    mem[ceil32(arg8.length) + 420 len ceil32(arg8.length)] = arg8[all], mem[arg8.length + 128 len ceil32(arg8.length) - arg8.length]
    require ext_code.size(stor1.length)
    call stor1.length with:
         gas gas_remaining wei
        args arg1, address(arg2), address(arg3), address(arg4), address(arg5), address(arg6), address(arg7), Array(len=arg8.length, data=arg8[all])
    if not ext_call.success:
        emit Log(string rg1):
                 0,
                 'external call failed',
        stor3++
    else:
        mem[ceil32(arg8.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg8.length) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        require 0, Mask(224, 32, arg1) >> 32 <= 4294967296
        require 0, Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[0, Mask(224, 32, arg1) >> 32 + ceil32(arg8.length) + 128] <= 4294967296 and 0, Mask(224, 32, arg1) >> 32 + mem[0, Mask(224, 32, arg1) >> 32 + ceil32(arg8.length) + 128] + 32 <= return_data.size
        mem[ceil32(arg8.length) + ceil32(return_data.size) + 128] = mem[0, Mask(224, 32, arg1) >> 32 + ceil32(arg8.length) + 128]
        _70 = mem[0, Mask(224, 32, arg1) >> 32 + ceil32(arg8.length) + 128]
        mem[ceil32(arg8.length) + ceil32(return_data.size) + 160 len ceil32(mem[0, Mask(224, 32, arg1) >> 32 + ceil32(arg8.length) + 128])] = mem[0, Mask(224, 32, arg1) >> 32 + ceil32(arg8.length) + 160 len ceil32(mem[0, Mask(224, 32, arg1) >> 32 + ceil32(arg8.length) + 128])]
        if not _70 % 32:
            mem[_70 + ceil32(arg8.length) + ceil32(return_data.size) + 160] = 32
            mem[_70 + ceil32(arg8.length) + ceil32(return_data.size) + 192] = mem[ceil32(arg8.length) + ceil32(return_data.size) + 128]
            mem[_70 + ceil32(arg8.length) + ceil32(return_data.size) + 224 len ceil32(mem[ceil32(arg8.length) + ceil32(return_data.size) + 128])] = mem[ceil32(arg8.length) + ceil32(return_data.size) + 160 len ceil32(mem[ceil32(arg8.length) + ceil32(return_data.size) + 128])]
            if not mem[ceil32(arg8.length) + ceil32(return_data.size) + 128] % 32:
                emit Log(string rg1):
                         32,
                         mem[_70 + ceil32(arg8.length) + ceil32(return_data.size) + 192 len mem[ceil32(arg8.length) + ceil32(return_data.size) + 128] + 32],
            else:
                mem[floor32(mem[ceil32(arg8.length) + ceil32(return_data.size) + 128]) + _70 + ceil32(arg8.length) + ceil32(return_data.size) + 224] = mem[floor32(mem[ceil32(arg8.length) + ceil32(return_data.size) + 128]) + _70 + ceil32(arg8.length) + ceil32(return_data.size) + -(mem[ceil32(arg8.length) + ceil32(return_data.size) + 128] % 32) + 256 len mem[ceil32(arg8.length) + ceil32(return_data.size) + 128] % 32]
                emit Log(Array(len=mem[ceil32(arg8.length) + ceil32(return_data.size) + 128], data=mem[_70 + ceil32(arg8.length) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(arg8.length) + ceil32(return_data.size) + 128]) + 32]));
        else:
            mem[floor32(_70) + ceil32(arg8.length) + ceil32(return_data.size) + 160] = mem[floor32(_70) + ceil32(arg8.length) + ceil32(return_data.size) + -(_70 % 32) + 192 len _70 % 32]
            mem[floor32(_70) + ceil32(arg8.length) + ceil32(return_data.size) + 192] = 32
            mem[floor32(_70) + ceil32(arg8.length) + ceil32(return_data.size) + 224] = mem[ceil32(arg8.length) + ceil32(return_data.size) + 128]
            mem[floor32(_70) + ceil32(arg8.length) + ceil32(return_data.size) + 256 len ceil32(mem[ceil32(arg8.length) + ceil32(return_data.size) + 128])] = mem[ceil32(arg8.length) + ceil32(return_data.size) + 160 len ceil32(mem[ceil32(arg8.length) + ceil32(return_data.size) + 128])]
            if not mem[ceil32(arg8.length) + ceil32(return_data.size) + 128] % 32:
                emit Log(string rg1):
                         32,
                         mem[floor32(_70) + ceil32(arg8.length) + ceil32(return_data.size) + 224 len mem[ceil32(arg8.length) + ceil32(return_data.size) + 128] + 32],
            else:
                mem[floor32(mem[ceil32(arg8.length) + ceil32(return_data.size) + 128]) + floor32(_70) + ceil32(arg8.length) + ceil32(return_data.size) + 256] = mem[floor32(mem[ceil32(arg8.length) + ceil32(return_data.size) + 128]) + floor32(_70) + ceil32(arg8.length) + ceil32(return_data.size) + -(mem[ceil32(arg8.length) + ceil32(return_data.size) + 128] % 32) + 288 len mem[ceil32(arg8.length) + ceil32(return_data.size) + 128] % 32]
                emit Log(Array(len=mem[ceil32(arg8.length) + ceil32(return_data.size) + 128], data=mem[floor32(_70) + ceil32(arg8.length) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(arg8.length) + ceil32(return_data.size) + 128]) + 32]));
        stor2++
}

function sub_4c796628(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0x9134529100000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + 132] = arg1
    mem[(32 * arg2.length) + 164] = 64
    mem[(32 * arg2.length) + 196] = arg2.length
    mem[(32 * arg2.length) + 228 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(stor1.length)
    call stor1.length.0x91345291 with:
         gas gas_remaining wei
        args arg1, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 228 len (32 * arg2.length) - floor32(arg2.length)])
    if not ext_call.success:
        emit Log(Array(len=20, data='external call failed'));
        stor3++
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
            mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 160] = 32
            mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 192] = mem[(32 * arg2.length) + ceil32(return_data.size) + 128]
            mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 224 len ceil32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128])] = mem[(32 * arg2.length) + ceil32(return_data.size) + 160 len ceil32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128])]
            if not mem[(32 * arg2.length) + ceil32(return_data.size) + 128] % 32:
                emit Log(string rg1):
                         32,
                         mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 192 len mem[(32 * arg2.length) + ceil32(return_data.size) + 128] + 32],
                mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 160] = 0xad49bbb500000000000000000000000000000000000000000000000000000000
                mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 164] = arg1
                mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 196] = 64
                mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 228] = arg2.length
                mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 260 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                require ext_code.size(stor1.length)
                call stor1.length.0xad49bbb5 with:
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
                mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 160] = 0xad49bbb500000000000000000000000000000000000000000000000000000000
                mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 164] = arg1
                mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 196] = 64
                mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 228] = arg2.length
                mem[_86 + (32 * arg2.length) + ceil32(return_data.size) + 260 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                require ext_code.size(stor1.length)
                call stor1.length.0xad49bbb5 with:
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
            mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 192] = 32
            mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 224] = mem[(32 * arg2.length) + ceil32(return_data.size) + 128]
            mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 256 len ceil32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128])] = mem[(32 * arg2.length) + ceil32(return_data.size) + 160 len ceil32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128])]
            if not mem[(32 * arg2.length) + ceil32(return_data.size) + 128] % 32:
                emit Log(string rg1):
                         32,
                         mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 224 len mem[(32 * arg2.length) + ceil32(return_data.size) + 128] + 32],
                mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 192] = 0xad49bbb500000000000000000000000000000000000000000000000000000000
                mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 196] = arg1
                mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 228] = 64
                mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 260] = arg2.length
                mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 292 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                require ext_code.size(stor1.length)
                call stor1.length.0xad49bbb5 with:
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
                mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 192] = 0xad49bbb500000000000000000000000000000000000000000000000000000000
                mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 196] = arg1
                mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 228] = 64
                mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 260] = arg2.length
                mem[floor32(_86) + (32 * arg2.length) + ceil32(return_data.size) + 292 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                require ext_code.size(stor1.length)
                call stor1.length.0xad49bbb5 with:
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
        stor2++
}

function sub_68564170(?) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[64] = (32 * arg4.length) + 128
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = 0
    require 0 < sub_6a0341b8.length
    address(sub_6a0341b8.field_0) = arg2
    require 1 < sub_6a0341b8.length
    address(sub_6a0341b8.field_256) = arg3
    require 3 < sub_6a0341b8.length
    mem[0] = 0
    address(sub_6a0341b8.field_768) = arg2
    idx = 0
    while idx < arg4.length:
        require idx < mem[96]
        require 2 < sub_6a0341b8.length
        mem[0] = 0
        address(sub_6a0341b8.field_512) = mem[(32 * idx) + 140 len 20]
        _91 = mem[64]
        mem[64] = mem[64] + (32 * sub_6a0341b8.length) + 32
        mem[_91] = sub_6a0341b8.length
        if not sub_6a0341b8.length:
            _93 = mem[64]
            mem[mem[64]] = 0x9134529100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = sub_6a0341b8.length
            s = 0
            while s < 32 * sub_6a0341b8.length:
                mem[mem[64] + s + 100] = mem[_91 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(stor1.length)
            call stor1.length.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * sub_6a0341b8.length) + _93 + -mem[64] + 96]
            if not ext_call.success:
                mem[mem[64]] = 32
                mem[mem[64] + 32] = 20
                mem[mem[64] + 64] = 'external call failed'
                emit Log(Array(len=20, data='external call failed'));
                stor3++
            else:
                _171 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _174 = mem[_171]
                require mem[_171] <= 4294967296
                require mem[_171] + 32 <= return_data.size
                require mem[mem[_171] + _171] <= 4294967296 and mem[_171] + mem[mem[_171] + _171] + 32 <= return_data.size
                mem[_171 + ceil32(return_data.size)] = mem[mem[_171] + _171]
                _177 = mem[_174 + _171]
                s = 0
                while s < _177:
                    mem[_171 + ceil32(return_data.size) + s + 32] = mem[_174 + _171 + s + 32]
                    s = s + 32
                    continue 
                if not _177 % 32:
                    mem[64] = _177 + _171 + ceil32(return_data.size) + 32
                    mem[_177 + _171 + ceil32(return_data.size) + 32] = 32
                    mem[_177 + _171 + ceil32(return_data.size) + 64] = mem[_171 + ceil32(return_data.size)]
                    s = 0
                    while s < mem[_171 + ceil32(return_data.size)]:
                        mem[_177 + _171 + ceil32(return_data.size) + s + 96] = mem[_171 + ceil32(return_data.size) + s + 32]
                        s = s + 32
                        continue 
                    if not mem[_171 + ceil32(return_data.size)] % 32:
                        emit Log(string rg1):
                                 32,
                                 mem[_177 + _171 + ceil32(return_data.size) + 64 len mem[_171 + ceil32(return_data.size)] + 32],
                        mem[_177 + _171 + ceil32(return_data.size) + 32] = 0xad49bbb500000000000000000000000000000000000000000000000000000000
                        mem[_177 + _171 + ceil32(return_data.size) + 36] = arg1
                        mem[_177 + _171 + ceil32(return_data.size) + 68] = 64
                        mem[_177 + _171 + ceil32(return_data.size) + 100] = mem[_91]
                        _389 = mem[_91]
                        s = 0
                        while s < 32 * _389:
                            mem[_177 + _171 + ceil32(return_data.size) + s + 132] = mem[_91 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(stor1.length)
                        call stor1.length.0xad49bbb5 with:
                             gas gas_remaining wei
                            args arg1, 64, mem[_177 + _171 + ceil32(return_data.size) + 100 len (32 * _389) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_177 + _171 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _177 + _171 + (2 * ceil32(return_data.size)) + 32
                        require return_data.size >= 32
                        _525 = mem[_177 + _171 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg1) >> 32
                        require mem[_177 + _171 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                        require mem[_177 + _171 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                        require mem[mem[_177 + _171 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg1) >> 32 + _177 + _171 + ceil32(return_data.size) + 32] <= 4294967296 and mem[_177 + _171 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[_177 + _171 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg1) >> 32 + _177 + _171 + ceil32(return_data.size) + 32] + 32 <= return_data.size
                        mem[_177 + _171 + (2 * ceil32(return_data.size)) + 32] = mem[mem[_177 + _171 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg1) >> 32 + _177 + _171 + ceil32(return_data.size) + 32]
                        _544 = mem[_525 + _177 + _171 + ceil32(return_data.size) + 32]
                        s = 0
                        while s < _544:
                            mem[_177 + _171 + (2 * ceil32(return_data.size)) + s + 64] = mem[_525 + _177 + _171 + ceil32(return_data.size) + s + 64]
                            s = s + 32
                            continue 
                        if not _544 % 32:
                            mem[64] = _544 + _177 + _171 + (2 * ceil32(return_data.size)) + 64
                        else:
                            mem[floor32(_544) + _177 + _171 + (2 * ceil32(return_data.size)) + 64] = mem[floor32(_544) + _177 + _171 + (2 * ceil32(return_data.size)) + -(_544 % 32) + 96 len _544 % 32]
                            mem[64] = floor32(_544) + _177 + _171 + (2 * ceil32(return_data.size)) + 96
                        stor2++
                        idx = idx + 1
                        continue 
                    mem[floor32(mem[_171 + ceil32(return_data.size)]) + _177 + _171 + ceil32(return_data.size) + 96] = mem[floor32(mem[_171 + ceil32(return_data.size)]) + _177 + _171 + ceil32(return_data.size) + -(mem[_171 + ceil32(return_data.size)] % 32) + 128 len mem[_171 + ceil32(return_data.size)] % 32]
                    emit Log(Array(len=mem[_171 + ceil32(return_data.size)], data=mem[_177 + _171 + ceil32(return_data.size) + 96 len floor32(mem[_171 + ceil32(return_data.size)]) + 32]));
                    mem[_177 + _171 + ceil32(return_data.size) + 32] = 0xad49bbb500000000000000000000000000000000000000000000000000000000
                    mem[_177 + _171 + ceil32(return_data.size) + 36] = arg1
                    mem[_177 + _171 + ceil32(return_data.size) + 68] = 64
                    mem[_177 + _171 + ceil32(return_data.size) + 100] = mem[_91]
                    _399 = mem[_91]
                    s = 0
                    while s < 32 * _399:
                        mem[_177 + _171 + ceil32(return_data.size) + s + 132] = mem[_91 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(stor1.length)
                    call stor1.length.0xad49bbb5 with:
                         gas gas_remaining wei
                        args arg1, 64, mem[_177 + _171 + ceil32(return_data.size) + 100 len (32 * _399) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_177 + _171 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _177 + _171 + (2 * ceil32(return_data.size)) + 32
                    require return_data.size >= 32
                    _527 = mem[_177 + _171 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg1) >> 32
                    require mem[_177 + _171 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[_177 + _171 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[_177 + _171 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg1) >> 32 + _177 + _171 + ceil32(return_data.size) + 32] <= 4294967296 and mem[_177 + _171 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[_177 + _171 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg1) >> 32 + _177 + _171 + ceil32(return_data.size) + 32] + 32 <= return_data.size
                    mem[_177 + _171 + (2 * ceil32(return_data.size)) + 32] = mem[mem[_177 + _171 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg1) >> 32 + _177 + _171 + ceil32(return_data.size) + 32]
                    _545 = mem[_527 + _177 + _171 + ceil32(return_data.size) + 32]
                    s = 0
                    while s < _545:
                        mem[_177 + _171 + (2 * ceil32(return_data.size)) + s + 64] = mem[_527 + _177 + _171 + ceil32(return_data.size) + s + 64]
                        s = s + 32
                        continue 
                    if not _545 % 32:
                        mem[64] = _545 + _177 + _171 + (2 * ceil32(return_data.size)) + 64
                    else:
                        mem[floor32(_545) + _177 + _171 + (2 * ceil32(return_data.size)) + 64] = mem[floor32(_545) + _177 + _171 + (2 * ceil32(return_data.size)) + -(_545 % 32) + 96 len _545 % 32]
                        mem[64] = floor32(_545) + _177 + _171 + (2 * ceil32(return_data.size)) + 96
                    stor2++
                    s = ceil32(_545) + 1
                    continue 
                mem[floor32(_177) + _171 + ceil32(return_data.size) + 32] = mem[floor32(_177) + _171 + ceil32(return_data.size) + -(_177 % 32) + 64 len _177 % 32]
                mem[64] = floor32(_177) + _171 + ceil32(return_data.size) + 64
                mem[floor32(_177) + _171 + ceil32(return_data.size) + 64] = 32
                mem[floor32(_177) + _171 + ceil32(return_data.size) + 96] = mem[_171 + ceil32(return_data.size)]
                s = 0
                while s < mem[_171 + ceil32(return_data.size)]:
                    mem[floor32(_177) + _171 + ceil32(return_data.size) + s + 128] = mem[_171 + ceil32(return_data.size) + s + 32]
                    s = s + 32
                    continue 
                if not mem[_171 + ceil32(return_data.size)] % 32:
                    emit Log(string rg1):
                             32,
                             mem[floor32(_177) + _171 + ceil32(return_data.size) + 96 len mem[_171 + ceil32(return_data.size)] + 32],
                    mem[floor32(_177) + _171 + ceil32(return_data.size) + 64] = 0xad49bbb500000000000000000000000000000000000000000000000000000000
                    mem[floor32(_177) + _171 + ceil32(return_data.size) + 68] = arg1
                    mem[floor32(_177) + _171 + ceil32(return_data.size) + 100] = 64
                    mem[floor32(_177) + _171 + ceil32(return_data.size) + 132] = mem[_91]
                    _394 = mem[_91]
                    s = 0
                    while s < 32 * _394:
                        mem[floor32(_177) + _171 + ceil32(return_data.size) + s + 164] = mem[_91 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(stor1.length)
                    call stor1.length.0xad49bbb5 with:
                         gas gas_remaining wei
                        args arg1, 64, mem[floor32(_177) + _171 + ceil32(return_data.size) + 132 len (32 * _394) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[floor32(_177) + _171 + ceil32(return_data.size) + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = floor32(_177) + _171 + (2 * ceil32(return_data.size)) + 64
                    require return_data.size >= 32
                    _529 = mem[floor32(_177) + _171 + ceil32(return_data.size) + 64 len 4], Mask(224, 32, arg1) >> 32
                    require mem[floor32(_177) + _171 + ceil32(return_data.size) + 64 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[floor32(_177) + _171 + ceil32(return_data.size) + 64 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[floor32(_177) + _171 + ceil32(return_data.size) + 64 len 4], Mask(224, 32, arg1) >> 32 + floor32(_177) + _171 + ceil32(return_data.size) + 64] <= 4294967296 and mem[floor32(_177) + _171 + ceil32(return_data.size) + 64 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[floor32(_177) + _171 + ceil32(return_data.size) + 64 len 4], Mask(224, 32, arg1) >> 32 + floor32(_177) + _171 + ceil32(return_data.size) + 64] + 32 <= return_data.size
                    mem[floor32(_177) + _171 + (2 * ceil32(return_data.size)) + 64] = mem[mem[floor32(_177) + _171 + ceil32(return_data.size) + 64 len 4], Mask(224, 32, arg1) >> 32 + floor32(_177) + _171 + ceil32(return_data.size) + 64]
                    _546 = mem[_529 + floor32(_177) + _171 + ceil32(return_data.size) + 64]
                    s = 0
                    while s < _546:
                        mem[floor32(_177) + _171 + (2 * ceil32(return_data.size)) + s + 96] = mem[_529 + floor32(_177) + _171 + ceil32(return_data.size) + s + 96]
                        s = s + 32
                        continue 
                    if not _546 % 32:
                        mem[64] = _546 + floor32(_177) + _171 + (2 * ceil32(return_data.size)) + 96
                    else:
                        mem[floor32(_546) + floor32(_177) + _171 + (2 * ceil32(return_data.size)) + 96] = mem[floor32(_546) + floor32(_177) + _171 + (2 * ceil32(return_data.size)) + -(_546 % 32) + 128 len _546 % 32]
                        mem[64] = floor32(_546) + floor32(_177) + _171 + (2 * ceil32(return_data.size)) + 128
                    stor2++
                    s = ceil32(_546) + 1
                    continue 
                mem[floor32(mem[_171 + ceil32(return_data.size)]) + floor32(_177) + _171 + ceil32(return_data.size) + 128] = mem[floor32(mem[_171 + ceil32(return_data.size)]) + floor32(_177) + _171 + ceil32(return_data.size) + -(mem[_171 + ceil32(return_data.size)] % 32) + 160 len mem[_171 + ceil32(return_data.size)] % 32]
                emit Log(Array(len=mem[_171 + ceil32(return_data.size)], data=mem[floor32(_177) + _171 + ceil32(return_data.size) + 128 len floor32(mem[_171 + ceil32(return_data.size)]) + 32]));
                mem[floor32(_177) + _171 + ceil32(return_data.size) + 64] = 0xad49bbb500000000000000000000000000000000000000000000000000000000
                mem[floor32(_177) + _171 + ceil32(return_data.size) + 68] = arg1
                mem[floor32(_177) + _171 + ceil32(return_data.size) + 100] = 64
                mem[floor32(_177) + _171 + ceil32(return_data.size) + 132] = mem[_91]
                _403 = mem[_91]
                s = 0
                while s < 32 * _403:
                    mem[floor32(_177) + _171 + ceil32(return_data.size) + s + 164] = mem[_91 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(stor1.length)
                call stor1.length.0xad49bbb5 with:
                     gas gas_remaining wei
                    args arg1, 64, mem[floor32(_177) + _171 + ceil32(return_data.size) + 132 len (32 * _403) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(_177) + _171 + ceil32(return_data.size) + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(_177) + _171 + (2 * ceil32(return_data.size)) + 64
                require return_data.size >= 32
                _531 = mem[floor32(_177) + _171 + ceil32(return_data.size) + 64 len 4], Mask(224, 32, arg1) >> 32
                require mem[floor32(_177) + _171 + ceil32(return_data.size) + 64 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[floor32(_177) + _171 + ceil32(return_data.size) + 64 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[floor32(_177) + _171 + ceil32(return_data.size) + 64 len 4], Mask(224, 32, arg1) >> 32 + floor32(_177) + _171 + ceil32(return_data.size) + 64] <= 4294967296 and mem[floor32(_177) + _171 + ceil32(return_data.size) + 64 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[floor32(_177) + _171 + ceil32(return_data.size) + 64 len 4], Mask(224, 32, arg1) >> 32 + floor32(_177) + _171 + ceil32(return_data.size) + 64] + 32 <= return_data.size
                mem[floor32(_177) + _171 + (2 * ceil32(return_data.size)) + 64] = mem[mem[floor32(_177) + _171 + ceil32(return_data.size) + 64 len 4], Mask(224, 32, arg1) >> 32 + floor32(_177) + _171 + ceil32(return_data.size) + 64]
                _547 = mem[_531 + floor32(_177) + _171 + ceil32(return_data.size) + 64]
                s = 0
                while s < _547:
                    mem[floor32(_177) + _171 + (2 * ceil32(return_data.size)) + s + 96] = mem[_531 + floor32(_177) + _171 + ceil32(return_data.size) + s + 96]
                    s = s + 32
                    continue 
                if not _547 % 32:
                    mem[64] = _547 + floor32(_177) + _171 + (2 * ceil32(return_data.size)) + 96
                else:
                    mem[floor32(_547) + floor32(_177) + _171 + (2 * ceil32(return_data.size)) + 96] = mem[floor32(_547) + floor32(_177) + _171 + (2 * ceil32(return_data.size)) + -(_547 % 32) + 128 len _547 % 32]
                    mem[64] = floor32(_547) + floor32(_177) + _171 + (2 * ceil32(return_data.size)) + 128
                stor2++
        else:
            mem[0] = 0
            mem[_91 + 32] = address(sub_6a0341b8.field_0)
            s = _91 + 32
            t = sha3(0)
            while _91 + (32 * sub_6a0341b8.length) > s:
                mem[s + 32] = stor1[t]
                s = s + 32
                t = t + 1
                continue 
            _243 = mem[64]
            mem[mem[64]] = 0x9134529100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = sub_6a0341b8.length
            s = 0
            while s < 32 * sub_6a0341b8.length:
                mem[mem[64] + s + 100] = mem[_91 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(stor1.length)
            call stor1.length.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * sub_6a0341b8.length) + _243 + -mem[64] + 96]
            if not ext_call.success:
                mem[mem[64]] = 32
                mem[mem[64] + 32] = 20
                mem[mem[64] + 64] = 'external call failed'
                emit Log(Array(len=20, data='external call failed'));
                stor3++
            else:
                _404 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _411 = mem[_404]
                require mem[_404] <= 4294967296
                require mem[_404] + 32 <= return_data.size
                require mem[mem[_404] + _404] <= 4294967296 and mem[_404] + mem[mem[_404] + _404] + 32 <= return_data.size
                mem[_404 + ceil32(return_data.size)] = mem[mem[_404] + _404]
                _426 = mem[_411 + _404]
                s = 0
                while s < _426:
                    mem[_404 + ceil32(return_data.size) + s + 32] = mem[_411 + _404 + s + 32]
                    s = s + 32
                    continue 
                if not _426 % 32:
                    mem[64] = _426 + _404 + ceil32(return_data.size) + 32
                    mem[_426 + _404 + ceil32(return_data.size) + 32] = 32
                    mem[_426 + _404 + ceil32(return_data.size) + 64] = mem[_404 + ceil32(return_data.size)]
                    s = 0
                    while s < mem[_404 + ceil32(return_data.size)]:
                        mem[_426 + _404 + ceil32(return_data.size) + s + 96] = mem[_404 + ceil32(return_data.size) + s + 32]
                        s = s + 32
                        continue 
                    if not mem[_404 + ceil32(return_data.size)] % 32:
                        emit Log(mem[mem[64] len mem[_404 + ceil32(return_data.size)] + _426 + _404 + ceil32(return_data.size) + -mem[64] + 96]);
                        _622 = mem[64]
                        mem[mem[64]] = 0xad49bbb500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = mem[_91]
                        _624 = mem[_91]
                        s = 0
                        while s < 32 * _624:
                            mem[mem[64] + s + 100] = mem[_91 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(stor1.length)
                        call stor1.length.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * _624) + _622 + -mem[64] + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _683 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _687 = mem[_683]
                        require mem[_683] <= 4294967296
                        require mem[_683] + 32 <= return_data.size
                        require mem[mem[_683] + _683] <= 4294967296 and mem[_683] + mem[mem[_683] + _683] + 32 <= return_data.size
                        mem[_683 + ceil32(return_data.size)] = mem[mem[_683] + _683]
                        _699 = mem[_687 + _683]
                        s = 0
                        while s < _699:
                            mem[_683 + ceil32(return_data.size) + s + 32] = mem[_687 + _683 + s + 32]
                            s = s + 32
                            continue 
                        if not _699 % 32:
                            mem[64] = _699 + _683 + ceil32(return_data.size) + 32
                        else:
                            mem[floor32(_699) + _683 + ceil32(return_data.size) + 32] = mem[floor32(_699) + _683 + ceil32(return_data.size) + -(_699 % 32) + 64 len _699 % 32]
                            mem[64] = floor32(_699) + _683 + ceil32(return_data.size) + 64
                    else:
                        mem[floor32(mem[_404 + ceil32(return_data.size)]) + _426 + _404 + ceil32(return_data.size) + 96] = mem[floor32(mem[_404 + ceil32(return_data.size)]) + _426 + _404 + ceil32(return_data.size) + -(mem[_404 + ceil32(return_data.size)] % 32) + 128 len mem[_404 + ceil32(return_data.size)] % 32]
                        emit Log(mem[mem[64] len floor32(mem[_404 + ceil32(return_data.size)]) + _426 + _404 + ceil32(return_data.size) + -mem[64] + 128]);
                        _632 = mem[64]
                        mem[mem[64]] = 0xad49bbb500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = mem[_91]
                        _634 = mem[_91]
                        s = 0
                        while s < 32 * _634:
                            mem[mem[64] + s + 100] = mem[_91 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(stor1.length)
                        call stor1.length.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * _634) + _632 + -mem[64] + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _684 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _689 = mem[_684]
                        require mem[_684] <= 4294967296
                        require mem[_684] + 32 <= return_data.size
                        require mem[mem[_684] + _684] <= 4294967296 and mem[_684] + mem[mem[_684] + _684] + 32 <= return_data.size
                        mem[_684 + ceil32(return_data.size)] = mem[mem[_684] + _684]
                        _700 = mem[_689 + _684]
                        s = 0
                        while s < _700:
                            mem[_684 + ceil32(return_data.size) + s + 32] = mem[_689 + _684 + s + 32]
                            s = s + 32
                            continue 
                        if not _700 % 32:
                            mem[64] = _700 + _684 + ceil32(return_data.size) + 32
                        else:
                            mem[floor32(_700) + _684 + ceil32(return_data.size) + 32] = mem[floor32(_700) + _684 + ceil32(return_data.size) + -(_700 % 32) + 64 len _700 % 32]
                            mem[64] = floor32(_700) + _684 + ceil32(return_data.size) + 64
                else:
                    mem[floor32(_426) + _404 + ceil32(return_data.size) + 32] = mem[floor32(_426) + _404 + ceil32(return_data.size) + -(_426 % 32) + 64 len _426 % 32]
                    mem[64] = floor32(_426) + _404 + ceil32(return_data.size) + 64
                    mem[floor32(_426) + _404 + ceil32(return_data.size) + 64] = 32
                    mem[floor32(_426) + _404 + ceil32(return_data.size) + 96] = mem[_404 + ceil32(return_data.size)]
                    s = 0
                    while s < mem[_404 + ceil32(return_data.size)]:
                        mem[floor32(_426) + _404 + ceil32(return_data.size) + s + 128] = mem[_404 + ceil32(return_data.size) + s + 32]
                        s = s + 32
                        continue 
                    if not mem[_404 + ceil32(return_data.size)] % 32:
                        emit Log(mem[mem[64] len mem[_404 + ceil32(return_data.size)] + floor32(_426) + _404 + ceil32(return_data.size) + -mem[64] + 128]);
                        _627 = mem[64]
                        mem[mem[64]] = 0xad49bbb500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = mem[_91]
                        _629 = mem[_91]
                        s = 0
                        while s < 32 * _629:
                            mem[mem[64] + s + 100] = mem[_91 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(stor1.length)
                        call stor1.length.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * _629) + _627 + -mem[64] + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _685 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _691 = mem[_685]
                        require mem[_685] <= 4294967296
                        require mem[_685] + 32 <= return_data.size
                        require mem[mem[_685] + _685] <= 4294967296 and mem[_685] + mem[mem[_685] + _685] + 32 <= return_data.size
                        mem[_685 + ceil32(return_data.size)] = mem[mem[_685] + _685]
                        _701 = mem[_691 + _685]
                        s = 0
                        while s < _701:
                            mem[_685 + ceil32(return_data.size) + s + 32] = mem[_691 + _685 + s + 32]
                            s = s + 32
                            continue 
                        if not _701 % 32:
                            mem[64] = _701 + _685 + ceil32(return_data.size) + 32
                        else:
                            mem[floor32(_701) + _685 + ceil32(return_data.size) + 32] = mem[floor32(_701) + _685 + ceil32(return_data.size) + -(_701 % 32) + 64 len _701 % 32]
                            mem[64] = floor32(_701) + _685 + ceil32(return_data.size) + 64
                    else:
                        mem[floor32(mem[_404 + ceil32(return_data.size)]) + floor32(_426) + _404 + ceil32(return_data.size) + 128] = mem[floor32(mem[_404 + ceil32(return_data.size)]) + floor32(_426) + _404 + ceil32(return_data.size) + -(mem[_404 + ceil32(return_data.size)] % 32) + 160 len mem[_404 + ceil32(return_data.size)] % 32]
                        emit Log(mem[mem[64] len floor32(mem[_404 + ceil32(return_data.size)]) + floor32(_426) + _404 + ceil32(return_data.size) + -mem[64] + 160]);
                        _636 = mem[64]
                        mem[mem[64]] = 0xad49bbb500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 68] = mem[_91]
                        _638 = mem[_91]
                        s = 0
                        while s < 32 * _638:
                            mem[mem[64] + s + 100] = mem[_91 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(stor1.length)
                        call stor1.length.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (32 * _638) + _636 + -mem[64] + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _686 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _693 = mem[_686]
                        require mem[_686] <= 4294967296
                        require mem[_686] + 32 <= return_data.size
                        require mem[mem[_686] + _686] <= 4294967296 and mem[_686] + mem[mem[_686] + _686] + 32 <= return_data.size
                        mem[_686 + ceil32(return_data.size)] = mem[mem[_686] + _686]
                        _702 = mem[_693 + _686]
                        s = 0
                        while s < _702:
                            mem[_686 + ceil32(return_data.size) + s + 32] = mem[_693 + _686 + s + 32]
                            s = s + 32
                            continue 
                        if not _702 % 32:
                            mem[64] = _702 + _686 + ceil32(return_data.size) + 32
                        else:
                            mem[floor32(_702) + _686 + ceil32(return_data.size) + 32] = mem[floor32(_702) + _686 + ceil32(return_data.size) + -(_702 % 32) + 64 len _702 % 32]
                            mem[64] = floor32(_702) + _686 + ceil32(return_data.size) + 64
                stor2++
        idx = idx + 1
        continue 
}



}
