contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address sub_4b30d6c2Address;
address sub_b46849f1Address;
address sub_a07a72e6Address;
array of struct sub_38326ac8;
array of struct sub_4ae07296;
array of struct sub_0aaaeba3;
array of struct sub_e19da054;
array of struct sub_8d373d93;
array of struct sub_f3c86151;
array of struct sub_88fe41ba;
array of struct sub_cfab0112;
array of struct sub_413056f7;
array of struct sub_0dbe5414;
array of struct sub_e89a07f2;
array of struct sub_c78b0afc;
array of struct sub_75d0e74b;
array of struct sub_cc640387;
array of struct sub_3d4de04e;
array of struct sub_12ffcf90;
array of struct sub_868c08a2;
array of struct sub_253d38a3;
array of struct sub_df041dc0;
array of struct sub_f1d48df4;
uint256 stor24;

function sub_0aaaeba3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_0aaaeba3.length
    return sub_0aaaeba3[arg1].field_0
}

function sub_0dbe5414(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_0dbe5414.length
    return sub_0dbe5414[arg1].field_0
}

function sub_12ffcf90(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_12ffcf90.length
    return sub_12ffcf90[arg1].field_0
}

function sub_253d38a3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_253d38a3.length
    return sub_253d38a3[arg1].field_0
}

function sub_38326ac8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_38326ac8.length
    return sub_38326ac8[arg1].field_0
}

function sub_3d4de04e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_3d4de04e.length
    return sub_3d4de04e[arg1].field_0
}

function sub_413056f7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_413056f7.length
    return sub_413056f7[arg1].field_0
}

function sub_4ae07296(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_4ae07296.length
    return sub_4ae07296[arg1].field_0
}

function sub_4b30d6c2(?) payable {
    return sub_4b30d6c2Address
}

function owner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[arg1])
}

function sub_75d0e74b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_75d0e74b.length
    return sub_75d0e74b[arg1].field_0
}

function sub_868c08a2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_868c08a2.length
    return sub_868c08a2[arg1].field_0
}

function sub_88fe41ba(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_88fe41ba.length
    return sub_88fe41ba[arg1].field_0
}

function sub_8d373d93(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_8d373d93.length
    return sub_8d373d93[arg1].field_0
}

function sub_a07a72e6(?) payable {
    return sub_a07a72e6Address
}

function sub_b46849f1(?) payable {
    return sub_b46849f1Address
}

function sub_c78b0afc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_c78b0afc.length
    return sub_c78b0afc[arg1].field_0
}

function sub_cc640387(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_cc640387.length
    return sub_cc640387[arg1].field_0
}

function sub_cfab0112(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_cfab0112.length
    return sub_cfab0112[arg1].field_0
}

function sub_df041dc0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_df041dc0.length
    return sub_df041dc0[arg1].field_0
}

function sub_e19da054(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_e19da054.length
    return sub_e19da054[arg1].field_0
}

function sub_e89a07f2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_e89a07f2.length
    return sub_e89a07f2[arg1].field_0
}

function sub_f1d48df4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_f1d48df4.length
    return sub_f1d48df4[arg1].field_0
}

function sub_f3c86151(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_f3c86151.length
    return sub_f3c86151[arg1].field_0
}

function _fallback() payable {
    revert
}

function addOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0[address(msg.sender)]:
        revert with 0, 'Unauthorized'
    stor0[address(arg1)] = 1
}

function getSelector(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    return Mask(32, 224, sha3(arg1[all]))
}

