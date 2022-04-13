contract main {




// =====================  Runtime code  =====================


#
#  - sub_582b2c74(?)
#
array of address sub_6a0341b8;
array of address stor1;
address sub_eb0cdcbbAddress;
uint256 sub_8f7371e0;
uint256 sub_6a449afc;

function sub_5aeb9a96(?) payable {
    return stor1.length
}

function sub_6a0341b8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_6a0341b8.length
    return sub_6a0341b8[arg1].field_0
}

function sub_6a449afc(?) payable {
    return sub_6a449afc
}

function sub_8f7371e0(?) payable {
    return sub_8f7371e0
}

function sub_eb0cdcbb(?) payable {
    return sub_eb0cdcbbAddress
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
    require ext_code.size(sub_eb0cdcbbAddress)
    call sub_eb0cdcbbAddress with:
         gas gas_remaining wei
        args arg1, address(arg2), address(arg3), address(arg4), address(arg5), address(arg6), address(arg7), Array(len=arg8.length, data=arg8[all])
    if not ext_call.success:
        emit Log(string rg1):
                 0,
                 'external call failed',
        sub_6a449afc++
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
            mem[64] = _70 + ceil32(arg8.length) + ceil32(return_data.size) + 160
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
            mem[64] = floor32(_70) + ceil32(arg8.length) + ceil32(return_data.size) + 192
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
        sub_8f7371e0++
}

