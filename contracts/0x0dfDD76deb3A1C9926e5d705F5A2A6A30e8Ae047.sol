contract main {




// =====================  Runtime code  =====================


#
#  - sub_2dc5b90b(?)
#
mapping of uint8 stor0;
array of struct sub_12efc323;
mapping of uint8 stor2;

function sub_12efc323(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_12efc323[arg1].field_0
    return sub_12efc323[arg1][arg2].field_0
}

function sub_7202c38a(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < 100
    return bool(stor('array', ('div', 0.03125, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'stor0', 0)))[uint8(arg2)])
}

function character_created(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function sub_ff846d06(?) payable {
    require calldata.size - 4 >= 32
    if 1 > arg1:
        return 1 <= arg1
    return 99 >= arg1
}

function sub_46b971b1(?) payable {
    require calldata.size - 4 >= 32
    if 1 > !(arg1 / 3):
        revert with 0, 17
    return ((arg1 / 3) + 1)
}

function sub_7b7388a7(?) payable {
    require calldata.size - 4 >= 64
    if arg2 < 1:
        revert with 0, 17
    if not arg2 - 1:
        if arg2 < 1:
            revert with 0, 17
        if not arg2 - 1:
            return (bool(arg1) == 1)
        if arg2 - 1 > 255:
            revert with 0, 17
        return (arg1 and 1 << arg2 - 1 == 1)
    if arg2 - 1 > 255:
        revert with 0, 17
    if arg2 < 1:
        revert with 0, 17
    if not arg2 - 1:
        return (bool(arg1) == 1 << arg2 - 1)
    if arg2 - 1 > 255:
        revert with 0, 17
    return (arg1 and 1 << arg2 - 1 == 1 << arg2 - 1)
}

function sub_e12045b5(?) payable {
    require calldata.size - 4 >= 32
    mem[3296] = bool(uint8(stor0[arg1]))
    idx = 3296
    s = 0
    while 6496 > idx + 32:
        mem[idx + 32] = bool(stor('map', ('param', 'arg1'), ('name', 'stor0', 0))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1])
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    idx = 0
    s = 3296
    t = 6496
    while idx < 100:
        mem[t] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from 6496
       len 3200
}

function sub_32ad9672(?) payable {
    require calldata.size - 4 >= 32
    if sub_12efc323[arg1].field_0:
        mem[128] = sub_12efc323[arg1].field_0
        idx = 128
        s = 0
        while (32 * sub_12efc323[arg1].field_0) + 96 > idx:
            mem[idx + 32] = sub_12efc323[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_12efc323[arg1].field_0, data=mem[128 len 32 * sub_12efc323[arg1].field_0])
    mem[(32 * sub_12efc323[arg1].field_0) + 128] = 32
    mem[(32 * sub_12efc323[arg1].field_0) + 160] = sub_12efc323[arg1].field_0
    mem[(32 * sub_12efc323[arg1].field_0) + 192 len 32 * sub_12efc323[arg1].field_0] = mem[128 len 32 * sub_12efc323[arg1].field_0]
    return memory
      from (32 * sub_12efc323[arg1].field_0) + 128
       len (96 * sub_12efc323[arg1].field_0) + 64
}

function sub_55e3e69c(?) payable {
    require calldata.size - 4 >= 32
    mem[96 len 224] = call.data[calldata.size len 224]
    if 1 == arg1:
        mem[320] = 91
        mem[352] = 75
        mem[384] = 5
        mem[416] = 6
        mem[448] = 63
        mem[480] = 0
        mem[512] = 0
    else:
        if 2 == arg1:
            mem[320] = 91
            mem[352] = 75
            mem[384] = 5
            mem[416] = 63
            mem[448] = 0
            mem[480] = 0
            mem[512] = 0
        else:
            if 3 == arg1:
                mem[320] = 91
                mem[352] = 5
                mem[384] = 6
                mem[416] = 7
                mem[448] = 63
                mem[480] = 0
                mem[512] = 0
            else:
                if 4 == arg1:
                    mem[320] = 91
                    mem[352] = 5
                    mem[384] = 6
                    mem[416] = 63
                    mem[448] = 0
                    mem[480] = 0
                    mem[512] = 0
                else:
                    if 5 == arg1:
                        mem[320] = 91
                        mem[352] = 75
                        mem[384] = 5
                        mem[416] = 6
                        mem[448] = 7
                        mem[480] = 36
                        mem[512] = 96
                    else:
                        if 6 == arg1:
                            mem[320] = 75
                            mem[352] = 24
                            mem[384] = 0
                            mem[416] = 0
                            mem[448] = 0
                            mem[480] = 0
                        else:
                            if 7 == arg1:
                                mem[320] = 91
                                mem[352] = 75
                                mem[384] = 5
                                mem[416] = 6
                                mem[448] = 7
                                mem[480] = 36
                            else:
                                if 8 == arg1:
                                    mem[320] = 91
                                    mem[352] = 75
                                    mem[384] = 5
                                    mem[416] = 63
                                else:
                                    if 9 == arg1:
                                        mem[320] = 91
                                        mem[352] = 75
                                        mem[384] = 5
                                    else:
                                        if 10 == arg1:
                                            mem[320] = 91
                                            mem[352] = 0
                                        else:
                                            if arg1 != 11:
                                                idx = 0
                                                s = 96
                                                t = 320
                                                while idx < 7:
                                                    mem[t] = mem[s + 31 len 1]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                return memory
                                                  from 320
                                                   len 224
                                            mem[320] = 91
                                            mem[352] = 88
                                        mem[384] = 0
                                    mem[416] = 0
                                mem[448] = 0
                                mem[480] = 0
                        mem[512] = 0
    idx = 0
    s = 320
    t = 544
    while idx < 7:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from 544
       len 224
}