function sub_8ae94335(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0[address(msg.sender)]:
        revert with 0, 'Unauthorized'
    stor24 = arg1
    idx = 1
    while idx < 12:
        mem[96] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
        mem[100] = idx
        require ext_code.size(sub_4b30d6c2Address)
        call sub_4b30d6c2Address.summon(uint256 arg1) with:
             gas gas_remaining wei
            args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_e17c720f(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] <= test266151307()
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _23 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1
        mem[_23] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_23 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_23 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _23
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[address(msg.sender)]:
        revert with 0, 'Unauthorized'
    _30 = mem[96]
    idx = 0
    while idx < _30:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _32 = mem[(32 * idx) + 128]
        _33 = mem[64]
        _34 = mem[mem[(32 * idx) + 128]]
        s = 0
        while s < _34:
            mem[_33 + s] = mem[_32 + s + 32]
            _30 = mem[96]
            s = s + 32
            continue 
        if ceil32(_34) <= _34:
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _33 + _34 + -mem[64] - 4]
            if return_data.size:
                _42 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_42] = return_data.size
                mem[_42 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_33 + _34] = 0
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _33 + _34 + -mem[64] - 4]
            if return_data.size:
                _44 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_44] = return_data.size
                mem[_44 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        _30 = mem[96]
        idx = idx + 1
        continue 
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    if msg.sender == sub_4b30d6c2Address:
        if stor24 == 1:
            sub_38326ac8.length++
            sub_38326ac8[sub_38326ac8.length].field_0 = arg3
        else:
            if stor24 == 2:
                sub_4ae07296.length++
                sub_4ae07296[sub_4ae07296.length].field_0 = arg3
            else:
                if stor24 == 3:
                    sub_0aaaeba3.length++
                    sub_0aaaeba3[sub_0aaaeba3.length].field_0 = arg3
                else:
                    if stor24 == 4:
                        sub_e19da054.length++
                        sub_e19da054[sub_e19da054.length].field_0 = arg3
                    else:
                        if stor24 == 5:
                            sub_8d373d93.length++
                            sub_8d373d93[sub_8d373d93.length].field_0 = arg3
                        else:
                            if stor24 == 6:
                                sub_f3c86151.length++
                                sub_f3c86151[sub_f3c86151.length].field_0 = arg3
                            else:
                                if stor24 == 7:
                                    sub_88fe41ba.length++
                                    sub_88fe41ba[sub_88fe41ba.length].field_0 = arg3
                                else:
                                    if stor24 == 8:
                                        sub_cfab0112.length++
                                        sub_cfab0112[sub_cfab0112.length].field_0 = arg3
                                    else:
                                        if stor24 == 9:
                                            sub_413056f7.length++
                                            sub_413056f7[sub_413056f7.length].field_0 = arg3
                                        else:
                                            if stor24 == 10:
                                                sub_0dbe5414.length++
                                                sub_0dbe5414[sub_0dbe5414.length].field_0 = arg3
                                            else:
                                                if stor24 == 11:
                                                    sub_e89a07f2.length++
                                                    sub_e89a07f2[sub_e89a07f2.length].field_0 = arg3
                                                else:
                                                    if stor24 == 12:
                                                        sub_c78b0afc.length++
                                                        sub_c78b0afc[sub_c78b0afc.length].field_0 = arg3
                                                    else:
                                                        if stor24 == 13:
                                                            sub_75d0e74b.length++
                                                            sub_75d0e74b[sub_75d0e74b.length].field_0 = arg3
                                                        else:
                                                            if stor24 == 14:
                                                                sub_cc640387.length++
                                                                sub_cc640387[sub_cc640387.length].field_0 = arg3
                                                            else:
                                                                if stor24 == 15:
                                                                    sub_3d4de04e.length++
                                                                    sub_3d4de04e[sub_3d4de04e.length].field_0 = arg3
                                                                else:
                                                                    if stor24 == 16:
                                                                        sub_12ffcf90.length++
                                                                        sub_12ffcf90[sub_12ffcf90.length].field_0 = arg3
                                                                    else:
                                                                        if stor24 == 17:
                                                                            sub_868c08a2.length++
                                                                            sub_868c08a2[sub_868c08a2.length].field_0 = arg3
                                                                        else:
                                                                            if stor24 == 18:
                                                                                sub_253d38a3.length++
                                                                                sub_253d38a3[sub_253d38a3.length].field_0 = arg3
                                                                            else:
                                                                                if stor24 == 19:
                                                                                    sub_df041dc0.length++
                                                                                    sub_df041dc0[sub_df041dc0.length].field_0 = arg3
                                                                                else:
                                                                                    if stor24 != 20:
                                                                                        revert with 0, 'onERC721Received error'
                                                                                    sub_f1d48df4.length++
                                                                                    sub_f1d48df4[sub_f1d48df4.length].field_0 = arg3
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_418b134c(?) payable {
    require calldata.size - 4 >= 224
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99 > test266151307() or floor32(('cd', 68).length) + 99 < 98:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 100 > test266151307() or floor32(('cd', 100).length) + 100 < 99:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131
    while idx < ('cd', 100).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 101 > test266151307() or floor32(('cd', 132).length) + 101 < 100:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 100] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 132
    while idx < ('cd', 132).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    if ('cd', 164).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 102 > test266151307() or floor32(('cd', 164).length) + 102 < 101:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 101] = ('cd', 164).length
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    idx = 0
    s = cd[164] + 36
    t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 133
    while idx < ('cd', 164).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[196] <= test266151307()
    require cd[196] + 35 < calldata.size
    if ('cd', 196).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + floor32(('cd', 196).length) + 103 > test266151307() or floor32(('cd', 196).length) + 103 < 102:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 102] = ('cd', 196).length
    require cd[196] + (32 * ('cd', 196).length) + 36 <= calldata.size
    idx = 0
    s = cd[196] + 36
    t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 134
    while idx < ('cd', 196).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not stor0[address(msg.sender)]:
        revert with 0, 'Unauthorized'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _191 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        _193 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
            revert with 'NH{q', 50
        _195 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
        if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
            revert with 'NH{q', 50
        _197 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]
        if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 100]:
            revert with 'NH{q', 50
        _199 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 132]
        if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 101]:
            revert with 'NH{q', 50
        _201 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 133]
        if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 102]:
            revert with 'NH{q', 50
        _203 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 134]
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + floor32(('cd', 196).length) + 103] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + floor32(('cd', 196).length) + 107] = _191
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + floor32(('cd', 196).length) + 139] = uint32(_193)
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + floor32(('cd', 196).length) + 171] = uint32(_195)
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + floor32(('cd', 196).length) + 203] = uint32(_197)
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + floor32(('cd', 196).length) + 235] = uint32(_199)
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + floor32(('cd', 196).length) + 267] = uint32(_201)
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + floor32(('cd', 196).length) + 299] = uint32(_203)
        require ext_code.size(sub_a07a72e6Address)
        call sub_a07a72e6Address.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
             gas gas_remaining wei
            args _191, _193 << 224, _195 << 224, _197 << 224, _199 << 224, _201 << 224, uint32(_203)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function withdraw(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor0[address(msg.sender)]:
        revert with 0, 'Unauthorized'
    if arg2 == 1:
        if not sub_38326ac8.length:
            idx = 0
            while idx < 11:
                if idx >= sub_38326ac8.length:
                    revert with 'NH{q', 50
                _184 = mem[(32 * idx) + 128]
                mem[(32 * sub_38326ac8.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[(32 * sub_38326ac8.length) + 132] = this.address
                mem[(32 * sub_38326ac8.length) + 164] = arg3
                mem[(32 * sub_38326ac8.length) + 196] = _184
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), address(arg3), _184
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            mem[128] = uint256(sub_38326ac8.field_0)
            idx = 128
            s = 0
            while (32 * sub_38326ac8.length) + 96 > idx:
                mem[idx + 32] = sub_38326ac8[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            idx = 0
            while idx < 11:
                if idx >= sub_38326ac8.length:
                    revert with 'NH{q', 50
                _344 = mem[(32 * idx) + 128]
                mem[(32 * sub_38326ac8.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[(32 * sub_38326ac8.length) + 132] = this.address
                mem[(32 * sub_38326ac8.length) + 164] = arg3
                mem[(32 * sub_38326ac8.length) + 196] = _344
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), address(arg3), _344
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    else:
        if arg2 == 2:
            if not sub_4ae07296.length:
                idx = 0
                while idx < 11:
                    if idx >= sub_4ae07296.length:
                        revert with 'NH{q', 50
                    _182 = mem[(32 * idx) + 128]
                    mem[(32 * sub_4ae07296.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[(32 * sub_4ae07296.length) + 132] = this.address
                    mem[(32 * sub_4ae07296.length) + 164] = arg3
                    mem[(32 * sub_4ae07296.length) + 196] = _182
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), address(arg3), _182
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                mem[128] = uint256(sub_4ae07296.field_0)
                idx = 128
                s = 0
                while (32 * sub_4ae07296.length) + 96 > idx:
                    mem[idx + 32] = sub_4ae07296[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                idx = 0
                while idx < 11:
                    if idx >= sub_4ae07296.length:
                        revert with 'NH{q', 50
                    _342 = mem[(32 * idx) + 128]
                    mem[(32 * sub_4ae07296.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[(32 * sub_4ae07296.length) + 132] = this.address
                    mem[(32 * sub_4ae07296.length) + 164] = arg3
                    mem[(32 * sub_4ae07296.length) + 196] = _342
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), address(arg3), _342
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
        else:
            if arg2 == 3:
                if not sub_0aaaeba3.length:
                    idx = 0
                    while idx < 11:
                        if idx >= sub_0aaaeba3.length:
                            revert with 'NH{q', 50
                        _180 = mem[(32 * idx) + 128]
                        mem[(32 * sub_0aaaeba3.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_0aaaeba3.length) + 132] = this.address
                        mem[(32 * sub_0aaaeba3.length) + 164] = arg3
                        mem[(32 * sub_0aaaeba3.length) + 196] = _180
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), address(arg3), _180
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    mem[128] = uint256(sub_0aaaeba3.field_0)
                    idx = 128
                    s = 0
                    while (32 * sub_0aaaeba3.length) + 96 > idx:
                        mem[idx + 32] = sub_0aaaeba3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    idx = 0
                    while idx < 11:
                        if idx >= sub_0aaaeba3.length:
                            revert with 'NH{q', 50
                        _340 = mem[(32 * idx) + 128]
                        mem[(32 * sub_0aaaeba3.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                        mem[(32 * sub_0aaaeba3.length) + 132] = this.address
                        mem[(32 * sub_0aaaeba3.length) + 164] = arg3
                        mem[(32 * sub_0aaaeba3.length) + 196] = _340
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), address(arg3), _340
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
            else:
                if arg2 == 4:
                    if not sub_e19da054.length:
                        idx = 0
                        while idx < 11:
                            if idx >= sub_e19da054.length:
                                revert with 'NH{q', 50
                            _178 = mem[(32 * idx) + 128]
                            mem[(32 * sub_e19da054.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_e19da054.length) + 132] = this.address
                            mem[(32 * sub_e19da054.length) + 164] = arg3
                            mem[(32 * sub_e19da054.length) + 196] = _178
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(arg3), _178
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[128] = uint256(sub_e19da054.field_0)
                        idx = 128
                        s = 0
                        while (32 * sub_e19da054.length) + 96 > idx:
                            mem[idx + 32] = sub_e19da054[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        idx = 0
                        while idx < 11:
                            if idx >= sub_e19da054.length:
                                revert with 'NH{q', 50
                            _338 = mem[(32 * idx) + 128]
                            mem[(32 * sub_e19da054.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_e19da054.length) + 132] = this.address
                            mem[(32 * sub_e19da054.length) + 164] = arg3
                            mem[(32 * sub_e19da054.length) + 196] = _338
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), address(arg3), _338
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                else:
                    if arg2 == 5:
                        if not sub_8d373d93.length:
                            idx = 0
                            while idx < 11:
                                if idx >= sub_8d373d93.length:
                                    revert with 'NH{q', 50
                                _176 = mem[(32 * idx) + 128]
                                mem[(32 * sub_8d373d93.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[(32 * sub_8d373d93.length) + 132] = this.address
                                mem[(32 * sub_8d373d93.length) + 164] = arg3
                                mem[(32 * sub_8d373d93.length) + 196] = _176
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(arg3), _176
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            mem[128] = uint256(sub_8d373d93.field_0)
                            idx = 128
                            s = 0
                            while (32 * sub_8d373d93.length) + 96 > idx:
                                mem[idx + 32] = sub_8d373d93[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            idx = 0
                            while idx < 11:
                                if idx >= sub_8d373d93.length:
                                    revert with 'NH{q', 50
                                _336 = mem[(32 * idx) + 128]
                                mem[(32 * sub_8d373d93.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[(32 * sub_8d373d93.length) + 132] = this.address
                                mem[(32 * sub_8d373d93.length) + 164] = arg3
                                mem[(32 * sub_8d373d93.length) + 196] = _336
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), address(arg3), _336
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                    else:
                        if arg2 == 6:
                            if not sub_f3c86151.length:
                                idx = 0
                                while idx < 11:
                                    if idx >= sub_f3c86151.length:
                                        revert with 'NH{q', 50
                                    _174 = mem[(32 * idx) + 128]
                                    mem[(32 * sub_f3c86151.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * sub_f3c86151.length) + 132] = this.address
                                    mem[(32 * sub_f3c86151.length) + 164] = arg3
                                    mem[(32 * sub_f3c86151.length) + 196] = _174
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), address(arg3), _174
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[128] = uint256(sub_f3c86151.field_0)
                                idx = 128
                                s = 0
                                while (32 * sub_f3c86151.length) + 96 > idx:
                                    mem[idx + 32] = sub_f3c86151[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                idx = 0
                                while idx < 11:
                                    if idx >= sub_f3c86151.length:
                                        revert with 'NH{q', 50
                                    _334 = mem[(32 * idx) + 128]
                                    mem[(32 * sub_f3c86151.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * sub_f3c86151.length) + 132] = this.address
                                    mem[(32 * sub_f3c86151.length) + 164] = arg3
                                    mem[(32 * sub_f3c86151.length) + 196] = _334
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), address(arg3), _334
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    continue 
                        else:
                            if arg2 == 7:
                                if not sub_88fe41ba.length:
                                    idx = 0
                                    while idx < 11:
                                        if idx >= sub_88fe41ba.length:
                                            revert with 'NH{q', 50
                                        _172 = mem[(32 * idx) + 128]
                                        mem[(32 * sub_88fe41ba.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * sub_88fe41ba.length) + 132] = this.address
                                        mem[(32 * sub_88fe41ba.length) + 164] = arg3
                                        mem[(32 * sub_88fe41ba.length) + 196] = _172
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), address(arg3), _172
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[128] = uint256(sub_88fe41ba.field_0)
                                    idx = 128
                                    s = 0
                                    while (32 * sub_88fe41ba.length) + 96 > idx:
                                        mem[idx + 32] = sub_88fe41ba[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    idx = 0
                                    while idx < 11:
                                        if idx >= sub_88fe41ba.length:
                                            revert with 'NH{q', 50
                                        _332 = mem[(32 * idx) + 128]
                                        mem[(32 * sub_88fe41ba.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                        mem[(32 * sub_88fe41ba.length) + 132] = this.address
                                        mem[(32 * sub_88fe41ba.length) + 164] = arg3
                                        mem[(32 * sub_88fe41ba.length) + 196] = _332
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), address(arg3), _332
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        continue 
                            else:
                                if arg2 == 8:
                                    if not sub_cfab0112.length:
                                        idx = 0
                                        while idx < 11:
                                            if idx >= sub_cfab0112.length:
                                                revert with 'NH{q', 50
                                            _170 = mem[(32 * idx) + 128]
                                            mem[(32 * sub_cfab0112.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * sub_cfab0112.length) + 132] = this.address
                                            mem[(32 * sub_cfab0112.length) + 164] = arg3
                                            mem[(32 * sub_cfab0112.length) + 196] = _170
                                            require ext_code.size(arg1)
                                            call arg1.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(arg3), _170
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            continue 
                                    else:
                                        mem[128] = uint256(sub_cfab0112.field_0)
                                        idx = 128
                                        s = 0
                                        while (32 * sub_cfab0112.length) + 96 > idx:
                                            mem[idx + 32] = sub_cfab0112[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        idx = 0
                                        while idx < 11:
                                            if idx >= sub_cfab0112.length:
                                                revert with 'NH{q', 50
                                            _330 = mem[(32 * idx) + 128]
                                            mem[(32 * sub_cfab0112.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                            mem[(32 * sub_cfab0112.length) + 132] = this.address
                                            mem[(32 * sub_cfab0112.length) + 164] = arg3
                                            mem[(32 * sub_cfab0112.length) + 196] = _330
                                            require ext_code.size(arg1)
                                            call arg1.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args address(this.address), address(arg3), _330
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            continue 
                                else:
                                    if arg2 == 9:
                                        if not sub_413056f7.length:
                                            idx = 0
                                            while idx < 11:
                                                if idx >= sub_413056f7.length:
                                                    revert with 'NH{q', 50
                                                _168 = mem[(32 * idx) + 128]
                                                mem[(32 * sub_413056f7.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                mem[(32 * sub_413056f7.length) + 132] = this.address
                                                mem[(32 * sub_413056f7.length) + 164] = arg3
                                                mem[(32 * sub_413056f7.length) + 196] = _168
                                                require ext_code.size(arg1)
                                                call arg1.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args address(this.address), address(arg3), _168
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                idx = idx + 1
                                                continue 
                                        else:
                                            mem[128] = uint256(sub_413056f7.field_0)
                                            idx = 128
                                            s = 0
                                            while (32 * sub_413056f7.length) + 96 > idx:
                                                mem[idx + 32] = sub_413056f7[s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            idx = 0
                                            while idx < 11:
                                                if idx >= sub_413056f7.length:
                                                    revert with 'NH{q', 50
                                                _328 = mem[(32 * idx) + 128]
                                                mem[(32 * sub_413056f7.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                mem[(32 * sub_413056f7.length) + 132] = this.address
                                                mem[(32 * sub_413056f7.length) + 164] = arg3
                                                mem[(32 * sub_413056f7.length) + 196] = _328
                                                require ext_code.size(arg1)
                                                call arg1.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args address(this.address), address(arg3), _328
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if arg2 == 10:
                                            if not sub_0dbe5414.length:
                                                idx = 0
                                                while idx < 11:
                                                    if idx >= sub_0dbe5414.length:
                                                        revert with 'NH{q', 50
                                                    _166 = mem[(32 * idx) + 128]
                                                    mem[(32 * sub_0dbe5414.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                    mem[(32 * sub_0dbe5414.length) + 132] = this.address
                                                    mem[(32 * sub_0dbe5414.length) + 164] = arg3
                                                    mem[(32 * sub_0dbe5414.length) + 196] = _166
                                                    require ext_code.size(arg1)
                                                    call arg1.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args address(this.address), address(arg3), _166
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                mem[128] = uint256(sub_0dbe5414.field_0)
                                                idx = 128
                                                s = 0
                                                while (32 * sub_0dbe5414.length) + 96 > idx:
                                                    mem[idx + 32] = sub_0dbe5414[s].field_256
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                                idx = 0
                                                while idx < 11:
                                                    if idx >= sub_0dbe5414.length:
                                                        revert with 'NH{q', 50
                                                    _326 = mem[(32 * idx) + 128]
                                                    mem[(32 * sub_0dbe5414.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                    mem[(32 * sub_0dbe5414.length) + 132] = this.address
                                                    mem[(32 * sub_0dbe5414.length) + 164] = arg3
                                                    mem[(32 * sub_0dbe5414.length) + 196] = _326
                                                    require ext_code.size(arg1)
                                                    call arg1.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args address(this.address), address(arg3), _326
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if arg2 == 11:
                                                if not sub_e89a07f2.length:
                                                    idx = 0
                                                    while idx < 11:
                                                        if idx >= sub_e89a07f2.length:
                                                            revert with 'NH{q', 50
                                                        _164 = mem[(32 * idx) + 128]
                                                        mem[(32 * sub_e89a07f2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                        mem[(32 * sub_e89a07f2.length) + 132] = this.address
                                                        mem[(32 * sub_e89a07f2.length) + 164] = arg3
                                                        mem[(32 * sub_e89a07f2.length) + 196] = _164
                                                        require ext_code.size(arg1)
                                                        call arg1.0x23b872dd with:
                                                             gas gas_remaining wei
                                                            args address(this.address), address(arg3), _164
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    mem[128] = uint256(sub_e89a07f2.field_0)
                                                    idx = 128
                                                    s = 0
                                                    while (32 * sub_e89a07f2.length) + 96 > idx:
                                                        mem[idx + 32] = sub_e89a07f2[s].field_256
                                                        idx = idx + 32
                                                        s = s + 1
                                                        continue 
                                                    idx = 0
                                                    while idx < 11:
                                                        if idx >= sub_e89a07f2.length:
                                                            revert with 'NH{q', 50
                                                        _324 = mem[(32 * idx) + 128]
                                                        mem[(32 * sub_e89a07f2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                        mem[(32 * sub_e89a07f2.length) + 132] = this.address
                                                        mem[(32 * sub_e89a07f2.length) + 164] = arg3
                                                        mem[(32 * sub_e89a07f2.length) + 196] = _324
                                                        require ext_code.size(arg1)
                                                        call arg1.0x23b872dd with:
                                                             gas gas_remaining wei
                                                            args address(this.address), address(arg3), _324
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                if arg2 == 12:
                                                    if not sub_c78b0afc.length:
                                                        idx = 0
                                                        while idx < 11:
                                                            if idx >= sub_c78b0afc.length:
                                                                revert with 'NH{q', 50
                                                            _162 = mem[(32 * idx) + 128]
                                                            mem[(32 * sub_c78b0afc.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                            mem[(32 * sub_c78b0afc.length) + 132] = this.address
                                                            mem[(32 * sub_c78b0afc.length) + 164] = arg3
                                                            mem[(32 * sub_c78b0afc.length) + 196] = _162
                                                            require ext_code.size(arg1)
                                                            call arg1.0x23b872dd with:
                                                                 gas gas_remaining wei
                                                                args address(this.address), address(arg3), _162
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if idx == -1:
                                                                revert with 'NH{q', 17
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        mem[128] = uint256(sub_c78b0afc.field_0)
                                                        idx = 128
                                                        s = 0
                                                        while (32 * sub_c78b0afc.length) + 96 > idx:
                                                            mem[idx + 32] = sub_c78b0afc[s].field_256
                                                            idx = idx + 32
                                                            s = s + 1
                                                            continue 
                                                        idx = 0
                                                        while idx < 11:
                                                            if idx >= sub_c78b0afc.length:
                                                                revert with 'NH{q', 50
                                                            _322 = mem[(32 * idx) + 128]
                                                            mem[(32 * sub_c78b0afc.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                            mem[(32 * sub_c78b0afc.length) + 132] = this.address
                                                            mem[(32 * sub_c78b0afc.length) + 164] = arg3
                                                            mem[(32 * sub_c78b0afc.length) + 196] = _322
                                                            require ext_code.size(arg1)
                                                            call arg1.0x23b872dd with:
                                                                 gas gas_remaining wei
                                                                args address(this.address), address(arg3), _322
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if idx == -1:
                                                                revert with 'NH{q', 17
                                                            idx = idx + 1
                                                            continue 
                                                else:
                                                    if arg2 == 13:
                                                        if not sub_75d0e74b.length:
                                                            idx = 0
                                                            while idx < 11:
                                                                if idx >= sub_75d0e74b.length:
                                                                    revert with 'NH{q', 50
                                                                _160 = mem[(32 * idx) + 128]
                                                                mem[(32 * sub_75d0e74b.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                                mem[(32 * sub_75d0e74b.length) + 132] = this.address
                                                                mem[(32 * sub_75d0e74b.length) + 164] = arg3
                                                                mem[(32 * sub_75d0e74b.length) + 196] = _160
                                                                require ext_code.size(arg1)
                                                                call arg1.0x23b872dd with:
                                                                     gas gas_remaining wei
                                                                    args address(this.address), address(arg3), _160
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if idx == -1:
                                                                    revert with 'NH{q', 17
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            mem[128] = uint256(sub_75d0e74b.field_0)
                                                            idx = 128
                                                            s = 0
                                                            while (32 * sub_75d0e74b.length) + 96 > idx:
                                                                mem[idx + 32] = sub_75d0e74b[s].field_256
                                                                idx = idx + 32
                                                                s = s + 1
                                                                continue 
                                                            idx = 0
                                                            while idx < 11:
                                                                if idx >= sub_75d0e74b.length:
                                                                    revert with 'NH{q', 50
                                                                _320 = mem[(32 * idx) + 128]
                                                                mem[(32 * sub_75d0e74b.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                                mem[(32 * sub_75d0e74b.length) + 132] = this.address
                                                                mem[(32 * sub_75d0e74b.length) + 164] = arg3
                                                                mem[(32 * sub_75d0e74b.length) + 196] = _320
                                                                require ext_code.size(arg1)
                                                                call arg1.0x23b872dd with:
                                                                     gas gas_remaining wei
                                                                    args address(this.address), address(arg3), _320
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                if idx == -1:
                                                                    revert with 'NH{q', 17
                                                                idx = idx + 1
                                                                continue 
                                                    else:
                                                        if arg2 == 14:
                                                            if not sub_cc640387.length:
                                                                idx = 0
                                                                while idx < 11:
                                                                    if idx >= sub_cc640387.length:
                                                                        revert with 'NH{q', 50
                                                                    _158 = mem[(32 * idx) + 128]
                                                                    mem[(32 * sub_cc640387.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                                    mem[(32 * sub_cc640387.length) + 132] = this.address
                                                                    mem[(32 * sub_cc640387.length) + 164] = arg3
                                                                    mem[(32 * sub_cc640387.length) + 196] = _158
                                                                    require ext_code.size(arg1)
                                                                    call arg1.0x23b872dd with:
                                                                         gas gas_remaining wei
                                                                        args address(this.address), address(arg3), _158
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    if idx == -1:
                                                                        revert with 'NH{q', 17
                                                                    idx = idx + 1
                                                                    continue 
                                                            else:
                                                                mem[128] = uint256(sub_cc640387.field_0)
                                                                idx = 128
                                                                s = 0
                                                                while (32 * sub_cc640387.length) + 96 > idx:
                                                                    mem[idx + 32] = sub_cc640387[s].field_256
                                                                    idx = idx + 32
                                                                    s = s + 1
                                                                    continue 
                                                                idx = 0
                                                                while idx < 11:
                                                                    if idx >= sub_cc640387.length:
                                                                        revert with 'NH{q', 50
                                                                    _318 = mem[(32 * idx) + 128]
                                                                    mem[(32 * sub_cc640387.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                                    mem[(32 * sub_cc640387.length) + 132] = this.address
                                                                    mem[(32 * sub_cc640387.length) + 164] = arg3
                                                                    mem[(32 * sub_cc640387.length) + 196] = _318
                                                                    require ext_code.size(arg1)
                                                                    call arg1.0x23b872dd with:
                                                                         gas gas_remaining wei
                                                                        args address(this.address), address(arg3), _318
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    if idx == -1:
                                                                        revert with 'NH{q', 17
                                                                    idx = idx + 1
                                                                    continue 
                                                        else:
                                                            if arg2 == 15:
                                                                if not sub_3d4de04e.length:
                                                                    idx = 0
                                                                    while idx < 11:
                                                                        if idx >= sub_3d4de04e.length:
                                                                            revert with 'NH{q', 50
                                                                        _156 = mem[(32 * idx) + 128]
                                                                        mem[(32 * sub_3d4de04e.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                                        mem[(32 * sub_3d4de04e.length) + 132] = this.address
                                                                        mem[(32 * sub_3d4de04e.length) + 164] = arg3
                                                                        mem[(32 * sub_3d4de04e.length) + 196] = _156
                                                                        require ext_code.size(arg1)
                                                                        call arg1.0x23b872dd with:
                                                                             gas gas_remaining wei
                                                                            args address(this.address), address(arg3), _156
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        if idx == -1:
                                                                            revert with 'NH{q', 17
                                                                        idx = idx + 1
                                                                        continue 
                                                                else:
                                                                    mem[128] = uint256(sub_3d4de04e.field_0)
                                                                    idx = 128
                                                                    s = 0
                                                                    while (32 * sub_3d4de04e.length) + 96 > idx:
                                                                        mem[idx + 32] = sub_3d4de04e[s].field_256
                                                                        idx = idx + 32
                                                                        s = s + 1
                                                                        continue 
                                                                    idx = 0
                                                                    while idx < 11:
                                                                        if idx >= sub_3d4de04e.length:
                                                                            revert with 'NH{q', 50
                                                                        _316 = mem[(32 * idx) + 128]
                                                                        mem[(32 * sub_3d4de04e.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                                        mem[(32 * sub_3d4de04e.length) + 132] = this.address
                                                                        mem[(32 * sub_3d4de04e.length) + 164] = arg3
                                                                        mem[(32 * sub_3d4de04e.length) + 196] = _316
                                                                        require ext_code.size(arg1)
                                                                        call arg1.0x23b872dd with:
                                                                             gas gas_remaining wei
                                                                            args address(this.address), address(arg3), _316
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        if idx == -1:
                                                                            revert with 'NH{q', 17
                                                                        idx = idx + 1
                                                                        continue 
                                                            else:
                                                                if arg2 == 16:
                                                                    if not sub_12ffcf90.length:
                                                                        idx = 0
                                                                        while idx < 11:
                                                                            if idx >= sub_12ffcf90.length:
                                                                                revert with 'NH{q', 50
                                                                            _154 = mem[(32 * idx) + 128]
                                                                            mem[(32 * sub_12ffcf90.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                                            mem[(32 * sub_12ffcf90.length) + 132] = this.address
                                                                            mem[(32 * sub_12ffcf90.length) + 164] = arg3
                                                                            mem[(32 * sub_12ffcf90.length) + 196] = _154
                                                                            require ext_code.size(arg1)
                                                                            call arg1.0x23b872dd with:
                                                                                 gas gas_remaining wei
                                                                                args address(this.address), address(arg3), _154
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            if idx == -1:
                                                                                revert with 'NH{q', 17
                                                                            idx = idx + 1
                                                                            continue 
                                                                    else:
                                                                        mem[128] = uint256(sub_12ffcf90.field_0)
                                                                        idx = 128
                                                                        s = 0
                                                                        while (32 * sub_12ffcf90.length) + 96 > idx:
                                                                            mem[idx + 32] = sub_12ffcf90[s].field_256
                                                                            idx = idx + 32
                                                                            s = s + 1
                                                                            continue 
                                                                        idx = 0
                                                                        while idx < 11:
                                                                            if idx >= sub_12ffcf90.length:
                                                                                revert with 'NH{q', 50
                                                                            _314 = mem[(32 * idx) + 128]
                                                                            mem[(32 * sub_12ffcf90.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                                            mem[(32 * sub_12ffcf90.length) + 132] = this.address
                                                                            mem[(32 * sub_12ffcf90.length) + 164] = arg3
                                                                            mem[(32 * sub_12ffcf90.length) + 196] = _314
                                                                            require ext_code.size(arg1)
                                                                            call arg1.0x23b872dd with:
                                                                                 gas gas_remaining wei
                                                                                args address(this.address), address(arg3), _314
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            if idx == -1:
                                                                                revert with 'NH{q', 17
                                                                            idx = idx + 1
                                                                            continue 
                                                                else:
                                                                    if arg2 == 17:
                                                                        if not sub_868c08a2.length:
                                                                            idx = 0
                                                                            while idx < 11:
                                                                                if idx >= sub_868c08a2.length:
                                                                                    revert with 'NH{q', 50
                                                                                _152 = mem[(32 * idx) + 128]
                                                                                mem[(32 * sub_868c08a2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                                                mem[(32 * sub_868c08a2.length) + 132] = this.address
                                                                                mem[(32 * sub_868c08a2.length) + 164] = arg3
                                                                                mem[(32 * sub_868c08a2.length) + 196] = _152
                                                                                require ext_code.size(arg1)
                                                                                call arg1.0x23b872dd with:
                                                                                     gas gas_remaining wei
                                                                                    args address(this.address), address(arg3), _152
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                if idx == -1:
                                                                                    revert with 'NH{q', 17
                                                                                idx = idx + 1
                                                                                continue 
                                                                        else:
                                                                            mem[128] = uint256(sub_868c08a2.field_0)
                                                                            idx = 128
                                                                            s = 0
                                                                            while (32 * sub_868c08a2.length) + 96 > idx:
                                                                                mem[idx + 32] = sub_868c08a2[s].field_256
                                                                                idx = idx + 32
                                                                                s = s + 1
                                                                                continue 
                                                                            idx = 0
                                                                            while idx < 11:
                                                                                if idx >= sub_868c08a2.length:
                                                                                    revert with 'NH{q', 50
                                                                                _312 = mem[(32 * idx) + 128]
                                                                                mem[(32 * sub_868c08a2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                                                mem[(32 * sub_868c08a2.length) + 132] = this.address
                                                                                mem[(32 * sub_868c08a2.length) + 164] = arg3
                                                                                mem[(32 * sub_868c08a2.length) + 196] = _312
                                                                                require ext_code.size(arg1)
                                                                                call arg1.0x23b872dd with:
                                                                                     gas gas_remaining wei
                                                                                    args address(this.address), address(arg3), _312
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                if idx == -1:
                                                                                    revert with 'NH{q', 17
                                                                                idx = idx + 1
                                                                                continue 
                                                                    else:
                                                                        if arg2 == 18:
                                                                            if not sub_253d38a3.length:
                                                                                idx = 0
                                                                                while idx < 11:
                                                                                    if idx >= sub_253d38a3.length:
                                                                                        revert with 'NH{q', 50
                                                                                    _150 = mem[(32 * idx) + 128]
                                                                                    mem[(32 * sub_253d38a3.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                                                    mem[(32 * sub_253d38a3.length) + 132] = this.address
                                                                                    mem[(32 * sub_253d38a3.length) + 164] = arg3
                                                                                    mem[(32 * sub_253d38a3.length) + 196] = _150
                                                                                    require ext_code.size(arg1)
                                                                                    call arg1.0x23b872dd with:
                                                                                         gas gas_remaining wei
                                                                                        args address(this.address), address(arg3), _150
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    if idx == -1:
                                                                                        revert with 'NH{q', 17
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                            else:
                                                                                mem[128] = uint256(sub_253d38a3.field_0)
                                                                                idx = 128
                                                                                s = 0
                                                                                while (32 * sub_253d38a3.length) + 96 > idx:
                                                                                    mem[idx + 32] = sub_253d38a3[s].field_256
                                                                                    idx = idx + 32
                                                                                    s = s + 1
                                                                                    continue 
                                                                                idx = 0
                                                                                while idx < 11:
                                                                                    if idx >= sub_253d38a3.length:
                                                                                        revert with 'NH{q', 50
                                                                                    _310 = mem[(32 * idx) + 128]
                                                                                    mem[(32 * sub_253d38a3.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                                                    mem[(32 * sub_253d38a3.length) + 132] = this.address
                                                                                    mem[(32 * sub_253d38a3.length) + 164] = arg3
                                                                                    mem[(32 * sub_253d38a3.length) + 196] = _310
                                                                                    require ext_code.size(arg1)
                                                                                    call arg1.0x23b872dd with:
                                                                                         gas gas_remaining wei
                                                                                        args address(this.address), address(arg3), _310
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    if idx == -1:
                                                                                        revert with 'NH{q', 17
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                        else:
                                                                            if arg2 == 19:
                                                                                if not sub_df041dc0.length:
                                                                                    idx = 0
                                                                                    while idx < 11:
                                                                                        if idx >= sub_df041dc0.length:
                                                                                            revert with 'NH{q', 50
                                                                                        _148 = mem[(32 * idx) + 128]
                                                                                        mem[(32 * sub_df041dc0.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                                                        mem[(32 * sub_df041dc0.length) + 132] = this.address
                                                                                        mem[(32 * sub_df041dc0.length) + 164] = arg3
                                                                                        mem[(32 * sub_df041dc0.length) + 196] = _148
                                                                                        require ext_code.size(arg1)
                                                                                        call arg1.0x23b872dd with:
                                                                                             gas gas_remaining wei
                                                                                            args address(this.address), address(arg3), _148
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        if idx == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                                else:
                                                                                    mem[128] = uint256(sub_df041dc0.field_0)
                                                                                    idx = 128
                                                                                    s = 0
                                                                                    while (32 * sub_df041dc0.length) + 96 > idx:
                                                                                        mem[idx + 32] = sub_df041dc0[s].field_256
                                                                                        idx = idx + 32
                                                                                        s = s + 1
                                                                                        continue 
                                                                                    idx = 0
                                                                                    while idx < 11:
                                                                                        if idx >= sub_df041dc0.length:
                                                                                            revert with 'NH{q', 50
                                                                                        _308 = mem[(32 * idx) + 128]
                                                                                        mem[(32 * sub_df041dc0.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                                                        mem[(32 * sub_df041dc0.length) + 132] = this.address
                                                                                        mem[(32 * sub_df041dc0.length) + 164] = arg3
                                                                                        mem[(32 * sub_df041dc0.length) + 196] = _308
                                                                                        require ext_code.size(arg1)
                                                                                        call arg1.0x23b872dd with:
                                                                                             gas gas_remaining wei
                                                                                            args address(this.address), address(arg3), _308
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        if idx == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                            else:
                                                                                if arg2 != 20:
                                                                                    revert with 0, 'error!!!'
                                                                                if not sub_f1d48df4.length:
                                                                                    idx = 0
                                                                                    while idx < 11:
                                                                                        if idx >= sub_f1d48df4.length:
                                                                                            revert with 'NH{q', 50
                                                                                        _146 = mem[(32 * idx) + 128]
                                                                                        mem[(32 * sub_f1d48df4.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                                                        mem[(32 * sub_f1d48df4.length) + 132] = this.address
                                                                                        mem[(32 * sub_f1d48df4.length) + 164] = arg3
                                                                                        mem[(32 * sub_f1d48df4.length) + 196] = _146
                                                                                        require ext_code.size(arg1)
                                                                                        call arg1.0x23b872dd with:
                                                                                             gas gas_remaining wei
                                                                                            args address(this.address), address(arg3), _146
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        if idx == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                                else:
                                                                                    mem[128] = uint256(sub_f1d48df4.field_0)
                                                                                    idx = 128
                                                                                    s = 0
                                                                                    while (32 * sub_f1d48df4.length) + 96 > idx:
                                                                                        mem[idx + 32] = sub_f1d48df4[s].field_256
                                                                                        idx = idx + 32
                                                                                        s = s + 1
                                                                                        continue 
                                                                                    idx = 0
                                                                                    while idx < 11:
                                                                                        if idx >= sub_f1d48df4.length:
                                                                                            revert with 'NH{q', 50
                                                                                        _306 = mem[(32 * idx) + 128]
                                                                                        mem[(32 * sub_f1d48df4.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                                                                        mem[(32 * sub_f1d48df4.length) + 132] = this.address
                                                                                        mem[(32 * sub_f1d48df4.length) + 164] = arg3
                                                                                        mem[(32 * sub_f1d48df4.length) + 196] = _306
                                                                                        require ext_code.size(arg1)
                                                                                        call arg1.0x23b872dd with:
                                                                                             gas gas_remaining wei
                                                                                            args address(this.address), address(arg3), _306
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        if idx == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        idx = idx + 1
                                                                                        continue 
}

function sub_d386480c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[address(msg.sender)]:
        revert with 0, 'Unauthorized'
    else:
        if arg1 != 1:
            if arg1 != 2:
                if arg1 != 3:
                    if arg1 != 4:
                        if arg1 != 5:
                            if arg1 != 6:
                                if arg1 != 7:
                                    if arg1 != 8:
                                        if arg1 != 9:
                                            if arg1 != 10:
                                                if arg1 != 11:
                                                    if arg1 != 12:
                                                        if arg1 != 13:
                                                            if arg1 != 14:
                                                                if arg1 != 15:
                                                                    if arg1 != 16:
                                                                        if arg1 != 17:
                                                                            if arg1 != 18:
                                                                                if arg1 != 19:
                                                                                    if arg1 != 20:
                                                                                        revert with 0, 'error!!!'
                                                                                    else:
                                                                                        mem[64] = (32 * sub_f1d48df4.length) + 128
                                                                                        mem[96] = sub_f1d48df4.length
                                                                                        if not sub_f1d48df4.length:
                                                                                            idx = 0
                                                                                            while idx < 11:
                                                                                                if idx >= mem[96]:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    _486 = mem[(32 * idx) + 128]
                                                                                                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                                    staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                                                            gas gas_remaining wei
                                                                                                           args _486
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _546 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        require mem[_546] == mem[_546]
                                                                                                        if block.timestamp <= mem[_546]:
                                                                                                            if idx == -1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                idx = idx + 1
                                                                                                                continue 
                                                                                                        else:
                                                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                                                            call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args _486
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                                                staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args _486
                                                                                                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _666 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 128
                                                                                                                    _686 = mem[_666]
                                                                                                                    require mem[_666] == mem[_666]
                                                                                                                    require mem[_666 + 32] == mem[_666 + 32]
                                                                                                                    require mem[_666 + 64] == mem[_666 + 64]
                                                                                                                    _746 = mem[_666 + 96]
                                                                                                                    require mem[_666 + 96] == mem[_666 + 96]
                                                                                                                    mem[mem[64] + 4] = mem[_666 + 96]
                                                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                                                    staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args _746
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _806 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_806] == mem[_806]
                                                                                                                        if _686 < mem[_806]:
                                                                                                                            if idx == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                idx = idx + 1
                                                                                                                                continue 
                                                                                                                        else:
                                                                                                                            mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                                                            mem[mem[64] + 4] = _486
                                                                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                                                                            call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                                                                 gas gas_remaining wei
                                                                                                                                args _486
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                if idx == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    idx = idx + 1
                                                                                                                                    continue 
                                                                                        else:
                                                                                            mem[0] = 23
                                                                                            mem[128] = uint256(sub_f1d48df4.field_0)
                                                                                            idx = 128
                                                                                            s = 0
                                                                                            while (32 * sub_f1d48df4.length) + 96 > idx:
                                                                                                mem[idx + 32] = sub_f1d48df4[s].field_256
                                                                                                idx = idx + 32
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            idx = 0
                                                                                            while idx < 11:
                                                                                                if idx >= mem[96]:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    _1326 = mem[(32 * idx) + 128]
                                                                                                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                                    staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                                                            gas gas_remaining wei
                                                                                                           args _1326
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _1386 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        require mem[_1386] == mem[_1386]
                                                                                                        if block.timestamp <= mem[_1386]:
                                                                                                            if idx == -1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                idx = idx + 1
                                                                                                                continue 
                                                                                                        else:
                                                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                                                            call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args _1326
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                                                staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args _1326
                                                                                                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _1506 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 128
                                                                                                                    _1526 = mem[_1506]
                                                                                                                    require mem[_1506] == mem[_1506]
                                                                                                                    require mem[_1506 + 32] == mem[_1506 + 32]
                                                                                                                    require mem[_1506 + 64] == mem[_1506 + 64]
                                                                                                                    _1586 = mem[_1506 + 96]
                                                                                                                    require mem[_1506 + 96] == mem[_1506 + 96]
                                                                                                                    mem[mem[64] + 4] = mem[_1506 + 96]
                                                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                                                    staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args _1586
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _1646 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_1646] == mem[_1646]
                                                                                                                        if _1526 < mem[_1646]:
                                                                                                                            if idx == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                idx = idx + 1
                                                                                                                                continue 
                                                                                                                        else:
                                                                                                                            mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                                                            mem[mem[64] + 4] = _1326
                                                                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                                                                            call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                                                                 gas gas_remaining wei
                                                                                                                                args _1326
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                if idx == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    idx = idx + 1
                                                                                                                                    continue 
                                                                                else:
                                                                                    mem[64] = (32 * sub_df041dc0.length) + 128
                                                                                    mem[96] = sub_df041dc0.length
                                                                                    if not sub_df041dc0.length:
                                                                                        idx = 0
                                                                                        while idx < 11:
                                                                                            if idx >= mem[96]:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                _488 = mem[(32 * idx) + 128]
                                                                                                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                                staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                                                        gas gas_remaining wei
                                                                                                       args _488
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _547 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_547] == mem[_547]
                                                                                                    if block.timestamp <= mem[_547]:
                                                                                                        if idx == -1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                    else:
                                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                                        call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                                                             gas gas_remaining wei
                                                                                                            args _488
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                                                            staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args _488
                                                                                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _667 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 128
                                                                                                                _687 = mem[_667]
                                                                                                                require mem[_667] == mem[_667]
                                                                                                                require mem[_667 + 32] == mem[_667 + 32]
                                                                                                                require mem[_667 + 64] == mem[_667 + 64]
                                                                                                                _747 = mem[_667 + 96]
                                                                                                                require mem[_667 + 96] == mem[_667 + 96]
                                                                                                                mem[mem[64] + 4] = mem[_667 + 96]
                                                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                                                staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args _747
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _807 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_807] == mem[_807]
                                                                                                                    if _687 < mem[_807]:
                                                                                                                        if idx == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            idx = idx + 1
                                                                                                                            continue 
                                                                                                                    else:
                                                                                                                        mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                                                        mem[mem[64] + 4] = _488
                                                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                                                        call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args _488
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            if idx == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                idx = idx + 1
                                                                                                                                continue 
                                                                                    else:
                                                                                        mem[0] = 22
                                                                                        mem[128] = uint256(sub_df041dc0.field_0)
                                                                                        idx = 128
                                                                                        s = 0
                                                                                        while (32 * sub_df041dc0.length) + 96 > idx:
                                                                                            mem[idx + 32] = sub_df041dc0[s].field_256
                                                                                            idx = idx + 32
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        idx = 0
                                                                                        while idx < 11:
                                                                                            if idx >= mem[96]:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                _1328 = mem[(32 * idx) + 128]
                                                                                                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                                staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                                                        gas gas_remaining wei
                                                                                                       args _1328
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _1387 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_1387] == mem[_1387]
                                                                                                    if block.timestamp <= mem[_1387]:
                                                                                                        if idx == -1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                    else:
                                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                                        call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                                                             gas gas_remaining wei
                                                                                                            args _1328
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                                                            staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args _1328
                                                                                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _1507 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 128
                                                                                                                _1527 = mem[_1507]
                                                                                                                require mem[_1507] == mem[_1507]
                                                                                                                require mem[_1507 + 32] == mem[_1507 + 32]
                                                                                                                require mem[_1507 + 64] == mem[_1507 + 64]
                                                                                                                _1587 = mem[_1507 + 96]
                                                                                                                require mem[_1507 + 96] == mem[_1507 + 96]
                                                                                                                mem[mem[64] + 4] = mem[_1507 + 96]
                                                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                                                staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args _1587
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _1647 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_1647] == mem[_1647]
                                                                                                                    if _1527 < mem[_1647]:
                                                                                                                        if idx == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            idx = idx + 1
                                                                                                                            continue 
                                                                                                                    else:
                                                                                                                        mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                                                        mem[mem[64] + 4] = _1328
                                                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                                                        call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args _1328
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            if idx == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                idx = idx + 1
                                                                                                                                continue 
                                                                            else:
                                                                                mem[64] = (32 * sub_253d38a3.length) + 128
                                                                                mem[96] = sub_253d38a3.length
                                                                                if not sub_253d38a3.length:
                                                                                    idx = 0
                                                                                    while idx < 11:
                                                                                        if idx >= mem[96]:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            _490 = mem[(32 * idx) + 128]
                                                                                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                                            staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args _490
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _548 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                require mem[_548] == mem[_548]
                                                                                                if block.timestamp <= mem[_548]:
                                                                                                    if idx == -1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        idx = idx + 1
                                                                                                        continue 
                                                                                                else:
                                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                                    call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args _490
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                                        staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                                                gas gas_remaining wei
                                                                                                               args _490
                                                                                                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _668 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 128
                                                                                                            _688 = mem[_668]
                                                                                                            require mem[_668] == mem[_668]
                                                                                                            require mem[_668 + 32] == mem[_668 + 32]
                                                                                                            require mem[_668 + 64] == mem[_668 + 64]
                                                                                                            _748 = mem[_668 + 96]
                                                                                                            require mem[_668 + 96] == mem[_668 + 96]
                                                                                                            mem[mem[64] + 4] = mem[_668 + 96]
                                                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                                                            staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args _748
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _808 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_808] == mem[_808]
                                                                                                                if _688 < mem[_808]:
                                                                                                                    if idx == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        idx = idx + 1
                                                                                                                        continue 
                                                                                                                else:
                                                                                                                    mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                                                    mem[mem[64] + 4] = _490
                                                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                                                    call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args _490
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        if idx == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            idx = idx + 1
                                                                                                                            continue 
                                                                                else:
                                                                                    mem[0] = 21
                                                                                    mem[128] = uint256(sub_253d38a3.field_0)
                                                                                    idx = 128
                                                                                    s = 0
                                                                                    while (32 * sub_253d38a3.length) + 96 > idx:
                                                                                        mem[idx + 32] = sub_253d38a3[s].field_256
                                                                                        idx = idx + 32
                                                                                        s = s + 1
                                                                                        continue 
                                                                                    idx = 0
                                                                                    while idx < 11:
                                                                                        if idx >= mem[96]:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            _1330 = mem[(32 * idx) + 128]
                                                                                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                                            staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args _1330
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _1388 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                require mem[_1388] == mem[_1388]
                                                                                                if block.timestamp <= mem[_1388]:
                                                                                                    if idx == -1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        idx = idx + 1
                                                                                                        continue 
                                                                                                else:
                                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                                    call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args _1330
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                                        staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                                                gas gas_remaining wei
                                                                                                               args _1330
                                                                                                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _1508 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 128
                                                                                                            _1528 = mem[_1508]
                                                                                                            require mem[_1508] == mem[_1508]
                                                                                                            require mem[_1508 + 32] == mem[_1508 + 32]
                                                                                                            require mem[_1508 + 64] == mem[_1508 + 64]
                                                                                                            _1588 = mem[_1508 + 96]
                                                                                                            require mem[_1508 + 96] == mem[_1508 + 96]
                                                                                                            mem[mem[64] + 4] = mem[_1508 + 96]
                                                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                                                            staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args _1588
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _1648 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_1648] == mem[_1648]
                                                                                                                if _1528 < mem[_1648]:
                                                                                                                    if idx == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        idx = idx + 1
                                                                                                                        continue 
                                                                                                                else:
                                                                                                                    mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                                                    mem[mem[64] + 4] = _1330
                                                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                                                    call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args _1330
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        if idx == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            idx = idx + 1
                                                                                                                            continue 
                                                                        else:
                                                                            mem[64] = (32 * sub_868c08a2.length) + 128
                                                                            mem[96] = sub_868c08a2.length
                                                                            if not sub_868c08a2.length:
                                                                                idx = 0
                                                                                while idx < 11:
                                                                                    if idx >= mem[96]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        _492 = mem[(32 * idx) + 128]
                                                                                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                        staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                                                gas gas_remaining wei
                                                                                               args _492
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _549 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            require mem[_549] == mem[_549]
                                                                                            if block.timestamp <= mem[_549]:
                                                                                                if idx == -1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                            else:
                                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                                call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                                                     gas gas_remaining wei
                                                                                                    args _492
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                                    staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                                            gas gas_remaining wei
                                                                                                           args _492
                                                                                                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _669 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 128
                                                                                                        _689 = mem[_669]
                                                                                                        require mem[_669] == mem[_669]
                                                                                                        require mem[_669 + 32] == mem[_669 + 32]
                                                                                                        require mem[_669 + 64] == mem[_669 + 64]
                                                                                                        _749 = mem[_669 + 96]
                                                                                                        require mem[_669 + 96] == mem[_669 + 96]
                                                                                                        mem[mem[64] + 4] = mem[_669 + 96]
                                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                                        staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                                                gas gas_remaining wei
                                                                                                               args _749
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _809 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_809] == mem[_809]
                                                                                                            if _689 < mem[_809]:
                                                                                                                if idx == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                                                            else:
                                                                                                                mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                                                mem[mem[64] + 4] = _492
                                                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                                                call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                                                     gas gas_remaining wei
                                                                                                                    args _492
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    if idx == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        idx = idx + 1
                                                                                                                        continue 
                                                                            else:
                                                                                mem[0] = 20
                                                                                mem[128] = uint256(sub_868c08a2.field_0)
                                                                                idx = 128
                                                                                s = 0
                                                                                while (32 * sub_868c08a2.length) + 96 > idx:
                                                                                    mem[idx + 32] = sub_868c08a2[s].field_256
                                                                                    idx = idx + 32
                                                                                    s = s + 1
                                                                                    continue 
                                                                                idx = 0
                                                                                while idx < 11:
                                                                                    if idx >= mem[96]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        _1332 = mem[(32 * idx) + 128]
                                                                                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                        staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                                                gas gas_remaining wei
                                                                                               args _1332
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _1389 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            require mem[_1389] == mem[_1389]
                                                                                            if block.timestamp <= mem[_1389]:
                                                                                                if idx == -1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                            else:
                                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                                call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                                                     gas gas_remaining wei
                                                                                                    args _1332
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                                    staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                                            gas gas_remaining wei
                                                                                                           args _1332
                                                                                                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _1509 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 128
                                                                                                        _1529 = mem[_1509]
                                                                                                        require mem[_1509] == mem[_1509]
                                                                                                        require mem[_1509 + 32] == mem[_1509 + 32]
                                                                                                        require mem[_1509 + 64] == mem[_1509 + 64]
                                                                                                        _1589 = mem[_1509 + 96]
                                                                                                        require mem[_1509 + 96] == mem[_1509 + 96]
                                                                                                        mem[mem[64] + 4] = mem[_1509 + 96]
                                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                                        staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                                                gas gas_remaining wei
                                                                                                               args _1589
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _1649 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_1649] == mem[_1649]
                                                                                                            if _1529 < mem[_1649]:
                                                                                                                if idx == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                                                            else:
                                                                                                                mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                                                mem[mem[64] + 4] = _1332
                                                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                                                call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                                                     gas gas_remaining wei
                                                                                                                    args _1332
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    if idx == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        idx = idx + 1
                                                                                                                        continue 
                                                                    else:
                                                                        mem[64] = (32 * sub_12ffcf90.length) + 128
                                                                        mem[96] = sub_12ffcf90.length
                                                                        if not sub_12ffcf90.length:
                                                                            idx = 0
                                                                            while idx < 11:
                                                                                if idx >= mem[96]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    _494 = mem[(32 * idx) + 128]
                                                                                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                    staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                                            gas gas_remaining wei
                                                                                           args _494
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _550 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_550] == mem[_550]
                                                                                        if block.timestamp <= mem[_550]:
                                                                                            if idx == -1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                idx = idx + 1
                                                                                                continue 
                                                                                        else:
                                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                                            call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                                                 gas gas_remaining wei
                                                                                                args _494
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                                staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                                        gas gas_remaining wei
                                                                                                       args _494
                                                                                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _670 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 128
                                                                                                    _690 = mem[_670]
                                                                                                    require mem[_670] == mem[_670]
                                                                                                    require mem[_670 + 32] == mem[_670 + 32]
                                                                                                    require mem[_670 + 64] == mem[_670 + 64]
                                                                                                    _750 = mem[_670 + 96]
                                                                                                    require mem[_670 + 96] == mem[_670 + 96]
                                                                                                    mem[mem[64] + 4] = mem[_670 + 96]
                                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                                    staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                                            gas gas_remaining wei
                                                                                                           args _750
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _810 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        require mem[_810] == mem[_810]
                                                                                                        if _690 < mem[_810]:
                                                                                                            if idx == -1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                idx = idx + 1
                                                                                                                continue 
                                                                                                        else:
                                                                                                            mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                                            mem[mem[64] + 4] = _494
                                                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                                                            call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args _494
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                if idx == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                        else:
                                                                            mem[0] = 19
                                                                            mem[128] = uint256(sub_12ffcf90.field_0)
                                                                            idx = 128
                                                                            s = 0
                                                                            while (32 * sub_12ffcf90.length) + 96 > idx:
                                                                                mem[idx + 32] = sub_12ffcf90[s].field_256
                                                                                idx = idx + 32
                                                                                s = s + 1
                                                                                continue 
                                                                            idx = 0
                                                                            while idx < 11:
                                                                                if idx >= mem[96]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    _1334 = mem[(32 * idx) + 128]
                                                                                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                    staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                                            gas gas_remaining wei
                                                                                           args _1334
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _1390 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_1390] == mem[_1390]
                                                                                        if block.timestamp <= mem[_1390]:
                                                                                            if idx == -1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                idx = idx + 1
                                                                                                continue 
                                                                                        else:
                                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                                            call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                                                 gas gas_remaining wei
                                                                                                args _1334
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                                staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                                        gas gas_remaining wei
                                                                                                       args _1334
                                                                                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _1510 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 128
                                                                                                    _1530 = mem[_1510]
                                                                                                    require mem[_1510] == mem[_1510]
                                                                                                    require mem[_1510 + 32] == mem[_1510 + 32]
                                                                                                    require mem[_1510 + 64] == mem[_1510 + 64]
                                                                                                    _1590 = mem[_1510 + 96]
                                                                                                    require mem[_1510 + 96] == mem[_1510 + 96]
                                                                                                    mem[mem[64] + 4] = mem[_1510 + 96]
                                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                                    staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                                            gas gas_remaining wei
                                                                                                           args _1590
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _1650 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        require mem[_1650] == mem[_1650]
                                                                                                        if _1530 < mem[_1650]:
                                                                                                            if idx == -1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                idx = idx + 1
                                                                                                                continue 
                                                                                                        else:
                                                                                                            mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                                            mem[mem[64] + 4] = _1334
                                                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                                                            call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args _1334
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                if idx == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                else:
                                                                    mem[64] = (32 * sub_3d4de04e.length) + 128
                                                                    mem[96] = sub_3d4de04e.length
                                                                    if not sub_3d4de04e.length:
                                                                        idx = 0
                                                                        while idx < 11:
                                                                            if idx >= mem[96]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                _496 = mem[(32 * idx) + 128]
                                                                                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                                        gas gas_remaining wei
                                                                                       args _496
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _551 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_551] == mem[_551]
                                                                                    if block.timestamp <= mem[_551]:
                                                                                        if idx == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                    else:
                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                        call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                                             gas gas_remaining wei
                                                                                            args _496
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                                            staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args _496
                                                                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _671 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 128
                                                                                                _691 = mem[_671]
                                                                                                require mem[_671] == mem[_671]
                                                                                                require mem[_671 + 32] == mem[_671 + 32]
                                                                                                require mem[_671 + 64] == mem[_671 + 64]
                                                                                                _751 = mem[_671 + 96]
                                                                                                require mem[_671 + 96] == mem[_671 + 96]
                                                                                                mem[mem[64] + 4] = mem[_671 + 96]
                                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                                staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                                        gas gas_remaining wei
                                                                                                       args _751
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _811 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_811] == mem[_811]
                                                                                                    if _691 < mem[_811]:
                                                                                                        if idx == -1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                    else:
                                                                                                        mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                                        mem[mem[64] + 4] = _496
                                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                                        call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                                             gas gas_remaining wei
                                                                                                            args _496
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            if idx == -1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                idx = idx + 1
                                                                                                                continue 
                                                                    else:
                                                                        mem[0] = 18
                                                                        mem[128] = uint256(sub_3d4de04e.field_0)
                                                                        idx = 128
                                                                        s = 0
                                                                        while (32 * sub_3d4de04e.length) + 96 > idx:
                                                                            mem[idx + 32] = sub_3d4de04e[s].field_256
                                                                            idx = idx + 32
                                                                            s = s + 1
                                                                            continue 
                                                                        idx = 0
                                                                        while idx < 11:
                                                                            if idx >= mem[96]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                _1336 = mem[(32 * idx) + 128]
                                                                                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                                        gas gas_remaining wei
                                                                                       args _1336
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _1391 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_1391] == mem[_1391]
                                                                                    if block.timestamp <= mem[_1391]:
                                                                                        if idx == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                    else:
                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                        call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                                             gas gas_remaining wei
                                                                                            args _1336
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                                            staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args _1336
                                                                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _1511 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 128
                                                                                                _1531 = mem[_1511]
                                                                                                require mem[_1511] == mem[_1511]
                                                                                                require mem[_1511 + 32] == mem[_1511 + 32]
                                                                                                require mem[_1511 + 64] == mem[_1511 + 64]
                                                                                                _1591 = mem[_1511 + 96]
                                                                                                require mem[_1511 + 96] == mem[_1511 + 96]
                                                                                                mem[mem[64] + 4] = mem[_1511 + 96]
                                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                                staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                                        gas gas_remaining wei
                                                                                                       args _1591
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _1651 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_1651] == mem[_1651]
                                                                                                    if _1531 < mem[_1651]:
                                                                                                        if idx == -1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                    else:
                                                                                                        mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                                        mem[mem[64] + 4] = _1336
                                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                                        call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                                             gas gas_remaining wei
                                                                                                            args _1336
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            if idx == -1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                idx = idx + 1
                                                                                                                continue 
                                                            else:
                                                                mem[64] = (32 * sub_cc640387.length) + 128
                                                                mem[96] = sub_cc640387.length
                                                                if not sub_cc640387.length:
                                                                    idx = 0
                                                                    while idx < 11:
                                                                        if idx >= mem[96]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            _498 = mem[(32 * idx) + 128]
                                                                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                            staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                                    gas gas_remaining wei
                                                                                   args _498
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _552 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                require mem[_552] == mem[_552]
                                                                                if block.timestamp <= mem[_552]:
                                                                                    if idx == -1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                                else:
                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                    call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                                         gas gas_remaining wei
                                                                                        args _498
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                        staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                                gas gas_remaining wei
                                                                                               args _498
                                                                                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _672 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 128
                                                                                            _692 = mem[_672]
                                                                                            require mem[_672] == mem[_672]
                                                                                            require mem[_672 + 32] == mem[_672 + 32]
                                                                                            require mem[_672 + 64] == mem[_672 + 64]
                                                                                            _752 = mem[_672 + 96]
                                                                                            require mem[_672 + 96] == mem[_672 + 96]
                                                                                            mem[mem[64] + 4] = mem[_672 + 96]
                                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                                            staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args _752
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _812 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                require mem[_812] == mem[_812]
                                                                                                if _692 < mem[_812]:
                                                                                                    if idx == -1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        idx = idx + 1
                                                                                                        continue 
                                                                                                else:
                                                                                                    mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                                    mem[mem[64] + 4] = _498
                                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                                    call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args _498
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        if idx == -1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                else:
                                                                    mem[0] = 17
                                                                    mem[128] = uint256(sub_cc640387.field_0)
                                                                    idx = 128
                                                                    s = 0
                                                                    while (32 * sub_cc640387.length) + 96 > idx:
                                                                        mem[idx + 32] = sub_cc640387[s].field_256
                                                                        idx = idx + 32
                                                                        s = s + 1
                                                                        continue 
                                                                    idx = 0
                                                                    while idx < 11:
                                                                        if idx >= mem[96]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            _1338 = mem[(32 * idx) + 128]
                                                                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                            staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                                    gas gas_remaining wei
                                                                                   args _1338
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _1392 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                require mem[_1392] == mem[_1392]
                                                                                if block.timestamp <= mem[_1392]:
                                                                                    if idx == -1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                                else:
                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                    call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                                         gas gas_remaining wei
                                                                                        args _1338
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                        staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                                gas gas_remaining wei
                                                                                               args _1338
                                                                                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _1512 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 128
                                                                                            _1532 = mem[_1512]
                                                                                            require mem[_1512] == mem[_1512]
                                                                                            require mem[_1512 + 32] == mem[_1512 + 32]
                                                                                            require mem[_1512 + 64] == mem[_1512 + 64]
                                                                                            _1592 = mem[_1512 + 96]
                                                                                            require mem[_1512 + 96] == mem[_1512 + 96]
                                                                                            mem[mem[64] + 4] = mem[_1512 + 96]
                                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                                            staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args _1592
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _1652 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                require mem[_1652] == mem[_1652]
                                                                                                if _1532 < mem[_1652]:
                                                                                                    if idx == -1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        idx = idx + 1
                                                                                                        continue 
                                                                                                else:
                                                                                                    mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                                    mem[mem[64] + 4] = _1338
                                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                                    call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args _1338
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        if idx == -1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                        else:
                                                            mem[64] = (32 * sub_75d0e74b.length) + 128
                                                            mem[96] = sub_75d0e74b.length
                                                            if not sub_75d0e74b.length:
                                                                idx = 0
                                                                while idx < 11:
                                                                    if idx >= mem[96]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        _500 = mem[(32 * idx) + 128]
                                                                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                        staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                                gas gas_remaining wei
                                                                               args _500
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _553 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_553] == mem[_553]
                                                                            if block.timestamp <= mem[_553]:
                                                                                if idx == -1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                            else:
                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args _500
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                    staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                            gas gas_remaining wei
                                                                                           args _500
                                                                                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _673 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 128
                                                                                        _693 = mem[_673]
                                                                                        require mem[_673] == mem[_673]
                                                                                        require mem[_673 + 32] == mem[_673 + 32]
                                                                                        require mem[_673 + 64] == mem[_673 + 64]
                                                                                        _753 = mem[_673 + 96]
                                                                                        require mem[_673 + 96] == mem[_673 + 96]
                                                                                        mem[mem[64] + 4] = mem[_673 + 96]
                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                        staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                                gas gas_remaining wei
                                                                                               args _753
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _813 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            require mem[_813] == mem[_813]
                                                                                            if _693 < mem[_813]:
                                                                                                if idx == -1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                            else:
                                                                                                mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                                mem[mem[64] + 4] = _500
                                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                                call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                                     gas gas_remaining wei
                                                                                                    args _500
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    if idx == -1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        idx = idx + 1
                                                                                                        continue 
                                                            else:
                                                                mem[0] = 16
                                                                mem[128] = uint256(sub_75d0e74b.field_0)
                                                                idx = 128
                                                                s = 0
                                                                while (32 * sub_75d0e74b.length) + 96 > idx:
                                                                    mem[idx + 32] = sub_75d0e74b[s].field_256
                                                                    idx = idx + 32
                                                                    s = s + 1
                                                                    continue 
                                                                idx = 0
                                                                while idx < 11:
                                                                    if idx >= mem[96]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        _1340 = mem[(32 * idx) + 128]
                                                                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                        staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                                gas gas_remaining wei
                                                                               args _1340
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _1393 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_1393] == mem[_1393]
                                                                            if block.timestamp <= mem[_1393]:
                                                                                if idx == -1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                            else:
                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args _1340
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                    staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                            gas gas_remaining wei
                                                                                           args _1340
                                                                                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _1513 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 128
                                                                                        _1533 = mem[_1513]
                                                                                        require mem[_1513] == mem[_1513]
                                                                                        require mem[_1513 + 32] == mem[_1513 + 32]
                                                                                        require mem[_1513 + 64] == mem[_1513 + 64]
                                                                                        _1593 = mem[_1513 + 96]
                                                                                        require mem[_1513 + 96] == mem[_1513 + 96]
                                                                                        mem[mem[64] + 4] = mem[_1513 + 96]
                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                        staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                                gas gas_remaining wei
                                                                                               args _1593
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _1653 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            require mem[_1653] == mem[_1653]
                                                                                            if _1533 < mem[_1653]:
                                                                                                if idx == -1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                            else:
                                                                                                mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                                mem[mem[64] + 4] = _1340
                                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                                call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                                     gas gas_remaining wei
                                                                                                    args _1340
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    if idx == -1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        idx = idx + 1
                                                                                                        continue 
                                                    else:
                                                        mem[64] = (32 * sub_c78b0afc.length) + 128
                                                        mem[96] = sub_c78b0afc.length
                                                        if not sub_c78b0afc.length:
                                                            idx = 0
                                                            while idx < 11:
                                                                if idx >= mem[96]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    _502 = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                    staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                            gas gas_remaining wei
                                                                           args _502
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _554 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_554] == mem[_554]
                                                                        if block.timestamp <= mem[_554]:
                                                                            if idx == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                idx = idx + 1
                                                                                continue 
                                                                        else:
                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                            call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args _502
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                        gas gas_remaining wei
                                                                                       args _502
                                                                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _674 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 128
                                                                                    _694 = mem[_674]
                                                                                    require mem[_674] == mem[_674]
                                                                                    require mem[_674 + 32] == mem[_674 + 32]
                                                                                    require mem[_674 + 64] == mem[_674 + 64]
                                                                                    _754 = mem[_674 + 96]
                                                                                    require mem[_674 + 96] == mem[_674 + 96]
                                                                                    mem[mem[64] + 4] = mem[_674 + 96]
                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                    staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                            gas gas_remaining wei
                                                                                           args _754
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _814 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_814] == mem[_814]
                                                                                        if _694 < mem[_814]:
                                                                                            if idx == -1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                idx = idx + 1
                                                                                                continue 
                                                                                        else:
                                                                                            mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                            mem[mem[64] + 4] = _502
                                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                                            call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                                 gas gas_remaining wei
                                                                                                args _502
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                if idx == -1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                        else:
                                                            mem[0] = 15
                                                            mem[128] = uint256(sub_c78b0afc.field_0)
                                                            idx = 128
                                                            s = 0
                                                            while (32 * sub_c78b0afc.length) + 96 > idx:
                                                                mem[idx + 32] = sub_c78b0afc[s].field_256
                                                                idx = idx + 32
                                                                s = s + 1
                                                                continue 
                                                            idx = 0
                                                            while idx < 11:
                                                                if idx >= mem[96]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    _1342 = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                    staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                            gas gas_remaining wei
                                                                           args _1342
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _1394 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_1394] == mem[_1394]
                                                                        if block.timestamp <= mem[_1394]:
                                                                            if idx == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                idx = idx + 1
                                                                                continue 
                                                                        else:
                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                            call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args _1342
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                        gas gas_remaining wei
                                                                                       args _1342
                                                                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _1514 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 128
                                                                                    _1534 = mem[_1514]
                                                                                    require mem[_1514] == mem[_1514]
                                                                                    require mem[_1514 + 32] == mem[_1514 + 32]
                                                                                    require mem[_1514 + 64] == mem[_1514 + 64]
                                                                                    _1594 = mem[_1514 + 96]
                                                                                    require mem[_1514 + 96] == mem[_1514 + 96]
                                                                                    mem[mem[64] + 4] = mem[_1514 + 96]
                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                    staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                            gas gas_remaining wei
                                                                                           args _1594
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _1654 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_1654] == mem[_1654]
                                                                                        if _1534 < mem[_1654]:
                                                                                            if idx == -1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                idx = idx + 1
                                                                                                continue 
                                                                                        else:
                                                                                            mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                            mem[mem[64] + 4] = _1342
                                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                                            call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                                 gas gas_remaining wei
                                                                                                args _1342
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                if idx == -1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                else:
                                                    mem[64] = (32 * sub_e89a07f2.length) + 128
                                                    mem[96] = sub_e89a07f2.length
                                                    if not sub_e89a07f2.length:
                                                        idx = 0
                                                        while idx < 11:
                                                            if idx >= mem[96]:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                _504 = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                        gas gas_remaining wei
                                                                       args _504
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _555 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_555] == mem[_555]
                                                                    if block.timestamp <= mem[_555]:
                                                                        if idx == -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            idx = idx + 1
                                                                            continue 
                                                                    else:
                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                        call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args _504
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                            staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                    gas gas_remaining wei
                                                                                   args _504
                                                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _675 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 128
                                                                                _695 = mem[_675]
                                                                                require mem[_675] == mem[_675]
                                                                                require mem[_675 + 32] == mem[_675 + 32]
                                                                                require mem[_675 + 64] == mem[_675 + 64]
                                                                                _755 = mem[_675 + 96]
                                                                                require mem[_675 + 96] == mem[_675 + 96]
                                                                                mem[mem[64] + 4] = mem[_675 + 96]
                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                        gas gas_remaining wei
                                                                                       args _755
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _815 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_815] == mem[_815]
                                                                                    if _695 < mem[_815]:
                                                                                        if idx == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                    else:
                                                                                        mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                        mem[mem[64] + 4] = _504
                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                        call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                             gas gas_remaining wei
                                                                                            args _504
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            if idx == -1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                idx = idx + 1
                                                                                                continue 
                                                    else:
                                                        mem[0] = 14
                                                        mem[128] = uint256(sub_e89a07f2.field_0)
                                                        idx = 128
                                                        s = 0
                                                        while (32 * sub_e89a07f2.length) + 96 > idx:
                                                            mem[idx + 32] = sub_e89a07f2[s].field_256
                                                            idx = idx + 32
                                                            s = s + 1
                                                            continue 
                                                        idx = 0
                                                        while idx < 11:
                                                            if idx >= mem[96]:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                _1344 = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                        gas gas_remaining wei
                                                                       args _1344
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _1395 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_1395] == mem[_1395]
                                                                    if block.timestamp <= mem[_1395]:
                                                                        if idx == -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            idx = idx + 1
                                                                            continue 
                                                                    else:
                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                        call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args _1344
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                            staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                    gas gas_remaining wei
                                                                                   args _1344
                                                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _1515 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 128
                                                                                _1535 = mem[_1515]
                                                                                require mem[_1515] == mem[_1515]
                                                                                require mem[_1515 + 32] == mem[_1515 + 32]
                                                                                require mem[_1515 + 64] == mem[_1515 + 64]
                                                                                _1595 = mem[_1515 + 96]
                                                                                require mem[_1515 + 96] == mem[_1515 + 96]
                                                                                mem[mem[64] + 4] = mem[_1515 + 96]
                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                        gas gas_remaining wei
                                                                                       args _1595
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _1655 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_1655] == mem[_1655]
                                                                                    if _1535 < mem[_1655]:
                                                                                        if idx == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                    else:
                                                                                        mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                        mem[mem[64] + 4] = _1344
                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                        call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                             gas gas_remaining wei
                                                                                            args _1344
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            if idx == -1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                idx = idx + 1
                                                                                                continue 
                                            else:
                                                mem[64] = (32 * sub_0dbe5414.length) + 128
                                                mem[96] = sub_0dbe5414.length
                                                if not sub_0dbe5414.length:
                                                    idx = 0
                                                    while idx < 11:
                                                        if idx >= mem[96]:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            _506 = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                            require ext_code.size(sub_4b30d6c2Address)
                                                            staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args _506
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _556 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                require mem[_556] == mem[_556]
                                                                if block.timestamp <= mem[_556]:
                                                                    if idx == -1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        idx = idx + 1
                                                                        continue 
                                                                else:
                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                    call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args _506
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                        staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                gas gas_remaining wei
                                                                               args _506
                                                                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _676 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 128
                                                                            _696 = mem[_676]
                                                                            require mem[_676] == mem[_676]
                                                                            require mem[_676 + 32] == mem[_676 + 32]
                                                                            require mem[_676 + 64] == mem[_676 + 64]
                                                                            _756 = mem[_676 + 96]
                                                                            require mem[_676 + 96] == mem[_676 + 96]
                                                                            mem[mem[64] + 4] = mem[_676 + 96]
                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                            staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                    gas gas_remaining wei
                                                                                   args _756
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _816 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                require mem[_816] == mem[_816]
                                                                                if _696 < mem[_816]:
                                                                                    if idx == -1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                                else:
                                                                                    mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                    mem[mem[64] + 4] = _506
                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                    call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                         gas gas_remaining wei
                                                                                        args _506
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        if idx == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            idx = idx + 1
                                                                                            continue 
                                                else:
                                                    mem[0] = 13
                                                    mem[128] = uint256(sub_0dbe5414.field_0)
                                                    idx = 128
                                                    s = 0
                                                    while (32 * sub_0dbe5414.length) + 96 > idx:
                                                        mem[idx + 32] = sub_0dbe5414[s].field_256
                                                        idx = idx + 32
                                                        s = s + 1
                                                        continue 
                                                    idx = 0
                                                    while idx < 11:
                                                        if idx >= mem[96]:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            _1346 = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                            require ext_code.size(sub_4b30d6c2Address)
                                                            staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args _1346
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _1396 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                require mem[_1396] == mem[_1396]
                                                                if block.timestamp <= mem[_1396]:
                                                                    if idx == -1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        idx = idx + 1
                                                                        continue 
                                                                else:
                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                    call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args _1346
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                        staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                gas gas_remaining wei
                                                                               args _1346
                                                                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _1516 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 128
                                                                            _1536 = mem[_1516]
                                                                            require mem[_1516] == mem[_1516]
                                                                            require mem[_1516 + 32] == mem[_1516 + 32]
                                                                            require mem[_1516 + 64] == mem[_1516 + 64]
                                                                            _1596 = mem[_1516 + 96]
                                                                            require mem[_1516 + 96] == mem[_1516 + 96]
                                                                            mem[mem[64] + 4] = mem[_1516 + 96]
                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                            staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                    gas gas_remaining wei
                                                                                   args _1596
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _1656 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                require mem[_1656] == mem[_1656]
                                                                                if _1536 < mem[_1656]:
                                                                                    if idx == -1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                                else:
                                                                                    mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                    mem[mem[64] + 4] = _1346
                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                    call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                         gas gas_remaining wei
                                                                                        args _1346
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        if idx == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            idx = idx + 1
                                                                                            continue 
                                        else:
                                            mem[64] = (32 * sub_413056f7.length) + 128
                                            mem[96] = sub_413056f7.length
                                            if not sub_413056f7.length:
                                                idx = 0
                                                while idx < 11:
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    else:
                                                        _508 = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                        require ext_code.size(sub_4b30d6c2Address)
                                                        staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args _508
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            _557 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_557] == mem[_557]
                                                            if block.timestamp <= mem[_557]:
                                                                if idx == -1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    idx = idx + 1
                                                                    continue 
                                                            else:
                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args _508
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                    staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                            gas gas_remaining wei
                                                                           args _508
                                                                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _677 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 128
                                                                        _697 = mem[_677]
                                                                        require mem[_677] == mem[_677]
                                                                        require mem[_677 + 32] == mem[_677 + 32]
                                                                        require mem[_677 + 64] == mem[_677 + 64]
                                                                        _757 = mem[_677 + 96]
                                                                        require mem[_677 + 96] == mem[_677 + 96]
                                                                        mem[mem[64] + 4] = mem[_677 + 96]
                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                        staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                gas gas_remaining wei
                                                                               args _757
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _817 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_817] == mem[_817]
                                                                            if _697 < mem[_817]:
                                                                                if idx == -1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                            else:
                                                                                mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                mem[mem[64] + 4] = _508
                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args _508
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    if idx == -1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        idx = idx + 1
                                                                                        continue 
                                            else:
                                                mem[0] = 12
                                                mem[128] = uint256(sub_413056f7.field_0)
                                                idx = 128
                                                s = 0
                                                while (32 * sub_413056f7.length) + 96 > idx:
                                                    mem[idx + 32] = sub_413056f7[s].field_256
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                                idx = 0
                                                while idx < 11:
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    else:
                                                        _1348 = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                        require ext_code.size(sub_4b30d6c2Address)
                                                        staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args _1348
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            _1397 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_1397] == mem[_1397]
                                                            if block.timestamp <= mem[_1397]:
                                                                if idx == -1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    idx = idx + 1
                                                                    continue 
                                                            else:
                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args _1348
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                    staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                            gas gas_remaining wei
                                                                           args _1348
                                                                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _1517 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 128
                                                                        _1537 = mem[_1517]
                                                                        require mem[_1517] == mem[_1517]
                                                                        require mem[_1517 + 32] == mem[_1517 + 32]
                                                                        require mem[_1517 + 64] == mem[_1517 + 64]
                                                                        _1597 = mem[_1517 + 96]
                                                                        require mem[_1517 + 96] == mem[_1517 + 96]
                                                                        mem[mem[64] + 4] = mem[_1517 + 96]
                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                        staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                gas gas_remaining wei
                                                                               args _1597
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _1657 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_1657] == mem[_1657]
                                                                            if _1537 < mem[_1657]:
                                                                                if idx == -1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                            else:
                                                                                mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                mem[mem[64] + 4] = _1348
                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args _1348
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    if idx == -1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        idx = idx + 1
                                                                                        continue 
                                    else:
                                        mem[64] = (32 * sub_cfab0112.length) + 128
                                        mem[96] = sub_cfab0112.length
                                        if not sub_cfab0112.length:
                                            idx = 0
                                            while idx < 11:
                                                if idx >= mem[96]:
                                                    revert with 'NH{q', 50
                                                else:
                                                    _510 = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                    require ext_code.size(sub_4b30d6c2Address)
                                                    staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args _510
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _558 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_558] == mem[_558]
                                                        if block.timestamp <= mem[_558]:
                                                            if idx == -1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            require ext_code.size(sub_4b30d6c2Address)
                                                            call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args _510
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                        gas gas_remaining wei
                                                                       args _510
                                                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _678 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 128
                                                                    _698 = mem[_678]
                                                                    require mem[_678] == mem[_678]
                                                                    require mem[_678 + 32] == mem[_678 + 32]
                                                                    require mem[_678 + 64] == mem[_678 + 64]
                                                                    _758 = mem[_678 + 96]
                                                                    require mem[_678 + 96] == mem[_678 + 96]
                                                                    mem[mem[64] + 4] = mem[_678 + 96]
                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                    staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                            gas gas_remaining wei
                                                                           args _758
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _818 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_818] == mem[_818]
                                                                        if _698 < mem[_818]:
                                                                            if idx == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                idx = idx + 1
                                                                                continue 
                                                                        else:
                                                                            mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = _510
                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                            call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args _510
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                if idx == -1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    idx = idx + 1
                                                                                    continue 
                                        else:
                                            mem[0] = 11
                                            mem[128] = uint256(sub_cfab0112.field_0)
                                            idx = 128
                                            s = 0
                                            while (32 * sub_cfab0112.length) + 96 > idx:
                                                mem[idx + 32] = sub_cfab0112[s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            idx = 0
                                            while idx < 11:
                                                if idx >= mem[96]:
                                                    revert with 'NH{q', 50
                                                else:
                                                    _1350 = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                    require ext_code.size(sub_4b30d6c2Address)
                                                    staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args _1350
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _1398 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_1398] == mem[_1398]
                                                        if block.timestamp <= mem[_1398]:
                                                            if idx == -1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            require ext_code.size(sub_4b30d6c2Address)
                                                            call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args _1350
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                        gas gas_remaining wei
                                                                       args _1350
                                                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _1518 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 128
                                                                    _1538 = mem[_1518]
                                                                    require mem[_1518] == mem[_1518]
                                                                    require mem[_1518 + 32] == mem[_1518 + 32]
                                                                    require mem[_1518 + 64] == mem[_1518 + 64]
                                                                    _1598 = mem[_1518 + 96]
                                                                    require mem[_1518 + 96] == mem[_1518 + 96]
                                                                    mem[mem[64] + 4] = mem[_1518 + 96]
                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                    staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                            gas gas_remaining wei
                                                                           args _1598
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _1658 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_1658] == mem[_1658]
                                                                        if _1538 < mem[_1658]:
                                                                            if idx == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                idx = idx + 1
                                                                                continue 
                                                                        else:
                                                                            mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = _1350
                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                            call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args _1350
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                if idx == -1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    idx = idx + 1
                                                                                    continue 
                                else:
                                    mem[64] = (32 * sub_88fe41ba.length) + 128
                                    mem[96] = sub_88fe41ba.length
                                    if not sub_88fe41ba.length:
                                        idx = 0
                                        while idx < 11:
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            else:
                                                _512 = mem[(32 * idx) + 128]
                                                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                require ext_code.size(sub_4b30d6c2Address)
                                                staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args _512
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _559 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_559] == mem[_559]
                                                    if block.timestamp <= mem[_559]:
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        require ext_code.size(sub_4b30d6c2Address)
                                                        call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _512
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(sub_4b30d6c2Address)
                                                            staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args _512
                                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _679 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 128
                                                                _699 = mem[_679]
                                                                require mem[_679] == mem[_679]
                                                                require mem[_679 + 32] == mem[_679 + 32]
                                                                require mem[_679 + 64] == mem[_679 + 64]
                                                                _759 = mem[_679 + 96]
                                                                require mem[_679 + 96] == mem[_679 + 96]
                                                                mem[mem[64] + 4] = mem[_679 + 96]
                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                        gas gas_remaining wei
                                                                       args _759
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _819 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_819] == mem[_819]
                                                                    if _699 < mem[_819]:
                                                                        if idx == -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            idx = idx + 1
                                                                            continue 
                                                                    else:
                                                                        mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                        mem[mem[64] + 4] = _512
                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                        call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args _512
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            if idx == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                idx = idx + 1
                                                                                continue 
                                    else:
                                        mem[0] = 10
                                        mem[128] = uint256(sub_88fe41ba.field_0)
                                        idx = 128
                                        s = 0
                                        while (32 * sub_88fe41ba.length) + 96 > idx:
                                            mem[idx + 32] = sub_88fe41ba[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        idx = 0
                                        while idx < 11:
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            else:
                                                _1352 = mem[(32 * idx) + 128]
                                                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                require ext_code.size(sub_4b30d6c2Address)
                                                staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args _1352
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _1399 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_1399] == mem[_1399]
                                                    if block.timestamp <= mem[_1399]:
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        require ext_code.size(sub_4b30d6c2Address)
                                                        call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _1352
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(sub_4b30d6c2Address)
                                                            staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args _1352
                                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _1519 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 128
                                                                _1539 = mem[_1519]
                                                                require mem[_1519] == mem[_1519]
                                                                require mem[_1519 + 32] == mem[_1519 + 32]
                                                                require mem[_1519 + 64] == mem[_1519 + 64]
                                                                _1599 = mem[_1519 + 96]
                                                                require mem[_1519 + 96] == mem[_1519 + 96]
                                                                mem[mem[64] + 4] = mem[_1519 + 96]
                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                        gas gas_remaining wei
                                                                       args _1599
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _1659 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_1659] == mem[_1659]
                                                                    if _1539 < mem[_1659]:
                                                                        if idx == -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            idx = idx + 1
                                                                            continue 
                                                                    else:
                                                                        mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                        mem[mem[64] + 4] = _1352
                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                        call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args _1352
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            if idx == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                idx = idx + 1
                                                                                continue 
                            else:
                                mem[64] = (32 * sub_f3c86151.length) + 128
                                mem[96] = sub_f3c86151.length
                                if not sub_f3c86151.length:
                                    idx = 0
                                    while idx < 11:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        else:
                                            _514 = mem[(32 * idx) + 128]
                                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                            require ext_code.size(sub_4b30d6c2Address)
                                            staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args _514
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                _560 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_560] == mem[_560]
                                                if block.timestamp <= mem[_560]:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    require ext_code.size(sub_4b30d6c2Address)
                                                    call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _514
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(sub_4b30d6c2Address)
                                                        staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args _514
                                                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            _680 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 128
                                                            _700 = mem[_680]
                                                            require mem[_680] == mem[_680]
                                                            require mem[_680 + 32] == mem[_680 + 32]
                                                            require mem[_680 + 64] == mem[_680 + 64]
                                                            _760 = mem[_680 + 96]
                                                            require mem[_680 + 96] == mem[_680 + 96]
                                                            mem[mem[64] + 4] = mem[_680 + 96]
                                                            require ext_code.size(sub_4b30d6c2Address)
                                                            staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args _760
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _820 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                require mem[_820] == mem[_820]
                                                                if _700 < mem[_820]:
                                                                    if idx == -1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        idx = idx + 1
                                                                        continue 
                                                                else:
                                                                    mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = _514
                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                    call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args _514
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if idx == -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            idx = idx + 1
                                                                            continue 
                                else:
                                    mem[0] = 9
                                    mem[128] = uint256(sub_f3c86151.field_0)
                                    idx = 128
                                    s = 0
                                    while (32 * sub_f3c86151.length) + 96 > idx:
                                        mem[idx + 32] = sub_f3c86151[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    idx = 0
                                    while idx < 11:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        else:
                                            _1354 = mem[(32 * idx) + 128]
                                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                            require ext_code.size(sub_4b30d6c2Address)
                                            staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args _1354
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                _1400 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_1400] == mem[_1400]
                                                if block.timestamp <= mem[_1400]:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    require ext_code.size(sub_4b30d6c2Address)
                                                    call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _1354
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(sub_4b30d6c2Address)
                                                        staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args _1354
                                                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            _1520 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 128
                                                            _1540 = mem[_1520]
                                                            require mem[_1520] == mem[_1520]
                                                            require mem[_1520 + 32] == mem[_1520 + 32]
                                                            require mem[_1520 + 64] == mem[_1520 + 64]
                                                            _1600 = mem[_1520 + 96]
                                                            require mem[_1520 + 96] == mem[_1520 + 96]
                                                            mem[mem[64] + 4] = mem[_1520 + 96]
                                                            require ext_code.size(sub_4b30d6c2Address)
                                                            staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args _1600
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _1660 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                require mem[_1660] == mem[_1660]
                                                                if _1540 < mem[_1660]:
                                                                    if idx == -1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        idx = idx + 1
                                                                        continue 
                                                                else:
                                                                    mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = _1354
                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                    call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args _1354
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        if idx == -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            idx = idx + 1
                                                                            continue 
                        else:
                            mem[64] = (32 * sub_8d373d93.length) + 128
                            mem[96] = sub_8d373d93.length
                            if not sub_8d373d93.length:
                                idx = 0
                                while idx < 11:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    else:
                                        _516 = mem[(32 * idx) + 128]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                        require ext_code.size(sub_4b30d6c2Address)
                                        staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args _516
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            _561 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_561] == mem[_561]
                                            if block.timestamp <= mem[_561]:
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                require ext_code.size(sub_4b30d6c2Address)
                                                call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _516
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(sub_4b30d6c2Address)
                                                    staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args _516
                                                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _681 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 128
                                                        _701 = mem[_681]
                                                        require mem[_681] == mem[_681]
                                                        require mem[_681 + 32] == mem[_681 + 32]
                                                        require mem[_681 + 64] == mem[_681 + 64]
                                                        _761 = mem[_681 + 96]
                                                        require mem[_681 + 96] == mem[_681 + 96]
                                                        mem[mem[64] + 4] = mem[_681 + 96]
                                                        require ext_code.size(sub_4b30d6c2Address)
                                                        staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args _761
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            _821 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_821] == mem[_821]
                                                            if _701 < mem[_821]:
                                                                if idx == -1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    idx = idx + 1
                                                                    continue 
                                                            else:
                                                                mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = _516
                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args _516
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if idx == -1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        idx = idx + 1
                                                                        continue 
                            else:
                                mem[0] = 8
                                mem[128] = uint256(sub_8d373d93.field_0)
                                idx = 128
                                s = 0
                                while (32 * sub_8d373d93.length) + 96 > idx:
                                    mem[idx + 32] = sub_8d373d93[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                idx = 0
                                while idx < 11:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    else:
                                        _1356 = mem[(32 * idx) + 128]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                        require ext_code.size(sub_4b30d6c2Address)
                                        staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args _1356
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            _1401 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_1401] == mem[_1401]
                                            if block.timestamp <= mem[_1401]:
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                require ext_code.size(sub_4b30d6c2Address)
                                                call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _1356
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(sub_4b30d6c2Address)
                                                    staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args _1356
                                                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _1521 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 128
                                                        _1541 = mem[_1521]
                                                        require mem[_1521] == mem[_1521]
                                                        require mem[_1521 + 32] == mem[_1521 + 32]
                                                        require mem[_1521 + 64] == mem[_1521 + 64]
                                                        _1601 = mem[_1521 + 96]
                                                        require mem[_1521 + 96] == mem[_1521 + 96]
                                                        mem[mem[64] + 4] = mem[_1521 + 96]
                                                        require ext_code.size(sub_4b30d6c2Address)
                                                        staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args _1601
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            _1661 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_1661] == mem[_1661]
                                                            if _1541 < mem[_1661]:
                                                                if idx == -1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    idx = idx + 1
                                                                    continue 
                                                            else:
                                                                mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = _1356
                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args _1356
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if idx == -1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        idx = idx + 1
                                                                        continue 
                    else:
                        mem[64] = (32 * sub_e19da054.length) + 128
                        mem[96] = sub_e19da054.length
                        if not sub_e19da054.length:
                            idx = 0
                            while idx < 11:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                else:
                                    _518 = mem[(32 * idx) + 128]
                                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                    require ext_code.size(sub_4b30d6c2Address)
                                    staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _518
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        _562 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_562] == mem[_562]
                                        if block.timestamp <= mem[_562]:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                idx = idx + 1
                                                continue 
                                        else:
                                            require ext_code.size(sub_4b30d6c2Address)
                                            call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _518
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(sub_4b30d6c2Address)
                                                staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args _518
                                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _682 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 128
                                                    _702 = mem[_682]
                                                    require mem[_682] == mem[_682]
                                                    require mem[_682 + 32] == mem[_682 + 32]
                                                    require mem[_682 + 64] == mem[_682 + 64]
                                                    _762 = mem[_682 + 96]
                                                    require mem[_682 + 96] == mem[_682 + 96]
                                                    mem[mem[64] + 4] = mem[_682 + 96]
                                                    require ext_code.size(sub_4b30d6c2Address)
                                                    staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args _762
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _822 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_822] == mem[_822]
                                                        if _702 < mem[_822]:
                                                            if idx == -1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = _518
                                                            require ext_code.size(sub_4b30d6c2Address)
                                                            call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args _518
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if idx == -1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    idx = idx + 1
                                                                    continue 
                        else:
                            mem[0] = 7
                            mem[128] = uint256(sub_e19da054.field_0)
                            idx = 128
                            s = 0
                            while (32 * sub_e19da054.length) + 96 > idx:
                                mem[idx + 32] = sub_e19da054[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            idx = 0
                            while idx < 11:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                else:
                                    _1358 = mem[(32 * idx) + 128]
                                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                    require ext_code.size(sub_4b30d6c2Address)
                                    staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _1358
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        _1402 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1402] == mem[_1402]
                                        if block.timestamp <= mem[_1402]:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                idx = idx + 1
                                                continue 
                                        else:
                                            require ext_code.size(sub_4b30d6c2Address)
                                            call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _1358
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(sub_4b30d6c2Address)
                                                staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args _1358
                                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _1522 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 128
                                                    _1542 = mem[_1522]
                                                    require mem[_1522] == mem[_1522]
                                                    require mem[_1522 + 32] == mem[_1522 + 32]
                                                    require mem[_1522 + 64] == mem[_1522 + 64]
                                                    _1602 = mem[_1522 + 96]
                                                    require mem[_1522 + 96] == mem[_1522 + 96]
                                                    mem[mem[64] + 4] = mem[_1522 + 96]
                                                    require ext_code.size(sub_4b30d6c2Address)
                                                    staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args _1602
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _1662 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_1662] == mem[_1662]
                                                        if _1542 < mem[_1662]:
                                                            if idx == -1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = _1358
                                                            require ext_code.size(sub_4b30d6c2Address)
                                                            call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args _1358
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if idx == -1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    idx = idx + 1
                                                                    continue 
                else:
                    mem[64] = (32 * sub_0aaaeba3.length) + 128
                    mem[96] = sub_0aaaeba3.length
                    if not sub_0aaaeba3.length:
                        idx = 0
                        while idx < 11:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            else:
                                _520 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                require ext_code.size(sub_4b30d6c2Address)
                                staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args _520
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    _563 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_563] == mem[_563]
                                    if block.timestamp <= mem[_563]:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        else:
                                            idx = idx + 1
                                            continue 
                                    else:
                                        require ext_code.size(sub_4b30d6c2Address)
                                        call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _520
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require ext_code.size(sub_4b30d6c2Address)
                                            staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args _520
                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                _683 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 128
                                                _703 = mem[_683]
                                                require mem[_683] == mem[_683]
                                                require mem[_683 + 32] == mem[_683 + 32]
                                                require mem[_683 + 64] == mem[_683 + 64]
                                                _763 = mem[_683 + 96]
                                                require mem[_683 + 96] == mem[_683 + 96]
                                                mem[mem[64] + 4] = mem[_683 + 96]
                                                require ext_code.size(sub_4b30d6c2Address)
                                                staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args _763
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _823 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_823] == mem[_823]
                                                    if _703 < mem[_823]:
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _520
                                                        require ext_code.size(sub_4b30d6c2Address)
                                                        call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _520
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if idx == -1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                idx = idx + 1
                                                                continue 
                    else:
                        mem[0] = 6
                        mem[128] = uint256(sub_0aaaeba3.field_0)
                        idx = 128
                        s = 0
                        while (32 * sub_0aaaeba3.length) + 96 > idx:
                            mem[idx + 32] = sub_0aaaeba3[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        idx = 0
                        while idx < 11:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            else:
                                _1360 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                require ext_code.size(sub_4b30d6c2Address)
                                staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args _1360
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    _1403 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1403] == mem[_1403]
                                    if block.timestamp <= mem[_1403]:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        else:
                                            idx = idx + 1
                                            continue 
                                    else:
                                        require ext_code.size(sub_4b30d6c2Address)
                                        call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1360
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require ext_code.size(sub_4b30d6c2Address)
                                            staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args _1360
                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                _1523 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 128
                                                _1543 = mem[_1523]
                                                require mem[_1523] == mem[_1523]
                                                require mem[_1523 + 32] == mem[_1523 + 32]
                                                require mem[_1523 + 64] == mem[_1523 + 64]
                                                _1603 = mem[_1523 + 96]
                                                require mem[_1523 + 96] == mem[_1523 + 96]
                                                mem[mem[64] + 4] = mem[_1523 + 96]
                                                require ext_code.size(sub_4b30d6c2Address)
                                                staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args _1603
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _1663 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_1663] == mem[_1663]
                                                    if _1543 < mem[_1663]:
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            idx = idx + 1
                                                            continue 
                                                    else:
                                                        mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _1360
                                                        require ext_code.size(sub_4b30d6c2Address)
                                                        call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _1360
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if idx == -1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                idx = idx + 1
                                                                continue 
            else:
                mem[64] = (32 * sub_4ae07296.length) + 128
                mem[96] = sub_4ae07296.length
                if not sub_4ae07296.length:
                    idx = 0
                    while idx < 11:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        else:
                            _522 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(sub_4b30d6c2Address)
                            staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _522
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                _564 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_564] == mem[_564]
                                if block.timestamp <= mem[_564]:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    else:
                                        idx = idx + 1
                                        continue 
                                else:
                                    require ext_code.size(sub_4b30d6c2Address)
                                    call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _522
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(sub_4b30d6c2Address)
                                        staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args _522
                                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            _684 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 128
                                            _704 = mem[_684]
                                            require mem[_684] == mem[_684]
                                            require mem[_684 + 32] == mem[_684 + 32]
                                            require mem[_684 + 64] == mem[_684 + 64]
                                            _764 = mem[_684 + 96]
                                            require mem[_684 + 96] == mem[_684 + 96]
                                            mem[mem[64] + 4] = mem[_684 + 96]
                                            require ext_code.size(sub_4b30d6c2Address)
                                            staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args _764
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                _824 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_824] == mem[_824]
                                                if _704 < mem[_824]:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _522
                                                    require ext_code.size(sub_4b30d6c2Address)
                                                    call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _522
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            idx = idx + 1
                                                            continue 
                else:
                    mem[0] = 5
                    mem[128] = uint256(sub_4ae07296.field_0)
                    idx = 128
                    s = 0
                    while (32 * sub_4ae07296.length) + 96 > idx:
                        mem[idx + 32] = sub_4ae07296[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    idx = 0
                    while idx < 11:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        else:
                            _1362 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(sub_4b30d6c2Address)
                            staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _1362
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                _1404 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1404] == mem[_1404]
                                if block.timestamp <= mem[_1404]:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    else:
                                        idx = idx + 1
                                        continue 
                                else:
                                    require ext_code.size(sub_4b30d6c2Address)
                                    call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _1362
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(sub_4b30d6c2Address)
                                        staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args _1362
                                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            _1524 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 128
                                            _1544 = mem[_1524]
                                            require mem[_1524] == mem[_1524]
                                            require mem[_1524 + 32] == mem[_1524 + 32]
                                            require mem[_1524 + 64] == mem[_1524 + 64]
                                            _1604 = mem[_1524 + 96]
                                            require mem[_1524 + 96] == mem[_1524 + 96]
                                            mem[mem[64] + 4] = mem[_1524 + 96]
                                            require ext_code.size(sub_4b30d6c2Address)
                                            staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args _1604
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                _1664 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_1664] == mem[_1664]
                                                if _1544 < mem[_1664]:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _1362
                                                    require ext_code.size(sub_4b30d6c2Address)
                                                    call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _1362
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            idx = idx + 1
                                                            continue 
        else:
            mem[64] = (32 * sub_38326ac8.length) + 128
            mem[96] = sub_38326ac8.length
            if not sub_38326ac8.length:
                idx = 0
                while idx < 11:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    else:
                        _524 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(sub_4b30d6c2Address)
                        staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args _524
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            _565 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_565] == mem[_565]
                            if block.timestamp <= mem[_565]:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                else:
                                    idx = idx + 1
                                    continue 
                            else:
                                require ext_code.size(sub_4b30d6c2Address)
                                call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _524
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(sub_4b30d6c2Address)
                                    staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _524
                                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        _685 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 128
                                        _705 = mem[_685]
                                        require mem[_685] == mem[_685]
                                        require mem[_685 + 32] == mem[_685 + 32]
                                        require mem[_685 + 64] == mem[_685 + 64]
                                        _765 = mem[_685 + 96]
                                        require mem[_685 + 96] == mem[_685 + 96]
                                        mem[mem[64] + 4] = mem[_685 + 96]
                                        require ext_code.size(sub_4b30d6c2Address)
                                        staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args _765
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            _825 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_825] == mem[_825]
                                            if _705 < mem[_825]:
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _524
                                                require ext_code.size(sub_4b30d6c2Address)
                                                call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _524
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
            else:
                mem[0] = 4
                mem[128] = uint256(sub_38326ac8.field_0)
                idx = 128
                s = 0
                while (32 * sub_38326ac8.length) + 96 > idx:
                    mem[idx + 32] = sub_38326ac8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                idx = 0
                while idx < 11:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    else:
                        _1364 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(sub_4b30d6c2Address)
                        staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args _1364
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            _1405 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1405] == mem[_1405]
                            if block.timestamp <= mem[_1405]:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                else:
                                    idx = idx + 1
                                    continue 
                            else:
                                require ext_code.size(sub_4b30d6c2Address)
                                call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _1364
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(sub_4b30d6c2Address)
                                    staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _1364
                                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        _1525 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 128
                                        _1545 = mem[_1525]
                                        require mem[_1525] == mem[_1525]
                                        require mem[_1525 + 32] == mem[_1525 + 32]
                                        require mem[_1525 + 64] == mem[_1525 + 64]
                                        _1605 = mem[_1525 + 96]
                                        require mem[_1525 + 96] == mem[_1525 + 96]
                                        mem[mem[64] + 4] = mem[_1525 + 96]
                                        require ext_code.size(sub_4b30d6c2Address)
                                        staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args _1605
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            _1665 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_1665] == mem[_1665]
                                            if _1545 < mem[_1665]:
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _1364
                                                require ext_code.size(sub_4b30d6c2Address)
                                                call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _1364
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
}



}