function sub_648f9003(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0x3596b82000000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + 132] = arg1
    mem[(32 * arg2.length) + 196] = arg3
    mem[(32 * arg2.length) + 164] = 96
    mem[(32 * arg2.length) + 228] = arg2.length
    mem[(32 * arg2.length) + 260 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(sub_eb0cdcbbAddress)
    call sub_eb0cdcbbAddress.0x3596b820 with:
         gas gas_remaining wei
        args arg1, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 260 len (32 * arg2.length) - floor32(arg2.length)]), address(arg3)
    if not ext_call.success:
        emit Log(Array(len=20, data='external call failed'));
        sub_6a449afc++
    else:
        mem[(32 * arg2.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg2.length) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        _73 = mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32
        require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128] <= 4294967296 and mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128] + 32 <= return_data.size
        mem[(32 * arg2.length) + ceil32(return_data.size) + 128] = mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128]
        _76 = mem[_73 + (32 * arg2.length) + 128]
        mem[(32 * arg2.length) + ceil32(return_data.size) + 160 len ceil32(mem[_73 + (32 * arg2.length) + 128])] = mem[_73 + (32 * arg2.length) + 160 len ceil32(mem[_73 + (32 * arg2.length) + 128])]
        if not _76 % 32:
            mem[_76 + (32 * arg2.length) + ceil32(return_data.size) + 160] = 0xab9b85c00000000000000000000000000000000000000000000000000000000
            mem[_76 + (32 * arg2.length) + ceil32(return_data.size) + 164] = arg1
            mem[_76 + (32 * arg2.length) + ceil32(return_data.size) + 228] = arg3
            mem[_76 + (32 * arg2.length) + ceil32(return_data.size) + 196] = 96
            mem[_76 + (32 * arg2.length) + ceil32(return_data.size) + 260] = arg2.length
            mem[_76 + (32 * arg2.length) + ceil32(return_data.size) + 292 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            require ext_code.size(sub_eb0cdcbbAddress)
            call sub_eb0cdcbbAddress.0xab9b85c with:
                 gas gas_remaining wei
                args arg1, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[_76 + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 292 len (32 * arg2.length) - floor32(arg2.length)]), address(arg3)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_76 + (32 * arg2.length) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _76 + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160
            require return_data.size >= 32
            _191 = mem[_76 + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32
            require mem[_76 + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
            require mem[_76 + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
            require mem[mem[_76 + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + _76 + (32 * arg2.length) + ceil32(return_data.size) + 160] <= 4294967296 and mem[_76 + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[_76 + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + _76 + (32 * arg2.length) + ceil32(return_data.size) + 160] + 32 <= return_data.size
            mem[_76 + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] = mem[mem[_76 + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + _76 + (32 * arg2.length) + ceil32(return_data.size) + 160]
            _197 = mem[_191 + _76 + (32 * arg2.length) + ceil32(return_data.size) + 160]
            mem[_76 + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[_191 + _76 + (32 * arg2.length) + ceil32(return_data.size) + 160])] = mem[_191 + _76 + (32 * arg2.length) + ceil32(return_data.size) + 192 len ceil32(mem[_191 + _76 + (32 * arg2.length) + ceil32(return_data.size) + 160])]
            if not _197 % 32:
                mem[64] = _197 + _76 + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192
                mem[_197 + _76 + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192] = 32
                mem[_197 + _76 + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * arg2.length) + ceil32(return_data.size) + 128]
                mem[_197 + _76 + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 256 len ceil32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128])] = mem[(32 * arg2.length) + ceil32(return_data.size) + 160 len ceil32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128])]
                if not mem[(32 * arg2.length) + ceil32(return_data.size) + 128] % 32:
                    emit Log(string rg1):
                             32,
                             mem[_197 + _76 + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 224 len mem[(32 * arg2.length) + ceil32(return_data.size) + 128] + 32],
                else:
                    mem[floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128]) + _197 + _76 + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 256] = mem[floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128]) + _197 + _76 + (32 * arg2.length) + (2 * ceil32(return_data.size)) + -(mem[(32 * arg2.length) + ceil32(return_data.size) + 128] % 32) + 288 len mem[(32 * arg2.length) + ceil32(return_data.size) + 128] % 32]
                    emit Log(string rg1):
                             32,
                             mem[_197 + _76 + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128]) + 64],
            else:
                mem[floor32(_197) + _76 + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_197) + _76 + (32 * arg2.length) + (2 * ceil32(return_data.size)) + -(_197 % 32) + 224 len _197 % 32]
                mem[64] = floor32(_197) + _76 + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 224
                mem[floor32(_197) + _76 + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 224] = 32
                mem[floor32(_197) + _76 + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 256] = mem[(32 * arg2.length) + ceil32(return_data.size) + 128]
                mem[floor32(_197) + _76 + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 288 len ceil32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128])] = mem[(32 * arg2.length) + ceil32(return_data.size) + 160 len ceil32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128])]
                if not mem[(32 * arg2.length) + ceil32(return_data.size) + 128] % 32:
                    emit Log(string rg1):
                             32,
                             mem[floor32(_197) + _76 + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 256 len mem[(32 * arg2.length) + ceil32(return_data.size) + 128] + 32],
                else:
                    mem[floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128]) + floor32(_197) + _76 + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 288] = mem[floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128]) + floor32(_197) + _76 + (32 * arg2.length) + (2 * ceil32(return_data.size)) + -(mem[(32 * arg2.length) + ceil32(return_data.size) + 128] % 32) + 320 len mem[(32 * arg2.length) + ceil32(return_data.size) + 128] % 32]
                    emit Log(string rg1):
                             32,
                             mem[floor32(_197) + _76 + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128]) + 64],
        else:
            mem[floor32(_76) + (32 * arg2.length) + ceil32(return_data.size) + 160] = mem[floor32(_76) + (32 * arg2.length) + ceil32(return_data.size) + -(_76 % 32) + 192 len _76 % 32]
            mem[floor32(_76) + (32 * arg2.length) + ceil32(return_data.size) + 192] = 0xab9b85c00000000000000000000000000000000000000000000000000000000
            mem[floor32(_76) + (32 * arg2.length) + ceil32(return_data.size) + 196] = arg1
            mem[floor32(_76) + (32 * arg2.length) + ceil32(return_data.size) + 260] = arg3
            mem[floor32(_76) + (32 * arg2.length) + ceil32(return_data.size) + 228] = 96
            mem[floor32(_76) + (32 * arg2.length) + ceil32(return_data.size) + 292] = arg2.length
            mem[floor32(_76) + (32 * arg2.length) + ceil32(return_data.size) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            require ext_code.size(sub_eb0cdcbbAddress)
            call sub_eb0cdcbbAddress.0xab9b85c with:
                 gas gas_remaining wei
                args arg1, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[floor32(_76) + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 324 len (32 * arg2.length) - floor32(arg2.length)]), address(arg3)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(_76) + (32 * arg2.length) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(_76) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _193 = mem[floor32(_76) + (32 * arg2.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
            require mem[floor32(_76) + (32 * arg2.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
            require mem[floor32(_76) + (32 * arg2.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
            require mem[mem[floor32(_76) + (32 * arg2.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + floor32(_76) + (32 * arg2.length) + ceil32(return_data.size) + 192] <= 4294967296 and mem[floor32(_76) + (32 * arg2.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[floor32(_76) + (32 * arg2.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + floor32(_76) + (32 * arg2.length) + ceil32(return_data.size) + 192] + 32 <= return_data.size
            mem[floor32(_76) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192] = mem[mem[floor32(_76) + (32 * arg2.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + floor32(_76) + (32 * arg2.length) + ceil32(return_data.size) + 192]
            _198 = mem[_193 + floor32(_76) + (32 * arg2.length) + ceil32(return_data.size) + 192]
            mem[floor32(_76) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 224 len ceil32(mem[_193 + floor32(_76) + (32 * arg2.length) + ceil32(return_data.size) + 192])] = mem[_193 + floor32(_76) + (32 * arg2.length) + ceil32(return_data.size) + 224 len ceil32(mem[_193 + floor32(_76) + (32 * arg2.length) + ceil32(return_data.size) + 192])]
            if not _198 % 32:
                mem[64] = _198 + floor32(_76) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 224
                mem[_198 + floor32(_76) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 224] = 32
                mem[_198 + floor32(_76) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 256] = mem[(32 * arg2.length) + ceil32(return_data.size) + 128]
                mem[_198 + floor32(_76) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 288 len ceil32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128])] = mem[(32 * arg2.length) + ceil32(return_data.size) + 160 len ceil32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128])]
                if not mem[(32 * arg2.length) + ceil32(return_data.size) + 128] % 32:
                    emit Log(string rg1):
                             32,
                             mem[_198 + floor32(_76) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 256 len mem[(32 * arg2.length) + ceil32(return_data.size) + 128] + 32],
                else:
                    mem[floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128]) + _198 + floor32(_76) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 288] = mem[floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128]) + _198 + floor32(_76) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + -(mem[(32 * arg2.length) + ceil32(return_data.size) + 128] % 32) + 320 len mem[(32 * arg2.length) + ceil32(return_data.size) + 128] % 32]
                    emit Log(string rg1):
                             32,
                             mem[_198 + floor32(_76) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128]) + 64],
            else:
                mem[floor32(_198) + floor32(_76) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 224] = mem[floor32(_198) + floor32(_76) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + -(_198 % 32) + 256 len _198 % 32]
                mem[64] = floor32(_198) + floor32(_76) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 256
                mem[floor32(_198) + floor32(_76) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 256] = 32
                mem[floor32(_198) + floor32(_76) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 288] = mem[(32 * arg2.length) + ceil32(return_data.size) + 128]
                mem[floor32(_198) + floor32(_76) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128])] = mem[(32 * arg2.length) + ceil32(return_data.size) + 160 len ceil32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128])]
                if not mem[(32 * arg2.length) + ceil32(return_data.size) + 128] % 32:
                    emit Log(string rg1):
                             32,
                             mem[floor32(_198) + floor32(_76) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 288 len mem[(32 * arg2.length) + ceil32(return_data.size) + 128] + 32],
                else:
                    mem[floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128]) + floor32(_198) + floor32(_76) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 320] = mem[floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128]) + floor32(_198) + floor32(_76) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + -(mem[(32 * arg2.length) + ceil32(return_data.size) + 128] % 32) + 352 len mem[(32 * arg2.length) + ceil32(return_data.size) + 128] % 32]
                    emit Log(string rg1):
                             32,
                             mem[floor32(_198) + floor32(_76) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128]) + 64],
        sub_8f7371e0++
}

