contract main {




// =====================  Runtime code  =====================


#
#  - sub_c01bf9d0(?)
#  - sub_ef0c7e3c(?)
#
address owner;
address sub_46c04365Address;
address sub_73daf708Address;
address sub_5917b2e6Address;

function sub_46c04365(?) payable {
    return sub_46c04365Address
}

function sub_5917b2e6(?) payable {
    return sub_5917b2e6Address
}

function sub_73daf708(?) payable {
    return sub_73daf708Address
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setAddresses(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_46c04365Address = arg1
    sub_73daf708Address = arg2
    sub_5917b2e6Address = arg3
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_826c3416(?) payable {
    require calldata.size - 4 >= 32
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
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    if not ('cd', 4).length:
        if ('cd', 4).length > test266151307():
            revert with 'NH{q', 65
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = ('cd', 4).length
        if not ('cd', 4).length:
            if ('cd', 4).length > test266151307():
                revert with 'NH{q', 65
            mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 161] = ('cd', 4).length
            mem[64] = floor32(('cd', 4).length) + (98 * ('cd', 4).length) + 193
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _615 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                    require ext_code.size(sub_46c04365Address)
                    staticcall sub_46c04365Address.0x6352211e with:
                            gas gas_remaining wei
                           args _615
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _658 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_658] == mem[_658 + 12 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[_658 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _706 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                    require ext_code.size(sub_46c04365Address)
                    staticcall sub_46c04365Address.0x800c899c with:
                            gas gas_remaining wei
                           args _706
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _747 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_747] == mem[_747 + 12 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_747 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _806 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _806
                    require ext_code.size(sub_46c04365Address)
                    staticcall sub_46c04365Address.0xc87b56dd with:
                            gas gas_remaining wei
                           args _806
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _834 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _842 = mem[_834]
                    require mem[_834] <= test266151307()
                    require _834 + mem[_834] + 31 < _834 + return_data.size
                    _850 = mem[_834 + mem[_834]]
                    if mem[_834 + mem[_834]] > test266151307():
                        revert with 'NH{q', 65
                    if _834 + ceil32(return_data.size) + ceil32(ceil32(mem[_834 + mem[_834]])) + 1 > test266151307() or ceil32(ceil32(mem[_834 + mem[_834]])) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _834 + ceil32(return_data.size) + ceil32(ceil32(mem[_834 + mem[_834]])) + 1
                    mem[_834 + ceil32(return_data.size)] = _850
                    require _842 + _850 + 32 <= return_data.size
                    s = 0
                    while s < _850:
                        mem[_834 + ceil32(return_data.size) + s + 32] = mem[_834 + _842 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_850) > _850:
                        mem[_834 + ceil32(return_data.size) + _850 + 32] = 0
                    if idx >= mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 193] = _834 + ceil32(return_data.size)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _614 = mem[64]
                mem[mem[64]] = 96
                _634 = mem[floor32(('cd', 4).length) + 97]
                mem[mem[64] + 96] = mem[floor32(('cd', 4).length) + 97]
                idx = 0
                s = floor32(('cd', 4).length) + 129
                t = mem[64] + 128
                while idx < _634:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _634) + 128
                _922 = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                mem[_614 + (32 * _634) + 128] = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                idx = 0
                s = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161
                t = _614 + (32 * _634) + 160
                while idx < _922:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_614 + 64] = (32 * _634) + (32 * _922) + 160
                _1094 = mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                mem[_614 + (32 * _634) + (32 * _922) + 160] = mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                idx = 0
                s = floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 193
                t = _614 + (32 * _634) + (32 * _922) + (32 * _1094) + 192
                u = _614 + (32 * _634) + (32 * _922) + 192
                while idx < _1094:
                    mem[u] = t + -_614 + -(32 * _634) + -(32 * _922) - 192
                    _1150 = mem[s]
                    _1162 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1162:
                        mem[t + v + 32] = mem[_1150 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1162) > _1162:
                        mem[t + _1162 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_1162) + 32
                    u = u + 32
                    continue 
            else:
                mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 193] = 96
                s = floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 193
                idx = ('cd', 4).length
                while idx - 1:
                    mem[s + 32] = 96
                    s = s + 32
                    idx = idx - 1
                    continue 
                _894 = mem[96]
                idx = 0
                while idx < _894:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _911 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                    require ext_code.size(sub_46c04365Address)
                    staticcall sub_46c04365Address.0x6352211e with:
                            gas gas_remaining wei
                           args _911
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _942 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_942] == mem[_942 + 12 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[_942 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _987 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                    require ext_code.size(sub_46c04365Address)
                    staticcall sub_46c04365Address.0x800c899c with:
                            gas gas_remaining wei
                           args _987
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1011 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1011] == mem[_1011 + 12 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1011 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1042 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1042
                    require ext_code.size(sub_46c04365Address)
                    staticcall sub_46c04365Address.0xc87b56dd with:
                            gas gas_remaining wei
                           args _1042
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1054 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1058 = mem[_1054]
                    require mem[_1054] <= test266151307()
                    require _1054 + mem[_1054] + 31 < _1054 + return_data.size
                    _1062 = mem[_1054 + mem[_1054]]
                    if mem[_1054 + mem[_1054]] > test266151307():
                        revert with 'NH{q', 65
                    if _1054 + ceil32(return_data.size) + ceil32(ceil32(mem[_1054 + mem[_1054]])) + 1 > test266151307() or ceil32(ceil32(mem[_1054 + mem[_1054]])) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1054 + ceil32(return_data.size) + ceil32(ceil32(mem[_1054 + mem[_1054]])) + 1
                    mem[_1054 + ceil32(return_data.size)] = _1062
                    require _1058 + _1062 + 32 <= return_data.size
                    s = 0
                    while s < _1062:
                        mem[_1054 + ceil32(return_data.size) + s + 32] = mem[_1054 + _1058 + s + 32]
                        _894 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_1062) > _1062:
                        mem[_1054 + ceil32(return_data.size) + _1062 + 32] = 0
                    if idx >= mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 193] = _1054 + ceil32(return_data.size)
                    if idx == -1:
                        revert with 'NH{q', 17
                    _894 = mem[96]
                    idx = idx + 1
                    continue 
                _910 = mem[64]
                mem[mem[64]] = 96
                _926 = mem[floor32(('cd', 4).length) + 97]
                mem[mem[64] + 96] = mem[floor32(('cd', 4).length) + 97]
                idx = 0
                s = floor32(('cd', 4).length) + 129
                t = mem[64] + 128
                while idx < _926:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _926) + 128
                _1095 = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                mem[_910 + (32 * _926) + 128] = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                idx = 0
                s = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161
                t = _910 + (32 * _926) + 160
                while idx < _1095:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_910 + 64] = (32 * _926) + (32 * _1095) + 160
                _1163 = mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                mem[_910 + (32 * _926) + (32 * _1095) + 160] = mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                idx = 0
                s = floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 193
                t = _910 + (32 * _926) + (32 * _1095) + (32 * _1163) + 192
                u = _910 + (32 * _926) + (32 * _1095) + 192
                while idx < _1163:
                    mem[u] = t + -_910 + -(32 * _926) + -(32 * _1095) - 192
                    _1191 = mem[s]
                    _1202 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1202:
                        mem[t + v + 32] = mem[_1191 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1202) > _1202:
                        mem[t + _1202 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_1202) + 32
                    u = u + 32
                    continue 
        else:
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            if ('cd', 4).length > test266151307():
                revert with 'NH{q', 65
            mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 161] = ('cd', 4).length
            mem[64] = floor32(('cd', 4).length) + (98 * ('cd', 4).length) + 193
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _618 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                    require ext_code.size(sub_46c04365Address)
                    staticcall sub_46c04365Address.0x6352211e with:
                            gas gas_remaining wei
                           args _618
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _659 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_659] == mem[_659 + 12 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[_659 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _708 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                    require ext_code.size(sub_46c04365Address)
                    staticcall sub_46c04365Address.0x800c899c with:
                            gas gas_remaining wei
                           args _708
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _749 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_749] == mem[_749 + 12 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_749 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _808 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _808
                    require ext_code.size(sub_46c04365Address)
                    staticcall sub_46c04365Address.0xc87b56dd with:
                            gas gas_remaining wei
                           args _808
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _835 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _843 = mem[_835]
                    require mem[_835] <= test266151307()
                    require _835 + mem[_835] + 31 < _835 + return_data.size
                    _852 = mem[_835 + mem[_835]]
                    if mem[_835 + mem[_835]] > test266151307():
                        revert with 'NH{q', 65
                    if _835 + ceil32(return_data.size) + ceil32(ceil32(mem[_835 + mem[_835]])) + 1 > test266151307() or ceil32(ceil32(mem[_835 + mem[_835]])) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _835 + ceil32(return_data.size) + ceil32(ceil32(mem[_835 + mem[_835]])) + 1
                    mem[_835 + ceil32(return_data.size)] = _852
                    require _843 + _852 + 32 <= return_data.size
                    s = 0
                    while s < _852:
                        mem[_835 + ceil32(return_data.size) + s + 32] = mem[_835 + _843 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_852) > _852:
                        mem[_835 + ceil32(return_data.size) + _852 + 32] = 0
                    if idx >= mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 193] = _835 + ceil32(return_data.size)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _617 = mem[64]
                mem[mem[64]] = 96
                _638 = mem[floor32(('cd', 4).length) + 97]
                mem[mem[64] + 96] = mem[floor32(('cd', 4).length) + 97]
                idx = 0
                s = floor32(('cd', 4).length) + 129
                t = mem[64] + 128
                while idx < _638:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _638) + 128
                _923 = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                mem[_617 + (32 * _638) + 128] = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                idx = 0
                s = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161
                t = _617 + (32 * _638) + 160
                while idx < _923:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_617 + 64] = (32 * _638) + (32 * _923) + 160
                _1096 = mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                mem[_617 + (32 * _638) + (32 * _923) + 160] = mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                idx = 0
                s = floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 193
                t = _617 + (32 * _638) + (32 * _923) + (32 * _1096) + 192
                u = _617 + (32 * _638) + (32 * _923) + 192
                while idx < _1096:
                    mem[u] = t + -_617 + -(32 * _638) + -(32 * _923) - 192
                    _1152 = mem[s]
                    _1164 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1164:
                        mem[t + v + 32] = mem[_1152 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1164) > _1164:
                        mem[t + _1164 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_1164) + 32
                    u = u + 32
                    continue 
            else:
                mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 193] = 96
                s = floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 193
                idx = ('cd', 4).length
                while idx - 1:
                    mem[s + 32] = 96
                    s = s + 32
                    idx = idx - 1
                    continue 
                _895 = mem[96]
                idx = 0
                while idx < _895:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _914 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                    require ext_code.size(sub_46c04365Address)
                    staticcall sub_46c04365Address.0x6352211e with:
                            gas gas_remaining wei
                           args _914
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _943 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_943] == mem[_943 + 12 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[_943 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _990 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                    require ext_code.size(sub_46c04365Address)
                    staticcall sub_46c04365Address.0x800c899c with:
                            gas gas_remaining wei
                           args _990
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1013 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1013] == mem[_1013 + 12 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1013 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1044 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1044
                    require ext_code.size(sub_46c04365Address)
                    staticcall sub_46c04365Address.0xc87b56dd with:
                            gas gas_remaining wei
                           args _1044
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1055 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1059 = mem[_1055]
                    require mem[_1055] <= test266151307()
                    require _1055 + mem[_1055] + 31 < _1055 + return_data.size
                    _1063 = mem[_1055 + mem[_1055]]
                    if mem[_1055 + mem[_1055]] > test266151307():
                        revert with 'NH{q', 65
                    if _1055 + ceil32(return_data.size) + ceil32(ceil32(mem[_1055 + mem[_1055]])) + 1 > test266151307() or ceil32(ceil32(mem[_1055 + mem[_1055]])) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1055 + ceil32(return_data.size) + ceil32(ceil32(mem[_1055 + mem[_1055]])) + 1
                    mem[_1055 + ceil32(return_data.size)] = _1063
                    require _1059 + _1063 + 32 <= return_data.size
                    s = 0
                    while s < _1063:
                        mem[_1055 + ceil32(return_data.size) + s + 32] = mem[_1055 + _1059 + s + 32]
                        _895 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_1063) > _1063:
                        mem[_1055 + ceil32(return_data.size) + _1063 + 32] = 0
                    if idx >= mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 193] = _1055 + ceil32(return_data.size)
                    if idx == -1:
                        revert with 'NH{q', 17
                    _895 = mem[96]
                    idx = idx + 1
                    continue 
                _913 = mem[64]
                mem[mem[64]] = 96
                _927 = mem[floor32(('cd', 4).length) + 97]
                mem[mem[64] + 96] = mem[floor32(('cd', 4).length) + 97]
                idx = 0
                s = floor32(('cd', 4).length) + 129
                t = mem[64] + 128
                while idx < _927:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _927) + 128
                _1097 = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                mem[_913 + (32 * _927) + 128] = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                idx = 0
                s = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161
                t = _913 + (32 * _927) + 160
                while idx < _1097:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_913 + 64] = (32 * _927) + (32 * _1097) + 160
                _1165 = mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                mem[_913 + (32 * _927) + (32 * _1097) + 160] = mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                idx = 0
                s = floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 193
                t = _913 + (32 * _927) + (32 * _1097) + (32 * _1165) + 192
                u = _913 + (32 * _927) + (32 * _1097) + 192
                while idx < _1165:
                    mem[u] = t + -_913 + -(32 * _927) + -(32 * _1097) - 192
                    _1193 = mem[s]
                    _1203 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1203:
                        mem[t + v + 32] = mem[_1193 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1203) > _1203:
                        mem[t + _1203 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_1203) + 32
                    u = u + 32
                    continue 
    else:
        mem[floor32(('cd', 4).length) + 129 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        if ('cd', 4).length > test266151307():
            revert with 'NH{q', 65
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = ('cd', 4).length
        if not ('cd', 4).length:
            if ('cd', 4).length > test266151307():
                revert with 'NH{q', 65
            mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 161] = ('cd', 4).length
            mem[64] = floor32(('cd', 4).length) + (98 * ('cd', 4).length) + 193
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _621 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                    require ext_code.size(sub_46c04365Address)
                    staticcall sub_46c04365Address.0x6352211e with:
                            gas gas_remaining wei
                           args _621
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _660 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_660] == mem[_660 + 12 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[_660 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _710 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                    require ext_code.size(sub_46c04365Address)
                    staticcall sub_46c04365Address.0x800c899c with:
                            gas gas_remaining wei
                           args _710
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _751 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_751] == mem[_751 + 12 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_751 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _810 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _810
                    require ext_code.size(sub_46c04365Address)
                    staticcall sub_46c04365Address.0xc87b56dd with:
                            gas gas_remaining wei
                           args _810
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _836 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _844 = mem[_836]
                    require mem[_836] <= test266151307()
                    require _836 + mem[_836] + 31 < _836 + return_data.size
                    _854 = mem[_836 + mem[_836]]
                    if mem[_836 + mem[_836]] > test266151307():
                        revert with 'NH{q', 65
                    if _836 + ceil32(return_data.size) + ceil32(ceil32(mem[_836 + mem[_836]])) + 1 > test266151307() or ceil32(ceil32(mem[_836 + mem[_836]])) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _836 + ceil32(return_data.size) + ceil32(ceil32(mem[_836 + mem[_836]])) + 1
                    mem[_836 + ceil32(return_data.size)] = _854
                    require _844 + _854 + 32 <= return_data.size
                    s = 0
                    while s < _854:
                        mem[_836 + ceil32(return_data.size) + s + 32] = mem[_836 + _844 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_854) > _854:
                        mem[_836 + ceil32(return_data.size) + _854 + 32] = 0
                    if idx >= mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 193] = _836 + ceil32(return_data.size)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _620 = mem[64]
                mem[mem[64]] = 96
                _642 = mem[floor32(('cd', 4).length) + 97]
                mem[mem[64] + 96] = mem[floor32(('cd', 4).length) + 97]
                idx = 0
                s = floor32(('cd', 4).length) + 129
                t = mem[64] + 128
                while idx < _642:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _642) + 128
                _924 = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                mem[_620 + (32 * _642) + 128] = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                idx = 0
                s = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161
                t = _620 + (32 * _642) + 160
                while idx < _924:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_620 + 64] = (32 * _642) + (32 * _924) + 160
                _1098 = mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                mem[_620 + (32 * _642) + (32 * _924) + 160] = mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                idx = 0
                s = floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 193
                t = _620 + (32 * _642) + (32 * _924) + (32 * _1098) + 192
                u = _620 + (32 * _642) + (32 * _924) + 192
                while idx < _1098:
                    mem[u] = t + -_620 + -(32 * _642) + -(32 * _924) - 192
                    _1154 = mem[s]
                    _1166 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1166:
                        mem[t + v + 32] = mem[_1154 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1166) > _1166:
                        mem[t + _1166 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_1166) + 32
                    u = u + 32
                    continue 
            else:
                mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 193] = 96
                s = floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 193
                idx = ('cd', 4).length
                while idx - 1:
                    mem[s + 32] = 96
                    s = s + 32
                    idx = idx - 1
                    continue 
                _896 = mem[96]
                idx = 0
                while idx < _896:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _917 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                    require ext_code.size(sub_46c04365Address)
                    staticcall sub_46c04365Address.0x6352211e with:
                            gas gas_remaining wei
                           args _917
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _944 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_944] == mem[_944 + 12 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[_944 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _993 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                    require ext_code.size(sub_46c04365Address)
                    staticcall sub_46c04365Address.0x800c899c with:
                            gas gas_remaining wei
                           args _993
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1015 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1015] == mem[_1015 + 12 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1015 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1046 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1046
                    require ext_code.size(sub_46c04365Address)
                    staticcall sub_46c04365Address.0xc87b56dd with:
                            gas gas_remaining wei
                           args _1046
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1056 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1060 = mem[_1056]
                    require mem[_1056] <= test266151307()
                    require _1056 + mem[_1056] + 31 < _1056 + return_data.size
                    _1064 = mem[_1056 + mem[_1056]]
                    if mem[_1056 + mem[_1056]] > test266151307():
                        revert with 'NH{q', 65
                    if _1056 + ceil32(return_data.size) + ceil32(ceil32(mem[_1056 + mem[_1056]])) + 1 > test266151307() or ceil32(ceil32(mem[_1056 + mem[_1056]])) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1056 + ceil32(return_data.size) + ceil32(ceil32(mem[_1056 + mem[_1056]])) + 1
                    mem[_1056 + ceil32(return_data.size)] = _1064
                    require _1060 + _1064 + 32 <= return_data.size
                    s = 0
                    while s < _1064:
                        mem[_1056 + ceil32(return_data.size) + s + 32] = mem[_1056 + _1060 + s + 32]
                        _896 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_1064) > _1064:
                        mem[_1056 + ceil32(return_data.size) + _1064 + 32] = 0
                    if idx >= mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 193] = _1056 + ceil32(return_data.size)
                    if idx == -1:
                        revert with 'NH{q', 17
                    _896 = mem[96]
                    idx = idx + 1
                    continue 
                _916 = mem[64]
                mem[mem[64]] = 96
                _928 = mem[floor32(('cd', 4).length) + 97]
                mem[mem[64] + 96] = mem[floor32(('cd', 4).length) + 97]
                idx = 0
                s = floor32(('cd', 4).length) + 129
                t = mem[64] + 128
                while idx < _928:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _928) + 128
                _1099 = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                mem[_916 + (32 * _928) + 128] = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                idx = 0
                s = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161
                t = _916 + (32 * _928) + 160
                while idx < _1099:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_916 + 64] = (32 * _928) + (32 * _1099) + 160
                _1167 = mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                mem[_916 + (32 * _928) + (32 * _1099) + 160] = mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                idx = 0
                s = floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 193
                t = _916 + (32 * _928) + (32 * _1099) + (32 * _1167) + 192
                u = _916 + (32 * _928) + (32 * _1099) + 192
                while idx < _1167:
                    mem[u] = t + -_916 + -(32 * _928) + -(32 * _1099) - 192
                    _1195 = mem[s]
                    _1204 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1204:
                        mem[t + v + 32] = mem[_1195 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1204) > _1204:
                        mem[t + _1204 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_1204) + 32
                    u = u + 32
                    continue 
        else:
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            if ('cd', 4).length > test266151307():
                revert with 'NH{q', 65
            mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 161] = ('cd', 4).length
            mem[64] = floor32(('cd', 4).length) + (98 * ('cd', 4).length) + 193
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _624 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                    require ext_code.size(sub_46c04365Address)
                    staticcall sub_46c04365Address.0x6352211e with:
                            gas gas_remaining wei
                           args _624
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _661 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_661] == mem[_661 + 12 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[_661 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _712 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                    require ext_code.size(sub_46c04365Address)
                    staticcall sub_46c04365Address.0x800c899c with:
                            gas gas_remaining wei
                           args _712
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _753 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_753] == mem[_753 + 12 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_753 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _812 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _812
                    require ext_code.size(sub_46c04365Address)
                    staticcall sub_46c04365Address.0xc87b56dd with:
                            gas gas_remaining wei
                           args _812
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _837 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _845 = mem[_837]
                    require mem[_837] <= test266151307()
                    require _837 + mem[_837] + 31 < _837 + return_data.size
                    _856 = mem[_837 + mem[_837]]
                    if mem[_837 + mem[_837]] > test266151307():
                        revert with 'NH{q', 65
                    if _837 + ceil32(return_data.size) + ceil32(ceil32(mem[_837 + mem[_837]])) + 1 > test266151307() or ceil32(ceil32(mem[_837 + mem[_837]])) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _837 + ceil32(return_data.size) + ceil32(ceil32(mem[_837 + mem[_837]])) + 1
                    mem[_837 + ceil32(return_data.size)] = _856
                    require _845 + _856 + 32 <= return_data.size
                    s = 0
                    while s < _856:
                        mem[_837 + ceil32(return_data.size) + s + 32] = mem[_837 + _845 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_856) > _856:
                        mem[_837 + ceil32(return_data.size) + _856 + 32] = 0
                    if idx >= mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 193] = _837 + ceil32(return_data.size)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _623 = mem[64]
                mem[mem[64]] = 96
                _646 = mem[floor32(('cd', 4).length) + 97]
                mem[mem[64] + 96] = mem[floor32(('cd', 4).length) + 97]
                idx = 0
                s = floor32(('cd', 4).length) + 129
                t = mem[64] + 128
                while idx < _646:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _646) + 128
                _925 = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                mem[_623 + (32 * _646) + 128] = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                idx = 0
                s = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161
                t = _623 + (32 * _646) + 160
                while idx < _925:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_623 + 64] = (32 * _646) + (32 * _925) + 160
                _1100 = mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                mem[_623 + (32 * _646) + (32 * _925) + 160] = mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                idx = 0
                s = floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 193
                t = _623 + (32 * _646) + (32 * _925) + (32 * _1100) + 192
                u = _623 + (32 * _646) + (32 * _925) + 192
                while idx < _1100:
                    mem[u] = t + -_623 + -(32 * _646) + -(32 * _925) - 192
                    _1156 = mem[s]
                    _1168 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1168:
                        mem[t + v + 32] = mem[_1156 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1168) > _1168:
                        mem[t + _1168 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_1168) + 32
                    u = u + 32
                    continue 
            else:
                mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 193] = 96
                s = floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 193
                idx = ('cd', 4).length
                while idx - 1:
                    mem[s + 32] = 96
                    s = s + 32
                    idx = idx - 1
                    continue 
                _897 = mem[96]
                idx = 0
                while idx < _897:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _920 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                    require ext_code.size(sub_46c04365Address)
                    staticcall sub_46c04365Address.0x6352211e with:
                            gas gas_remaining wei
                           args _920
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _945 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_945] == mem[_945 + 12 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[_945 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _996 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                    require ext_code.size(sub_46c04365Address)
                    staticcall sub_46c04365Address.0x800c899c with:
                            gas gas_remaining wei
                           args _996
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1017 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1017] == mem[_1017 + 12 len 20]
                    if idx >= mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1017 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1048 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1048
                    require ext_code.size(sub_46c04365Address)
                    staticcall sub_46c04365Address.0xc87b56dd with:
                            gas gas_remaining wei
                           args _1048
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1057 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1061 = mem[_1057]
                    require mem[_1057] <= test266151307()
                    require _1057 + mem[_1057] + 31 < _1057 + return_data.size
                    _1065 = mem[_1057 + mem[_1057]]
                    if mem[_1057 + mem[_1057]] > test266151307():
                        revert with 'NH{q', 65
                    if _1057 + ceil32(return_data.size) + ceil32(ceil32(mem[_1057 + mem[_1057]])) + 1 > test266151307() or ceil32(ceil32(mem[_1057 + mem[_1057]])) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1057 + ceil32(return_data.size) + ceil32(ceil32(mem[_1057 + mem[_1057]])) + 1
                    mem[_1057 + ceil32(return_data.size)] = _1065
                    require _1061 + _1065 + 32 <= return_data.size
                    s = 0
                    while s < _1065:
                        mem[_1057 + ceil32(return_data.size) + s + 32] = mem[_1057 + _1061 + s + 32]
                        _897 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_1065) > _1065:
                        mem[_1057 + ceil32(return_data.size) + _1065 + 32] = 0
                    if idx >= mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 193] = _1057 + ceil32(return_data.size)
                    if idx == -1:
                        revert with 'NH{q', 17
                    _897 = mem[96]
                    idx = idx + 1
                    continue 
                _919 = mem[64]
                mem[mem[64]] = 96
                _929 = mem[floor32(('cd', 4).length) + 97]
                mem[mem[64] + 96] = mem[floor32(('cd', 4).length) + 97]
                idx = 0
                s = floor32(('cd', 4).length) + 129
                t = mem[64] + 128
                while idx < _929:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _929) + 128
                _1101 = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                mem[_919 + (32 * _929) + 128] = mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                idx = 0
                s = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161
                t = _919 + (32 * _929) + 160
                while idx < _1101:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_919 + 64] = (32 * _929) + (32 * _1101) + 160
                _1169 = mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                mem[_919 + (32 * _929) + (32 * _1101) + 160] = mem[floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                idx = 0
                s = floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 193
                t = _919 + (32 * _929) + (32 * _1101) + (32 * _1169) + 192
                u = _919 + (32 * _929) + (32 * _1101) + 192
                while idx < _1169:
                    mem[u] = t + -_919 + -(32 * _929) + -(32 * _1101) - 192
                    _1197 = mem[s]
                    _1205 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1205:
                        mem[t + v + 32] = mem[_1197 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1205) > _1205:
                        mem[t + _1205 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_1205) + 32
                    u = u + 32
                    continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
