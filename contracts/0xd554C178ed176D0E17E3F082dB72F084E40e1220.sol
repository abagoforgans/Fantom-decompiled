contract main {




// =====================  Runtime code  =====================


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

function sub_2fa400e8(?) payable {
    require calldata.size - 4 >= 96
    mem[96] = 0xe238657300000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = arg2
    mem[164] = arg3
    require ext_code.size(sub_eb0cdcbbAddress)
    call sub_eb0cdcbbAddress.0xe2386573 with:
         gas gas_remaining wei
        args arg1, address(arg2), arg3
    if not ext_call.success:
        emit Log(Array(len=20, data='external call failed'));
        sub_6a449afc++
    else:
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _6 = mem[96 len 4], Mask(224, 32, arg1) >> 32
        require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
        _9 = mem[_6 + 96]
        mem[ceil32(return_data.size) + 128 len ceil32(mem[_6 + 96])] = mem[_6 + 128 len ceil32(mem[_6 + 96])]
        if not _9 % 32:
            mem[64] = _9 + ceil32(return_data.size) + 128
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
            mem[64] = floor32(_9) + ceil32(return_data.size) + 160
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
        sub_8f7371e0++
}

function sub_4c796628(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0xad49bbb500000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + 132] = arg1
    mem[(32 * arg2.length) + 164] = 64
    mem[(32 * arg2.length) + 196] = arg2.length
    mem[(32 * arg2.length) + 228 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(sub_eb0cdcbbAddress)
    call sub_eb0cdcbbAddress.0xad49bbb5 with:
         gas gas_remaining wei
        args arg1, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 228 len (32 * arg2.length) - floor32(arg2.length)])
    if not ext_call.success:
        emit Log(Array(len=20, data='external call failed'));
        sub_6a449afc++
    else:
        mem[(32 * arg2.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg2.length) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        _35 = mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32
        require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128] <= 4294967296 and mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128] + 32 <= return_data.size
        mem[(32 * arg2.length) + ceil32(return_data.size) + 128] = mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128]
        _38 = mem[_35 + (32 * arg2.length) + 128]
        mem[(32 * arg2.length) + ceil32(return_data.size) + 160 len ceil32(mem[_35 + (32 * arg2.length) + 128])] = mem[_35 + (32 * arg2.length) + 160 len ceil32(mem[_35 + (32 * arg2.length) + 128])]
        if not _38 % 32:
            mem[_38 + (32 * arg2.length) + ceil32(return_data.size) + 160] = 32
            mem[_38 + (32 * arg2.length) + ceil32(return_data.size) + 192] = mem[(32 * arg2.length) + ceil32(return_data.size) + 128]
            mem[_38 + (32 * arg2.length) + ceil32(return_data.size) + 224 len ceil32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128])] = mem[(32 * arg2.length) + ceil32(return_data.size) + 160 len ceil32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128])]
            if not mem[(32 * arg2.length) + ceil32(return_data.size) + 128] % 32:
                emit Log(string rg1):
                         32,
                         mem[_38 + (32 * arg2.length) + ceil32(return_data.size) + 192 len mem[(32 * arg2.length) + ceil32(return_data.size) + 128] + 32],
            else:
                mem[floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128]) + _38 + (32 * arg2.length) + ceil32(return_data.size) + 224] = mem[floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128]) + _38 + (32 * arg2.length) + ceil32(return_data.size) + -(mem[(32 * arg2.length) + ceil32(return_data.size) + 128] % 32) + 256 len mem[(32 * arg2.length) + ceil32(return_data.size) + 128] % 32]
                emit Log(Array(len=mem[(32 * arg2.length) + ceil32(return_data.size) + 128], data=mem[_38 + (32 * arg2.length) + ceil32(return_data.size) + 224 len floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128]) + 32]));
        else:
            mem[floor32(_38) + (32 * arg2.length) + ceil32(return_data.size) + 160] = mem[floor32(_38) + (32 * arg2.length) + ceil32(return_data.size) + -(_38 % 32) + 192 len _38 % 32]
            mem[floor32(_38) + (32 * arg2.length) + ceil32(return_data.size) + 192] = 32
            mem[floor32(_38) + (32 * arg2.length) + ceil32(return_data.size) + 224] = mem[(32 * arg2.length) + ceil32(return_data.size) + 128]
            mem[floor32(_38) + (32 * arg2.length) + ceil32(return_data.size) + 256 len ceil32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128])] = mem[(32 * arg2.length) + ceil32(return_data.size) + 160 len ceil32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128])]
            if not mem[(32 * arg2.length) + ceil32(return_data.size) + 128] % 32:
                emit Log(string rg1):
                         32,
                         mem[floor32(_38) + (32 * arg2.length) + ceil32(return_data.size) + 224 len mem[(32 * arg2.length) + ceil32(return_data.size) + 128] + 32],
            else:
                mem[floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128]) + floor32(_38) + (32 * arg2.length) + ceil32(return_data.size) + 256] = mem[floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128]) + floor32(_38) + (32 * arg2.length) + ceil32(return_data.size) + -(mem[(32 * arg2.length) + ceil32(return_data.size) + 128] % 32) + 288 len mem[(32 * arg2.length) + ceil32(return_data.size) + 128] % 32]
                emit Log(Array(len=mem[(32 * arg2.length) + ceil32(return_data.size) + 128], data=mem[floor32(_38) + (32 * arg2.length) + ceil32(return_data.size) + 256 len floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128]) + 32]));
        sub_8f7371e0++
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