function sub_f7fe068e(?) payable {
    require calldata.size - 4 >= 64
    if 1 > !(arg2 / 3):
        revert with 0, 17
    if 1 == arg1:
        if (arg2 / 3) + 1 > -6:
            revert with 0, 17
        if 5 == arg1:
            if 1 > !(arg2 / 2):
                revert with 0, 17
            if (arg2 / 3) + 6 > !((arg2 / 2) + 1):
                revert with 0, 17
            return ((arg2 / 3) + (arg2 / 2) + 7)
        if arg1 != 6:
            if arg1 != 11:
                return ((arg2 / 3) + 6)
            if (arg2 / 3) + 6 > !(arg2 / 5):
                revert with 0, 17
            return ((arg2 / 3) + (arg2 / 5) + 6)
        if arg2 >= 6:
            if (arg2 / 3) + 6 > -4:
                revert with 0, 17
            return ((arg2 / 3) + 9)
        if arg2 < 2:
            if (arg2 / 3) + 6 > -2:
                revert with 0, 17
            return ((arg2 / 3) + 7)
        if (arg2 / 3) + 6 > -3:
            revert with 0, 17
        return ((arg2 / 3) + 8)
    if 2 == arg1:
        if (arg2 / 3) + 1 > -5:
            revert with 0, 17
        if 5 == arg1:
            if 1 > !(arg2 / 2):
                revert with 0, 17
            if (arg2 / 3) + 5 > !((arg2 / 2) + 1):
                revert with 0, 17
            return ((arg2 / 3) + (arg2 / 2) + 6)
        if arg1 != 6:
            if arg1 != 11:
                return ((arg2 / 3) + 5)
            if (arg2 / 3) + 5 > !(arg2 / 5):
                revert with 0, 17
            return ((arg2 / 3) + (arg2 / 5) + 5)
        if arg2 >= 6:
            if (arg2 / 3) + 5 > -4:
                revert with 0, 17
            return ((arg2 / 3) + 8)
        if arg2 < 2:
            if (arg2 / 3) + 5 > -2:
                revert with 0, 17
            return ((arg2 / 3) + 6)
        if (arg2 / 3) + 5 > -3:
            revert with 0, 17
        return ((arg2 / 3) + 7)
    if 3 == arg1:
        if (arg2 / 3) + 1 > -6:
            revert with 0, 17
        if 5 == arg1:
            if 1 > !(arg2 / 2):
                revert with 0, 17
            if (arg2 / 3) + 6 > !((arg2 / 2) + 1):
                revert with 0, 17
            return ((arg2 / 3) + (arg2 / 2) + 7)
        if arg1 != 6:
            if arg1 != 11:
                return ((arg2 / 3) + 6)
            if (arg2 / 3) + 6 > !(arg2 / 5):
                revert with 0, 17
            return ((arg2 / 3) + (arg2 / 5) + 6)
        if arg2 >= 6:
            if (arg2 / 3) + 6 > -4:
                revert with 0, 17
            return ((arg2 / 3) + 9)
        if arg2 < 2:
            if (arg2 / 3) + 6 > -2:
                revert with 0, 17
            return ((arg2 / 3) + 7)
        if (arg2 / 3) + 6 > -3:
            revert with 0, 17
        return ((arg2 / 3) + 8)
    if 4 == arg1:
        if (arg2 / 3) + 1 > -5:
            revert with 0, 17
        if 5 == arg1:
            if 1 > !(arg2 / 2):
                revert with 0, 17
            if (arg2 / 3) + 5 > !((arg2 / 2) + 1):
                revert with 0, 17
            return ((arg2 / 3) + (arg2 / 2) + 6)
        if arg1 != 6:
            if arg1 != 11:
                return ((arg2 / 3) + 5)
            if (arg2 / 3) + 5 > !(arg2 / 5):
                revert with 0, 17
            return ((arg2 / 3) + (arg2 / 5) + 5)
        if arg2 >= 6:
            if (arg2 / 3) + 5 > -4:
                revert with 0, 17
            return ((arg2 / 3) + 8)
        if arg2 < 2:
            if (arg2 / 3) + 5 > -2:
                revert with 0, 17
            return ((arg2 / 3) + 6)
        if (arg2 / 3) + 5 > -3:
            revert with 0, 17
        return ((arg2 / 3) + 7)
    if 5 == arg1:
        if (arg2 / 3) + 1 > -8:
            revert with 0, 17
        if 5 == arg1:
            if 1 > !(arg2 / 2):
                revert with 0, 17
            if (arg2 / 3) + 8 > !((arg2 / 2) + 1):
                revert with 0, 17
            return ((arg2 / 3) + (arg2 / 2) + 9)
        if arg1 != 6:
            if arg1 != 11:
                return ((arg2 / 3) + 8)
            if (arg2 / 3) + 8 > !(arg2 / 5):
                revert with 0, 17
            return ((arg2 / 3) + (arg2 / 5) + 8)
        if arg2 >= 6:
            if (arg2 / 3) + 8 > -4:
                revert with 0, 17
            return ((arg2 / 3) + 11)
        if arg2 < 2:
            if (arg2 / 3) + 8 > -2:
                revert with 0, 17
            return ((arg2 / 3) + 9)
        if (arg2 / 3) + 8 > -3:
            revert with 0, 17
        return ((arg2 / 3) + 10)
    if arg1 != 6:
        if 7 == arg1:
            if (arg2 / 3) + 1 > -7:
                revert with 0, 17
            if 5 == arg1:
                if 1 > !(arg2 / 2):
                    revert with 0, 17
                if (arg2 / 3) + 7 > !((arg2 / 2) + 1):
                    revert with 0, 17
                return ((arg2 / 3) + (arg2 / 2) + 8)
            if arg1 != 6:
                if arg1 != 11:
                    return ((arg2 / 3) + 7)
                if (arg2 / 3) + 7 > !(arg2 / 5):
                    revert with 0, 17
                return ((arg2 / 3) + (arg2 / 5) + 7)
            if arg2 >= 6:
                if (arg2 / 3) + 7 > -4:
                    revert with 0, 17
                return ((arg2 / 3) + 10)
            if arg2 < 2:
                if (arg2 / 3) + 7 > -2:
                    revert with 0, 17
                return ((arg2 / 3) + 8)
            if (arg2 / 3) + 7 > -3:
                revert with 0, 17
            return ((arg2 / 3) + 9)
        if 8 == arg1:
            if (arg2 / 3) + 1 > -5:
                revert with 0, 17
            if 5 == arg1:
                if 1 > !(arg2 / 2):
                    revert with 0, 17
                if (arg2 / 3) + 5 > !((arg2 / 2) + 1):
                    revert with 0, 17
                return ((arg2 / 3) + (arg2 / 2) + 6)
            if arg1 != 6:
                if arg1 != 11:
                    return ((arg2 / 3) + 5)
                if (arg2 / 3) + 5 > !(arg2 / 5):
                    revert with 0, 17
                return ((arg2 / 3) + (arg2 / 5) + 5)
            if arg2 >= 6:
                if (arg2 / 3) + 5 > -4:
                    revert with 0, 17
                return ((arg2 / 3) + 8)
            if arg2 < 2:
                if (arg2 / 3) + 5 > -2:
                    revert with 0, 17
                return ((arg2 / 3) + 6)
            if (arg2 / 3) + 5 > -3:
                revert with 0, 17
            return ((arg2 / 3) + 7)
        if 9 == arg1:
            if (arg2 / 3) + 1 > -4:
                revert with 0, 17
            if 5 == arg1:
                if 1 > !(arg2 / 2):
                    revert with 0, 17
                if (arg2 / 3) + 4 > !((arg2 / 2) + 1):
                    revert with 0, 17
                return ((arg2 / 3) + (arg2 / 2) + 5)
            if arg1 != 6:
                if arg1 != 11:
                    return ((arg2 / 3) + 4)
                if (arg2 / 3) + 4 > !(arg2 / 5):
                    revert with 0, 17
                return ((arg2 / 3) + (arg2 / 5) + 4)
            if arg2 >= 6:
                if (arg2 / 3) + 4 > -4:
                    revert with 0, 17
                return ((arg2 / 3) + 7)
            if arg2 < 2:
                if (arg2 / 3) + 4 > -2:
                    revert with 0, 17
                return ((arg2 / 3) + 5)
            if (arg2 / 3) + 4 > -3:
                revert with 0, 17
            return ((arg2 / 3) + 6)
        if 10 == arg1:
            if (arg2 / 3) + 1 > -2:
                revert with 0, 17
            if 5 == arg1:
                if 1 > !(arg2 / 2):
                    revert with 0, 17
                if (arg2 / 3) + 2 > !((arg2 / 2) + 1):
                    revert with 0, 17
                return ((arg2 / 3) + (arg2 / 2) + 3)
            if arg1 != 6:
                if arg1 != 11:
                    return ((arg2 / 3) + 2)
                if (arg2 / 3) + 2 > !(arg2 / 5):
                    revert with 0, 17
                return ((arg2 / 3) + (arg2 / 5) + 2)
            if arg2 >= 6:
                if (arg2 / 3) + 2 > -4:
                    revert with 0, 17
                return ((arg2 / 3) + 5)
            if arg2 < 2:
                if (arg2 / 3) + 2 > -2:
                    revert with 0, 17
                return ((arg2 / 3) + 3)
            if (arg2 / 3) + 2 > -3:
                revert with 0, 17
            return ((arg2 / 3) + 4)
        if arg1 != 11:
            if 5 == arg1:
                if 1 > !(arg2 / 2):
                    revert with 0, 17
                if (arg2 / 3) + 1 > !((arg2 / 2) + 1):
                    revert with 0, 17
                return ((arg2 / 3) + (arg2 / 2) + 2)
            if arg1 != 6:
                if arg1 != 11:
                    return ((arg2 / 3) + 1)
                if (arg2 / 3) + 1 > !(arg2 / 5):
                    revert with 0, 17
                return ((arg2 / 3) + (arg2 / 5) + 1)
            if arg2 >= 6:
                if (arg2 / 3) + 1 > -4:
                    revert with 0, 17
                return ((arg2 / 3) + 4)
            if arg2 < 2:
                if (arg2 / 3) + 1 > -2:
                    revert with 0, 17
                return ((arg2 / 3) + 2)
            if (arg2 / 3) + 1 > -3:
                revert with 0, 17
            return ((arg2 / 3) + 3)
    if (arg2 / 3) + 1 > -3:
        revert with 0, 17
    if 5 == arg1:
        if 1 > !(arg2 / 2):
            revert with 0, 17
        if (arg2 / 3) + 3 > !((arg2 / 2) + 1):
            revert with 0, 17
        return ((arg2 / 3) + (arg2 / 2) + 4)
    if arg1 != 6:
        if arg1 != 11:
            return ((arg2 / 3) + 3)
        if (arg2 / 3) + 3 > !(arg2 / 5):
            revert with 0, 17
        return ((arg2 / 3) + (arg2 / 5) + 3)
    if arg2 >= 6:
        if (arg2 / 3) + 3 > -4:
            revert with 0, 17
        return ((arg2 / 3) + 6)
    if arg2 < 2:
        if (arg2 / 3) + 3 > -2:
            revert with 0, 17
        return ((arg2 / 3) + 4)
    if (arg2 / 3) + 3 > -3:
        revert with 0, 17
    return ((arg2 / 3) + 5)
}

