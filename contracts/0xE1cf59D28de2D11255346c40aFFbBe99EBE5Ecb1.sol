contract main {




// =====================  Runtime code  =====================


#
#  - sub_582b2c74(?)
#  - sub_832ce533(?)
#
array of address sub_6a0341b8;
address sub_5aeb9a96Address;
address sub_eb0cdcbbAddress;
uint256 sub_8f7371e0;
uint256 sub_6a449afc;

function sub_5aeb9a96(?) payable {
    return sub_5aeb9a96Address
}

function sub_6a0341b8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_6a0341b8.length
    return sub_6a0341b8[arg1]
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
                    emit Log(Array(len=mem[(32 * arg2.length) + ceil32(return_data.size) + 128], data=mem[_197 + _76 + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128]) + 32]));
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
                    emit Log(Array(len=mem[(32 * arg2.length) + ceil32(return_data.size) + 128], data=mem[floor32(_197) + _76 + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128]) + 32]));
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
                    emit Log(Array(len=mem[(32 * arg2.length) + ceil32(return_data.size) + 128], data=mem[_198 + floor32(_76) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128]) + 32]));
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
                    emit Log(Array(len=mem[(32 * arg2.length) + ceil32(return_data.size) + 128], data=mem[floor32(_198) + floor32(_76) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128]) + 32]));
        sub_8f7371e0++
}



}
