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
    if arg1 == 1:
        mem[64] = (32 * sub_38326ac8.length) + 128
        mem[96] = sub_38326ac8.length
        if not sub_38326ac8.length:
            idx = 0
            while idx < 11:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _564 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(sub_4b30d6c2Address)
                staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                        gas gas_remaining wei
                       args _564
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _605 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_605] == mem[_605]
                if block.timestamp <= mem[_605]:
                    revert with 0, 'time error'
                require ext_code.size(sub_4b30d6c2Address)
                call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args _564
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_4b30d6c2Address)
                staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                        gas gas_remaining wei
                       args _564
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _765 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _785 = mem[_765]
                require mem[_765] == mem[_765]
                require mem[_765 + 32] == mem[_765 + 32]
                require mem[_765 + 64] == mem[_765 + 64]
                _845 = mem[_765 + 96]
                require mem[_765 + 96] == mem[_765 + 96]
                mem[mem[64] + 4] = mem[_765 + 96]
                require ext_code.size(sub_4b30d6c2Address)
                staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                        gas gas_remaining wei
                       args _845
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _905 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_905] == mem[_905]
                if _785 >= mem[_905]:
                    mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _564
                    require ext_code.size(sub_4b30d6c2Address)
                    call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                         gas gas_remaining wei
                        args _564
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
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
                _1484 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(sub_4b30d6c2Address)
                staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1484
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1525 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1525] == mem[_1525]
                if block.timestamp <= mem[_1525]:
                    revert with 0, 'time error'
                require ext_code.size(sub_4b30d6c2Address)
                call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args _1484
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_4b30d6c2Address)
                staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1484
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1685 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1705 = mem[_1685]
                require mem[_1685] == mem[_1685]
                require mem[_1685 + 32] == mem[_1685 + 32]
                require mem[_1685 + 64] == mem[_1685 + 64]
                _1765 = mem[_1685 + 96]
                require mem[_1685 + 96] == mem[_1685 + 96]
                mem[mem[64] + 4] = mem[_1685 + 96]
                require ext_code.size(sub_4b30d6c2Address)
                staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1765
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1825 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1825] == mem[_1825]
                if _1705 >= mem[_1825]:
                    mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1484
                    require ext_code.size(sub_4b30d6c2Address)
                    call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                         gas gas_remaining wei
                        args _1484
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    else:
        if arg1 == 2:
            mem[64] = (32 * sub_4ae07296.length) + 128
            mem[96] = sub_4ae07296.length
            if not sub_4ae07296.length:
                idx = 0
                while idx < 11:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _562 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                    require ext_code.size(sub_4b30d6c2Address)
                    staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                            gas gas_remaining wei
                           args _562
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _604 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_604] == mem[_604]
                    if block.timestamp <= mem[_604]:
                        revert with 0, 'time error'
                    require ext_code.size(sub_4b30d6c2Address)
                    call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                         gas gas_remaining wei
                        args _562
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_4b30d6c2Address)
                    staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                            gas gas_remaining wei
                           args _562
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _764 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _784 = mem[_764]
                    require mem[_764] == mem[_764]
                    require mem[_764 + 32] == mem[_764 + 32]
                    require mem[_764 + 64] == mem[_764 + 64]
                    _844 = mem[_764 + 96]
                    require mem[_764 + 96] == mem[_764 + 96]
                    mem[mem[64] + 4] = mem[_764 + 96]
                    require ext_code.size(sub_4b30d6c2Address)
                    staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                            gas gas_remaining wei
                           args _844
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _904 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_904] == mem[_904]
                    if _784 >= mem[_904]:
                        mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _562
                        require ext_code.size(sub_4b30d6c2Address)
                        call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                             gas gas_remaining wei
                            args _562
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
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
                    _1482 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                    require ext_code.size(sub_4b30d6c2Address)
                    staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                            gas gas_remaining wei
                           args _1482
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1524 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1524] == mem[_1524]
                    if block.timestamp <= mem[_1524]:
                        revert with 0, 'time error'
                    require ext_code.size(sub_4b30d6c2Address)
                    call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                         gas gas_remaining wei
                        args _1482
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_4b30d6c2Address)
                    staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                            gas gas_remaining wei
                           args _1482
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1684 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1704 = mem[_1684]
                    require mem[_1684] == mem[_1684]
                    require mem[_1684 + 32] == mem[_1684 + 32]
                    require mem[_1684 + 64] == mem[_1684 + 64]
                    _1764 = mem[_1684 + 96]
                    require mem[_1684 + 96] == mem[_1684 + 96]
                    mem[mem[64] + 4] = mem[_1684 + 96]
                    require ext_code.size(sub_4b30d6c2Address)
                    staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                            gas gas_remaining wei
                           args _1764
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1824 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1824] == mem[_1824]
                    if _1704 >= mem[_1824]:
                        mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1482
                        require ext_code.size(sub_4b30d6c2Address)
                        call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                             gas gas_remaining wei
                            args _1482
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
        else:
            if arg1 == 3:
                mem[64] = (32 * sub_0aaaeba3.length) + 128
                mem[96] = sub_0aaaeba3.length
                if not sub_0aaaeba3.length:
                    idx = 0
                    while idx < 11:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _560 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(sub_4b30d6c2Address)
                        staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args _560
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _603 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_603] == mem[_603]
                        if block.timestamp <= mem[_603]:
                            revert with 0, 'time error'
                        require ext_code.size(sub_4b30d6c2Address)
                        call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                             gas gas_remaining wei
                            args _560
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_4b30d6c2Address)
                        staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                gas gas_remaining wei
                               args _560
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _763 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _783 = mem[_763]
                        require mem[_763] == mem[_763]
                        require mem[_763 + 32] == mem[_763 + 32]
                        require mem[_763 + 64] == mem[_763 + 64]
                        _843 = mem[_763 + 96]
                        require mem[_763 + 96] == mem[_763 + 96]
                        mem[mem[64] + 4] = mem[_763 + 96]
                        require ext_code.size(sub_4b30d6c2Address)
                        staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                gas gas_remaining wei
                               args _843
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _903 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_903] == mem[_903]
                        if _783 >= mem[_903]:
                            mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _560
                            require ext_code.size(sub_4b30d6c2Address)
                            call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _560
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
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
                        _1480 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                        require ext_code.size(sub_4b30d6c2Address)
                        staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args _1480
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1523 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1523] == mem[_1523]
                        if block.timestamp <= mem[_1523]:
                            revert with 0, 'time error'
                        require ext_code.size(sub_4b30d6c2Address)
                        call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                             gas gas_remaining wei
                            args _1480
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_4b30d6c2Address)
                        staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                gas gas_remaining wei
                               args _1480
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1683 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1703 = mem[_1683]
                        require mem[_1683] == mem[_1683]
                        require mem[_1683 + 32] == mem[_1683 + 32]
                        require mem[_1683 + 64] == mem[_1683 + 64]
                        _1763 = mem[_1683 + 96]
                        require mem[_1683 + 96] == mem[_1683 + 96]
                        mem[mem[64] + 4] = mem[_1683 + 96]
                        require ext_code.size(sub_4b30d6c2Address)
                        staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                gas gas_remaining wei
                               args _1763
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1823 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1823] == mem[_1823]
                        if _1703 >= mem[_1823]:
                            mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1480
                            require ext_code.size(sub_4b30d6c2Address)
                            call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _1480
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
            else:
                if arg1 == 4:
                    mem[64] = (32 * sub_e19da054.length) + 128
                    mem[96] = sub_e19da054.length
                    if not sub_e19da054.length:
                        idx = 0
                        while idx < 11:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _558 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(sub_4b30d6c2Address)
                            staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _558
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _602 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_602] == mem[_602]
                            if block.timestamp <= mem[_602]:
                                revert with 0, 'time error'
                            require ext_code.size(sub_4b30d6c2Address)
                            call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _558
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_4b30d6c2Address)
                            staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _558
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _762 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            _782 = mem[_762]
                            require mem[_762] == mem[_762]
                            require mem[_762 + 32] == mem[_762 + 32]
                            require mem[_762 + 64] == mem[_762 + 64]
                            _842 = mem[_762 + 96]
                            require mem[_762 + 96] == mem[_762 + 96]
                            mem[mem[64] + 4] = mem[_762 + 96]
                            require ext_code.size(sub_4b30d6c2Address)
                            staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _842
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _902 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_902] == mem[_902]
                            if _782 >= mem[_902]:
                                mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _558
                                require ext_code.size(sub_4b30d6c2Address)
                                call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _558
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
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
                            _1478 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                            require ext_code.size(sub_4b30d6c2Address)
                            staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _1478
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1522 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1522] == mem[_1522]
                            if block.timestamp <= mem[_1522]:
                                revert with 0, 'time error'
                            require ext_code.size(sub_4b30d6c2Address)
                            call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _1478
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_4b30d6c2Address)
                            staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _1478
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1682 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            _1702 = mem[_1682]
                            require mem[_1682] == mem[_1682]
                            require mem[_1682 + 32] == mem[_1682 + 32]
                            require mem[_1682 + 64] == mem[_1682 + 64]
                            _1762 = mem[_1682 + 96]
                            require mem[_1682 + 96] == mem[_1682 + 96]
                            mem[mem[64] + 4] = mem[_1682 + 96]
                            require ext_code.size(sub_4b30d6c2Address)
                            staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _1762
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1822 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1822] == mem[_1822]
                            if _1702 >= mem[_1822]:
                                mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1478
                                require ext_code.size(sub_4b30d6c2Address)
                                call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _1478
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                else:
                    if arg1 == 5:
                        mem[64] = (32 * sub_8d373d93.length) + 128
                        mem[96] = sub_8d373d93.length
                        if not sub_8d373d93.length:
                            idx = 0
                            while idx < 11:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                _556 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                require ext_code.size(sub_4b30d6c2Address)
                                staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args _556
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _601 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_601] == mem[_601]
                                if block.timestamp <= mem[_601]:
                                    revert with 0, 'time error'
                                require ext_code.size(sub_4b30d6c2Address)
                                call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _556
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_4b30d6c2Address)
                                staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args _556
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _761 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _781 = mem[_761]
                                require mem[_761] == mem[_761]
                                require mem[_761 + 32] == mem[_761 + 32]
                                require mem[_761 + 64] == mem[_761 + 64]
                                _841 = mem[_761 + 96]
                                require mem[_761 + 96] == mem[_761 + 96]
                                mem[mem[64] + 4] = mem[_761 + 96]
                                require ext_code.size(sub_4b30d6c2Address)
                                staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args _841
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _901 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_901] == mem[_901]
                                if _781 >= mem[_901]:
                                    mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _556
                                    require ext_code.size(sub_4b30d6c2Address)
                                    call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _556
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
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
                                _1476 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                require ext_code.size(sub_4b30d6c2Address)
                                staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args _1476
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1521 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1521] == mem[_1521]
                                if block.timestamp <= mem[_1521]:
                                    revert with 0, 'time error'
                                require ext_code.size(sub_4b30d6c2Address)
                                call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _1476
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_4b30d6c2Address)
                                staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args _1476
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1681 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _1701 = mem[_1681]
                                require mem[_1681] == mem[_1681]
                                require mem[_1681 + 32] == mem[_1681 + 32]
                                require mem[_1681 + 64] == mem[_1681 + 64]
                                _1761 = mem[_1681 + 96]
                                require mem[_1681 + 96] == mem[_1681 + 96]
                                mem[mem[64] + 4] = mem[_1681 + 96]
                                require ext_code.size(sub_4b30d6c2Address)
                                staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args _1761
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1821 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1821] == mem[_1821]
                                if _1701 >= mem[_1821]:
                                    mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1476
                                    require ext_code.size(sub_4b30d6c2Address)
                                    call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _1476
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                    else:
                        if arg1 == 6:
                            mem[64] = (32 * sub_f3c86151.length) + 128
                            mem[96] = sub_f3c86151.length
                            if not sub_f3c86151.length:
                                idx = 0
                                while idx < 11:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _554 = mem[(32 * idx) + 128]
                                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                    require ext_code.size(sub_4b30d6c2Address)
                                    staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _554
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _600 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_600] == mem[_600]
                                    if block.timestamp <= mem[_600]:
                                        revert with 0, 'time error'
                                    require ext_code.size(sub_4b30d6c2Address)
                                    call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _554
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_4b30d6c2Address)
                                    staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _554
                                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _760 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 128
                                    _780 = mem[_760]
                                    require mem[_760] == mem[_760]
                                    require mem[_760 + 32] == mem[_760 + 32]
                                    require mem[_760 + 64] == mem[_760 + 64]
                                    _840 = mem[_760 + 96]
                                    require mem[_760 + 96] == mem[_760 + 96]
                                    mem[mem[64] + 4] = mem[_760 + 96]
                                    require ext_code.size(sub_4b30d6c2Address)
                                    staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _840
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _900 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_900] == mem[_900]
                                    if _780 >= mem[_900]:
                                        mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _554
                                        require ext_code.size(sub_4b30d6c2Address)
                                        call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _554
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 'NH{q', 17
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
                                    _1474 = mem[(32 * idx) + 128]
                                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                    require ext_code.size(sub_4b30d6c2Address)
                                    staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _1474
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1520 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1520] == mem[_1520]
                                    if block.timestamp <= mem[_1520]:
                                        revert with 0, 'time error'
                                    require ext_code.size(sub_4b30d6c2Address)
                                    call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _1474
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_4b30d6c2Address)
                                    staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _1474
                                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1680 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 128
                                    _1700 = mem[_1680]
                                    require mem[_1680] == mem[_1680]
                                    require mem[_1680 + 32] == mem[_1680 + 32]
                                    require mem[_1680 + 64] == mem[_1680 + 64]
                                    _1760 = mem[_1680 + 96]
                                    require mem[_1680 + 96] == mem[_1680 + 96]
                                    mem[mem[64] + 4] = mem[_1680 + 96]
                                    require ext_code.size(sub_4b30d6c2Address)
                                    staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _1760
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1820 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1820] == mem[_1820]
                                    if _1700 >= mem[_1820]:
                                        mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _1474
                                        require ext_code.size(sub_4b30d6c2Address)
                                        call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1474
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    continue 
                        else:
                            if arg1 == 7:
                                mem[64] = (32 * sub_88fe41ba.length) + 128
                                mem[96] = sub_88fe41ba.length
                                if not sub_88fe41ba.length:
                                    idx = 0
                                    while idx < 11:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        _552 = mem[(32 * idx) + 128]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                        require ext_code.size(sub_4b30d6c2Address)
                                        staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args _552
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _599 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_599] == mem[_599]
                                        if block.timestamp <= mem[_599]:
                                            revert with 0, 'time error'
                                        require ext_code.size(sub_4b30d6c2Address)
                                        call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _552
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(sub_4b30d6c2Address)
                                        staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args _552
                                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _759 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 128
                                        _779 = mem[_759]
                                        require mem[_759] == mem[_759]
                                        require mem[_759 + 32] == mem[_759 + 32]
                                        require mem[_759 + 64] == mem[_759 + 64]
                                        _839 = mem[_759 + 96]
                                        require mem[_759 + 96] == mem[_759 + 96]
                                        mem[mem[64] + 4] = mem[_759 + 96]
                                        require ext_code.size(sub_4b30d6c2Address)
                                        staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args _839
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _899 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_899] == mem[_899]
                                        if _779 >= mem[_899]:
                                            mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _552
                                            require ext_code.size(sub_4b30d6c2Address)
                                            call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _552
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 'NH{q', 17
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
                                        _1472 = mem[(32 * idx) + 128]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                        require ext_code.size(sub_4b30d6c2Address)
                                        staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args _1472
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1519 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1519] == mem[_1519]
                                        if block.timestamp <= mem[_1519]:
                                            revert with 0, 'time error'
                                        require ext_code.size(sub_4b30d6c2Address)
                                        call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1472
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(sub_4b30d6c2Address)
                                        staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args _1472
                                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1679 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 128
                                        _1699 = mem[_1679]
                                        require mem[_1679] == mem[_1679]
                                        require mem[_1679 + 32] == mem[_1679 + 32]
                                        require mem[_1679 + 64] == mem[_1679 + 64]
                                        _1759 = mem[_1679 + 96]
                                        require mem[_1679 + 96] == mem[_1679 + 96]
                                        mem[mem[64] + 4] = mem[_1679 + 96]
                                        require ext_code.size(sub_4b30d6c2Address)
                                        staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args _1759
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1819 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1819] == mem[_1819]
                                        if _1699 >= mem[_1819]:
                                            mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _1472
                                            require ext_code.size(sub_4b30d6c2Address)
                                            call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _1472
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        continue 
                            else:
                                if arg1 == 8:
                                    mem[64] = (32 * sub_cfab0112.length) + 128
                                    mem[96] = sub_cfab0112.length
                                    if not sub_cfab0112.length:
                                        idx = 0
                                        while idx < 11:
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            _550 = mem[(32 * idx) + 128]
                                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                            require ext_code.size(sub_4b30d6c2Address)
                                            staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args _550
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _598 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_598] == mem[_598]
                                            if block.timestamp <= mem[_598]:
                                                revert with 0, 'time error'
                                            require ext_code.size(sub_4b30d6c2Address)
                                            call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _550
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(sub_4b30d6c2Address)
                                            staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args _550
                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _758 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 128
                                            _778 = mem[_758]
                                            require mem[_758] == mem[_758]
                                            require mem[_758 + 32] == mem[_758 + 32]
                                            require mem[_758 + 64] == mem[_758 + 64]
                                            _838 = mem[_758 + 96]
                                            require mem[_758 + 96] == mem[_758 + 96]
                                            mem[mem[64] + 4] = mem[_758 + 96]
                                            require ext_code.size(sub_4b30d6c2Address)
                                            staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args _838
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _898 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_898] == mem[_898]
                                            if _778 >= mem[_898]:
                                                mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _550
                                                require ext_code.size(sub_4b30d6c2Address)
                                                call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _550
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 'NH{q', 17
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
                                            _1470 = mem[(32 * idx) + 128]
                                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                            require ext_code.size(sub_4b30d6c2Address)
                                            staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args _1470
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1518 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_1518] == mem[_1518]
                                            if block.timestamp <= mem[_1518]:
                                                revert with 0, 'time error'
                                            require ext_code.size(sub_4b30d6c2Address)
                                            call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _1470
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(sub_4b30d6c2Address)
                                            staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args _1470
                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1678 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 128
                                            _1698 = mem[_1678]
                                            require mem[_1678] == mem[_1678]
                                            require mem[_1678 + 32] == mem[_1678 + 32]
                                            require mem[_1678 + 64] == mem[_1678 + 64]
                                            _1758 = mem[_1678 + 96]
                                            require mem[_1678 + 96] == mem[_1678 + 96]
                                            mem[mem[64] + 4] = mem[_1678 + 96]
                                            require ext_code.size(sub_4b30d6c2Address)
                                            staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args _1758
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1818 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_1818] == mem[_1818]
                                            if _1698 >= mem[_1818]:
                                                mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _1470
                                                require ext_code.size(sub_4b30d6c2Address)
                                                call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _1470
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            continue 
                                else:
                                    if arg1 == 9:
                                        mem[64] = (32 * sub_413056f7.length) + 128
                                        mem[96] = sub_413056f7.length
                                        if not sub_413056f7.length:
                                            idx = 0
                                            while idx < 11:
                                                if idx >= mem[96]:
                                                    revert with 'NH{q', 50
                                                _548 = mem[(32 * idx) + 128]
                                                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                require ext_code.size(sub_4b30d6c2Address)
                                                staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args _548
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _597 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_597] == mem[_597]
                                                if block.timestamp <= mem[_597]:
                                                    revert with 0, 'time error'
                                                require ext_code.size(sub_4b30d6c2Address)
                                                call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _548
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(sub_4b30d6c2Address)
                                                staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args _548
                                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _757 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 128
                                                _777 = mem[_757]
                                                require mem[_757] == mem[_757]
                                                require mem[_757 + 32] == mem[_757 + 32]
                                                require mem[_757 + 64] == mem[_757 + 64]
                                                _837 = mem[_757 + 96]
                                                require mem[_757 + 96] == mem[_757 + 96]
                                                mem[mem[64] + 4] = mem[_757 + 96]
                                                require ext_code.size(sub_4b30d6c2Address)
                                                staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args _837
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _897 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_897] == mem[_897]
                                                if _777 >= mem[_897]:
                                                    mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _548
                                                    require ext_code.size(sub_4b30d6c2Address)
                                                    call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _548
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                if idx == -1:
                                                    revert with 'NH{q', 17
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
                                                _1468 = mem[(32 * idx) + 128]
                                                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                require ext_code.size(sub_4b30d6c2Address)
                                                staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args _1468
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _1517 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_1517] == mem[_1517]
                                                if block.timestamp <= mem[_1517]:
                                                    revert with 0, 'time error'
                                                require ext_code.size(sub_4b30d6c2Address)
                                                call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _1468
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(sub_4b30d6c2Address)
                                                staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args _1468
                                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _1677 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 128
                                                _1697 = mem[_1677]
                                                require mem[_1677] == mem[_1677]
                                                require mem[_1677 + 32] == mem[_1677 + 32]
                                                require mem[_1677 + 64] == mem[_1677 + 64]
                                                _1757 = mem[_1677 + 96]
                                                require mem[_1677 + 96] == mem[_1677 + 96]
                                                mem[mem[64] + 4] = mem[_1677 + 96]
                                                require ext_code.size(sub_4b30d6c2Address)
                                                staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args _1757
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _1817 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_1817] == mem[_1817]
                                                if _1697 >= mem[_1817]:
                                                    mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _1468
                                                    require ext_code.size(sub_4b30d6c2Address)
                                                    call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _1468
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if arg1 == 10:
                                            mem[64] = (32 * sub_0dbe5414.length) + 128
                                            mem[96] = sub_0dbe5414.length
                                            if not sub_0dbe5414.length:
                                                idx = 0
                                                while idx < 11:
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    _546 = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                    require ext_code.size(sub_4b30d6c2Address)
                                                    staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args _546
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _596 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_596] == mem[_596]
                                                    if block.timestamp <= mem[_596]:
                                                        revert with 0, 'time error'
                                                    require ext_code.size(sub_4b30d6c2Address)
                                                    call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _546
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(sub_4b30d6c2Address)
                                                    staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args _546
                                                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _756 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 128
                                                    _776 = mem[_756]
                                                    require mem[_756] == mem[_756]
                                                    require mem[_756 + 32] == mem[_756 + 32]
                                                    require mem[_756 + 64] == mem[_756 + 64]
                                                    _836 = mem[_756 + 96]
                                                    require mem[_756 + 96] == mem[_756 + 96]
                                                    mem[mem[64] + 4] = mem[_756 + 96]
                                                    require ext_code.size(sub_4b30d6c2Address)
                                                    staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args _836
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _896 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_896] == mem[_896]
                                                    if _776 >= mem[_896]:
                                                        mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _546
                                                        require ext_code.size(sub_4b30d6c2Address)
                                                        call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _546
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
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
                                                    _1466 = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                    require ext_code.size(sub_4b30d6c2Address)
                                                    staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args _1466
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _1516 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_1516] == mem[_1516]
                                                    if block.timestamp <= mem[_1516]:
                                                        revert with 0, 'time error'
                                                    require ext_code.size(sub_4b30d6c2Address)
                                                    call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _1466
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(sub_4b30d6c2Address)
                                                    staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args _1466
                                                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _1676 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 128
                                                    _1696 = mem[_1676]
                                                    require mem[_1676] == mem[_1676]
                                                    require mem[_1676 + 32] == mem[_1676 + 32]
                                                    require mem[_1676 + 64] == mem[_1676 + 64]
                                                    _1756 = mem[_1676 + 96]
                                                    require mem[_1676 + 96] == mem[_1676 + 96]
                                                    mem[mem[64] + 4] = mem[_1676 + 96]
                                                    require ext_code.size(sub_4b30d6c2Address)
                                                    staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args _1756
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _1816 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_1816] == mem[_1816]
                                                    if _1696 >= mem[_1816]:
                                                        mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _1466
                                                        require ext_code.size(sub_4b30d6c2Address)
                                                        call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _1466
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if arg1 == 11:
                                                mem[64] = (32 * sub_e89a07f2.length) + 128
                                                mem[96] = sub_e89a07f2.length
                                                if not sub_e89a07f2.length:
                                                    idx = 0
                                                    while idx < 11:
                                                        if idx >= mem[96]:
                                                            revert with 'NH{q', 50
                                                        _544 = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                        require ext_code.size(sub_4b30d6c2Address)
                                                        staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args _544
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _595 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_595] == mem[_595]
                                                        if block.timestamp <= mem[_595]:
                                                            revert with 0, 'time error'
                                                        require ext_code.size(sub_4b30d6c2Address)
                                                        call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _544
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(sub_4b30d6c2Address)
                                                        staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args _544
                                                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _755 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 128
                                                        _775 = mem[_755]
                                                        require mem[_755] == mem[_755]
                                                        require mem[_755 + 32] == mem[_755 + 32]
                                                        require mem[_755 + 64] == mem[_755 + 64]
                                                        _835 = mem[_755 + 96]
                                                        require mem[_755 + 96] == mem[_755 + 96]
                                                        mem[mem[64] + 4] = mem[_755 + 96]
                                                        require ext_code.size(sub_4b30d6c2Address)
                                                        staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args _835
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _895 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_895] == mem[_895]
                                                        if _775 >= mem[_895]:
                                                            mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = _544
                                                            require ext_code.size(sub_4b30d6c2Address)
                                                            call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args _544
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
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
                                                        _1464 = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                        require ext_code.size(sub_4b30d6c2Address)
                                                        staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args _1464
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _1515 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_1515] == mem[_1515]
                                                        if block.timestamp <= mem[_1515]:
                                                            revert with 0, 'time error'
                                                        require ext_code.size(sub_4b30d6c2Address)
                                                        call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _1464
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(sub_4b30d6c2Address)
                                                        staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args _1464
                                                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _1675 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 128
                                                        _1695 = mem[_1675]
                                                        require mem[_1675] == mem[_1675]
                                                        require mem[_1675 + 32] == mem[_1675 + 32]
                                                        require mem[_1675 + 64] == mem[_1675 + 64]
                                                        _1755 = mem[_1675 + 96]
                                                        require mem[_1675 + 96] == mem[_1675 + 96]
                                                        mem[mem[64] + 4] = mem[_1675 + 96]
                                                        require ext_code.size(sub_4b30d6c2Address)
                                                        staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args _1755
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _1815 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_1815] == mem[_1815]
                                                        if _1695 >= mem[_1815]:
                                                            mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = _1464
                                                            require ext_code.size(sub_4b30d6c2Address)
                                                            call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args _1464
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        if idx == -1:
                                                            revert with 'NH{q', 17
                                                        idx = idx + 1
                                                        continue 
                                            else:
                                                if arg1 == 12:
                                                    mem[64] = (32 * sub_c78b0afc.length) + 128
                                                    mem[96] = sub_c78b0afc.length
                                                    if not sub_c78b0afc.length:
                                                        idx = 0
                                                        while idx < 11:
                                                            if idx >= mem[96]:
                                                                revert with 'NH{q', 50
                                                            _542 = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                            require ext_code.size(sub_4b30d6c2Address)
                                                            staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args _542
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _594 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_594] == mem[_594]
                                                            if block.timestamp <= mem[_594]:
                                                                revert with 0, 'time error'
                                                            require ext_code.size(sub_4b30d6c2Address)
                                                            call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args _542
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(sub_4b30d6c2Address)
                                                            staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args _542
                                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _754 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 128
                                                            _774 = mem[_754]
                                                            require mem[_754] == mem[_754]
                                                            require mem[_754 + 32] == mem[_754 + 32]
                                                            require mem[_754 + 64] == mem[_754 + 64]
                                                            _834 = mem[_754 + 96]
                                                            require mem[_754 + 96] == mem[_754 + 96]
                                                            mem[mem[64] + 4] = mem[_754 + 96]
                                                            require ext_code.size(sub_4b30d6c2Address)
                                                            staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args _834
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _894 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_894] == mem[_894]
                                                            if _774 >= mem[_894]:
                                                                mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = _542
                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args _542
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            if idx == -1:
                                                                revert with 'NH{q', 17
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
                                                            _1462 = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                            require ext_code.size(sub_4b30d6c2Address)
                                                            staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args _1462
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _1514 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_1514] == mem[_1514]
                                                            if block.timestamp <= mem[_1514]:
                                                                revert with 0, 'time error'
                                                            require ext_code.size(sub_4b30d6c2Address)
                                                            call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args _1462
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(sub_4b30d6c2Address)
                                                            staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args _1462
                                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _1674 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 128
                                                            _1694 = mem[_1674]
                                                            require mem[_1674] == mem[_1674]
                                                            require mem[_1674 + 32] == mem[_1674 + 32]
                                                            require mem[_1674 + 64] == mem[_1674 + 64]
                                                            _1754 = mem[_1674 + 96]
                                                            require mem[_1674 + 96] == mem[_1674 + 96]
                                                            mem[mem[64] + 4] = mem[_1674 + 96]
                                                            require ext_code.size(sub_4b30d6c2Address)
                                                            staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args _1754
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _1814 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_1814] == mem[_1814]
                                                            if _1694 >= mem[_1814]:
                                                                mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = _1462
                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args _1462
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            if idx == -1:
                                                                revert with 'NH{q', 17
                                                            idx = idx + 1
                                                            continue 
                                                else:
                                                    if arg1 == 13:
                                                        mem[64] = (32 * sub_75d0e74b.length) + 128
                                                        mem[96] = sub_75d0e74b.length
                                                        if not sub_75d0e74b.length:
                                                            idx = 0
                                                            while idx < 11:
                                                                if idx >= mem[96]:
                                                                    revert with 'NH{q', 50
                                                                _540 = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                        gas gas_remaining wei
                                                                       args _540
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _593 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                require mem[_593] == mem[_593]
                                                                if block.timestamp <= mem[_593]:
                                                                    revert with 0, 'time error'
                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args _540
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                        gas gas_remaining wei
                                                                       args _540
                                                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _753 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 128
                                                                _773 = mem[_753]
                                                                require mem[_753] == mem[_753]
                                                                require mem[_753 + 32] == mem[_753 + 32]
                                                                require mem[_753 + 64] == mem[_753 + 64]
                                                                _833 = mem[_753 + 96]
                                                                require mem[_753 + 96] == mem[_753 + 96]
                                                                mem[mem[64] + 4] = mem[_753 + 96]
                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                        gas gas_remaining wei
                                                                       args _833
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _893 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                require mem[_893] == mem[_893]
                                                                if _773 >= mem[_893]:
                                                                    mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = _540
                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                    call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args _540
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                if idx == -1:
                                                                    revert with 'NH{q', 17
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
                                                                _1460 = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                        gas gas_remaining wei
                                                                       args _1460
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _1513 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                require mem[_1513] == mem[_1513]
                                                                if block.timestamp <= mem[_1513]:
                                                                    revert with 0, 'time error'
                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args _1460
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                        gas gas_remaining wei
                                                                       args _1460
                                                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _1673 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 128
                                                                _1693 = mem[_1673]
                                                                require mem[_1673] == mem[_1673]
                                                                require mem[_1673 + 32] == mem[_1673 + 32]
                                                                require mem[_1673 + 64] == mem[_1673 + 64]
                                                                _1753 = mem[_1673 + 96]
                                                                require mem[_1673 + 96] == mem[_1673 + 96]
                                                                mem[mem[64] + 4] = mem[_1673 + 96]
                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                        gas gas_remaining wei
                                                                       args _1753
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _1813 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                require mem[_1813] == mem[_1813]
                                                                if _1693 >= mem[_1813]:
                                                                    mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = _1460
                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                    call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args _1460
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                if idx == -1:
                                                                    revert with 'NH{q', 17
                                                                idx = idx + 1
                                                                continue 
                                                    else:
                                                        if arg1 == 14:
                                                            mem[64] = (32 * sub_cc640387.length) + 128
                                                            mem[96] = sub_cc640387.length
                                                            if not sub_cc640387.length:
                                                                idx = 0
                                                                while idx < 11:
                                                                    if idx >= mem[96]:
                                                                        revert with 'NH{q', 50
                                                                    _538 = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                    staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                            gas gas_remaining wei
                                                                           args _538
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _592 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_592] == mem[_592]
                                                                    if block.timestamp <= mem[_592]:
                                                                        revert with 0, 'time error'
                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                    call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args _538
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                    staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                            gas gas_remaining wei
                                                                           args _538
                                                                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _752 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 128
                                                                    _772 = mem[_752]
                                                                    require mem[_752] == mem[_752]
                                                                    require mem[_752 + 32] == mem[_752 + 32]
                                                                    require mem[_752 + 64] == mem[_752 + 64]
                                                                    _832 = mem[_752 + 96]
                                                                    require mem[_752 + 96] == mem[_752 + 96]
                                                                    mem[mem[64] + 4] = mem[_752 + 96]
                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                    staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                            gas gas_remaining wei
                                                                           args _832
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _892 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_892] == mem[_892]
                                                                    if _772 >= mem[_892]:
                                                                        mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                        mem[mem[64] + 4] = _538
                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                        call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args _538
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                    if idx == -1:
                                                                        revert with 'NH{q', 17
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
                                                                    _1458 = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                    staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                            gas gas_remaining wei
                                                                           args _1458
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _1512 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_1512] == mem[_1512]
                                                                    if block.timestamp <= mem[_1512]:
                                                                        revert with 0, 'time error'
                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                    call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args _1458
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                    staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                            gas gas_remaining wei
                                                                           args _1458
                                                                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _1672 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 128
                                                                    _1692 = mem[_1672]
                                                                    require mem[_1672] == mem[_1672]
                                                                    require mem[_1672 + 32] == mem[_1672 + 32]
                                                                    require mem[_1672 + 64] == mem[_1672 + 64]
                                                                    _1752 = mem[_1672 + 96]
                                                                    require mem[_1672 + 96] == mem[_1672 + 96]
                                                                    mem[mem[64] + 4] = mem[_1672 + 96]
                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                    staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                            gas gas_remaining wei
                                                                           args _1752
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    _1812 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_1812] == mem[_1812]
                                                                    if _1692 >= mem[_1812]:
                                                                        mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                        mem[mem[64] + 4] = _1458
                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                        call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args _1458
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                    if idx == -1:
                                                                        revert with 'NH{q', 17
                                                                    idx = idx + 1
                                                                    continue 
                                                        else:
                                                            if arg1 == 15:
                                                                mem[64] = (32 * sub_3d4de04e.length) + 128
                                                                mem[96] = sub_3d4de04e.length
                                                                if not sub_3d4de04e.length:
                                                                    idx = 0
                                                                    while idx < 11:
                                                                        if idx >= mem[96]:
                                                                            revert with 'NH{q', 50
                                                                        _536 = mem[(32 * idx) + 128]
                                                                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                        staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                                gas gas_remaining wei
                                                                               args _536
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        _591 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_591] == mem[_591]
                                                                        if block.timestamp <= mem[_591]:
                                                                            revert with 0, 'time error'
                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                        call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args _536
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                        staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                gas gas_remaining wei
                                                                               args _536
                                                                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        _751 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 128
                                                                        _771 = mem[_751]
                                                                        require mem[_751] == mem[_751]
                                                                        require mem[_751 + 32] == mem[_751 + 32]
                                                                        require mem[_751 + 64] == mem[_751 + 64]
                                                                        _831 = mem[_751 + 96]
                                                                        require mem[_751 + 96] == mem[_751 + 96]
                                                                        mem[mem[64] + 4] = mem[_751 + 96]
                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                        staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                gas gas_remaining wei
                                                                               args _831
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        _891 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_891] == mem[_891]
                                                                        if _771 >= mem[_891]:
                                                                            mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = _536
                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                            call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args _536
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                        if idx == -1:
                                                                            revert with 'NH{q', 17
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
                                                                        _1456 = mem[(32 * idx) + 128]
                                                                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                        staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                                gas gas_remaining wei
                                                                               args _1456
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        _1511 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_1511] == mem[_1511]
                                                                        if block.timestamp <= mem[_1511]:
                                                                            revert with 0, 'time error'
                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                        call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args _1456
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                        staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                gas gas_remaining wei
                                                                               args _1456
                                                                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        _1671 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 128
                                                                        _1691 = mem[_1671]
                                                                        require mem[_1671] == mem[_1671]
                                                                        require mem[_1671 + 32] == mem[_1671 + 32]
                                                                        require mem[_1671 + 64] == mem[_1671 + 64]
                                                                        _1751 = mem[_1671 + 96]
                                                                        require mem[_1671 + 96] == mem[_1671 + 96]
                                                                        mem[mem[64] + 4] = mem[_1671 + 96]
                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                        staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                gas gas_remaining wei
                                                                               args _1751
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        _1811 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_1811] == mem[_1811]
                                                                        if _1691 >= mem[_1811]:
                                                                            mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = _1456
                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                            call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args _1456
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                        if idx == -1:
                                                                            revert with 'NH{q', 17
                                                                        idx = idx + 1
                                                                        continue 
                                                            else:
                                                                if arg1 == 16:
                                                                    mem[64] = (32 * sub_12ffcf90.length) + 128
                                                                    mem[96] = sub_12ffcf90.length
                                                                    if not sub_12ffcf90.length:
                                                                        idx = 0
                                                                        while idx < 11:
                                                                            if idx >= mem[96]:
                                                                                revert with 'NH{q', 50
                                                                            _534 = mem[(32 * idx) + 128]
                                                                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                            staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                                    gas gas_remaining wei
                                                                                   args _534
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            _590 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_590] == mem[_590]
                                                                            if block.timestamp <= mem[_590]:
                                                                                revert with 0, 'time error'
                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                            call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args _534
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                            staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                    gas gas_remaining wei
                                                                                   args _534
                                                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            _750 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 128
                                                                            _770 = mem[_750]
                                                                            require mem[_750] == mem[_750]
                                                                            require mem[_750 + 32] == mem[_750 + 32]
                                                                            require mem[_750 + 64] == mem[_750 + 64]
                                                                            _830 = mem[_750 + 96]
                                                                            require mem[_750 + 96] == mem[_750 + 96]
                                                                            mem[mem[64] + 4] = mem[_750 + 96]
                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                            staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                    gas gas_remaining wei
                                                                                   args _830
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            _890 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_890] == mem[_890]
                                                                            if _770 >= mem[_890]:
                                                                                mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                mem[mem[64] + 4] = _534
                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args _534
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                            if idx == -1:
                                                                                revert with 'NH{q', 17
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
                                                                            _1454 = mem[(32 * idx) + 128]
                                                                            mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                            staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                                    gas gas_remaining wei
                                                                                   args _1454
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            _1510 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_1510] == mem[_1510]
                                                                            if block.timestamp <= mem[_1510]:
                                                                                revert with 0, 'time error'
                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                            call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args _1454
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                            staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                    gas gas_remaining wei
                                                                                   args _1454
                                                                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            _1670 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 128
                                                                            _1690 = mem[_1670]
                                                                            require mem[_1670] == mem[_1670]
                                                                            require mem[_1670 + 32] == mem[_1670 + 32]
                                                                            require mem[_1670 + 64] == mem[_1670 + 64]
                                                                            _1750 = mem[_1670 + 96]
                                                                            require mem[_1670 + 96] == mem[_1670 + 96]
                                                                            mem[mem[64] + 4] = mem[_1670 + 96]
                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                            staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                    gas gas_remaining wei
                                                                                   args _1750
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            _1810 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_1810] == mem[_1810]
                                                                            if _1690 >= mem[_1810]:
                                                                                mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                mem[mem[64] + 4] = _1454
                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args _1454
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                            if idx == -1:
                                                                                revert with 'NH{q', 17
                                                                            idx = idx + 1
                                                                            continue 
                                                                else:
                                                                    if arg1 == 17:
                                                                        mem[64] = (32 * sub_868c08a2.length) + 128
                                                                        mem[96] = sub_868c08a2.length
                                                                        if not sub_868c08a2.length:
                                                                            idx = 0
                                                                            while idx < 11:
                                                                                if idx >= mem[96]:
                                                                                    revert with 'NH{q', 50
                                                                                _532 = mem[(32 * idx) + 128]
                                                                                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                                        gas gas_remaining wei
                                                                                       args _532
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                _589 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                require mem[_589] == mem[_589]
                                                                                if block.timestamp <= mem[_589]:
                                                                                    revert with 0, 'time error'
                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args _532
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                        gas gas_remaining wei
                                                                                       args _532
                                                                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                _749 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 128
                                                                                _769 = mem[_749]
                                                                                require mem[_749] == mem[_749]
                                                                                require mem[_749 + 32] == mem[_749 + 32]
                                                                                require mem[_749 + 64] == mem[_749 + 64]
                                                                                _829 = mem[_749 + 96]
                                                                                require mem[_749 + 96] == mem[_749 + 96]
                                                                                mem[mem[64] + 4] = mem[_749 + 96]
                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                        gas gas_remaining wei
                                                                                       args _829
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                _889 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                require mem[_889] == mem[_889]
                                                                                if _769 >= mem[_889]:
                                                                                    mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                    mem[mem[64] + 4] = _532
                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                    call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                         gas gas_remaining wei
                                                                                        args _532
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                if idx == -1:
                                                                                    revert with 'NH{q', 17
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
                                                                                _1452 = mem[(32 * idx) + 128]
                                                                                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                                        gas gas_remaining wei
                                                                                       args _1452
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                _1509 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                require mem[_1509] == mem[_1509]
                                                                                if block.timestamp <= mem[_1509]:
                                                                                    revert with 0, 'time error'
                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args _1452
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                        gas gas_remaining wei
                                                                                       args _1452
                                                                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                _1669 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 128
                                                                                _1689 = mem[_1669]
                                                                                require mem[_1669] == mem[_1669]
                                                                                require mem[_1669 + 32] == mem[_1669 + 32]
                                                                                require mem[_1669 + 64] == mem[_1669 + 64]
                                                                                _1749 = mem[_1669 + 96]
                                                                                require mem[_1669 + 96] == mem[_1669 + 96]
                                                                                mem[mem[64] + 4] = mem[_1669 + 96]
                                                                                require ext_code.size(sub_4b30d6c2Address)
                                                                                staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                        gas gas_remaining wei
                                                                                       args _1749
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                _1809 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                require mem[_1809] == mem[_1809]
                                                                                if _1689 >= mem[_1809]:
                                                                                    mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                    mem[mem[64] + 4] = _1452
                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                    call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                         gas gas_remaining wei
                                                                                        args _1452
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                if idx == -1:
                                                                                    revert with 'NH{q', 17
                                                                                idx = idx + 1
                                                                                continue 
                                                                    else:
                                                                        if arg1 == 18:
                                                                            mem[64] = (32 * sub_253d38a3.length) + 128
                                                                            mem[96] = sub_253d38a3.length
                                                                            if not sub_253d38a3.length:
                                                                                idx = 0
                                                                                while idx < 11:
                                                                                    if idx >= mem[96]:
                                                                                        revert with 'NH{q', 50
                                                                                    _530 = mem[(32 * idx) + 128]
                                                                                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                    staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                                            gas gas_remaining wei
                                                                                           args _530
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    _588 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_588] == mem[_588]
                                                                                    if block.timestamp <= mem[_588]:
                                                                                        revert with 0, 'time error'
                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                    call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                                         gas gas_remaining wei
                                                                                        args _530
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                    staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                            gas gas_remaining wei
                                                                                           args _530
                                                                                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    _748 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 128
                                                                                    _768 = mem[_748]
                                                                                    require mem[_748] == mem[_748]
                                                                                    require mem[_748 + 32] == mem[_748 + 32]
                                                                                    require mem[_748 + 64] == mem[_748 + 64]
                                                                                    _828 = mem[_748 + 96]
                                                                                    require mem[_748 + 96] == mem[_748 + 96]
                                                                                    mem[mem[64] + 4] = mem[_748 + 96]
                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                    staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                            gas gas_remaining wei
                                                                                           args _828
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    _888 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_888] == mem[_888]
                                                                                    if _768 >= mem[_888]:
                                                                                        mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                        mem[mem[64] + 4] = _530
                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                        call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                             gas gas_remaining wei
                                                                                            args _530
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                    if idx == -1:
                                                                                        revert with 'NH{q', 17
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
                                                                                    _1450 = mem[(32 * idx) + 128]
                                                                                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                    staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                                            gas gas_remaining wei
                                                                                           args _1450
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    _1508 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_1508] == mem[_1508]
                                                                                    if block.timestamp <= mem[_1508]:
                                                                                        revert with 0, 'time error'
                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                    call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                                         gas gas_remaining wei
                                                                                        args _1450
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                    staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                            gas gas_remaining wei
                                                                                           args _1450
                                                                                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    _1668 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 128
                                                                                    _1688 = mem[_1668]
                                                                                    require mem[_1668] == mem[_1668]
                                                                                    require mem[_1668 + 32] == mem[_1668 + 32]
                                                                                    require mem[_1668 + 64] == mem[_1668 + 64]
                                                                                    _1748 = mem[_1668 + 96]
                                                                                    require mem[_1668 + 96] == mem[_1668 + 96]
                                                                                    mem[mem[64] + 4] = mem[_1668 + 96]
                                                                                    require ext_code.size(sub_4b30d6c2Address)
                                                                                    staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                            gas gas_remaining wei
                                                                                           args _1748
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    _1808 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_1808] == mem[_1808]
                                                                                    if _1688 >= mem[_1808]:
                                                                                        mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                        mem[mem[64] + 4] = _1450
                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                        call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                             gas gas_remaining wei
                                                                                            args _1450
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                    if idx == -1:
                                                                                        revert with 'NH{q', 17
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                        else:
                                                                            if arg1 == 19:
                                                                                mem[64] = (32 * sub_df041dc0.length) + 128
                                                                                mem[96] = sub_df041dc0.length
                                                                                if not sub_df041dc0.length:
                                                                                    idx = 0
                                                                                    while idx < 11:
                                                                                        if idx >= mem[96]:
                                                                                            revert with 'NH{q', 50
                                                                                        _528 = mem[(32 * idx) + 128]
                                                                                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                        staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                                                gas gas_remaining wei
                                                                                               args _528
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        _587 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_587] == mem[_587]
                                                                                        if block.timestamp <= mem[_587]:
                                                                                            revert with 0, 'time error'
                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                        call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                                             gas gas_remaining wei
                                                                                            args _528
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                        staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                                gas gas_remaining wei
                                                                                               args _528
                                                                                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        _747 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 128
                                                                                        _767 = mem[_747]
                                                                                        require mem[_747] == mem[_747]
                                                                                        require mem[_747 + 32] == mem[_747 + 32]
                                                                                        require mem[_747 + 64] == mem[_747 + 64]
                                                                                        _827 = mem[_747 + 96]
                                                                                        require mem[_747 + 96] == mem[_747 + 96]
                                                                                        mem[mem[64] + 4] = mem[_747 + 96]
                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                        staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                                gas gas_remaining wei
                                                                                               args _827
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        _887 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_887] == mem[_887]
                                                                                        if _767 >= mem[_887]:
                                                                                            mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                            mem[mem[64] + 4] = _528
                                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                                            call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                                 gas gas_remaining wei
                                                                                                args _528
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                        if idx == -1:
                                                                                            revert with 'NH{q', 17
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
                                                                                        _1448 = mem[(32 * idx) + 128]
                                                                                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                        staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                                                gas gas_remaining wei
                                                                                               args _1448
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        _1507 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_1507] == mem[_1507]
                                                                                        if block.timestamp <= mem[_1507]:
                                                                                            revert with 0, 'time error'
                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                        call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                                             gas gas_remaining wei
                                                                                            args _1448
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                        staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                                gas gas_remaining wei
                                                                                               args _1448
                                                                                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        _1667 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 128
                                                                                        _1687 = mem[_1667]
                                                                                        require mem[_1667] == mem[_1667]
                                                                                        require mem[_1667 + 32] == mem[_1667 + 32]
                                                                                        require mem[_1667 + 64] == mem[_1667 + 64]
                                                                                        _1747 = mem[_1667 + 96]
                                                                                        require mem[_1667 + 96] == mem[_1667 + 96]
                                                                                        mem[mem[64] + 4] = mem[_1667 + 96]
                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                        staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                                gas gas_remaining wei
                                                                                               args _1747
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        _1807 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_1807] == mem[_1807]
                                                                                        if _1687 >= mem[_1807]:
                                                                                            mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                            mem[mem[64] + 4] = _1448
                                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                                            call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                                 gas gas_remaining wei
                                                                                                args _1448
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                        if idx == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                            else:
                                                                                if arg1 != 20:
                                                                                    revert with 0, 'error!!!'
                                                                                mem[64] = (32 * sub_f1d48df4.length) + 128
                                                                                mem[96] = sub_f1d48df4.length
                                                                                if not sub_f1d48df4.length:
                                                                                    idx = 0
                                                                                    while idx < 11:
                                                                                        if idx >= mem[96]:
                                                                                            revert with 'NH{q', 50
                                                                                        _526 = mem[(32 * idx) + 128]
                                                                                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                        staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                                                gas gas_remaining wei
                                                                                               args _526
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        _586 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_586] == mem[_586]
                                                                                        if block.timestamp <= mem[_586]:
                                                                                            revert with 0, 'time error'
                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                        call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                                             gas gas_remaining wei
                                                                                            args _526
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                        staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                                gas gas_remaining wei
                                                                                               args _526
                                                                                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        _746 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 128
                                                                                        _766 = mem[_746]
                                                                                        require mem[_746] == mem[_746]
                                                                                        require mem[_746 + 32] == mem[_746 + 32]
                                                                                        require mem[_746 + 64] == mem[_746 + 64]
                                                                                        _826 = mem[_746 + 96]
                                                                                        require mem[_746 + 96] == mem[_746 + 96]
                                                                                        mem[mem[64] + 4] = mem[_746 + 96]
                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                        staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                                gas gas_remaining wei
                                                                                               args _826
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        _886 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_886] == mem[_886]
                                                                                        if _766 >= mem[_886]:
                                                                                            mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                            mem[mem[64] + 4] = _526
                                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                                            call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                                 gas gas_remaining wei
                                                                                                args _526
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                        if idx == -1:
                                                                                            revert with 'NH{q', 17
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
                                                                                        _1446 = mem[(32 * idx) + 128]
                                                                                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                        staticcall sub_4b30d6c2Address.adventurers_log(uint256 arg1) with:
                                                                                                gas gas_remaining wei
                                                                                               args _1446
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        _1506 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_1506] == mem[_1506]
                                                                                        if block.timestamp <= mem[_1506]:
                                                                                            revert with 0, 'time error'
                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                        call sub_4b30d6c2Address.adventure(uint256 arg1) with:
                                                                                             gas gas_remaining wei
                                                                                            args _1446
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                        staticcall sub_4b30d6c2Address.summoner(uint256 arg1) with:
                                                                                                gas gas_remaining wei
                                                                                               args _1446
                                                                                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        _1666 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 128
                                                                                        _1686 = mem[_1666]
                                                                                        require mem[_1666] == mem[_1666]
                                                                                        require mem[_1666 + 32] == mem[_1666 + 32]
                                                                                        require mem[_1666 + 64] == mem[_1666 + 64]
                                                                                        _1746 = mem[_1666 + 96]
                                                                                        require mem[_1666 + 96] == mem[_1666 + 96]
                                                                                        mem[mem[64] + 4] = mem[_1666 + 96]
                                                                                        require ext_code.size(sub_4b30d6c2Address)
                                                                                        staticcall sub_4b30d6c2Address.xp_required(uint256 arg1) with:
                                                                                                gas gas_remaining wei
                                                                                               args _1746
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        _1806 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_1806] == mem[_1806]
                                                                                        if _1686 >= mem[_1806]:
                                                                                            mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                                                                                            mem[mem[64] + 4] = _1446
                                                                                            require ext_code.size(sub_4b30d6c2Address)
                                                                                            call sub_4b30d6c2Address.level_up(uint256 arg1) with:
                                                                                                 gas gas_remaining wei
                                                                                                args _1446
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                        if idx == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        idx = idx + 1
                                                                                        continue 
}



}