function feat_by_id(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 64:
        mem[96] = 0xfc7476c000000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(0x88db734e9f64ca71a24d8e75986d964fff7a1e10)
        staticcall 0x88db734e9f64ca71a24d8e75986d964fff7a1e10.0xfc7476c0 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 224
        _9 = mem[96 len 4], Mask(224, 32, arg1) >> 32
        _10 = uint32(arg1), mem[132 len 28]
        require uint32(arg1), mem[132 len 28] <= test266151307()
        require uint32(arg1), mem[132 len 28] + 127 < return_data.size + 96
        _14 = mem[uint32(arg1), mem[132 len 28] + 96]
        if mem[uint32(arg1), mem[132 len 28] + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[uint32(arg1), mem[132 len 28] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[uint32(arg1), mem[132 len 28] + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[uint32(arg1), mem[132 len 28] + 96])) + 97
        mem[ceil32(return_data.size) + 96] = _14
        require _10 + _14 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_14)] = mem[_10 + 128 len ceil32(_14)]
        if ceil32(_14) <= _14:
            _152 = mem[160]
            require mem[160] == bool(mem[160])
            _159 = mem[192]
            _160 = mem[224]
            _161 = mem[256]
            _162 = mem[288]
            require mem[288] <= test266151307()
            require mem[288] + 127 < return_data.size + 96
            _175 = mem[mem[288] + 96]
            if mem[mem[288] + 96] > test266151307():
                revert with 0, 65
            _179 = mem[64]
            if mem[64] + ceil32(ceil32(mem[mem[288] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[288] + 96])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[mem[288] + 96])) + 1
            mem[_179] = _175
            require _162 + _175 + 32 <= return_data.size
            mem[_179 + 32 len ceil32(_175)] = mem[_162 + 128 len ceil32(_175)]
            if ceil32(_175) > _175:
                mem[_179 + _175 + 32] = 0
            mem[mem[64]] = _9
            mem[mem[64] + 32] = 224
            mem[mem[64] + 224] = _14
            mem[mem[64] + 256 len ceil32(_14)] = mem[ceil32(return_data.size) + 128 len ceil32(_14)]
            if ceil32(_14) > _14:
                mem[mem[64] + _14 + 256] = 0
            mem[mem[64] + 64] = bool(_152)
            mem[mem[64] + 96] = _159
            mem[mem[64] + 128] = _160
            mem[mem[64] + 160] = _161
            mem[mem[64] + 192] = ceil32(_14) + 256
            mem[ceil32(_14) + mem[64] + 256] = _175
            mem[ceil32(_14) + mem[64] + 288 len ceil32(_175)] = mem[_179 + 32 len ceil32(_175)]
            if ceil32(_175) > _175:
                mem[ceil32(_14) + mem[64] + _175 + 288] = 0
            return _9, 
                   Array(len=_14, data=mem[mem[64] + 256 len ceil32(_175) + ceil32(_14) + 32]),
                   bool(_152),
                   _159,
                   _160,
                   _161,
                   ceil32(_14) + 256
        mem[ceil32(return_data.size) + _14 + 128] = 0
        _163 = mem[160]
        require mem[160] == bool(mem[160])
        _169 = mem[192]
        _170 = mem[224]
        _171 = mem[256]
        _172 = mem[288]
        require mem[288] <= test266151307()
        require mem[288] + 127 < return_data.size + 96
        _180 = mem[mem[288] + 96]
        if mem[mem[288] + 96] > test266151307():
            revert with 0, 65
        _182 = mem[64]
        if mem[64] + ceil32(ceil32(mem[mem[288] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[288] + 96])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[mem[288] + 96])) + 1
        mem[_182] = _180
        require _172 + _180 + 32 <= return_data.size
        mem[_182 + 32 len ceil32(_180)] = mem[_172 + 128 len ceil32(_180)]
        if ceil32(_180) > _180:
            mem[_182 + _180 + 32] = 0
        mem[mem[64]] = _9
        mem[mem[64] + 32] = 224
        mem[mem[64] + 224] = _14
        mem[mem[64] + 256 len ceil32(_14)] = mem[ceil32(return_data.size) + 128 len ceil32(_14)]
        if ceil32(_14) > _14:
            mem[mem[64] + _14 + 256] = 0
        mem[mem[64] + 64] = bool(_163)
        mem[mem[64] + 96] = _169
        mem[mem[64] + 128] = _170
        mem[mem[64] + 160] = _171
        mem[mem[64] + 192] = ceil32(_14) + 256
        mem[ceil32(_14) + mem[64] + 256] = _180
        mem[ceil32(_14) + mem[64] + 288 len ceil32(_180)] = mem[_182 + 32 len ceil32(_180)]
        if ceil32(_180) > _180:
            mem[ceil32(_14) + mem[64] + _180 + 288] = 0
        return _9, 
               Array(len=_14, data=mem[mem[64] + 256 len ceil32(_180) + ceil32(_14) + 32]),
               bool(_163),
               _169,
               _170,
               _171,
               ceil32(_14) + 256
    if arg1 > 99:
        return 0, 224, 0, 0, 0, 0, 256, 0, 0
    mem[96] = 0xfc7476c000000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(0x7a4ba2b077cd9f4b13d5853411ecae12fadab89c)
    staticcall 0x7a4ba2b077cd9f4b13d5853411ecae12fadab89c.0xfc7476c0 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 224
    _11 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    _12 = uint32(arg1), mem[132 len 28]
    require uint32(arg1), mem[132 len 28] <= test266151307()
    require uint32(arg1), mem[132 len 28] + 127 < return_data.size + 96
    _15 = mem[uint32(arg1), mem[132 len 28] + 96]
    if mem[uint32(arg1), mem[132 len 28] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[uint32(arg1), mem[132 len 28] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[uint32(arg1), mem[132 len 28] + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[uint32(arg1), mem[132 len 28] + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _15
    require _12 + _15 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_15)] = mem[_12 + 128 len ceil32(_15)]
    if ceil32(_15) <= _15:
        _151 = mem[160]
        require mem[160] == bool(mem[160])
        _154 = mem[192]
        _155 = mem[224]
        _156 = mem[256]
        _157 = mem[288]
        require mem[288] <= test266151307()
        require mem[288] + 127 < return_data.size + 96
        _174 = mem[mem[288] + 96]
        if mem[mem[288] + 96] > test266151307():
            revert with 0, 65
        _177 = mem[64]
        if mem[64] + ceil32(ceil32(mem[mem[288] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[288] + 96])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[mem[288] + 96])) + 1
        mem[_177] = _174
        require _157 + _174 + 32 <= return_data.size
        mem[_177 + 32 len ceil32(_174)] = mem[_157 + 128 len ceil32(_174)]
        if ceil32(_174) <= _174:
            _289 = mem[64]
            mem[mem[64]] = _11
            mem[mem[64] + 32] = 224
            mem[mem[64] + 224] = _15
            mem[mem[64] + 256 len ceil32(_15)] = mem[ceil32(return_data.size) + 128 len ceil32(_15)]
            if ceil32(_15) <= _15:
                mem[mem[64] + 64] = bool(_151)
                mem[mem[64] + 96] = _154
                mem[mem[64] + 128] = _155
                mem[mem[64] + 160] = _156
                mem[mem[64] + 192] = ceil32(_15) + 256
                mem[ceil32(_15) + mem[64] + 256] = _174
                mem[ceil32(_15) + mem[64] + 288 len ceil32(_174)] = mem[_177 + 32 len ceil32(_174)]
                if ceil32(_174) > _174:
                    mem[ceil32(_15) + mem[64] + _174 + 288] = 0
                return _11, 
                       Array(len=_15, data=mem[mem[64] + 256 len ceil32(_174) + ceil32(_15) + 32]),
                       bool(_151),
                       _154,
                       _155,
                       _156,
                       ceil32(_15) + 256
            mem[mem[64] + _15 + 256] = 0
            mem[mem[64] + 64] = bool(_151)
            mem[_289 + 96] = _154
            mem[_289 + 128] = _155
            mem[_289 + 160] = _156
            mem[_289 + 192] = ceil32(_15) + 256
            mem[ceil32(_15) + _289 + 256] = _174
            mem[ceil32(_15) + _289 + 288 len ceil32(_174)] = mem[_177 + 32 len ceil32(_174)]
            if ceil32(_174) > _174:
                mem[ceil32(_15) + _289 + _174 + 288] = 0
            return memory
              from mem[64]
               len ceil32(_174) + ceil32(_15) + _289 + -mem[64] + 288
        mem[_177 + _174 + 32] = 0
        mem[mem[64]] = _11
        mem[mem[64] + 32] = 224
        mem[mem[64] + 224] = _15
        mem[mem[64] + 256 len ceil32(_15)] = mem[ceil32(return_data.size) + 128 len ceil32(_15)]
        if ceil32(_15) > _15:
            mem[mem[64] + _15 + 256] = 0
        mem[mem[64] + 64] = bool(_151)
        mem[mem[64] + 96] = _154
        mem[mem[64] + 128] = _155
        mem[mem[64] + 160] = _156
        mem[mem[64] + 192] = ceil32(_15) + 256
        mem[ceil32(_15) + mem[64] + 256] = _174
        mem[ceil32(_15) + mem[64] + 288 len ceil32(_174)] = mem[_177 + 32 len ceil32(_174)]
        if ceil32(_174) > _174:
            mem[ceil32(_15) + mem[64] + _174 + 288] = 0
        return _11, 
               Array(len=_15, data=mem[mem[64] + 256 len ceil32(_174) + ceil32(_15) + 32]),
               bool(_151),
               _154,
               _155,
               _156,
               ceil32(_15) + 256
    mem[ceil32(return_data.size) + _15 + 128] = 0
    _158 = mem[160]
    require mem[160] == bool(mem[160])
    _165 = mem[192]
    _166 = mem[224]
    _167 = mem[256]
    _168 = mem[288]
    require mem[288] <= test266151307()
    require mem[288] + 127 < return_data.size + 96
    _178 = mem[mem[288] + 96]
    if mem[mem[288] + 96] > test266151307():
        revert with 0, 65
    _181 = mem[64]
    if mem[64] + ceil32(ceil32(mem[mem[288] + 96])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[288] + 96])) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(ceil32(mem[mem[288] + 96])) + 1
    mem[_181] = _178
    require _168 + _178 + 32 <= return_data.size
    mem[_181 + 32 len ceil32(_178)] = mem[_168 + 128 len ceil32(_178)]
    if ceil32(_178) <= _178:
        _290 = mem[64]
        mem[mem[64]] = _11
        mem[mem[64] + 32] = 224
        mem[mem[64] + 224] = _15
        mem[mem[64] + 256 len ceil32(_15)] = mem[ceil32(return_data.size) + 128 len ceil32(_15)]
        if ceil32(_15) <= _15:
            mem[mem[64] + 64] = bool(_158)
            mem[mem[64] + 96] = _165
            mem[mem[64] + 128] = _166
            mem[mem[64] + 160] = _167
            mem[mem[64] + 192] = ceil32(_15) + 256
            mem[ceil32(_15) + mem[64] + 256] = _178
            mem[ceil32(_15) + mem[64] + 288 len ceil32(_178)] = mem[_181 + 32 len ceil32(_178)]
            if ceil32(_178) > _178:
                mem[ceil32(_15) + mem[64] + _178 + 288] = 0
            return _11, 
                   Array(len=_15, data=mem[mem[64] + 256 len ceil32(_178) + ceil32(_15) + 32]),
                   bool(_158),
                   _165,
                   _166,
                   _167,
                   ceil32(_15) + 256
        mem[mem[64] + _15 + 256] = 0
        mem[mem[64] + 64] = bool(_158)
        mem[_290 + 96] = _165
        mem[_290 + 128] = _166
        mem[_290 + 160] = _167
        mem[_290 + 192] = ceil32(_15) + 256
        mem[ceil32(_15) + _290 + 256] = _178
        mem[ceil32(_15) + _290 + 288 len ceil32(_178)] = mem[_181 + 32 len ceil32(_178)]
        if ceil32(_178) > _178:
            mem[ceil32(_15) + _290 + _178 + 288] = 0
        return memory
          from mem[64]
           len ceil32(_178) + ceil32(_15) + _290 + -mem[64] + 288
    mem[_181 + _178 + 32] = 0
    mem[mem[64]] = _11
    mem[mem[64] + 32] = 224
    mem[mem[64] + 224] = _15
    mem[mem[64] + 256 len ceil32(_15)] = mem[ceil32(return_data.size) + 128 len ceil32(_15)]
    if ceil32(_15) > _15:
        mem[mem[64] + _15 + 256] = 0
    mem[mem[64] + 64] = bool(_158)
    mem[mem[64] + 96] = _165
    mem[mem[64] + 128] = _166
    mem[mem[64] + 160] = _167
    mem[mem[64] + 192] = ceil32(_15) + 256
    mem[ceil32(_15) + mem[64] + 256] = _178
    mem[ceil32(_15) + mem[64] + 288 len ceil32(_178)] = mem[_181 + 32 len ceil32(_178)]
    if ceil32(_178) > _178:
        mem[ceil32(_15) + mem[64] + _178 + 288] = 0
    return _11, 
           Array(len=_15, data=mem[mem[64] + 256 len ceil32(_178) + ceil32(_15) + 32]),
           bool(_158),
           _165,
           _166,
           _167,
           ceil32(_15) + 256
}