function sub_b8a21ed7(?) payable {
    require calldata.size - 4 >= 256
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg8 <= 4294967296
    require arg8 + 36 <= calldata.size
    require arg8.length <= 4294967296 and arg8 + arg8.length + 36 <= calldata.size
    mem[64] = (32 * arg3.length) + ceil32(arg8.length) + 160
    mem[(32 * arg3.length) + 128] = arg8.length
    mem[(32 * arg3.length) + 160 len arg8.length] = arg8[all]
    mem[(32 * arg3.length) + arg8.length + 160] = 0
    idx = 0
    while idx < arg3.length:
        require idx < mem[96]
        _81 = mem[(32 * idx) + 128]
        _82 = mem[64]
        mem[mem[64]] = 0x2eeb3c6000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = address(_81)
        mem[mem[64] + 68] = arg2
        mem[mem[64] + 100] = arg4
        mem[mem[64] + 132] = arg5
        mem[mem[64] + 164] = arg6
        mem[mem[64] + 196] = arg7
        mem[mem[64] + 228] = 256
        mem[mem[64] + 260] = mem[(32 * arg3.length) + 128]
        _84 = mem[(32 * arg3.length) + 128]
        s = 0
        while s < _84:
            mem[mem[64] + s + 292] = mem[(32 * arg3.length) + s + 160]
            s = s + 32
            continue 
        if not _84 % 32:
            require ext_code.size(sub_eb0cdcbbAddress)
            call sub_eb0cdcbbAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _84 + _82 + -mem[64] + 288]
            if not ext_call.success:
                mem[mem[64]] = 32
                mem[mem[64] + 32] = 20
                mem[mem[64] + 64] = 'external call failed'
                emit Log(Array(len=20, data='external call failed'));
                sub_6a449afc++
            else:
                _159 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _162 = mem[_159]
                require mem[_159] <= 4294967296
                require mem[_159] + 32 <= return_data.size
                require mem[mem[_159] + _159] <= 4294967296 and mem[_159] + mem[mem[_159] + _159] + 32 <= return_data.size
                mem[_159 + ceil32(return_data.size)] = mem[mem[_159] + _159]
                _172 = mem[_162 + _159]
                s = 0
                while s < _172:
                    mem[_159 + ceil32(return_data.size) + s + 32] = mem[_162 + _159 + s + 32]
                    s = s + 32
                    continue 
                if not _172 % 32:
                    mem[64] = _172 + _159 + ceil32(return_data.size) + 32
                    mem[_172 + _159 + ceil32(return_data.size) + 32] = 32
                    mem[_172 + _159 + ceil32(return_data.size) + 64] = mem[_159 + ceil32(return_data.size)]
                    s = 0
                    while s < mem[_159 + ceil32(return_data.size)]:
                        mem[_172 + _159 + ceil32(return_data.size) + s + 96] = mem[_159 + ceil32(return_data.size) + s + 32]
                        s = s + 32
                        continue 
                    if not mem[_159 + ceil32(return_data.size)] % 32:
                        emit Log(mem[mem[64] len mem[_159 + ceil32(return_data.size)] + _172 + _159 + ceil32(return_data.size) + -mem[64] + 96]);
                    else:
                        mem[floor32(mem[_159 + ceil32(return_data.size)]) + _172 + _159 + ceil32(return_data.size) + 96] = mem[floor32(mem[_159 + ceil32(return_data.size)]) + _172 + _159 + ceil32(return_data.size) + -(mem[_159 + ceil32(return_data.size)] % 32) + 128 len mem[_159 + ceil32(return_data.size)] % 32]
                        emit Log(mem[mem[64] len floor32(mem[_159 + ceil32(return_data.size)]) + _172 + _159 + ceil32(return_data.size) + -mem[64] + 128]);
                else:
                    mem[floor32(_172) + _159 + ceil32(return_data.size) + 32] = mem[floor32(_172) + _159 + ceil32(return_data.size) + -(_172 % 32) + 64 len _172 % 32]
                    mem[64] = floor32(_172) + _159 + ceil32(return_data.size) + 64
                    mem[floor32(_172) + _159 + ceil32(return_data.size) + 64] = 32
                    mem[floor32(_172) + _159 + ceil32(return_data.size) + 96] = mem[_159 + ceil32(return_data.size)]
                    s = 0
                    while s < mem[_159 + ceil32(return_data.size)]:
                        mem[floor32(_172) + _159 + ceil32(return_data.size) + s + 128] = mem[_159 + ceil32(return_data.size) + s + 32]
                        s = s + 32
                        continue 
                    if not mem[_159 + ceil32(return_data.size)] % 32:
                        emit Log(mem[mem[64] len mem[_159 + ceil32(return_data.size)] + floor32(_172) + _159 + ceil32(return_data.size) + -mem[64] + 128]);
                    else:
                        mem[floor32(mem[_159 + ceil32(return_data.size)]) + floor32(_172) + _159 + ceil32(return_data.size) + 128] = mem[floor32(mem[_159 + ceil32(return_data.size)]) + floor32(_172) + _159 + ceil32(return_data.size) + -(mem[_159 + ceil32(return_data.size)] % 32) + 160 len mem[_159 + ceil32(return_data.size)] % 32]
                        emit Log(mem[mem[64] len floor32(mem[_159 + ceil32(return_data.size)]) + floor32(_172) + _159 + ceil32(return_data.size) + -mem[64] + 160]);
                sub_8f7371e0++
        else:
            mem[floor32(_84) + _82 + 292] = mem[floor32(_84) + _82 + -(_84 % 32) + 324 len _84 % 32]
            require ext_code.size(sub_eb0cdcbbAddress)
            call sub_eb0cdcbbAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len floor32(_84) + _82 + -mem[64] + 320]
            if not ext_call.success:
                mem[mem[64]] = 32
                mem[mem[64] + 32] = 20
                mem[mem[64] + 64] = 'external call failed'
                emit Log(Array(len=20, data='external call failed'));
                sub_6a449afc++
            else:
                _164 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _167 = mem[_164]
                require mem[_164] <= 4294967296
                require mem[_164] + 32 <= return_data.size
                require mem[mem[_164] + _164] <= 4294967296 and mem[_164] + mem[mem[_164] + _164] + 32 <= return_data.size
                mem[_164 + ceil32(return_data.size)] = mem[mem[_164] + _164]
                _176 = mem[_167 + _164]
                s = 0
                while s < _176:
                    mem[_164 + ceil32(return_data.size) + s + 32] = mem[_167 + _164 + s + 32]
                    s = s + 32
                    continue 
                if not _176 % 32:
                    mem[64] = _176 + _164 + ceil32(return_data.size) + 32
                    mem[_176 + _164 + ceil32(return_data.size) + 32] = 32
                    mem[_176 + _164 + ceil32(return_data.size) + 64] = mem[_164 + ceil32(return_data.size)]
                    s = 0
                    while s < mem[_164 + ceil32(return_data.size)]:
                        mem[_176 + _164 + ceil32(return_data.size) + s + 96] = mem[_164 + ceil32(return_data.size) + s + 32]
                        s = s + 32
                        continue 
                    if not mem[_164 + ceil32(return_data.size)] % 32:
                        emit Log(mem[mem[64] len mem[_164 + ceil32(return_data.size)] + _176 + _164 + ceil32(return_data.size) + -mem[64] + 96]);
                    else:
                        mem[floor32(mem[_164 + ceil32(return_data.size)]) + _176 + _164 + ceil32(return_data.size) + 96] = mem[floor32(mem[_164 + ceil32(return_data.size)]) + _176 + _164 + ceil32(return_data.size) + -(mem[_164 + ceil32(return_data.size)] % 32) + 128 len mem[_164 + ceil32(return_data.size)] % 32]
                        emit Log(mem[mem[64] len floor32(mem[_164 + ceil32(return_data.size)]) + _176 + _164 + ceil32(return_data.size) + -mem[64] + 128]);
                else:
                    mem[floor32(_176) + _164 + ceil32(return_data.size) + 32] = mem[floor32(_176) + _164 + ceil32(return_data.size) + -(_176 % 32) + 64 len _176 % 32]
                    mem[64] = floor32(_176) + _164 + ceil32(return_data.size) + 64
                    mem[floor32(_176) + _164 + ceil32(return_data.size) + 64] = 32
                    mem[floor32(_176) + _164 + ceil32(return_data.size) + 96] = mem[_164 + ceil32(return_data.size)]
                    s = 0
                    while s < mem[_164 + ceil32(return_data.size)]:
                        mem[floor32(_176) + _164 + ceil32(return_data.size) + s + 128] = mem[_164 + ceil32(return_data.size) + s + 32]
                        s = s + 32
                        continue 
                    if not mem[_164 + ceil32(return_data.size)] % 32:
                        emit Log(mem[mem[64] len mem[_164 + ceil32(return_data.size)] + floor32(_176) + _164 + ceil32(return_data.size) + -mem[64] + 128]);
                    else:
                        mem[floor32(mem[_164 + ceil32(return_data.size)]) + floor32(_176) + _164 + ceil32(return_data.size) + 128] = mem[floor32(mem[_164 + ceil32(return_data.size)]) + floor32(_176) + _164 + ceil32(return_data.size) + -(mem[_164 + ceil32(return_data.size)] % 32) + 160 len mem[_164 + ceil32(return_data.size)] % 32]
                        emit Log(mem[mem[64] len floor32(mem[_164 + ceil32(return_data.size)]) + floor32(_176) + _164 + ceil32(return_data.size) + -mem[64] + 160]);
                sub_8f7371e0++
        require idx < mem[96]
        stor1.length = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
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
        _43 = mem[64]
        mem[64] = mem[64] + (32 * sub_6a0341b8.length) + 32
        mem[_43] = sub_6a0341b8.length
        if not sub_6a0341b8.length:
            _45 = mem[64]
            mem[mem[64]] = 0xad49bbb500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = sub_6a0341b8.length
            s = 0
            while s < 32 * sub_6a0341b8.length:
                mem[mem[64] + s + 100] = mem[_43 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(sub_eb0cdcbbAddress)
            call sub_eb0cdcbbAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * sub_6a0341b8.length) + _45 + -mem[64] + 96]
            if not ext_call.success:
                mem[mem[64]] = 32
                mem[mem[64] + 32] = 20
                mem[mem[64] + 64] = 'external call failed'
                emit Log(Array(len=20, data='external call failed'));
                sub_6a449afc++
            else:
                _75 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _78 = mem[_75]
                require mem[_75] <= 4294967296
                require mem[_75] + 32 <= return_data.size
                require mem[mem[_75] + _75] <= 4294967296 and mem[_75] + mem[mem[_75] + _75] + 32 <= return_data.size
                mem[_75 + ceil32(return_data.size)] = mem[mem[_75] + _75]
                _81 = mem[_78 + _75]
                s = 0
                while s < _81:
                    mem[_75 + ceil32(return_data.size) + s + 32] = mem[_78 + _75 + s + 32]
                    s = s + 32
                    continue 
                if not _81 % 32:
                    mem[64] = _81 + _75 + ceil32(return_data.size) + 32
                    mem[_81 + _75 + ceil32(return_data.size) + 32] = 32
                    mem[_81 + _75 + ceil32(return_data.size) + 64] = mem[_75 + ceil32(return_data.size)]
                    s = 0
                    while s < mem[_75 + ceil32(return_data.size)]:
                        mem[_81 + _75 + ceil32(return_data.size) + s + 96] = mem[_75 + ceil32(return_data.size) + s + 32]
                        s = s + 32
                        continue 
                    if not mem[_75 + ceil32(return_data.size)] % 32:
                        emit Log(mem[mem[64] len mem[_75 + ceil32(return_data.size)] + _81 + _75 + ceil32(return_data.size) + -mem[64] + 96]);
                    else:
                        mem[floor32(mem[_75 + ceil32(return_data.size)]) + _81 + _75 + ceil32(return_data.size) + 96] = mem[floor32(mem[_75 + ceil32(return_data.size)]) + _81 + _75 + ceil32(return_data.size) + -(mem[_75 + ceil32(return_data.size)] % 32) + 128 len mem[_75 + ceil32(return_data.size)] % 32]
                        emit Log(mem[mem[64] len floor32(mem[_75 + ceil32(return_data.size)]) + _81 + _75 + ceil32(return_data.size) + -mem[64] + 128]);
                else:
                    mem[floor32(_81) + _75 + ceil32(return_data.size) + 32] = mem[floor32(_81) + _75 + ceil32(return_data.size) + -(_81 % 32) + 64 len _81 % 32]
                    mem[64] = floor32(_81) + _75 + ceil32(return_data.size) + 64
                    mem[floor32(_81) + _75 + ceil32(return_data.size) + 64] = 32
                    mem[floor32(_81) + _75 + ceil32(return_data.size) + 96] = mem[_75 + ceil32(return_data.size)]
                    s = 0
                    while s < mem[_75 + ceil32(return_data.size)]:
                        mem[floor32(_81) + _75 + ceil32(return_data.size) + s + 128] = mem[_75 + ceil32(return_data.size) + s + 32]
                        s = s + 32
                        continue 
                    if not mem[_75 + ceil32(return_data.size)] % 32:
                        emit Log(mem[mem[64] len mem[_75 + ceil32(return_data.size)] + floor32(_81) + _75 + ceil32(return_data.size) + -mem[64] + 128]);
                    else:
                        mem[floor32(mem[_75 + ceil32(return_data.size)]) + floor32(_81) + _75 + ceil32(return_data.size) + 128] = mem[floor32(mem[_75 + ceil32(return_data.size)]) + floor32(_81) + _75 + ceil32(return_data.size) + -(mem[_75 + ceil32(return_data.size)] % 32) + 160 len mem[_75 + ceil32(return_data.size)] % 32]
                        emit Log(mem[mem[64] len floor32(mem[_75 + ceil32(return_data.size)]) + floor32(_81) + _75 + ceil32(return_data.size) + -mem[64] + 160]);
                sub_8f7371e0++
        else:
            mem[0] = 0
            mem[_43 + 32] = address(sub_6a0341b8.field_0)
            s = _43 + 32
            t = sha3(0)
            while _43 + (32 * sub_6a0341b8.length) > s:
                mem[s + 32] = stor1[t]
                s = s + 32
                t = t + 1
                continue 
            _99 = mem[64]
            mem[mem[64]] = 0xad49bbb500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = sub_6a0341b8.length
            s = 0
            while s < 32 * sub_6a0341b8.length:
                mem[mem[64] + s + 100] = mem[_43 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(sub_eb0cdcbbAddress)
            call sub_eb0cdcbbAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * sub_6a0341b8.length) + _99 + -mem[64] + 96]
            if not ext_call.success:
                mem[mem[64]] = 32
                mem[mem[64] + 32] = 20
                mem[mem[64] + 64] = 'external call failed'
                emit Log(Array(len=20, data='external call failed'));
                sub_6a449afc++
            else:
                _152 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _155 = mem[_152]
                require mem[_152] <= 4294967296
                require mem[_152] + 32 <= return_data.size
                require mem[mem[_152] + _152] <= 4294967296 and mem[_152] + mem[mem[_152] + _152] + 32 <= return_data.size
                mem[_152 + ceil32(return_data.size)] = mem[mem[_152] + _152]
                _158 = mem[_155 + _152]
                s = 0
                while s < _158:
                    mem[_152 + ceil32(return_data.size) + s + 32] = mem[_155 + _152 + s + 32]
                    s = s + 32
                    continue 
                if not _158 % 32:
                    mem[64] = _158 + _152 + ceil32(return_data.size) + 32
                    mem[_158 + _152 + ceil32(return_data.size) + 32] = 32
                    mem[_158 + _152 + ceil32(return_data.size) + 64] = mem[_152 + ceil32(return_data.size)]
                    s = 0
                    while s < mem[_152 + ceil32(return_data.size)]:
                        mem[_158 + _152 + ceil32(return_data.size) + s + 96] = mem[_152 + ceil32(return_data.size) + s + 32]
                        s = s + 32
                        continue 
                    if not mem[_152 + ceil32(return_data.size)] % 32:
                        emit Log(mem[mem[64] len mem[_152 + ceil32(return_data.size)] + _158 + _152 + ceil32(return_data.size) + -mem[64] + 96]);
                    else:
                        mem[floor32(mem[_152 + ceil32(return_data.size)]) + _158 + _152 + ceil32(return_data.size) + 96] = mem[floor32(mem[_152 + ceil32(return_data.size)]) + _158 + _152 + ceil32(return_data.size) + -(mem[_152 + ceil32(return_data.size)] % 32) + 128 len mem[_152 + ceil32(return_data.size)] % 32]
                        emit Log(mem[mem[64] len floor32(mem[_152 + ceil32(return_data.size)]) + _158 + _152 + ceil32(return_data.size) + -mem[64] + 128]);
                else:
                    mem[floor32(_158) + _152 + ceil32(return_data.size) + 32] = mem[floor32(_158) + _152 + ceil32(return_data.size) + -(_158 % 32) + 64 len _158 % 32]
                    mem[64] = floor32(_158) + _152 + ceil32(return_data.size) + 64
                    mem[floor32(_158) + _152 + ceil32(return_data.size) + 64] = 32
                    mem[floor32(_158) + _152 + ceil32(return_data.size) + 96] = mem[_152 + ceil32(return_data.size)]
                    s = 0
                    while s < mem[_152 + ceil32(return_data.size)]:
                        mem[floor32(_158) + _152 + ceil32(return_data.size) + s + 128] = mem[_152 + ceil32(return_data.size) + s + 32]
                        s = s + 32
                        continue 
                    if not mem[_152 + ceil32(return_data.size)] % 32:
                        emit Log(mem[mem[64] len mem[_152 + ceil32(return_data.size)] + floor32(_158) + _152 + ceil32(return_data.size) + -mem[64] + 128]);
                    else:
                        mem[floor32(mem[_152 + ceil32(return_data.size)]) + floor32(_158) + _152 + ceil32(return_data.size) + 128] = mem[floor32(mem[_152 + ceil32(return_data.size)]) + floor32(_158) + _152 + ceil32(return_data.size) + -(mem[_152 + ceil32(return_data.size)] % 32) + 160 len mem[_152 + ceil32(return_data.size)] % 32]
                        emit Log(mem[mem[64] len floor32(mem[_152 + ceil32(return_data.size)]) + floor32(_158) + _152 + ceil32(return_data.size) + -mem[64] + 160]);
                sub_8f7371e0++
        idx = idx + 1
        continue 
}

function sub_5f7e14b2(?) payable {
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
    require ext_code.size(sub_eb0cdcbbAddress)
    call sub_eb0cdcbbAddress.0x91345291 with:
         gas gas_remaining wei
        args arg1, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 228 len (32 * arg2.length) - floor32(arg2.length)])
    if not ext_call.success:
        emit Log(Array(len=20, data='external call failed'));
        sub_6a449afc++
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
                require ext_code.size(sub_eb0cdcbbAddress)
                call sub_eb0cdcbbAddress.0xad49bbb5 with:
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
                require ext_code.size(sub_eb0cdcbbAddress)
                call sub_eb0cdcbbAddress.0xad49bbb5 with:
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
                require ext_code.size(sub_eb0cdcbbAddress)
                call sub_eb0cdcbbAddress.0xad49bbb5 with:
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
                require ext_code.size(sub_eb0cdcbbAddress)
                call sub_eb0cdcbbAddress.0xad49bbb5 with:
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
        sub_8f7371e0++
}



}