function sub_832ce533(?) payable {
    require calldata.size - 4 >= 160
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
        _81 = mem[64]
        mem[64] = mem[64] + (32 * sub_6a0341b8.length) + 32
        mem[_81] = sub_6a0341b8.length
        if not sub_6a0341b8.length:
            mem[mem[64]] = 0x3596b82000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 68] = arg5
            mem[mem[64] + 36] = 96
            mem[mem[64] + 100] = sub_6a0341b8.length
            s = 0
            while s < 32 * sub_6a0341b8.length:
                mem[mem[64] + s + 132] = mem[_81 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(sub_eb0cdcbbAddress)
            call sub_eb0cdcbbAddress.0x3596b820 with:
                 gas gas_remaining wei
                args arg1, Array(len=sub_6a0341b8.length, data=mem[mem[64] + 132 len 32 * sub_6a0341b8.length]), address(arg5)
            if not ext_call.success:
                mem[mem[64]] = 32
                mem[mem[64] + 32] = 20
                mem[mem[64] + 64] = 'external call failed'
                emit Log(Array(len=20, data='external call failed'));
                sub_6a449afc++
            else:
                _151 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _154 = mem[_151]
                require mem[_151] <= 4294967296
                require mem[_151] + 32 <= return_data.size
                require mem[mem[_151] + _151] <= 4294967296 and mem[_151] + mem[mem[_151] + _151] + 32 <= return_data.size
                mem[_151 + ceil32(return_data.size)] = mem[mem[_151] + _151]
                _157 = mem[_154 + _151]
                s = 0
                while s < _157:
                    mem[_151 + ceil32(return_data.size) + s + 32] = mem[_154 + _151 + s + 32]
                    s = s + 32
                    continue 
                if not _157 % 32:
                    mem[64] = _157 + _151 + ceil32(return_data.size) + 32
                    mem[_157 + _151 + ceil32(return_data.size) + 32] = 0xab9b85c00000000000000000000000000000000000000000000000000000000
                    mem[_157 + _151 + ceil32(return_data.size) + 36] = arg1
                    mem[_157 + _151 + ceil32(return_data.size) + 100] = arg5
                    mem[_157 + _151 + ceil32(return_data.size) + 68] = 96
                    mem[_157 + _151 + ceil32(return_data.size) + 132] = mem[_81]
                    _221 = mem[_81]
                    s = 0
                    while s < 32 * _221:
                        mem[_157 + _151 + ceil32(return_data.size) + s + 164] = mem[_81 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(sub_eb0cdcbbAddress)
                    call sub_eb0cdcbbAddress.0xab9b85c with:
                         gas gas_remaining wei
                        args arg1, 96, address(arg5), mem[_157 + _151 + ceil32(return_data.size) + 132 len (32 * _221) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_157 + _151 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _157 + _151 + (2 * ceil32(return_data.size)) + 32
                    require return_data.size >= 32
                    _341 = mem[_157 + _151 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg1) >> 32
                    require mem[_157 + _151 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[_157 + _151 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[_157 + _151 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg1) >> 32 + _157 + _151 + ceil32(return_data.size) + 32] <= 4294967296 and mem[_157 + _151 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[_157 + _151 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg1) >> 32 + _157 + _151 + ceil32(return_data.size) + 32] + 32 <= return_data.size
                    mem[_157 + _151 + (2 * ceil32(return_data.size)) + 32] = mem[mem[_157 + _151 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg1) >> 32 + _157 + _151 + ceil32(return_data.size) + 32]
                    _352 = mem[_341 + _157 + _151 + ceil32(return_data.size) + 32]
                    s = 0
                    while s < _352:
                        mem[_157 + _151 + (2 * ceil32(return_data.size)) + s + 64] = mem[_341 + _157 + _151 + ceil32(return_data.size) + s + 64]
                        s = s + 32
                        continue 
                    if not _352 % 32:
                        mem[64] = _352 + _157 + _151 + (2 * ceil32(return_data.size)) + 64
                        mem[_352 + _157 + _151 + (2 * ceil32(return_data.size)) + 64] = 32
                        mem[_352 + _157 + _151 + (2 * ceil32(return_data.size)) + 96] = mem[_151 + ceil32(return_data.size)]
                        s = 0
                        while s < mem[_151 + ceil32(return_data.size)]:
                            mem[_352 + _157 + _151 + (2 * ceil32(return_data.size)) + s + 128] = mem[_151 + ceil32(return_data.size) + s + 32]
                            s = s + 32
                            continue 
                        if not mem[_151 + ceil32(return_data.size)] % 32:
                            emit Log(mem[mem[64] len mem[_151 + ceil32(return_data.size)] + _352 + _157 + _151 + (2 * ceil32(return_data.size)) + -mem[64] + 128]);
                        else:
                            mem[floor32(mem[_151 + ceil32(return_data.size)]) + _352 + _157 + _151 + (2 * ceil32(return_data.size)) + 128] = mem[floor32(mem[_151 + ceil32(return_data.size)]) + _352 + _157 + _151 + (2 * ceil32(return_data.size)) + -(mem[_151 + ceil32(return_data.size)] % 32) + 160 len mem[_151 + ceil32(return_data.size)] % 32]
                            emit Log(mem[mem[64] len floor32(mem[_151 + ceil32(return_data.size)]) + _352 + _157 + _151 + (2 * ceil32(return_data.size)) + -mem[64] + 160]);
                        sub_8f7371e0++
                        idx = idx + 1
                        continue 
                    mem[floor32(_352) + _157 + _151 + (2 * ceil32(return_data.size)) + 64] = mem[floor32(_352) + _157 + _151 + (2 * ceil32(return_data.size)) + -(_352 % 32) + 96 len _352 % 32]
                    mem[64] = floor32(_352) + _157 + _151 + (2 * ceil32(return_data.size)) + 96
                    mem[floor32(_352) + _157 + _151 + (2 * ceil32(return_data.size)) + 96] = 32
                    mem[floor32(_352) + _157 + _151 + (2 * ceil32(return_data.size)) + 128] = mem[_151 + ceil32(return_data.size)]
                    s = 0
                    while s < mem[_151 + ceil32(return_data.size)]:
                        mem[floor32(_352) + _157 + _151 + (2 * ceil32(return_data.size)) + s + 160] = mem[_151 + ceil32(return_data.size) + s + 32]
                        s = s + 32
                        continue 
                    if not mem[_151 + ceil32(return_data.size)] % 32:
                        emit Log(mem[mem[64] len mem[_151 + ceil32(return_data.size)] + floor32(_352) + _157 + _151 + (2 * ceil32(return_data.size)) + -mem[64] + 160]);
                    else:
                        mem[floor32(mem[_151 + ceil32(return_data.size)]) + floor32(_352) + _157 + _151 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(mem[_151 + ceil32(return_data.size)]) + floor32(_352) + _157 + _151 + (2 * ceil32(return_data.size)) + -(mem[_151 + ceil32(return_data.size)] % 32) + 192 len mem[_151 + ceil32(return_data.size)] % 32]
                        emit Log(mem[mem[64] len floor32(mem[_151 + ceil32(return_data.size)]) + floor32(_352) + _157 + _151 + (2 * ceil32(return_data.size)) + -mem[64] + 192]);
                    sub_8f7371e0++
                    s = ceil32(mem[_151 + ceil32(return_data.size)]) + 1
                    continue 
                mem[floor32(_157) + _151 + ceil32(return_data.size) + 32] = mem[floor32(_157) + _151 + ceil32(return_data.size) + -(_157 % 32) + 64 len _157 % 32]
                mem[64] = floor32(_157) + _151 + ceil32(return_data.size) + 64
                mem[floor32(_157) + _151 + ceil32(return_data.size) + 64] = 0xab9b85c00000000000000000000000000000000000000000000000000000000
                mem[floor32(_157) + _151 + ceil32(return_data.size) + 68] = arg1
                mem[floor32(_157) + _151 + ceil32(return_data.size) + 132] = arg5
                mem[floor32(_157) + _151 + ceil32(return_data.size) + 100] = 96
                mem[floor32(_157) + _151 + ceil32(return_data.size) + 164] = mem[_81]
                _224 = mem[_81]
                s = 0
                while s < 32 * _224:
                    mem[floor32(_157) + _151 + ceil32(return_data.size) + s + 196] = mem[_81 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(sub_eb0cdcbbAddress)
                call sub_eb0cdcbbAddress.0xab9b85c with:
                     gas gas_remaining wei
                    args arg1, 96, address(arg5), mem[floor32(_157) + _151 + ceil32(return_data.size) + 164 len (32 * _224) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(_157) + _151 + ceil32(return_data.size) + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(_157) + _151 + (2 * ceil32(return_data.size)) + 64
                require return_data.size >= 32
                _343 = mem[floor32(_157) + _151 + ceil32(return_data.size) + 64 len 4], Mask(224, 32, arg1) >> 32
                require mem[floor32(_157) + _151 + ceil32(return_data.size) + 64 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[floor32(_157) + _151 + ceil32(return_data.size) + 64 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[floor32(_157) + _151 + ceil32(return_data.size) + 64 len 4], Mask(224, 32, arg1) >> 32 + floor32(_157) + _151 + ceil32(return_data.size) + 64] <= 4294967296 and mem[floor32(_157) + _151 + ceil32(return_data.size) + 64 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[floor32(_157) + _151 + ceil32(return_data.size) + 64 len 4], Mask(224, 32, arg1) >> 32 + floor32(_157) + _151 + ceil32(return_data.size) + 64] + 32 <= return_data.size
                mem[floor32(_157) + _151 + (2 * ceil32(return_data.size)) + 64] = mem[mem[floor32(_157) + _151 + ceil32(return_data.size) + 64 len 4], Mask(224, 32, arg1) >> 32 + floor32(_157) + _151 + ceil32(return_data.size) + 64]
                _353 = mem[_343 + floor32(_157) + _151 + ceil32(return_data.size) + 64]
                s = 0
                while s < _353:
                    mem[floor32(_157) + _151 + (2 * ceil32(return_data.size)) + s + 96] = mem[_343 + floor32(_157) + _151 + ceil32(return_data.size) + s + 96]
                    s = s + 32
                    continue 
                if not _353 % 32:
                    mem[64] = _353 + floor32(_157) + _151 + (2 * ceil32(return_data.size)) + 96
                    mem[_353 + floor32(_157) + _151 + (2 * ceil32(return_data.size)) + 96] = 32
                    mem[_353 + floor32(_157) + _151 + (2 * ceil32(return_data.size)) + 128] = mem[_151 + ceil32(return_data.size)]
                    s = 0
                    while s < mem[_151 + ceil32(return_data.size)]:
                        mem[_353 + floor32(_157) + _151 + (2 * ceil32(return_data.size)) + s + 160] = mem[_151 + ceil32(return_data.size) + s + 32]
                        s = s + 32
                        continue 
                    if not mem[_151 + ceil32(return_data.size)] % 32:
                        emit Log(mem[mem[64] len mem[_151 + ceil32(return_data.size)] + _353 + floor32(_157) + _151 + (2 * ceil32(return_data.size)) + -mem[64] + 160]);
                    else:
                        mem[floor32(mem[_151 + ceil32(return_data.size)]) + _353 + floor32(_157) + _151 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(mem[_151 + ceil32(return_data.size)]) + _353 + floor32(_157) + _151 + (2 * ceil32(return_data.size)) + -(mem[_151 + ceil32(return_data.size)] % 32) + 192 len mem[_151 + ceil32(return_data.size)] % 32]
                        emit Log(mem[mem[64] len floor32(mem[_151 + ceil32(return_data.size)]) + _353 + floor32(_157) + _151 + (2 * ceil32(return_data.size)) + -mem[64] + 192]);
                    sub_8f7371e0++
                    s = ceil32(mem[_151 + ceil32(return_data.size)]) + 1
                    continue 
                mem[floor32(_353) + floor32(_157) + _151 + (2 * ceil32(return_data.size)) + 96] = mem[floor32(_353) + floor32(_157) + _151 + (2 * ceil32(return_data.size)) + -(_353 % 32) + 128 len _353 % 32]
                mem[64] = floor32(_353) + floor32(_157) + _151 + (2 * ceil32(return_data.size)) + 128
                mem[floor32(_353) + floor32(_157) + _151 + (2 * ceil32(return_data.size)) + 128] = 32
                mem[floor32(_353) + floor32(_157) + _151 + (2 * ceil32(return_data.size)) + 160] = mem[_151 + ceil32(return_data.size)]
                s = 0
                while s < mem[_151 + ceil32(return_data.size)]:
                    mem[floor32(_353) + floor32(_157) + _151 + (2 * ceil32(return_data.size)) + s + 192] = mem[_151 + ceil32(return_data.size) + s + 32]
                    s = s + 32
                    continue 
                if not mem[_151 + ceil32(return_data.size)] % 32:
                    emit Log(mem[mem[64] len mem[_151 + ceil32(return_data.size)] + floor32(_353) + floor32(_157) + _151 + (2 * ceil32(return_data.size)) + -mem[64] + 192]);
                else:
                    mem[floor32(mem[_151 + ceil32(return_data.size)]) + floor32(_353) + floor32(_157) + _151 + (2 * ceil32(return_data.size)) + 192] = mem[floor32(mem[_151 + ceil32(return_data.size)]) + floor32(_353) + floor32(_157) + _151 + (2 * ceil32(return_data.size)) + -(mem[_151 + ceil32(return_data.size)] % 32) + 224 len mem[_151 + ceil32(return_data.size)] % 32]
                    emit Log(mem[mem[64] len floor32(mem[_151 + ceil32(return_data.size)]) + floor32(_353) + floor32(_157) + _151 + (2 * ceil32(return_data.size)) + -mem[64] + 224]);
                sub_8f7371e0++
            idx = idx + 1
            continue 
        mem[0] = 0
        mem[_81 + 32] = address(sub_6a0341b8.field_0)
        s = _81 + 32
        t = sha3(0)
        while _81 + (32 * sub_6a0341b8.length) > s:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        mem[mem[64]] = 0x3596b82000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 68] = arg5
        mem[mem[64] + 36] = 96
        mem[mem[64] + 100] = sub_6a0341b8.length
        s = 0
        while s < 32 * sub_6a0341b8.length:
            mem[mem[64] + s + 132] = mem[_81 + s + 32]
            s = s + 32
            continue 
        require ext_code.size(sub_eb0cdcbbAddress)
        call sub_eb0cdcbbAddress.0x3596b820 with:
             gas gas_remaining wei
            args arg1, Array(len=sub_6a0341b8.length, data=mem[mem[64] + 132 len 32 * sub_6a0341b8.length]), address(arg5)
        if not ext_call.success:
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 20
            mem[mem[64] + 64] = 'external call failed'
            emit Log(Array(len=20, data='external call failed'));
            sub_6a449afc++
            idx = idx + 1
            continue 
        _340 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _347 = mem[_340]
        require mem[_340] <= 4294967296
        require mem[_340] + 32 <= return_data.size
        require mem[mem[_340] + _340] <= 4294967296 and mem[_340] + mem[mem[_340] + _340] + 32 <= return_data.size
        mem[_340 + ceil32(return_data.size)] = mem[mem[_340] + _340]
        _354 = mem[_347 + _340]
        s = 0
        while s < _354:
            mem[_340 + ceil32(return_data.size) + s + 32] = mem[_347 + _340 + s + 32]
            s = s + 32
            continue 
        if not _354 % 32:
            mem[64] = _354 + _340 + ceil32(return_data.size) + 32
            mem[_354 + _340 + ceil32(return_data.size) + 32] = 0xab9b85c00000000000000000000000000000000000000000000000000000000
            mem[_354 + _340 + ceil32(return_data.size) + 36] = arg1
            mem[_354 + _340 + ceil32(return_data.size) + 100] = arg5
            mem[_354 + _340 + ceil32(return_data.size) + 68] = 96
            mem[_354 + _340 + ceil32(return_data.size) + 132] = mem[_81]
            _463 = mem[_81]
            s = 0
            while s < 32 * _463:
                mem[_354 + _340 + ceil32(return_data.size) + s + 164] = mem[_81 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(sub_eb0cdcbbAddress)
            call sub_eb0cdcbbAddress.0xab9b85c with:
                 gas gas_remaining wei
                args arg1, 96, address(arg5), mem[_354 + _340 + ceil32(return_data.size) + 132 len (32 * _463) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_354 + _340 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _354 + _340 + (2 * ceil32(return_data.size)) + 32
            require return_data.size >= 32
            _549 = mem[_354 + _340 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg1) >> 32
            require mem[_354 + _340 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
            require mem[_354 + _340 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
            require mem[mem[_354 + _340 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg1) >> 32 + _354 + _340 + ceil32(return_data.size) + 32] <= 4294967296 and mem[_354 + _340 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[_354 + _340 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg1) >> 32 + _354 + _340 + ceil32(return_data.size) + 32] + 32 <= return_data.size
            mem[_354 + _340 + (2 * ceil32(return_data.size)) + 32] = mem[mem[_354 + _340 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, arg1) >> 32 + _354 + _340 + ceil32(return_data.size) + 32]
            _555 = mem[_549 + _354 + _340 + ceil32(return_data.size) + 32]
            s = 0
            while s < _555:
                mem[_354 + _340 + (2 * ceil32(return_data.size)) + s + 64] = mem[_549 + _354 + _340 + ceil32(return_data.size) + s + 64]
                s = s + 32
                continue 
            if not _555 % 32:
                mem[64] = _555 + _354 + _340 + (2 * ceil32(return_data.size)) + 64
                mem[_555 + _354 + _340 + (2 * ceil32(return_data.size)) + 64] = 32
                mem[_555 + _354 + _340 + (2 * ceil32(return_data.size)) + 96] = mem[_340 + ceil32(return_data.size)]
                s = 0
                while s < mem[_340 + ceil32(return_data.size)]:
                    mem[_555 + _354 + _340 + (2 * ceil32(return_data.size)) + s + 128] = mem[_340 + ceil32(return_data.size) + s + 32]
                    s = s + 32
                    continue 
                if not mem[_340 + ceil32(return_data.size)] % 32:
                    emit Log(mem[mem[64] len mem[_340 + ceil32(return_data.size)] + _555 + _354 + _340 + (2 * ceil32(return_data.size)) + -mem[64] + 128]);
                else:
                    mem[floor32(mem[_340 + ceil32(return_data.size)]) + _555 + _354 + _340 + (2 * ceil32(return_data.size)) + 128] = mem[floor32(mem[_340 + ceil32(return_data.size)]) + _555 + _354 + _340 + (2 * ceil32(return_data.size)) + -(mem[_340 + ceil32(return_data.size)] % 32) + 160 len mem[_340 + ceil32(return_data.size)] % 32]
                    emit Log(mem[mem[64] len floor32(mem[_340 + ceil32(return_data.size)]) + _555 + _354 + _340 + (2 * ceil32(return_data.size)) + -mem[64] + 160]);
            else:
                mem[floor32(_555) + _354 + _340 + (2 * ceil32(return_data.size)) + 64] = mem[floor32(_555) + _354 + _340 + (2 * ceil32(return_data.size)) + -(_555 % 32) + 96 len _555 % 32]
                mem[64] = floor32(_555) + _354 + _340 + (2 * ceil32(return_data.size)) + 96
                mem[floor32(_555) + _354 + _340 + (2 * ceil32(return_data.size)) + 96] = 32
                mem[floor32(_555) + _354 + _340 + (2 * ceil32(return_data.size)) + 128] = mem[_340 + ceil32(return_data.size)]
                s = 0
                while s < mem[_340 + ceil32(return_data.size)]:
                    mem[floor32(_555) + _354 + _340 + (2 * ceil32(return_data.size)) + s + 160] = mem[_340 + ceil32(return_data.size) + s + 32]
                    s = s + 32
                    continue 
                if not mem[_340 + ceil32(return_data.size)] % 32:
                    emit Log(mem[mem[64] len mem[_340 + ceil32(return_data.size)] + floor32(_555) + _354 + _340 + (2 * ceil32(return_data.size)) + -mem[64] + 160]);
                else:
                    mem[floor32(mem[_340 + ceil32(return_data.size)]) + floor32(_555) + _354 + _340 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(mem[_340 + ceil32(return_data.size)]) + floor32(_555) + _354 + _340 + (2 * ceil32(return_data.size)) + -(mem[_340 + ceil32(return_data.size)] % 32) + 192 len mem[_340 + ceil32(return_data.size)] % 32]
                    emit Log(mem[mem[64] len floor32(mem[_340 + ceil32(return_data.size)]) + floor32(_555) + _354 + _340 + (2 * ceil32(return_data.size)) + -mem[64] + 192]);
            sub_8f7371e0++
            idx = idx + 1
            continue 
        mem[floor32(_354) + _340 + ceil32(return_data.size) + 32] = mem[floor32(_354) + _340 + ceil32(return_data.size) + -(_354 % 32) + 64 len _354 % 32]
        mem[64] = floor32(_354) + _340 + ceil32(return_data.size) + 64
        mem[floor32(_354) + _340 + ceil32(return_data.size) + 64] = 0xab9b85c00000000000000000000000000000000000000000000000000000000
        mem[floor32(_354) + _340 + ceil32(return_data.size) + 68] = arg1
        mem[floor32(_354) + _340 + ceil32(return_data.size) + 132] = arg5
        mem[floor32(_354) + _340 + ceil32(return_data.size) + 100] = 96
        mem[floor32(_354) + _340 + ceil32(return_data.size) + 164] = mem[_81]
        _472 = mem[_81]
        s = 0
        while s < 32 * _472:
            mem[floor32(_354) + _340 + ceil32(return_data.size) + s + 196] = mem[_81 + s + 32]
            s = s + 32
            continue 
        require ext_code.size(sub_eb0cdcbbAddress)
        call sub_eb0cdcbbAddress.0xab9b85c with:
             gas gas_remaining wei
            args arg1, 96, address(arg5), mem[floor32(_354) + _340 + ceil32(return_data.size) + 164 len (32 * _472) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(_354) + _340 + ceil32(return_data.size) + 64 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(_354) + _340 + (2 * ceil32(return_data.size)) + 64
        require return_data.size >= 32
        _551 = mem[floor32(_354) + _340 + ceil32(return_data.size) + 64 len 4], Mask(224, 32, arg1) >> 32
        require mem[floor32(_354) + _340 + ceil32(return_data.size) + 64 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[floor32(_354) + _340 + ceil32(return_data.size) + 64 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[floor32(_354) + _340 + ceil32(return_data.size) + 64 len 4], Mask(224, 32, arg1) >> 32 + floor32(_354) + _340 + ceil32(return_data.size) + 64] <= 4294967296 and mem[floor32(_354) + _340 + ceil32(return_data.size) + 64 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[floor32(_354) + _340 + ceil32(return_data.size) + 64 len 4], Mask(224, 32, arg1) >> 32 + floor32(_354) + _340 + ceil32(return_data.size) + 64] + 32 <= return_data.size
        mem[floor32(_354) + _340 + (2 * ceil32(return_data.size)) + 64] = mem[mem[floor32(_354) + _340 + ceil32(return_data.size) + 64 len 4], Mask(224, 32, arg1) >> 32 + floor32(_354) + _340 + ceil32(return_data.size) + 64]
        _556 = mem[_551 + floor32(_354) + _340 + ceil32(return_data.size) + 64]
        s = 0
        while s < _556:
            mem[floor32(_354) + _340 + (2 * ceil32(return_data.size)) + s + 96] = mem[_551 + floor32(_354) + _340 + ceil32(return_data.size) + s + 96]
            s = s + 32
            continue 
        if not _556 % 32:
            mem[64] = _556 + floor32(_354) + _340 + (2 * ceil32(return_data.size)) + 96
            mem[_556 + floor32(_354) + _340 + (2 * ceil32(return_data.size)) + 96] = 32
            mem[_556 + floor32(_354) + _340 + (2 * ceil32(return_data.size)) + 128] = mem[_340 + ceil32(return_data.size)]
            idx = 0
            while idx < mem[_340 + ceil32(return_data.size)]:
                mem[_556 + floor32(_354) + _340 + (2 * ceil32(return_data.size)) + idx + 160] = mem[_340 + ceil32(return_data.size) + idx + 32]
                idx = idx + 32
                continue 
            if not mem[_340 + ceil32(return_data.size)] % 32:
                emit Log(mem[mem[64] len mem[_340 + ceil32(return_data.size)] + _556 + floor32(_354) + _340 + (2 * ceil32(return_data.size)) + -mem[64] + 160]);
            else:
                mem[floor32(mem[_340 + ceil32(return_data.size)]) + _556 + floor32(_354) + _340 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(mem[_340 + ceil32(return_data.size)]) + _556 + floor32(_354) + _340 + (2 * ceil32(return_data.size)) + -(mem[_340 + ceil32(return_data.size)] % 32) + 192 len mem[_340 + ceil32(return_data.size)] % 32]
                emit Log(mem[mem[64] len floor32(mem[_340 + ceil32(return_data.size)]) + _556 + floor32(_354) + _340 + (2 * ceil32(return_data.size)) + -mem[64] + 192]);
        else:
            mem[floor32(_556) + floor32(_354) + _340 + (2 * ceil32(return_data.size)) + 96] = mem[floor32(_556) + floor32(_354) + _340 + (2 * ceil32(return_data.size)) + -(_556 % 32) + 128 len _556 % 32]
            mem[64] = floor32(_556) + floor32(_354) + _340 + (2 * ceil32(return_data.size)) + 128
            mem[floor32(_556) + floor32(_354) + _340 + (2 * ceil32(return_data.size)) + 128] = 32
            mem[floor32(_556) + floor32(_354) + _340 + (2 * ceil32(return_data.size)) + 160] = mem[_340 + ceil32(return_data.size)]
            idx = 0
            while idx < mem[_340 + ceil32(return_data.size)]:
                mem[floor32(_556) + floor32(_354) + _340 + (2 * ceil32(return_data.size)) + idx + 192] = mem[_340 + ceil32(return_data.size) + idx + 32]
                idx = idx + 32
                continue 
            if not mem[_340 + ceil32(return_data.size)] % 32:
                emit Log(mem[mem[64] len mem[_340 + ceil32(return_data.size)] + floor32(_556) + floor32(_354) + _340 + (2 * ceil32(return_data.size)) + -mem[64] + 192]);
            else:
                mem[floor32(mem[_340 + ceil32(return_data.size)]) + floor32(_556) + floor32(_354) + _340 + (2 * ceil32(return_data.size)) + 192] = mem[floor32(mem[_340 + ceil32(return_data.size)]) + floor32(_556) + floor32(_354) + _340 + (2 * ceil32(return_data.size)) + -(mem[_340 + ceil32(return_data.size)] % 32) + 224 len mem[_340 + ceil32(return_data.size)] % 32]
                emit Log(mem[mem[64] len floor32(mem[_340 + ceil32(return_data.size)]) + floor32(_556) + floor32(_354) + _340 + (2 * ceil32(return_data.size)) + -mem[64] + 224]);
        sub_8f7371e0++
        s = ceil32(_556) + 1
        continue 
}



}