function sub_5cbbcdd7(?) payable {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 1
    if sub_12efc323[arg1].field_0 > test266151307():
        revert with 0, 65
    mem[96] = sub_12efc323[arg1].field_0
    mem[64] = (32 * sub_12efc323[arg1].field_0) + 128
    if not sub_12efc323[arg1].field_0:
        idx = 0
        while idx < sub_12efc323[arg1].field_0:
            mem[32] = 1
            if idx >= sub_12efc323[arg1].field_0:
                revert with 0, 50
            mem[0] = sha3(arg1, 1)
            if sub_12efc323[arg1][idx].field_0 <= 64:
                mem[mem[64]] = 0xfc7476c000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_12efc323[arg1][idx].field_0
                require ext_code.size(0x88db734e9f64ca71a24d8e75986d964fff7a1e10)
                staticcall 0x88db734e9f64ca71a24d8e75986d964fff7a1e10.0xfc7476c0 with:
                        gas gas_remaining wei
                       args sub_12efc323[arg1][idx].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _153 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 224
                _161 = mem[_153 + 32]
                require mem[_153 + 32] <= test266151307()
                require _153 + mem[_153 + 32] + 31 < _153 + return_data.size
                _170 = mem[_153 + mem[_153 + 32]]
                if mem[_153 + mem[_153 + 32]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_153 + mem[_153 + 32]])) + 1 < 0 or _153 + ceil32(return_data.size) + ceil32(ceil32(mem[_153 + mem[_153 + 32]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _153 + ceil32(return_data.size) + ceil32(ceil32(mem[_153 + mem[_153 + 32]])) + 1
                mem[_153 + ceil32(return_data.size)] = _170
                require _161 + _170 + 32 <= return_data.size
                s = 0
                while s < _170:
                    mem[s + _153 + ceil32(return_data.size) + 32] = mem[s + _153 + _161 + 32]
                    s = s + 32
                    continue 
                if ceil32(_170) <= _170:
                    require mem[_153 + 64] == bool(mem[_153 + 64])
                    _289 = mem[_153 + 192]
                    require mem[_153 + 192] <= test266151307()
                    require _153 + mem[_153 + 192] + 31 < _153 + return_data.size
                    _308 = mem[_153 + mem[_153 + 192]]
                    if mem[_153 + mem[_153 + 192]] > test266151307():
                        revert with 0, 65
                    _312 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_153 + mem[_153 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_153 + mem[_153 + 192]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_153 + mem[_153 + 192]])) + 1
                    mem[_312] = _308
                    require _289 + _308 + 32 <= return_data.size
                    s = 0
                    while s < _308:
                        mem[s + _312 + 32] = mem[s + _153 + _289 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_308) > _308:
                        mem[_312 + _308 + 32] = 0
                else:
                    mem[_153 + ceil32(return_data.size) + _170 + 32] = 0
                    require mem[_153 + 64] == bool(mem[_153 + 64])
                    _301 = mem[_153 + 192]
                    require mem[_153 + 192] <= test266151307()
                    require _153 + mem[_153 + 192] + 31 < _153 + return_data.size
                    _313 = mem[_153 + mem[_153 + 192]]
                    if mem[_153 + mem[_153 + 192]] > test266151307():
                        revert with 0, 65
                    _318 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_153 + mem[_153 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_153 + mem[_153 + 192]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_153 + mem[_153 + 192]])) + 1
                    mem[_318] = _313
                    require _301 + _313 + 32 <= return_data.size
                    s = 0
                    while s < _313:
                        mem[s + _318 + 32] = mem[s + _153 + _301 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_313) > _313:
                        mem[_318 + _313 + 32] = 0
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _153 + ceil32(return_data.size)
            else:
                if sub_12efc323[arg1][idx].field_0 > 99:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = 96
                else:
                    mem[mem[64]] = 0xfc7476c000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_12efc323[arg1][idx].field_0
                    require ext_code.size(0x7a4ba2b077cd9f4b13d5853411ecae12fadab89c)
                    staticcall 0x7a4ba2b077cd9f4b13d5853411ecae12fadab89c.0xfc7476c0 with:
                            gas gas_remaining wei
                           args sub_12efc323[arg1][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _155 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 224
                    _167 = mem[_155 + 32]
                    require mem[_155 + 32] <= test266151307()
                    require _155 + mem[_155 + 32] + 31 < _155 + return_data.size
                    _174 = mem[_155 + mem[_155 + 32]]
                    if mem[_155 + mem[_155 + 32]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_155 + mem[_155 + 32]])) + 1 < 0 or _155 + ceil32(return_data.size) + ceil32(ceil32(mem[_155 + mem[_155 + 32]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _155 + ceil32(return_data.size) + ceil32(ceil32(mem[_155 + mem[_155 + 32]])) + 1
                    mem[_155 + ceil32(return_data.size)] = _174
                    require _167 + _174 + 32 <= return_data.size
                    s = 0
                    while s < _174:
                        mem[s + _155 + ceil32(return_data.size) + 32] = mem[s + _155 + _167 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_174) <= _174:
                        require mem[_155 + 64] == bool(mem[_155 + 64])
                        _284 = mem[_155 + 192]
                        require mem[_155 + 192] <= test266151307()
                        require _155 + mem[_155 + 192] + 31 < _155 + return_data.size
                        _307 = mem[_155 + mem[_155 + 192]]
                        if mem[_155 + mem[_155 + 192]] > test266151307():
                            revert with 0, 65
                        _310 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_155 + mem[_155 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_155 + mem[_155 + 192]])) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_155 + mem[_155 + 192]])) + 1
                        mem[_310] = _307
                        require _284 + _307 + 32 <= return_data.size
                        s = 0
                        while s < _307:
                            mem[s + _310 + 32] = mem[s + _155 + _284 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_307) > _307:
                            mem[_310 + _307 + 32] = 0
                    else:
                        mem[_155 + ceil32(return_data.size) + _174 + 32] = 0
                        require mem[_155 + 64] == bool(mem[_155 + 64])
                        _297 = mem[_155 + 192]
                        require mem[_155 + 192] <= test266151307()
                        require _155 + mem[_155 + 192] + 31 < _155 + return_data.size
                        _311 = mem[_155 + mem[_155 + 192]]
                        if mem[_155 + mem[_155 + 192]] > test266151307():
                            revert with 0, 65
                        _317 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_155 + mem[_155 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_155 + mem[_155 + 192]])) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_155 + mem[_155 + 192]])) + 1
                        mem[_317] = _311
                        require _297 + _311 + 32 <= return_data.size
                        s = 0
                        while s < _311:
                            mem[s + _317 + 32] = mem[s + _155 + _297 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_311) > _311:
                            mem[_317 + _311 + 32] = 0
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _155 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _137 = mem[64]
        mem[mem[64]] = 32
        _139 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _139:
            mem[t] = u + -_137 - 64
            _268 = mem[s]
            _273 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _273:
                mem[v + u + 32] = mem[v + _268 + 32]
                v = v + 32
                continue 
            if ceil32(_273) > _273:
                mem[u + _273 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_273) + u + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = sub_12efc323[arg1].field_0
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _267 = mem[96]
        idx = 0
        while idx < _267:
            mem[32] = 1
            if idx >= sub_12efc323[arg1].field_0:
                revert with 0, 50
            mem[0] = sha3(arg1, 1)
            if sub_12efc323[arg1][idx].field_0 <= 64:
                mem[mem[64]] = 0xfc7476c000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_12efc323[arg1][idx].field_0
                require ext_code.size(0x88db734e9f64ca71a24d8e75986d964fff7a1e10)
                staticcall 0x88db734e9f64ca71a24d8e75986d964fff7a1e10.0xfc7476c0 with:
                        gas gas_remaining wei
                       args sub_12efc323[arg1][idx].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _306 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 224
                _316 = mem[_306 + 32]
                require mem[_306 + 32] <= test266151307()
                require _306 + mem[_306 + 32] + 31 < _306 + return_data.size
                _321 = mem[_306 + mem[_306 + 32]]
                if mem[_306 + mem[_306 + 32]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_306 + mem[_306 + 32]])) + 1 < 0 or _306 + ceil32(return_data.size) + ceil32(ceil32(mem[_306 + mem[_306 + 32]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _306 + ceil32(return_data.size) + ceil32(ceil32(mem[_306 + mem[_306 + 32]])) + 1
                mem[_306 + ceil32(return_data.size)] = _321
                require _316 + _321 + 32 <= return_data.size
                s = 0
                while s < _321:
                    mem[s + _306 + ceil32(return_data.size) + 32] = mem[s + _306 + _316 + 32]
                    s = s + 32
                    continue 
                if ceil32(_321) <= _321:
                    require mem[_306 + 64] == bool(mem[_306 + 64])
                    _400 = mem[_306 + 192]
                    require mem[_306 + 192] <= test266151307()
                    require _306 + mem[_306 + 192] + 31 < _306 + return_data.size
                    _419 = mem[_306 + mem[_306 + 192]]
                    if mem[_306 + mem[_306 + 192]] > test266151307():
                        revert with 0, 65
                    _422 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_306 + mem[_306 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_306 + mem[_306 + 192]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_306 + mem[_306 + 192]])) + 1
                    mem[_422] = _419
                    require _400 + _419 + 32 <= return_data.size
                    s = 0
                    while s < _419:
                        mem[s + _422 + 32] = mem[s + _306 + _400 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_419) > _419:
                        mem[_422 + _419 + 32] = 0
                else:
                    mem[_306 + ceil32(return_data.size) + _321 + 32] = 0
                    require mem[_306 + 64] == bool(mem[_306 + 64])
                    _409 = mem[_306 + 192]
                    require mem[_306 + 192] <= test266151307()
                    require _306 + mem[_306 + 192] + 31 < _306 + return_data.size
                    _423 = mem[_306 + mem[_306 + 192]]
                    if mem[_306 + mem[_306 + 192]] > test266151307():
                        revert with 0, 65
                    _425 = mem[64]
                    if mem[64] + ceil32(ceil32(mem[_306 + mem[_306 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_306 + mem[_306 + 192]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(ceil32(mem[_306 + mem[_306 + 192]])) + 1
                    mem[_425] = _423
                    require _409 + _423 + 32 <= return_data.size
                    s = 0
                    while s < _423:
                        mem[s + _425 + 32] = mem[s + _306 + _409 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_423) > _423:
                        mem[_425 + _423 + 32] = 0
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _306 + ceil32(return_data.size)
            else:
                if sub_12efc323[arg1][idx].field_0 > 99:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = 96
                else:
                    mem[mem[64]] = 0xfc7476c000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_12efc323[arg1][idx].field_0
                    require ext_code.size(0x7a4ba2b077cd9f4b13d5853411ecae12fadab89c)
                    staticcall 0x7a4ba2b077cd9f4b13d5853411ecae12fadab89c.0xfc7476c0 with:
                            gas gas_remaining wei
                           args sub_12efc323[arg1][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _309 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 224
                    _320 = mem[_309 + 32]
                    require mem[_309 + 32] <= test266151307()
                    require _309 + mem[_309 + 32] + 31 < _309 + return_data.size
                    _322 = mem[_309 + mem[_309 + 32]]
                    if mem[_309 + mem[_309 + 32]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_309 + mem[_309 + 32]])) + 1 < 0 or _309 + ceil32(return_data.size) + ceil32(ceil32(mem[_309 + mem[_309 + 32]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _309 + ceil32(return_data.size) + ceil32(ceil32(mem[_309 + mem[_309 + 32]])) + 1
                    mem[_309 + ceil32(return_data.size)] = _322
                    require _320 + _322 + 32 <= return_data.size
                    s = 0
                    while s < _322:
                        mem[s + _309 + ceil32(return_data.size) + 32] = mem[s + _309 + _320 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_322) <= _322:
                        require mem[_309 + 64] == bool(mem[_309 + 64])
                        _395 = mem[_309 + 192]
                        require mem[_309 + 192] <= test266151307()
                        require _309 + mem[_309 + 192] + 31 < _309 + return_data.size
                        _418 = mem[_309 + mem[_309 + 192]]
                        if mem[_309 + mem[_309 + 192]] > test266151307():
                            revert with 0, 65
                        _420 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_309 + mem[_309 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_309 + mem[_309 + 192]])) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_309 + mem[_309 + 192]])) + 1
                        mem[_420] = _418
                        require _395 + _418 + 32 <= return_data.size
                        s = 0
                        while s < _418:
                            mem[s + _420 + 32] = mem[s + _309 + _395 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_418) > _418:
                            mem[_420 + _418 + 32] = 0
                    else:
                        mem[_309 + ceil32(return_data.size) + _322 + 32] = 0
                        require mem[_309 + 64] == bool(mem[_309 + 64])
                        _405 = mem[_309 + 192]
                        require mem[_309 + 192] <= test266151307()
                        require _309 + mem[_309 + 192] + 31 < _309 + return_data.size
                        _421 = mem[_309 + mem[_309 + 192]]
                        if mem[_309 + mem[_309 + 192]] > test266151307():
                            revert with 0, 65
                        _424 = mem[64]
                        if mem[64] + ceil32(ceil32(mem[_309 + mem[_309 + 192]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_309 + mem[_309 + 192]])) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(ceil32(mem[_309 + mem[_309 + 192]])) + 1
                        mem[_424] = _421
                        require _405 + _421 + 32 <= return_data.size
                        s = 0
                        while s < _421:
                            mem[s + _424 + 32] = mem[s + _309 + _405 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_421) > _421:
                            mem[_424 + _421 + 32] = 0
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _309 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _274 = mem[64]
        mem[mem[64]] = 32
        _276 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _276:
            mem[t] = u + -_274 - 64
            _384 = mem[s]
            _388 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _388:
                mem[v + u + 32] = mem[v + _384 + 32]
                v = v + 32
                continue 
            if ceil32(_388) > _388:
                mem[u + _388 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_388) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_14a010dd(?) payable {
    require calldata.size - 4 >= 32
    mem[100] = arg1
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.class(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96 len 224] = call.data[calldata.size len 224]
    if 1 == ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 320] = 91
        mem[ceil32(return_data.size) + 352] = 75
        mem[ceil32(return_data.size) + 384] = 5
        mem[ceil32(return_data.size) + 416] = 6
        mem[ceil32(return_data.size) + 448] = 63
        mem[ceil32(return_data.size) + 480] = 0
        mem[ceil32(return_data.size) + 512] = 0
        idx = 0
        while idx < 7:
            if mem[(32 * idx) + ceil32(return_data.size) + 351 len 1] >= 100:
                revert with 0, 50
            uint256(stor0[arg1][uint8(mem[(32 * idx) + ceil32(return_data.size) + 320]) / 32]) = 256^(mem[(32 * idx) + ceil32(return_data.size) + 320] % 32) or !(255 * 256^(mem[(32 * idx) + ceil32(return_data.size) + 320] % 32)) and uint256(stor0[arg1][uint8(mem[(32 * idx) + ceil32(return_data.size) + 320]) / 32])
            mem[32] = 1
            if idx >= 7:
                revert with 0, 50
            sub_12efc323[arg1].field_0++
            mem[0] = sha3(arg1, 1)
            sub_12efc323[arg1][sub_12efc323[arg1].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 351 len 1]
            sub_12efc323[arg1][sub_12efc323[arg1].field_0].field_8 = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if 2 == ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 320] = 91
            mem[ceil32(return_data.size) + 352] = 75
            mem[ceil32(return_data.size) + 384] = 5
            mem[ceil32(return_data.size) + 416] = 63
            mem[ceil32(return_data.size) + 448] = 0
            mem[ceil32(return_data.size) + 480] = 0
            mem[ceil32(return_data.size) + 512] = 0
            idx = 0
            while idx < 7:
                if mem[(32 * idx) + ceil32(return_data.size) + 351 len 1] >= 100:
                    revert with 0, 50
                uint256(stor0[arg1][uint8(mem[(32 * idx) + ceil32(return_data.size) + 320]) / 32]) = 256^(mem[(32 * idx) + ceil32(return_data.size) + 320] % 32) or !(255 * 256^(mem[(32 * idx) + ceil32(return_data.size) + 320] % 32)) and uint256(stor0[arg1][uint8(mem[(32 * idx) + ceil32(return_data.size) + 320]) / 32])
                mem[32] = 1
                if idx >= 7:
                    revert with 0, 50
                sub_12efc323[arg1].field_0++
                mem[0] = sha3(arg1, 1)
                sub_12efc323[arg1][sub_12efc323[arg1].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 351 len 1]
                sub_12efc323[arg1][sub_12efc323[arg1].field_0].field_8 = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if 3 == ext_call.return_data[0]:
                mem[ceil32(return_data.size) + 320] = 91
                mem[ceil32(return_data.size) + 352] = 5
                mem[ceil32(return_data.size) + 384] = 6
                mem[ceil32(return_data.size) + 416] = 7
                mem[ceil32(return_data.size) + 448] = 63
                mem[ceil32(return_data.size) + 480] = 0
                mem[ceil32(return_data.size) + 512] = 0
                idx = 0
                while idx < 7:
                    if mem[(32 * idx) + ceil32(return_data.size) + 351 len 1] >= 100:
                        revert with 0, 50
                    uint256(stor0[arg1][uint8(mem[(32 * idx) + ceil32(return_data.size) + 320]) / 32]) = 256^(mem[(32 * idx) + ceil32(return_data.size) + 320] % 32) or !(255 * 256^(mem[(32 * idx) + ceil32(return_data.size) + 320] % 32)) and uint256(stor0[arg1][uint8(mem[(32 * idx) + ceil32(return_data.size) + 320]) / 32])
                    mem[32] = 1
                    if idx >= 7:
                        revert with 0, 50
                    sub_12efc323[arg1].field_0++
                    mem[0] = sha3(arg1, 1)
                    sub_12efc323[arg1][sub_12efc323[arg1].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 351 len 1]
                    sub_12efc323[arg1][sub_12efc323[arg1].field_0].field_8 = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if 4 == ext_call.return_data[0]:
                    mem[ceil32(return_data.size) + 320] = 91
                    mem[ceil32(return_data.size) + 352] = 5
                    mem[ceil32(return_data.size) + 384] = 6
                    mem[ceil32(return_data.size) + 416] = 63
                    mem[ceil32(return_data.size) + 448] = 0
                    mem[ceil32(return_data.size) + 480] = 0
                    mem[ceil32(return_data.size) + 512] = 0
                    idx = 0
                    while idx < 7:
                        if mem[(32 * idx) + ceil32(return_data.size) + 351 len 1] >= 100:
                            revert with 0, 50
                        uint256(stor0[arg1][uint8(mem[(32 * idx) + ceil32(return_data.size) + 320]) / 32]) = 256^(mem[(32 * idx) + ceil32(return_data.size) + 320] % 32) or !(255 * 256^(mem[(32 * idx) + ceil32(return_data.size) + 320] % 32)) and uint256(stor0[arg1][uint8(mem[(32 * idx) + ceil32(return_data.size) + 320]) / 32])
                        mem[32] = 1
                        if idx >= 7:
                            revert with 0, 50
                        sub_12efc323[arg1].field_0++
                        mem[0] = sha3(arg1, 1)
                        sub_12efc323[arg1][sub_12efc323[arg1].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 351 len 1]
                        sub_12efc323[arg1][sub_12efc323[arg1].field_0].field_8 = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if 5 == ext_call.return_data[0]:
                        mem[ceil32(return_data.size) + 320] = 91
                        mem[ceil32(return_data.size) + 352] = 75
                        mem[ceil32(return_data.size) + 384] = 5
                        mem[ceil32(return_data.size) + 416] = 6
                        mem[ceil32(return_data.size) + 448] = 7
                        mem[ceil32(return_data.size) + 480] = 36
                        mem[ceil32(return_data.size) + 512] = 96
                        idx = 0
                        while idx < 7:
                            if mem[(32 * idx) + ceil32(return_data.size) + 351 len 1] >= 100:
                                revert with 0, 50
                            uint256(stor0[arg1][uint8(mem[(32 * idx) + ceil32(return_data.size) + 320]) / 32]) = 256^(mem[(32 * idx) + ceil32(return_data.size) + 320] % 32) or !(255 * 256^(mem[(32 * idx) + ceil32(return_data.size) + 320] % 32)) and uint256(stor0[arg1][uint8(mem[(32 * idx) + ceil32(return_data.size) + 320]) / 32])
                            mem[32] = 1
                            if idx >= 7:
                                revert with 0, 50
                            sub_12efc323[arg1].field_0++
                            mem[0] = sha3(arg1, 1)
                            sub_12efc323[arg1][sub_12efc323[arg1].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 351 len 1]
                            sub_12efc323[arg1][sub_12efc323[arg1].field_0].field_8 = 0
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if 6 == ext_call.return_data[0]:
                            mem[ceil32(return_data.size) + 320] = 75
                            mem[ceil32(return_data.size) + 352] = 24
                            mem[ceil32(return_data.size) + 384] = 0
                            mem[ceil32(return_data.size) + 416] = 0
                            mem[ceil32(return_data.size) + 448] = 0
                            mem[ceil32(return_data.size) + 480] = 0
                            mem[ceil32(return_data.size) + 512] = 0
                            idx = 0
                            while idx < 7:
                                if mem[(32 * idx) + ceil32(return_data.size) + 351 len 1] >= 100:
                                    revert with 0, 50
                                uint256(stor0[arg1][uint8(mem[(32 * idx) + ceil32(return_data.size) + 320]) / 32]) = 256^(mem[(32 * idx) + ceil32(return_data.size) + 320] % 32) or !(255 * 256^(mem[(32 * idx) + ceil32(return_data.size) + 320] % 32)) and uint256(stor0[arg1][uint8(mem[(32 * idx) + ceil32(return_data.size) + 320]) / 32])
                                mem[32] = 1
                                if idx >= 7:
                                    revert with 0, 50
                                sub_12efc323[arg1].field_0++
                                mem[0] = sha3(arg1, 1)
                                sub_12efc323[arg1][sub_12efc323[arg1].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 351 len 1]
                                sub_12efc323[arg1][sub_12efc323[arg1].field_0].field_8 = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if 7 == ext_call.return_data[0]:
                                mem[ceil32(return_data.size) + 320] = 91
                                mem[ceil32(return_data.size) + 352] = 75
                                mem[ceil32(return_data.size) + 384] = 5
                                mem[ceil32(return_data.size) + 416] = 6
                                mem[ceil32(return_data.size) + 448] = 7
                                mem[ceil32(return_data.size) + 480] = 36
                                mem[ceil32(return_data.size) + 512] = 0
                                idx = 0
                                while idx < 7:
                                    if mem[(32 * idx) + ceil32(return_data.size) + 351 len 1] >= 100:
                                        revert with 0, 50
                                    uint256(stor0[arg1][uint8(mem[(32 * idx) + ceil32(return_data.size) + 320]) / 32]) = 256^(mem[(32 * idx) + ceil32(return_data.size) + 320] % 32) or !(255 * 256^(mem[(32 * idx) + ceil32(return_data.size) + 320] % 32)) and uint256(stor0[arg1][uint8(mem[(32 * idx) + ceil32(return_data.size) + 320]) / 32])
                                    mem[32] = 1
                                    if idx >= 7:
                                        revert with 0, 50
                                    sub_12efc323[arg1].field_0++
                                    mem[0] = sha3(arg1, 1)
                                    sub_12efc323[arg1][sub_12efc323[arg1].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 351 len 1]
                                    sub_12efc323[arg1][sub_12efc323[arg1].field_0].field_8 = 0
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if 8 == ext_call.return_data[0]:
                                    mem[ceil32(return_data.size) + 320] = 91
                                    mem[ceil32(return_data.size) + 352] = 75
                                    mem[ceil32(return_data.size) + 384] = 5
                                    mem[ceil32(return_data.size) + 416] = 63
                                    mem[ceil32(return_data.size) + 448] = 0
                                    mem[ceil32(return_data.size) + 480] = 0
                                    mem[ceil32(return_data.size) + 512] = 0
                                    idx = 0
                                    while idx < 7:
                                        if mem[(32 * idx) + ceil32(return_data.size) + 351 len 1] >= 100:
                                            revert with 0, 50
                                        uint256(stor0[arg1][uint8(mem[(32 * idx) + ceil32(return_data.size) + 320]) / 32]) = 256^(mem[(32 * idx) + ceil32(return_data.size) + 320] % 32) or !(255 * 256^(mem[(32 * idx) + ceil32(return_data.size) + 320] % 32)) and uint256(stor0[arg1][uint8(mem[(32 * idx) + ceil32(return_data.size) + 320]) / 32])
                                        mem[32] = 1
                                        if idx >= 7:
                                            revert with 0, 50
                                        sub_12efc323[arg1].field_0++
                                        mem[0] = sha3(arg1, 1)
                                        sub_12efc323[arg1][sub_12efc323[arg1].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 351 len 1]
                                        sub_12efc323[arg1][sub_12efc323[arg1].field_0].field_8 = 0
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 9 == ext_call.return_data[0]:
                                        mem[ceil32(return_data.size) + 320] = 91
                                        mem[ceil32(return_data.size) + 352] = 75
                                        mem[ceil32(return_data.size) + 384] = 5
                                        mem[ceil32(return_data.size) + 416] = 0
                                        mem[ceil32(return_data.size) + 448] = 0
                                        mem[ceil32(return_data.size) + 480] = 0
                                        mem[ceil32(return_data.size) + 512] = 0
                                        idx = 0
                                        while idx < 7:
                                            if mem[(32 * idx) + ceil32(return_data.size) + 351 len 1] >= 100:
                                                revert with 0, 50
                                            uint256(stor0[arg1][uint8(mem[(32 * idx) + ceil32(return_data.size) + 320]) / 32]) = 256^(mem[(32 * idx) + ceil32(return_data.size) + 320] % 32) or !(255 * 256^(mem[(32 * idx) + ceil32(return_data.size) + 320] % 32)) and uint256(stor0[arg1][uint8(mem[(32 * idx) + ceil32(return_data.size) + 320]) / 32])
                                            mem[32] = 1
                                            if idx >= 7:
                                                revert with 0, 50
                                            sub_12efc323[arg1].field_0++
                                            mem[0] = sha3(arg1, 1)
                                            sub_12efc323[arg1][sub_12efc323[arg1].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 351 len 1]
                                            sub_12efc323[arg1][sub_12efc323[arg1].field_0].field_8 = 0
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 10 == ext_call.return_data[0]:
                                            mem[ceil32(return_data.size) + 320] = 91
                                            mem[ceil32(return_data.size) + 352] = 0
                                            mem[ceil32(return_data.size) + 384] = 0
                                            mem[ceil32(return_data.size) + 416] = 0
                                            mem[ceil32(return_data.size) + 448] = 0
                                            mem[ceil32(return_data.size) + 480] = 0
                                            mem[ceil32(return_data.size) + 512] = 0
                                            idx = 0
                                            while idx < 7:
                                                if mem[(32 * idx) + ceil32(return_data.size) + 351 len 1] >= 100:
                                                    revert with 0, 50
                                                uint256(stor0[arg1][uint8(mem[(32 * idx) + ceil32(return_data.size) + 320]) / 32]) = 256^(mem[(32 * idx) + ceil32(return_data.size) + 320] % 32) or !(255 * 256^(mem[(32 * idx) + ceil32(return_data.size) + 320] % 32)) and uint256(stor0[arg1][uint8(mem[(32 * idx) + ceil32(return_data.size) + 320]) / 32])
                                                mem[32] = 1
                                                if idx >= 7:
                                                    revert with 0, 50
                                                sub_12efc323[arg1].field_0++
                                                mem[0] = sha3(arg1, 1)
                                                sub_12efc323[arg1][sub_12efc323[arg1].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 351 len 1]
                                                sub_12efc323[arg1][sub_12efc323[arg1].field_0].field_8 = 0
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if ext_call.return_data[0] != 11:
                                                idx = 0
                                                while idx < 7:
                                                    if mem[(32 * idx) + ceil32(return_data.size) + 127 len 1] >= 100:
                                                        revert with 0, 50
                                                    uint256(stor0[arg1][uint8(mem[(32 * idx) + ceil32(return_data.size) + 96]) / 32]) = 256^(mem[(32 * idx) + ceil32(return_data.size) + 96] % 32) or !(255 * 256^(mem[(32 * idx) + ceil32(return_data.size) + 96] % 32)) and uint256(stor0[arg1][uint8(mem[(32 * idx) + ceil32(return_data.size) + 96]) / 32])
                                                    mem[32] = 1
                                                    if idx >= 7:
                                                        revert with 0, 50
                                                    sub_12efc323[arg1].field_0++
                                                    mem[0] = sha3(arg1, 1)
                                                    sub_12efc323[arg1][sub_12efc323[arg1].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 127 len 1]
                                                    sub_12efc323[arg1][sub_12efc323[arg1].field_0].field_8 = 0
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                mem[ceil32(return_data.size) + 320] = 91
                                                mem[ceil32(return_data.size) + 352] = 88
                                                mem[ceil32(return_data.size) + 384] = 0
                                                mem[ceil32(return_data.size) + 416] = 0
                                                mem[ceil32(return_data.size) + 448] = 0
                                                mem[ceil32(return_data.size) + 480] = 0
                                                mem[ceil32(return_data.size) + 512] = 0
                                                idx = 0
                                                while idx < 7:
                                                    if mem[(32 * idx) + ceil32(return_data.size) + 351 len 1] >= 100:
                                                        revert with 0, 50
                                                    uint256(stor0[arg1][uint8(mem[(32 * idx) + ceil32(return_data.size) + 320]) / 32]) = 256^(mem[(32 * idx) + ceil32(return_data.size) + 320] % 32) or !(255 * 256^(mem[(32 * idx) + ceil32(return_data.size) + 320] % 32)) and uint256(stor0[arg1][uint8(mem[(32 * idx) + ceil32(return_data.size) + 320]) / 32])
                                                    mem[32] = 1
                                                    if idx >= 7:
                                                        revert with 0, 50
                                                    sub_12efc323[arg1].field_0++
                                                    mem[0] = sha3(arg1, 1)
                                                    sub_12efc323[arg1][sub_12efc323[arg1].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 351 len 1]
                                                    sub_12efc323[arg1][sub_12efc323[arg1].field_0].field_8 = 0
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
    stor2[arg1] = 1
}



}
