contract main {




// =====================  Runtime code  =====================


#
#  - sub_be920f8a(?)
#
address owner;
address stor1;
mapping of uint8 stor2;

function owner() {
    return owner
}

function _fallback() payable {
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'don't transfer eth to this contract'
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function claim(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'admin: wut?'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_d49f7285(?) {
    require calldata.size - 4 >= 224
    require cd[36] == address(cd[36])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require test266151307() >= cd[132]
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require test266151307() >= cd[164]
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    require test266151307() >= cd[196]
    require cd[196] + 35 < calldata.size
    require ('cd', 196).length <= test266151307()
    require cd[196] + (32 * ('cd', 196).length) + 36 <= calldata.size
    if stor1 != msg.sender:
        revert with 0, 'admin: wut?'
    if not stor2[cd[4]]:
        mem[0] = cd[4]
        mem[32] = 2
        stor2[cd[4]] = 1
        if ('cd', 100).length > test266151307():
            revert with 'NH{q', 65
        mem[96] = ('cd', 100).length
        mem[64] = (32 * ('cd', 100).length) + 128
        if not ('cd', 100).length:
            idx = 0
            while idx < ('cd', 100).length:
                require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = address(cd[((32 * idx) + cd[100] + 36)])
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
                staticcall address(cd[((32 * idx) + cd[100] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _48 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_48] == mem[_48 + 18 len 14]
                require mem[_48 + 32] == mem[_48 + 50 len 14]
                require mem[_48 + 64] == mem[_48 + 92 len 4]
                if idx >= ('cd', 132).length:
                    revert with 'NH{q', 50
                if cd[((32 * idx) + cd[132] + 36)] != mem[_48 + 18 len 14]:
                    revert with 0, 'ERROR: R'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if 0 >= ('cd', 100).length:
                revert with 'NH{q', 50
            require ('cd', 100)[0] == address(('cd', 100)[0])
            _30 = mem[64]
            mem[mem[64] + 36] = address(('cd', 100)[0])
            mem[mem[64] + 68] = cd[68]
            _31 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_31 + 32 len 4] = unknown_0xa9059cbb(?????)
            _40 = mem[_31]
            mem[_30 + 100 len ceil32(mem[_31])] = mem[_31 + 32 len ceil32(mem[_31])]
            if ceil32(_40) <= _40:
                call address(cd[36]) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _40 + _30 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not mem[96]:
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if var102002 < ('cd', 100).length - 1:
                            if var104001 < mem[96]:
                                if var106003 < ('cd', 164).length:
                                    if var108006 < ('cd', 196).length:
                                        if 1 > !var112002:
                                            revert with 'NH{q', 17
                                        idx = var114003 + 1
                                        s = var114007
                                        t = var114008
                                        u = var114010
                                        v = var114011
                                        while idx < ('cd', 100).length:
                                            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                                            _4032 = mem[64]
                                            mem[mem[64]] = 0
                                            mem[64] = mem[64] + 32
                                            mem[_4032 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_4032 + 36] = t
                                            mem[_4032 + 68] = s
                                            mem[_4032 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                            mem[_4032 + 132] = 128
                                            mem[_4032 + 164] = mem[_4032]
                                            idx = 0
                                            while idx < mem[_4032]:
                                                mem[idx + _4032 + 196] = mem[idx + _4032 + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[_4032]) <= mem[_4032]:
                                                require ext_code.size(u)
                                                call u.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len ceil32(mem[_4032]) + _4032 + -mem[64] + 192]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if v == -1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if v + 1 < ('cd', 100).length - 1:
                                                    if v + 1 >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 164).length:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 196).length:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(v + 1):
                                                        revert with 'NH{q', 17
                                                    idx = v + 2
                                                    s = cd[((32 * v + 1) + cd[196] + 36)]
                                                    t = cd[((32 * v + 1) + cd[164] + 36)]
                                                    u = mem[(32 * v + 1) + 140 len 20]
                                                    v = v + 1
                                                    continue 
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length - 1 >= mem[96]:
                                                    revert with 'NH{q', 50
                                                _4528 = mem[(32 * ('cd', 100).length - 1) + 128]
                                                if v + 1 >= ('cd', 164).length:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 196).length:
                                                    revert with 'NH{q', 50
                                                _4576 = mem[64]
                                                mem[mem[64]] = 0
                                                mem[64] = mem[64] + 32
                                                mem[_4576 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_4576 + 36] = cd[((32 * v + 1) + cd[164] + 36)]
                                                mem[_4576 + 68] = cd[(cd[196] + (32 * v + 1) + 36)]
                                                mem[_4576 + 100] = this.address
                                                mem[_4576 + 132] = 128
                                                mem[_4576 + 164] = mem[_4576]
                                                idx = 0
                                                while idx < mem[_4576]:
                                                    mem[idx + _4576 + 196] = mem[idx + _4576 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[_4576]) > mem[_4576]:
                                                    mem[_4576 + mem[_4576] + 196] = 0
                                                require ext_code.size(address(_4528))
                                                call address(_4528).mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len ceil32(mem[_4576]) + _4576 + -mem[64] + 192]
                                            else:
                                                mem[_4032 + mem[_4032] + 196] = 0
                                                require ext_code.size(u)
                                                call u.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len ceil32(mem[_4032]) + _4032 + -mem[64] + 192]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if v == -1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if v + 1 < ('cd', 100).length - 1:
                                                    if v + 1 >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 164).length:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 196).length:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(v + 1):
                                                        revert with 'NH{q', 17
                                                    idx = v + 2
                                                    s = cd[((32 * v + 1) + cd[196] + 36)]
                                                    t = cd[((32 * v + 1) + cd[164] + 36)]
                                                    u = mem[(32 * v + 1) + 140 len 20]
                                                    v = v + 1
                                                    continue 
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length - 1 >= mem[96]:
                                                    revert with 'NH{q', 50
                                                _4560 = mem[(32 * ('cd', 100).length - 1) + 128]
                                                if v + 1 >= ('cd', 164).length:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 196).length:
                                                    revert with 'NH{q', 50
                                                _4593 = mem[64]
                                                mem[mem[64]] = 0
                                                mem[64] = mem[64] + 32
                                                mem[_4593 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_4593 + 36] = cd[((32 * v + 1) + cd[164] + 36)]
                                                mem[_4593 + 68] = cd[(cd[196] + (32 * v + 1) + 36)]
                                                mem[_4593 + 100] = this.address
                                                mem[_4593 + 132] = 128
                                                mem[_4593 + 164] = mem[_4593]
                                                idx = 0
                                                while idx < mem[_4593]:
                                                    mem[idx + _4593 + 196] = mem[idx + _4593 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[_4593]) > mem[_4593]:
                                                    mem[_4593 + mem[_4593] + 196] = 0
                                                require ext_code.size(address(_4560))
                                                call address(_4560).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args cd[((32 * v + 1) + cd[164] + 36)], cd[(cd[196] + (32 * v + 1) + 36)], address(this.address), Array(len=mem[_4593], data=mem[_4593 + 196 len ceil32(mem[_4593])])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 'NH{q', 50
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 100).length - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1360 = mem[(32 * ('cd', 100).length - 1) + 128]
                        if var102002 >= ('cd', 164).length:
                            revert with 'NH{q', 50
                        if var102002 >= ('cd', 196).length:
                            revert with 'NH{q', 50
                        _1376 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_1376 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1376 + 36] = cd[((32 * var102002) + cd[164] + 36)]
                        mem[_1376 + 68] = cd[(cd[196] + (32 * var102002) + 36)]
                        mem[_1376 + 100] = this.address
                        mem[_1376 + 132] = 128
                        mem[_1376 + 164] = mem[_1376]
                        mem[_1376 + 196 len ceil32(mem[_1376])] = mem[_1376 + 32 len ceil32(mem[_1376])]
                        if ceil32(mem[_1376]) > mem[_1376]:
                            mem[_1376 + mem[_1376] + 196] = 0
                        require ext_code.size(address(_1360))
                        call address(_1360).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args cd[((32 * var102002) + cd[164] + 36)], cd[(cd[196] + (32 * var102002) + 36)], address(this.address), Array(len=mem[_1376], data=mem[_1376 + 196 len ceil32(mem[_1376])])
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if var106002 < ('cd', 100).length - 1:
                            if var108001 < mem[96]:
                                if var110003 < ('cd', 164).length:
                                    if var112006 < ('cd', 196).length:
                                        if 1 > !var116002:
                                            revert with 'NH{q', 17
                                        idx = var118003 + 1
                                        s = var118007
                                        t = var118008
                                        u = var118010
                                        v = var118011
                                        while idx < ('cd', 100).length:
                                            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                                            _4033 = mem[64]
                                            mem[mem[64]] = 0
                                            mem[64] = mem[64] + 32
                                            mem[_4033 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_4033 + 36] = t
                                            mem[_4033 + 68] = s
                                            mem[_4033 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                            mem[_4033 + 132] = 128
                                            mem[_4033 + 164] = mem[_4033]
                                            idx = 0
                                            while idx < mem[_4033]:
                                                mem[idx + _4033 + 196] = mem[idx + _4033 + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[_4033]) <= mem[_4033]:
                                                require ext_code.size(u)
                                                call u.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len ceil32(mem[_4033]) + _4033 + -mem[64] + 192]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if v == -1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if v + 1 < ('cd', 100).length - 1:
                                                    if v + 1 >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 164).length:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 196).length:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(v + 1):
                                                        revert with 'NH{q', 17
                                                    idx = v + 2
                                                    s = cd[((32 * v + 1) + cd[196] + 36)]
                                                    t = cd[((32 * v + 1) + cd[164] + 36)]
                                                    u = mem[(32 * v + 1) + 140 len 20]
                                                    v = v + 1
                                                    continue 
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length - 1 >= mem[96]:
                                                    revert with 'NH{q', 50
                                                _4530 = mem[(32 * ('cd', 100).length - 1) + 128]
                                                if v + 1 >= ('cd', 164).length:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 196).length:
                                                    revert with 'NH{q', 50
                                                _4577 = mem[64]
                                                mem[mem[64]] = 0
                                                mem[64] = mem[64] + 32
                                                mem[_4577 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_4577 + 36] = cd[((32 * v + 1) + cd[164] + 36)]
                                                mem[_4577 + 68] = cd[(cd[196] + (32 * v + 1) + 36)]
                                                mem[_4577 + 100] = this.address
                                                mem[_4577 + 132] = 128
                                                mem[_4577 + 164] = mem[_4577]
                                                idx = 0
                                                while idx < mem[_4577]:
                                                    mem[idx + _4577 + 196] = mem[idx + _4577 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[_4577]) > mem[_4577]:
                                                    mem[_4577 + mem[_4577] + 196] = 0
                                                require ext_code.size(address(_4530))
                                                call address(_4530).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args cd[((32 * v + 1) + cd[164] + 36)], cd[(cd[196] + (32 * v + 1) + 36)], address(this.address), Array(len=mem[_4577], data=mem[_4577 + 196 len ceil32(mem[_4577])])
                                            else:
                                                mem[_4033 + mem[_4033] + 196] = 0
                                                require ext_code.size(u)
                                                call u.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len ceil32(mem[_4033]) + _4033 + -mem[64] + 192]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if v == -1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if v + 1 < ('cd', 100).length - 1:
                                                    if v + 1 >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 164).length:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 196).length:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(v + 1):
                                                        revert with 'NH{q', 17
                                                    idx = v + 2
                                                    s = cd[((32 * v + 1) + cd[196] + 36)]
                                                    t = cd[((32 * v + 1) + cd[164] + 36)]
                                                    u = mem[(32 * v + 1) + 140 len 20]
                                                    v = v + 1
                                                    continue 
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length - 1 >= mem[96]:
                                                    revert with 'NH{q', 50
                                                _4561 = mem[(32 * ('cd', 100).length - 1) + 128]
                                                if v + 1 >= ('cd', 164).length:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 196).length:
                                                    revert with 'NH{q', 50
                                                _4595 = mem[64]
                                                mem[mem[64]] = 0
                                                mem[64] = mem[64] + 32
                                                mem[_4595 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_4595 + 36] = cd[((32 * v + 1) + cd[164] + 36)]
                                                mem[_4595 + 68] = cd[(cd[196] + (32 * v + 1) + 36)]
                                                mem[_4595 + 100] = this.address
                                                mem[_4595 + 132] = 128
                                                mem[_4595 + 164] = mem[_4595]
                                                idx = 0
                                                while idx < mem[_4595]:
                                                    mem[idx + _4595 + 196] = mem[idx + _4595 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[_4595]) > mem[_4595]:
                                                    mem[_4595 + mem[_4595] + 196] = 0
                                                require ext_code.size(address(_4561))
                                                call address(_4561).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args cd[((32 * v + 1) + cd[164] + 36)], cd[(cd[196] + (32 * v + 1) + 36)], address(this.address), Array(len=mem[_4595], data=mem[_4595 + 196 len ceil32(mem[_4595])])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 'NH{q', 50
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 100).length - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1361 = mem[(32 * ('cd', 100).length - 1) + 128]
                        if var106002 >= ('cd', 164).length:
                            revert with 'NH{q', 50
                        if var106002 >= ('cd', 196).length:
                            revert with 'NH{q', 50
                        _1377 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_1377 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1377 + 36] = cd[((32 * var106002) + cd[164] + 36)]
                        mem[_1377 + 68] = cd[(cd[196] + (32 * var106002) + 36)]
                        mem[_1377 + 100] = this.address
                        mem[_1377 + 132] = 128
                        mem[_1377 + 164] = mem[_1377]
                        mem[_1377 + 196 len ceil32(mem[_1377])] = mem[_1377 + 32 len ceil32(mem[_1377])]
                        if ceil32(mem[_1377]) > mem[_1377]:
                            mem[_1377 + mem[_1377] + 196] = 0
                        require ext_code.size(address(_1361))
                        call address(_1361).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args cd[((32 * var106002) + cd[164] + 36)], cd[(cd[196] + (32 * var106002) + 36)], address(this.address), Array(len=mem[_1377], data=mem[_1377 + 196 len ceil32(mem[_1377])])
                else:
                    _354 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_354] = return_data.size
                    mem[_354 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not return_data.size:
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if var102002 < ('cd', 100).length - 1:
                            if var104001 < mem[96]:
                                if var106003 < ('cd', 164).length:
                                    if var108006 < ('cd', 196).length:
                                        if 1 > !var112002:
                                            revert with 'NH{q', 17
                                        idx = var114003 + 1
                                        s = var114007
                                        t = var114008
                                        u = var114010
                                        v = var114011
                                        while idx < ('cd', 100).length:
                                            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                                            _4034 = mem[64]
                                            mem[mem[64]] = 0
                                            mem[64] = mem[64] + 32
                                            mem[_4034 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_4034 + 36] = t
                                            mem[_4034 + 68] = s
                                            mem[_4034 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                            mem[_4034 + 132] = 128
                                            mem[_4034 + 164] = mem[_4034]
                                            w = 0
                                            while w < mem[_4034]:
                                                mem[w + _4034 + 196] = mem[w + _4034 + 32]
                                                w = w + 32
                                                continue 
                                            if ceil32(mem[_4034]) > mem[_4034]:
                                                mem[_4034 + mem[_4034] + 196] = 0
                                            require ext_code.size(u)
                                            call u.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args t, s, address(cd[((32 * idx) + cd[100] + 36)]), Array(len=mem[_4034], data=mem[_4034 + 196 len ceil32(mem[_4034])])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if v == -1:
                                                revert with 'NH{q', 17
                                            if ('cd', 100).length < 1:
                                                revert with 'NH{q', 17
                                            if v + 1 < ('cd', 100).length - 1:
                                                if v + 1 >= mem[96]:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 164).length:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 196).length:
                                                    revert with 'NH{q', 50
                                                if 1 > !(v + 1):
                                                    revert with 'NH{q', 17
                                                idx = v + 2
                                                s = cd[((32 * v + 1) + cd[196] + 36)]
                                                t = cd[((32 * v + 1) + cd[164] + 36)]
                                                u = mem[(32 * v + 1) + 140 len 20]
                                                v = v + 1
                                                continue 
                                            if ('cd', 100).length < 1:
                                                revert with 'NH{q', 17
                                            if ('cd', 100).length - 1 >= mem[96]:
                                                revert with 'NH{q', 50
                                            if v + 1 >= ('cd', 164).length:
                                                revert with 'NH{q', 50
                                            if v + 1 >= ('cd', 196).length:
                                                revert with 'NH{q', 50
                                            mem[_4034 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_4034 + 68] = cd[((32 * v + 1) + cd[164] + 36)]
                                            idx = 0
                                            while idx < 0:
                                                mem[idx + _4034 + 228] = mem[idx + _4034 + 64]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(mem[(32 * ('cd', 100).length - 1) + 140 len 20])
                                            call mem[(32 * ('cd', 100).length - 1) + 140 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args cd[((32 * v + 1) + cd[164] + 36)], cd[(cd[196] + (32 * v + 1) + 36)], address(this.address), 128, 0, None
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 'NH{q', 50
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 100).length - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1362 = mem[(32 * ('cd', 100).length - 1) + 128]
                        if var102002 >= ('cd', 164).length:
                            revert with 'NH{q', 50
                        if var102002 >= ('cd', 196).length:
                            revert with 'NH{q', 50
                        _1378 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_1378 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1378 + 36] = cd[((32 * var102002) + cd[164] + 36)]
                        mem[_1378 + 68] = cd[(cd[196] + (32 * var102002) + 36)]
                        mem[_1378 + 100] = this.address
                        mem[_1378 + 132] = 128
                        mem[_1378 + 164] = mem[_1378]
                        mem[_1378 + 196 len ceil32(mem[_1378])] = mem[_1378 + 32 len ceil32(mem[_1378])]
                        if ceil32(mem[_1378]) > mem[_1378]:
                            mem[_1378 + mem[_1378] + 196] = 0
                        require ext_code.size(address(_1362))
                        call address(_1362) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[_1378]) + _1378 + -mem[64] + 192]
                    else:
                        require return_data.size >= 32
                        require mem[_354 + 32] == bool(mem[_354 + 32])
                        if not mem[_354 + 32]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if var106002 < ('cd', 100).length - 1:
                            if var108001 < mem[96]:
                                if var110003 < ('cd', 164).length:
                                    if var112006 < ('cd', 196).length:
                                        if 1 > !var116002:
                                            revert with 'NH{q', 17
                                        idx = var118003 + 1
                                        s = var118007
                                        t = var118008
                                        u = var118010
                                        v = var118011
                                        while idx < ('cd', 100).length:
                                            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                                            _4035 = mem[64]
                                            mem[mem[64]] = 0
                                            mem[64] = mem[64] + 32
                                            mem[_4035 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_4035 + 36] = t
                                            mem[_4035 + 68] = s
                                            mem[_4035 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                            mem[_4035 + 132] = 128
                                            mem[_4035 + 164] = mem[_4035]
                                            idx = 0
                                            while idx < mem[_4035]:
                                                mem[idx + _4035 + 196] = mem[idx + _4035 + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[_4035]) <= mem[_4035]:
                                                require ext_code.size(u)
                                                call u.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len ceil32(mem[_4035]) + _4035 + -mem[64] + 192]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if v == -1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if v + 1 < ('cd', 100).length - 1:
                                                    if v + 1 >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 164).length:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 196).length:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(v + 1):
                                                        revert with 'NH{q', 17
                                                    idx = v + 2
                                                    s = cd[((32 * v + 1) + cd[196] + 36)]
                                                    t = cd[((32 * v + 1) + cd[164] + 36)]
                                                    u = mem[(32 * v + 1) + 140 len 20]
                                                    v = v + 1
                                                    continue 
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length - 1 >= mem[96]:
                                                    revert with 'NH{q', 50
                                                _4534 = mem[(32 * ('cd', 100).length - 1) + 128]
                                                if v + 1 >= ('cd', 164).length:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 196).length:
                                                    revert with 'NH{q', 50
                                                _4579 = mem[64]
                                                mem[mem[64]] = 0
                                                mem[64] = mem[64] + 32
                                                mem[_4579 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_4579 + 36] = cd[((32 * v + 1) + cd[164] + 36)]
                                                mem[_4579 + 68] = cd[(cd[196] + (32 * v + 1) + 36)]
                                                mem[_4579 + 100] = this.address
                                                mem[_4579 + 132] = 128
                                                mem[_4579 + 164] = mem[_4579]
                                                idx = 0
                                                while idx < mem[_4579]:
                                                    mem[idx + _4579 + 196] = mem[idx + _4579 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[_4579]) > mem[_4579]:
                                                    mem[_4579 + mem[_4579] + 196] = 0
                                                require ext_code.size(address(_4534))
                                                call address(_4534).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args cd[((32 * v + 1) + cd[164] + 36)], cd[(cd[196] + (32 * v + 1) + 36)], address(this.address), Array(len=mem[_4579], data=mem[_4579 + 196 len ceil32(mem[_4579])])
                                            else:
                                                mem[_4035 + mem[_4035] + 196] = 0
                                                require ext_code.size(u)
                                                call u.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len ceil32(mem[_4035]) + _4035 + -mem[64] + 192]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if v == -1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if v + 1 < ('cd', 100).length - 1:
                                                    if v + 1 >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 164).length:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 196).length:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(v + 1):
                                                        revert with 'NH{q', 17
                                                    idx = v + 2
                                                    s = cd[((32 * v + 1) + cd[196] + 36)]
                                                    t = cd[((32 * v + 1) + cd[164] + 36)]
                                                    u = mem[(32 * v + 1) + 140 len 20]
                                                    v = v + 1
                                                    continue 
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length - 1 >= mem[96]:
                                                    revert with 'NH{q', 50
                                                _4563 = mem[(32 * ('cd', 100).length - 1) + 128]
                                                if v + 1 >= ('cd', 164).length:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 196).length:
                                                    revert with 'NH{q', 50
                                                _4599 = mem[64]
                                                mem[mem[64]] = 0
                                                mem[64] = mem[64] + 32
                                                mem[_4599 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_4599 + 36] = cd[((32 * v + 1) + cd[164] + 36)]
                                                mem[_4599 + 68] = cd[(cd[196] + (32 * v + 1) + 36)]
                                                mem[_4599 + 100] = this.address
                                                mem[_4599 + 132] = 128
                                                mem[_4599 + 164] = mem[_4599]
                                                idx = 0
                                                while idx < mem[_4599]:
                                                    mem[idx + _4599 + 196] = mem[idx + _4599 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[_4599]) > mem[_4599]:
                                                    mem[_4599 + mem[_4599] + 196] = 0
                                                require ext_code.size(address(_4563))
                                                call address(_4563).mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len ceil32(mem[_4599]) + _4599 + -mem[64] + 192]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 'NH{q', 50
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 100).length - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1363 = mem[(32 * ('cd', 100).length - 1) + 128]
                        if var106002 >= ('cd', 164).length:
                            revert with 'NH{q', 50
                        if var106002 >= ('cd', 196).length:
                            revert with 'NH{q', 50
                        _1379 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_1379 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1379 + 36] = cd[((32 * var106002) + cd[164] + 36)]
                        mem[_1379 + 68] = cd[(cd[196] + (32 * var106002) + 36)]
                        mem[_1379 + 100] = this.address
                        mem[_1379 + 132] = 128
                        mem[_1379 + 164] = mem[_1379]
                        mem[_1379 + 196 len ceil32(mem[_1379])] = mem[_1379 + 32 len ceil32(mem[_1379])]
                        if ceil32(mem[_1379]) > mem[_1379]:
                            mem[_1379 + mem[_1379] + 196] = 0
                        require ext_code.size(address(_1363))
                        call address(_1363) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[_1379]) + _1379 + -mem[64] + 192]
            else:
                mem[_30 + _40 + 100] = 0
                call address(cd[36]) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _40 + _30 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not mem[96]:
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if var103002 < ('cd', 100).length - 1:
                            if var105001 < mem[96]:
                                if var107003 < ('cd', 164).length:
                                    if var109006 < ('cd', 196).length:
                                        if 1 > !var113002:
                                            revert with 'NH{q', 17
                                        idx = var115003 + 1
                                        s = var115007
                                        t = var115008
                                        u = var115010
                                        v = var115011
                                        while idx < ('cd', 100).length:
                                            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                                            _4036 = mem[64]
                                            mem[mem[64]] = 0
                                            mem[64] = mem[64] + 32
                                            mem[_4036 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_4036 + 36] = t
                                            mem[_4036 + 68] = s
                                            mem[_4036 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                            mem[_4036 + 132] = 128
                                            mem[_4036 + 164] = mem[_4036]
                                            w = 0
                                            while w < mem[_4036]:
                                                mem[w + _4036 + 196] = mem[w + _4036 + 32]
                                                w = w + 32
                                                continue 
                                            if ceil32(mem[_4036]) <= mem[_4036]:
                                                require ext_code.size(u)
                                                call u.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args t, s, address(cd[((32 * idx) + cd[100] + 36)]), Array(len=mem[_4036], data=mem[_4036 + 196 len ceil32(mem[_4036])])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if v == -1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if v + 1 < ('cd', 100).length - 1:
                                                    if v + 1 >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 164).length:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 196).length:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(v + 1):
                                                        revert with 'NH{q', 17
                                                    idx = v + 2
                                                    s = cd[((32 * v + 1) + cd[196] + 36)]
                                                    t = cd[((32 * v + 1) + cd[164] + 36)]
                                                    u = mem[(32 * v + 1) + 140 len 20]
                                                    v = v + 1
                                                    continue 
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length - 1 >= mem[96]:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 164).length:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 196).length:
                                                    revert with 'NH{q', 50
                                                mem[_4036 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_4036 + 68] = cd[((32 * v + 1) + cd[164] + 36)]
                                                idx = 0
                                                while idx < 0:
                                                    mem[idx + _4036 + 228] = mem[idx + _4036 + 64]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(mem[(32 * ('cd', 100).length - 1) + 140 len 20])
                                                call mem[(32 * ('cd', 100).length - 1) + 140 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args cd[((32 * v + 1) + cd[164] + 36)], cd[(cd[196] + (32 * v + 1) + 36)], address(this.address), 128, 0, None
                                            else:
                                                mem[_4036 + mem[_4036] + 196] = 0
                                                require ext_code.size(u)
                                                call u.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args t, s, address(cd[((32 * idx) + cd[100] + 36)]), Array(len=mem[_4036], data=mem[_4036 + 196 len ceil32(mem[_4036])])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if v == -1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if v + 1 < ('cd', 100).length - 1:
                                                    if v + 1 >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 164).length:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 196).length:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(v + 1):
                                                        revert with 'NH{q', 17
                                                    idx = v + 2
                                                    s = cd[((32 * v + 1) + cd[196] + 36)]
                                                    t = cd[((32 * v + 1) + cd[164] + 36)]
                                                    u = mem[(32 * v + 1) + 140 len 20]
                                                    v = v + 1
                                                    continue 
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length - 1 >= mem[96]:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 164).length:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 196).length:
                                                    revert with 'NH{q', 50
                                                mem[_4036 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_4036 + 68] = cd[((32 * v + 1) + cd[164] + 36)]
                                                idx = 0
                                                while idx < 0:
                                                    mem[idx + _4036 + 228] = mem[idx + _4036 + 64]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(mem[(32 * ('cd', 100).length - 1) + 140 len 20])
                                                call mem[(32 * ('cd', 100).length - 1) + 140 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args cd[((32 * v + 1) + cd[164] + 36)], cd[(cd[196] + (32 * v + 1) + 36)], address(this.address), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 'NH{q', 50
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 100).length - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1364 = mem[(32 * ('cd', 100).length - 1) + 128]
                        if var103002 >= ('cd', 164).length:
                            revert with 'NH{q', 50
                        if var103002 >= ('cd', 196).length:
                            revert with 'NH{q', 50
                        _1380 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_1380 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1380 + 36] = cd[((32 * var103002) + cd[164] + 36)]
                        mem[_1380 + 68] = cd[(cd[196] + (32 * var103002) + 36)]
                        mem[_1380 + 100] = this.address
                        mem[_1380 + 132] = 128
                        mem[_1380 + 164] = mem[_1380]
                        mem[_1380 + 196 len ceil32(mem[_1380])] = mem[_1380 + 32 len ceil32(mem[_1380])]
                        if ceil32(mem[_1380]) > mem[_1380]:
                            mem[_1380 + mem[_1380] + 196] = 0
                        require ext_code.size(address(_1364))
                        call address(_1364) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[_1380]) + _1380 + -mem[64] + 192]
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if var107002 < ('cd', 100).length - 1:
                            if var109001 < mem[96]:
                                if var111003 < ('cd', 164).length:
                                    if var113006 < ('cd', 196).length:
                                        if 1 > !var117002:
                                            revert with 'NH{q', 17
                                        idx = var119003 + 1
                                        s = var119007
                                        t = var119008
                                        u = var119010
                                        v = var119011
                                        while idx < ('cd', 100).length:
                                            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                                            _4037 = mem[64]
                                            mem[mem[64]] = 0
                                            mem[64] = mem[64] + 32
                                            mem[_4037 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_4037 + 36] = t
                                            mem[_4037 + 68] = s
                                            mem[_4037 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                            mem[_4037 + 132] = 128
                                            mem[_4037 + 164] = mem[_4037]
                                            idx = 0
                                            while idx < mem[_4037]:
                                                mem[idx + _4037 + 196] = mem[idx + _4037 + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[_4037]) <= mem[_4037]:
                                                require ext_code.size(u)
                                                call u.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len ceil32(mem[_4037]) + _4037 + -mem[64] + 192]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if v == -1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if v + 1 < ('cd', 100).length - 1:
                                                    if v + 1 >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 164).length:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 196).length:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(v + 1):
                                                        revert with 'NH{q', 17
                                                    idx = v + 2
                                                    s = cd[((32 * v + 1) + cd[196] + 36)]
                                                    t = cd[((32 * v + 1) + cd[164] + 36)]
                                                    u = mem[(32 * v + 1) + 140 len 20]
                                                    v = v + 1
                                                    continue 
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length - 1 >= mem[96]:
                                                    revert with 'NH{q', 50
                                                _4538 = mem[(32 * ('cd', 100).length - 1) + 128]
                                                if v + 1 >= ('cd', 164).length:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 196).length:
                                                    revert with 'NH{q', 50
                                                _4581 = mem[64]
                                                mem[mem[64]] = 0
                                                mem[64] = mem[64] + 32
                                                mem[_4581 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_4581 + 36] = cd[((32 * v + 1) + cd[164] + 36)]
                                                mem[_4581 + 68] = cd[(cd[196] + (32 * v + 1) + 36)]
                                                mem[_4581 + 100] = this.address
                                                mem[_4581 + 132] = 128
                                                mem[_4581 + 164] = mem[_4581]
                                                idx = 0
                                                while idx < mem[_4581]:
                                                    mem[idx + _4581 + 196] = mem[idx + _4581 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[_4581]) > mem[_4581]:
                                                    mem[_4581 + mem[_4581] + 196] = 0
                                                require ext_code.size(address(_4538))
                                                call address(_4538).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args cd[((32 * v + 1) + cd[164] + 36)], cd[(cd[196] + (32 * v + 1) + 36)], address(this.address), Array(len=mem[_4581], data=mem[_4581 + 196 len ceil32(mem[_4581])])
                                            else:
                                                mem[_4037 + mem[_4037] + 196] = 0
                                                require ext_code.size(u)
                                                call u.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len ceil32(mem[_4037]) + _4037 + -mem[64] + 192]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if v == -1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if v + 1 < ('cd', 100).length - 1:
                                                    if v + 1 >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 164).length:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 196).length:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(v + 1):
                                                        revert with 'NH{q', 17
                                                    idx = v + 2
                                                    s = cd[((32 * v + 1) + cd[196] + 36)]
                                                    t = cd[((32 * v + 1) + cd[164] + 36)]
                                                    u = mem[(32 * v + 1) + 140 len 20]
                                                    v = v + 1
                                                    continue 
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length - 1 >= mem[96]:
                                                    revert with 'NH{q', 50
                                                _4565 = mem[(32 * ('cd', 100).length - 1) + 128]
                                                if v + 1 >= ('cd', 164).length:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 196).length:
                                                    revert with 'NH{q', 50
                                                _4603 = mem[64]
                                                mem[mem[64]] = 0
                                                mem[64] = mem[64] + 32
                                                mem[_4603 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_4603 + 36] = cd[((32 * v + 1) + cd[164] + 36)]
                                                mem[_4603 + 68] = cd[(cd[196] + (32 * v + 1) + 36)]
                                                mem[_4603 + 100] = this.address
                                                mem[_4603 + 132] = 128
                                                mem[_4603 + 164] = mem[_4603]
                                                idx = 0
                                                while idx < mem[_4603]:
                                                    mem[idx + _4603 + 196] = mem[idx + _4603 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[_4603]) > mem[_4603]:
                                                    mem[_4603 + mem[_4603] + 196] = 0
                                                require ext_code.size(address(_4565))
                                                call address(_4565).mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len ceil32(mem[_4603]) + _4603 + -mem[64] + 192]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 'NH{q', 50
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 100).length - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1365 = mem[(32 * ('cd', 100).length - 1) + 128]
                        if var107002 >= ('cd', 164).length:
                            revert with 'NH{q', 50
                        if var107002 >= ('cd', 196).length:
                            revert with 'NH{q', 50
                        _1381 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_1381 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1381 + 36] = cd[((32 * var107002) + cd[164] + 36)]
                        mem[_1381 + 68] = cd[(cd[196] + (32 * var107002) + 36)]
                        mem[_1381 + 100] = this.address
                        mem[_1381 + 132] = 128
                        mem[_1381 + 164] = mem[_1381]
                        mem[_1381 + 196 len ceil32(mem[_1381])] = mem[_1381 + 32 len ceil32(mem[_1381])]
                        if ceil32(mem[_1381]) > mem[_1381]:
                            mem[_1381 + mem[_1381] + 196] = 0
                        require ext_code.size(address(_1365))
                        call address(_1365) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[_1381]) + _1381 + -mem[64] + 192]
                else:
                    _358 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_358] = return_data.size
                    mem[_358 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not return_data.size:
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if var103002 < ('cd', 100).length - 1:
                            if var105001 < mem[96]:
                                if var107003 < ('cd', 164).length:
                                    if var109006 < ('cd', 196).length:
                                        if 1 > !var113002:
                                            revert with 'NH{q', 17
                                        idx = var115003 + 1
                                        s = var115007
                                        t = var115008
                                        u = var115010
                                        v = var115011
                                        while idx < ('cd', 100).length:
                                            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                                            _4038 = mem[64]
                                            mem[mem[64]] = 0
                                            mem[64] = mem[64] + 32
                                            mem[_4038 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_4038 + 36] = t
                                            mem[_4038 + 68] = s
                                            mem[_4038 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                            mem[_4038 + 132] = 128
                                            mem[_4038 + 164] = mem[_4038]
                                            w = 0
                                            while w < mem[_4038]:
                                                mem[w + _4038 + 196] = mem[w + _4038 + 32]
                                                w = w + 32
                                                continue 
                                            if ceil32(mem[_4038]) <= mem[_4038]:
                                                require ext_code.size(u)
                                                call u.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args t, s, address(cd[((32 * idx) + cd[100] + 36)]), Array(len=mem[_4038], data=mem[_4038 + 196 len ceil32(mem[_4038])])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if v == -1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if v + 1 < ('cd', 100).length - 1:
                                                    if v + 1 >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 164).length:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 196).length:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(v + 1):
                                                        revert with 'NH{q', 17
                                                    idx = v + 2
                                                    s = cd[((32 * v + 1) + cd[196] + 36)]
                                                    t = cd[((32 * v + 1) + cd[164] + 36)]
                                                    u = mem[(32 * v + 1) + 140 len 20]
                                                    v = v + 1
                                                    continue 
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length - 1 >= mem[96]:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 164).length:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 196).length:
                                                    revert with 'NH{q', 50
                                                mem[_4038 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_4038 + 68] = cd[((32 * v + 1) + cd[164] + 36)]
                                                idx = 0
                                                while idx < 0:
                                                    mem[idx + _4038 + 228] = mem[idx + _4038 + 64]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(mem[(32 * ('cd', 100).length - 1) + 140 len 20])
                                                call mem[(32 * ('cd', 100).length - 1) + 140 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args cd[((32 * v + 1) + cd[164] + 36)], cd[(cd[196] + (32 * v + 1) + 36)], address(this.address), 128, 0
                                            else:
                                                mem[_4038 + mem[_4038] + 196] = 0
                                                require ext_code.size(u)
                                                call u.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args t, s, address(cd[((32 * idx) + cd[100] + 36)]), Array(len=mem[_4038], data=mem[_4038 + 196 len ceil32(mem[_4038])])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if v == -1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if v + 1 < ('cd', 100).length - 1:
                                                    if v + 1 >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 164).length:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 196).length:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(v + 1):
                                                        revert with 'NH{q', 17
                                                    idx = v + 2
                                                    s = cd[((32 * v + 1) + cd[196] + 36)]
                                                    t = cd[((32 * v + 1) + cd[164] + 36)]
                                                    u = mem[(32 * v + 1) + 140 len 20]
                                                    v = v + 1
                                                    continue 
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length - 1 >= mem[96]:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 164).length:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 196).length:
                                                    revert with 'NH{q', 50
                                                mem[_4038 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_4038 + 68] = cd[((32 * v + 1) + cd[164] + 36)]
                                                idx = 0
                                                while idx < 0:
                                                    mem[idx + _4038 + 228] = mem[idx + _4038 + 64]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(mem[(32 * ('cd', 100).length - 1) + 140 len 20])
                                                call mem[(32 * ('cd', 100).length - 1) + 140 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args cd[((32 * v + 1) + cd[164] + 36)], cd[(cd[196] + (32 * v + 1) + 36)], address(this.address), 128, 0, None
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 'NH{q', 50
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 100).length - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1366 = mem[(32 * ('cd', 100).length - 1) + 128]
                        if var103002 >= ('cd', 164).length:
                            revert with 'NH{q', 50
                        if var103002 >= ('cd', 196).length:
                            revert with 'NH{q', 50
                        _1382 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_1382 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1382 + 36] = cd[((32 * var103002) + cd[164] + 36)]
                        mem[_1382 + 68] = cd[(cd[196] + (32 * var103002) + 36)]
                        mem[_1382 + 100] = this.address
                        mem[_1382 + 132] = 128
                        mem[_1382 + 164] = mem[_1382]
                        mem[_1382 + 196 len ceil32(mem[_1382])] = mem[_1382 + 32 len ceil32(mem[_1382])]
                        if ceil32(mem[_1382]) > mem[_1382]:
                            mem[_1382 + mem[_1382] + 196] = 0
                        require ext_code.size(address(_1366))
                        call address(_1366).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args cd[((32 * var103002) + cd[164] + 36)], cd[(cd[196] + (32 * var103002) + 36)], address(this.address), Array(len=mem[_1382], data=mem[_1382 + 196 len ceil32(mem[_1382])])
                    else:
                        require return_data.size >= 32
                        require mem[_358 + 32] == bool(mem[_358 + 32])
                        if not mem[_358 + 32]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if var107002 < ('cd', 100).length - 1:
                            if var109001 < mem[96]:
                                if var111003 < ('cd', 164).length:
                                    if var113006 < ('cd', 196).length:
                                        if 1 > !var117002:
                                            revert with 'NH{q', 17
                                        idx = var119003 + 1
                                        s = var119007
                                        t = var119008
                                        u = var119010
                                        v = var119011
                                        while idx < ('cd', 100).length:
                                            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                                            _4039 = mem[64]
                                            mem[mem[64]] = 0
                                            mem[64] = mem[64] + 32
                                            mem[_4039 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_4039 + 36] = t
                                            mem[_4039 + 68] = s
                                            mem[_4039 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                            mem[_4039 + 132] = 128
                                            mem[_4039 + 164] = mem[_4039]
                                            w = 0
                                            while w < mem[_4039]:
                                                mem[w + _4039 + 196] = mem[w + _4039 + 32]
                                                w = w + 32
                                                continue 
                                            if ceil32(mem[_4039]) <= mem[_4039]:
                                                require ext_code.size(u)
                                                call u.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args t, s, address(cd[((32 * idx) + cd[100] + 36)]), Array(len=mem[_4039], data=mem[_4039 + 196 len ceil32(mem[_4039])])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if v == -1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if v + 1 < ('cd', 100).length - 1:
                                                    if v + 1 >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 164).length:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 196).length:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(v + 1):
                                                        revert with 'NH{q', 17
                                                    idx = v + 2
                                                    s = cd[((32 * v + 1) + cd[196] + 36)]
                                                    t = cd[((32 * v + 1) + cd[164] + 36)]
                                                    u = mem[(32 * v + 1) + 140 len 20]
                                                    v = v + 1
                                                    continue 
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length - 1 >= mem[96]:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 164).length:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 196).length:
                                                    revert with 'NH{q', 50
                                                mem[_4039 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_4039 + 68] = cd[((32 * v + 1) + cd[164] + 36)]
                                                idx = 0
                                                while idx < 0:
                                                    mem[idx + _4039 + 228] = mem[idx + _4039 + 64]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(mem[(32 * ('cd', 100).length - 1) + 140 len 20])
                                                call mem[(32 * ('cd', 100).length - 1) + 140 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args cd[((32 * v + 1) + cd[164] + 36)], cd[(cd[196] + (32 * v + 1) + 36)], address(this.address), 128, 0
                                            else:
                                                mem[_4039 + mem[_4039] + 196] = 0
                                                require ext_code.size(u)
                                                call u.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args t, s, address(cd[((32 * idx) + cd[100] + 36)]), Array(len=mem[_4039], data=mem[_4039 + 196 len ceil32(mem[_4039])])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if v == -1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if v + 1 < ('cd', 100).length - 1:
                                                    if v + 1 >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 164).length:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 196).length:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(v + 1):
                                                        revert with 'NH{q', 17
                                                    idx = v + 2
                                                    s = cd[((32 * v + 1) + cd[196] + 36)]
                                                    t = cd[((32 * v + 1) + cd[164] + 36)]
                                                    u = mem[(32 * v + 1) + 140 len 20]
                                                    v = v + 1
                                                    continue 
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length - 1 >= mem[96]:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 164).length:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 196).length:
                                                    revert with 'NH{q', 50
                                                mem[_4039 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_4039 + 68] = cd[((32 * v + 1) + cd[164] + 36)]
                                                idx = 0
                                                while idx < 0:
                                                    mem[idx + _4039 + 228] = mem[idx + _4039 + 64]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(mem[(32 * ('cd', 100).length - 1) + 140 len 20])
                                                call mem[(32 * ('cd', 100).length - 1) + 140 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args cd[((32 * v + 1) + cd[164] + 36)], cd[(cd[196] + (32 * v + 1) + 36)], address(this.address), 128, 0, None
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 'NH{q', 50
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 100).length - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1367 = mem[(32 * ('cd', 100).length - 1) + 128]
                        if var107002 >= ('cd', 164).length:
                            revert with 'NH{q', 50
                        if var107002 >= ('cd', 196).length:
                            revert with 'NH{q', 50
                        _1383 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_1383 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1383 + 36] = cd[((32 * var107002) + cd[164] + 36)]
                        mem[_1383 + 68] = cd[(cd[196] + (32 * var107002) + 36)]
                        mem[_1383 + 100] = this.address
                        mem[_1383 + 132] = 128
                        mem[_1383 + 164] = mem[_1383]
                        mem[_1383 + 196 len ceil32(mem[_1383])] = mem[_1383 + 32 len ceil32(mem[_1383])]
                        if ceil32(mem[_1383]) > mem[_1383]:
                            mem[_1383 + mem[_1383] + 196] = 0
                        require ext_code.size(address(_1367))
                        call address(_1367) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[_1383]) + _1383 + -mem[64] + 192]
        else:
            mem[128 len 32 * ('cd', 100).length] = call.data[calldata.size len 32 * ('cd', 100).length]
            idx = 0
            while idx < ('cd', 100).length:
                require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = address(cd[((32 * idx) + cd[100] + 36)])
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(address(cd[((32 * idx) + cd[100] + 36)]))
                staticcall address(cd[((32 * idx) + cd[100] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _49 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_49] == mem[_49 + 18 len 14]
                require mem[_49 + 32] == mem[_49 + 50 len 14]
                require mem[_49 + 64] == mem[_49 + 92 len 4]
                if idx >= ('cd', 132).length:
                    revert with 'NH{q', 50
                if cd[((32 * idx) + cd[132] + 36)] != mem[_49 + 18 len 14]:
                    revert with 0, 'ERROR: R'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if 0 >= ('cd', 100).length:
                revert with 'NH{q', 50
            require ('cd', 100)[0] == address(('cd', 100)[0])
            _35 = mem[64]
            mem[mem[64] + 36] = address(('cd', 100)[0])
            mem[mem[64] + 68] = cd[68]
            _36 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_36 + 32 len 4] = unknown_0xa9059cbb(?????)
            _44 = mem[_36]
            mem[_35 + 100 len ceil32(mem[_36])] = mem[_36 + 32 len ceil32(mem[_36])]
            if ceil32(_44) <= _44:
                call address(cd[36]) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _44 + _35 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not mem[96]:
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if var103002 < ('cd', 100).length - 1:
                            if var105001 < mem[96]:
                                if var107003 < ('cd', 164).length:
                                    if var109006 < ('cd', 196).length:
                                        if 1 > !var113002:
                                            revert with 'NH{q', 17
                                        idx = var115003 + 1
                                        s = var115007
                                        t = var115008
                                        u = var115010
                                        v = var115011
                                        while idx < ('cd', 100).length:
                                            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                                            _4040 = mem[64]
                                            mem[mem[64]] = 0
                                            mem[64] = mem[64] + 32
                                            mem[_4040 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_4040 + 36] = t
                                            mem[_4040 + 68] = s
                                            mem[_4040 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                            mem[_4040 + 132] = 128
                                            mem[_4040 + 164] = mem[_4040]
                                            w = 0
                                            while w < mem[_4040]:
                                                mem[w + _4040 + 196] = mem[w + _4040 + 32]
                                                w = w + 32
                                                continue 
                                            if ceil32(mem[_4040]) > mem[_4040]:
                                                mem[_4040 + mem[_4040] + 196] = 0
                                            require ext_code.size(u)
                                            call u.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args t, s, address(cd[((32 * idx) + cd[100] + 36)]), Array(len=mem[_4040], data=mem[_4040 + 196 len ceil32(mem[_4040])])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if v == -1:
                                                revert with 'NH{q', 17
                                            if ('cd', 100).length < 1:
                                                revert with 'NH{q', 17
                                            if v + 1 < ('cd', 100).length - 1:
                                                if v + 1 >= mem[96]:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 164).length:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 196).length:
                                                    revert with 'NH{q', 50
                                                if 1 > !(v + 1):
                                                    revert with 'NH{q', 17
                                                idx = v + 2
                                                s = cd[((32 * v + 1) + cd[196] + 36)]
                                                t = cd[((32 * v + 1) + cd[164] + 36)]
                                                u = mem[(32 * v + 1) + 140 len 20]
                                                v = v + 1
                                                continue 
                                            if ('cd', 100).length < 1:
                                                revert with 'NH{q', 17
                                            if ('cd', 100).length - 1 >= mem[96]:
                                                revert with 'NH{q', 50
                                            if v + 1 >= ('cd', 164).length:
                                                revert with 'NH{q', 50
                                            if v + 1 >= ('cd', 196).length:
                                                revert with 'NH{q', 50
                                            mem[_4040 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_4040 + 68] = cd[((32 * v + 1) + cd[164] + 36)]
                                            idx = 0
                                            while idx < 0:
                                                mem[idx + _4040 + 228] = mem[idx + _4040 + 64]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(mem[(32 * ('cd', 100).length - 1) + 140 len 20])
                                            call mem[(32 * ('cd', 100).length - 1) + 140 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args cd[((32 * v + 1) + cd[164] + 36)], cd[(cd[196] + (32 * v + 1) + 36)], address(this.address), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 'NH{q', 50
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 100).length - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1368 = mem[(32 * ('cd', 100).length - 1) + 128]
                        if var103002 >= ('cd', 164).length:
                            revert with 'NH{q', 50
                        if var103002 >= ('cd', 196).length:
                            revert with 'NH{q', 50
                        _1384 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_1384 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1384 + 36] = cd[((32 * var103002) + cd[164] + 36)]
                        mem[_1384 + 68] = cd[(cd[196] + (32 * var103002) + 36)]
                        mem[_1384 + 100] = this.address
                        mem[_1384 + 132] = 128
                        mem[_1384 + 164] = mem[_1384]
                        mem[_1384 + 196 len ceil32(mem[_1384])] = mem[_1384 + 32 len ceil32(mem[_1384])]
                        if ceil32(mem[_1384]) > mem[_1384]:
                            mem[_1384 + mem[_1384] + 196] = 0
                        require ext_code.size(address(_1368))
                        call address(_1368) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[_1384]) + _1384 + -mem[64] + 192]
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if var107002 < ('cd', 100).length - 1:
                            if var109001 < mem[96]:
                                if var111003 < ('cd', 164).length:
                                    if var113006 < ('cd', 196).length:
                                        if 1 > !var117002:
                                            revert with 'NH{q', 17
                                        idx = var119003 + 1
                                        s = var119007
                                        t = var119008
                                        u = var119010
                                        v = var119011
                                        while idx < ('cd', 100).length:
                                            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                                            _4041 = mem[64]
                                            mem[mem[64]] = 0
                                            mem[64] = mem[64] + 32
                                            mem[_4041 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_4041 + 36] = t
                                            mem[_4041 + 68] = s
                                            mem[_4041 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                            mem[_4041 + 132] = 128
                                            mem[_4041 + 164] = mem[_4041]
                                            idx = 0
                                            while idx < mem[_4041]:
                                                mem[idx + _4041 + 196] = mem[idx + _4041 + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[_4041]) <= mem[_4041]:
                                                require ext_code.size(u)
                                                call u.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len ceil32(mem[_4041]) + _4041 + -mem[64] + 192]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if v == -1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if v + 1 < ('cd', 100).length - 1:
                                                    if v + 1 >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 164).length:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 196).length:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(v + 1):
                                                        revert with 'NH{q', 17
                                                    idx = v + 2
                                                    s = cd[((32 * v + 1) + cd[196] + 36)]
                                                    t = cd[((32 * v + 1) + cd[164] + 36)]
                                                    u = mem[(32 * v + 1) + 140 len 20]
                                                    v = v + 1
                                                    continue 
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length - 1 >= mem[96]:
                                                    revert with 'NH{q', 50
                                                _4546 = mem[(32 * ('cd', 100).length - 1) + 128]
                                                if v + 1 >= ('cd', 164).length:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 196).length:
                                                    revert with 'NH{q', 50
                                                _4585 = mem[64]
                                                mem[mem[64]] = 0
                                                mem[64] = mem[64] + 32
                                                mem[_4585 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_4585 + 36] = cd[((32 * v + 1) + cd[164] + 36)]
                                                mem[_4585 + 68] = cd[(cd[196] + (32 * v + 1) + 36)]
                                                mem[_4585 + 100] = this.address
                                                mem[_4585 + 132] = 128
                                                mem[_4585 + 164] = mem[_4585]
                                                idx = 0
                                                while idx < mem[_4585]:
                                                    mem[idx + _4585 + 196] = mem[idx + _4585 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[_4585]) > mem[_4585]:
                                                    mem[_4585 + mem[_4585] + 196] = 0
                                                require ext_code.size(address(_4546))
                                                call address(_4546).mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len ceil32(mem[_4585]) + _4585 + -mem[64] + 192]
                                            else:
                                                mem[_4041 + mem[_4041] + 196] = 0
                                                require ext_code.size(u)
                                                call u.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len ceil32(mem[_4041]) + _4041 + -mem[64] + 192]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if v == -1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if v + 1 < ('cd', 100).length - 1:
                                                    if v + 1 >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 164).length:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 196).length:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(v + 1):
                                                        revert with 'NH{q', 17
                                                    idx = v + 2
                                                    s = cd[((32 * v + 1) + cd[196] + 36)]
                                                    t = cd[((32 * v + 1) + cd[164] + 36)]
                                                    u = mem[(32 * v + 1) + 140 len 20]
                                                    v = v + 1
                                                    continue 
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length - 1 >= mem[96]:
                                                    revert with 'NH{q', 50
                                                _4569 = mem[(32 * ('cd', 100).length - 1) + 128]
                                                if v + 1 >= ('cd', 164).length:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 196).length:
                                                    revert with 'NH{q', 50
                                                _4611 = mem[64]
                                                mem[mem[64]] = 0
                                                mem[64] = mem[64] + 32
                                                mem[_4611 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_4611 + 36] = cd[((32 * v + 1) + cd[164] + 36)]
                                                mem[_4611 + 68] = cd[(cd[196] + (32 * v + 1) + 36)]
                                                mem[_4611 + 100] = this.address
                                                mem[_4611 + 132] = 128
                                                mem[_4611 + 164] = mem[_4611]
                                                idx = 0
                                                while idx < mem[_4611]:
                                                    mem[idx + _4611 + 196] = mem[idx + _4611 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[_4611]) > mem[_4611]:
                                                    mem[_4611 + mem[_4611] + 196] = 0
                                                require ext_code.size(address(_4569))
                                                call address(_4569).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args cd[((32 * v + 1) + cd[164] + 36)], cd[(cd[196] + (32 * v + 1) + 36)], address(this.address), Array(len=mem[_4611], data=mem[_4611 + 196 len ceil32(mem[_4611])])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 'NH{q', 50
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 100).length - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1369 = mem[(32 * ('cd', 100).length - 1) + 128]
                        if var107002 >= ('cd', 164).length:
                            revert with 'NH{q', 50
                        if var107002 >= ('cd', 196).length:
                            revert with 'NH{q', 50
                        _1385 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_1385 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1385 + 36] = cd[((32 * var107002) + cd[164] + 36)]
                        mem[_1385 + 68] = cd[(cd[196] + (32 * var107002) + 36)]
                        mem[_1385 + 100] = this.address
                        mem[_1385 + 132] = 128
                        mem[_1385 + 164] = mem[_1385]
                        mem[_1385 + 196 len ceil32(mem[_1385])] = mem[_1385 + 32 len ceil32(mem[_1385])]
                        if ceil32(mem[_1385]) > mem[_1385]:
                            mem[_1385 + mem[_1385] + 196] = 0
                        require ext_code.size(address(_1369))
                        call address(_1369).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args cd[((32 * var107002) + cd[164] + 36)], cd[(cd[196] + (32 * var107002) + 36)], address(this.address), Array(len=mem[_1385], data=mem[_1385 + 196 len ceil32(mem[_1385])])
                else:
                    _356 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_356] = return_data.size
                    mem[_356 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not return_data.size:
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if var103002 < ('cd', 100).length - 1:
                            if var105001 < mem[96]:
                                if var107003 < ('cd', 164).length:
                                    if var109006 < ('cd', 196).length:
                                        if 1 > !var113002:
                                            revert with 'NH{q', 17
                                        idx = var115003 + 1
                                        s = var115007
                                        t = var115008
                                        u = var115010
                                        v = var115011
                                        while idx < ('cd', 100).length:
                                            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                                            _4042 = mem[64]
                                            mem[mem[64]] = 0
                                            mem[64] = mem[64] + 32
                                            mem[_4042 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_4042 + 36] = t
                                            mem[_4042 + 68] = s
                                            mem[_4042 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                            mem[_4042 + 132] = 128
                                            mem[_4042 + 164] = mem[_4042]
                                            w = 0
                                            while w < mem[_4042]:
                                                mem[w + _4042 + 196] = mem[w + _4042 + 32]
                                                w = w + 32
                                                continue 
                                            if ceil32(mem[_4042]) > mem[_4042]:
                                                mem[_4042 + mem[_4042] + 196] = 0
                                            require ext_code.size(u)
                                            call u.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args t, s, address(cd[((32 * idx) + cd[100] + 36)]), Array(len=mem[_4042], data=mem[_4042 + 196 len ceil32(mem[_4042])])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if v == -1:
                                                revert with 'NH{q', 17
                                            if ('cd', 100).length < 1:
                                                revert with 'NH{q', 17
                                            if v + 1 < ('cd', 100).length - 1:
                                                if v + 1 >= mem[96]:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 164).length:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 196).length:
                                                    revert with 'NH{q', 50
                                                if 1 > !(v + 1):
                                                    revert with 'NH{q', 17
                                                idx = v + 2
                                                s = cd[((32 * v + 1) + cd[196] + 36)]
                                                t = cd[((32 * v + 1) + cd[164] + 36)]
                                                u = mem[(32 * v + 1) + 140 len 20]
                                                v = v + 1
                                                continue 
                                            if ('cd', 100).length < 1:
                                                revert with 'NH{q', 17
                                            if ('cd', 100).length - 1 >= mem[96]:
                                                revert with 'NH{q', 50
                                            if v + 1 >= ('cd', 164).length:
                                                revert with 'NH{q', 50
                                            if v + 1 >= ('cd', 196).length:
                                                revert with 'NH{q', 50
                                            mem[_4042 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_4042 + 68] = cd[((32 * v + 1) + cd[164] + 36)]
                                            idx = 0
                                            while idx < 0:
                                                mem[idx + _4042 + 228] = mem[idx + _4042 + 64]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(mem[(32 * ('cd', 100).length - 1) + 140 len 20])
                                            call mem[(32 * ('cd', 100).length - 1) + 140 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args cd[((32 * v + 1) + cd[164] + 36)], cd[(cd[196] + (32 * v + 1) + 36)], address(this.address), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 'NH{q', 50
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 100).length - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1370 = mem[(32 * ('cd', 100).length - 1) + 128]
                        if var103002 >= ('cd', 164).length:
                            revert with 'NH{q', 50
                        if var103002 >= ('cd', 196).length:
                            revert with 'NH{q', 50
                        _1386 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_1386 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1386 + 36] = cd[((32 * var103002) + cd[164] + 36)]
                        mem[_1386 + 68] = cd[(cd[196] + (32 * var103002) + 36)]
                        mem[_1386 + 100] = this.address
                        mem[_1386 + 132] = 128
                        mem[_1386 + 164] = mem[_1386]
                        mem[_1386 + 196 len ceil32(mem[_1386])] = mem[_1386 + 32 len ceil32(mem[_1386])]
                        if ceil32(mem[_1386]) > mem[_1386]:
                            mem[_1386 + mem[_1386] + 196] = 0
                        require ext_code.size(address(_1370))
                        call address(_1370).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args cd[((32 * var103002) + cd[164] + 36)], cd[(cd[196] + (32 * var103002) + 36)], address(this.address), Array(len=mem[_1386], data=mem[_1386 + 196 len ceil32(mem[_1386])])
                    else:
                        require return_data.size >= 32
                        require mem[_356 + 32] == bool(mem[_356 + 32])
                        if not mem[_356 + 32]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if var107002 < ('cd', 100).length - 1:
                            if var109001 < mem[96]:
                                if var111003 < ('cd', 164).length:
                                    if var113006 < ('cd', 196).length:
                                        if 1 > !var117002:
                                            revert with 'NH{q', 17
                                        idx = var119003 + 1
                                        s = var119007
                                        t = var119008
                                        u = var119010
                                        v = var119011
                                        while idx < ('cd', 100).length:
                                            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                                            _4043 = mem[64]
                                            mem[mem[64]] = 0
                                            mem[64] = mem[64] + 32
                                            mem[_4043 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_4043 + 36] = t
                                            mem[_4043 + 68] = s
                                            mem[_4043 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                            mem[_4043 + 132] = 128
                                            mem[_4043 + 164] = mem[_4043]
                                            w = 0
                                            while w < mem[_4043]:
                                                mem[w + _4043 + 196] = mem[w + _4043 + 32]
                                                w = w + 32
                                                continue 
                                            if ceil32(mem[_4043]) > mem[_4043]:
                                                mem[_4043 + mem[_4043] + 196] = 0
                                            require ext_code.size(u)
                                            call u.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args t, s, address(cd[((32 * idx) + cd[100] + 36)]), Array(len=mem[_4043], data=mem[_4043 + 196 len ceil32(mem[_4043])])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if v == -1:
                                                revert with 'NH{q', 17
                                            if ('cd', 100).length < 1:
                                                revert with 'NH{q', 17
                                            if v + 1 < ('cd', 100).length - 1:
                                                if v + 1 >= mem[96]:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 164).length:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 196).length:
                                                    revert with 'NH{q', 50
                                                if 1 > !(v + 1):
                                                    revert with 'NH{q', 17
                                                idx = v + 2
                                                s = cd[((32 * v + 1) + cd[196] + 36)]
                                                t = cd[((32 * v + 1) + cd[164] + 36)]
                                                u = mem[(32 * v + 1) + 140 len 20]
                                                v = v + 1
                                                continue 
                                            if ('cd', 100).length < 1:
                                                revert with 'NH{q', 17
                                            if ('cd', 100).length - 1 >= mem[96]:
                                                revert with 'NH{q', 50
                                            if v + 1 >= ('cd', 164).length:
                                                revert with 'NH{q', 50
                                            if v + 1 >= ('cd', 196).length:
                                                revert with 'NH{q', 50
                                            mem[_4043 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_4043 + 68] = cd[((32 * v + 1) + cd[164] + 36)]
                                            idx = 0
                                            while idx < 0:
                                                mem[idx + _4043 + 228] = mem[idx + _4043 + 64]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(mem[(32 * ('cd', 100).length - 1) + 140 len 20])
                                            call mem[(32 * ('cd', 100).length - 1) + 140 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args cd[((32 * v + 1) + cd[164] + 36)], cd[(cd[196] + (32 * v + 1) + 36)], address(this.address), 128, 0, None
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 'NH{q', 50
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 100).length - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1371 = mem[(32 * ('cd', 100).length - 1) + 128]
                        if var107002 >= ('cd', 164).length:
                            revert with 'NH{q', 50
                        if var107002 >= ('cd', 196).length:
                            revert with 'NH{q', 50
                        _1387 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_1387 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1387 + 36] = cd[((32 * var107002) + cd[164] + 36)]
                        mem[_1387 + 68] = cd[(cd[196] + (32 * var107002) + 36)]
                        mem[_1387 + 100] = this.address
                        mem[_1387 + 132] = 128
                        mem[_1387 + 164] = mem[_1387]
                        mem[_1387 + 196 len ceil32(mem[_1387])] = mem[_1387 + 32 len ceil32(mem[_1387])]
                        if ceil32(mem[_1387]) > mem[_1387]:
                            mem[_1387 + mem[_1387] + 196] = 0
                        require ext_code.size(address(_1371))
                        call address(_1371).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args cd[((32 * var107002) + cd[164] + 36)], cd[(cd[196] + (32 * var107002) + 36)], address(this.address), Array(len=mem[_1387], data=mem[_1387 + 196 len ceil32(mem[_1387])])
            else:
                mem[_35 + _44 + 100] = 0
                call address(cd[36]) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _44 + _35 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not mem[96]:
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if var104002 < ('cd', 100).length - 1:
                            if var106001 < mem[96]:
                                if var108003 < ('cd', 164).length:
                                    if var110006 < ('cd', 196).length:
                                        if 1 > !var114002:
                                            revert with 'NH{q', 17
                                        idx = var116003 + 1
                                        s = var116007
                                        t = var116008
                                        u = var116010
                                        v = var116011
                                        while idx < ('cd', 100).length:
                                            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                                            _4044 = mem[64]
                                            mem[mem[64]] = 0
                                            mem[64] = mem[64] + 32
                                            mem[_4044 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_4044 + 36] = t
                                            mem[_4044 + 68] = s
                                            mem[_4044 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                            mem[_4044 + 132] = 128
                                            mem[_4044 + 164] = mem[_4044]
                                            w = 0
                                            while w < mem[_4044]:
                                                mem[w + _4044 + 196] = mem[w + _4044 + 32]
                                                w = w + 32
                                                continue 
                                            if ceil32(mem[_4044]) <= mem[_4044]:
                                                require ext_code.size(u)
                                                call u.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args t, s, address(cd[((32 * idx) + cd[100] + 36)]), Array(len=mem[_4044], data=mem[_4044 + 196 len ceil32(mem[_4044])])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if v == -1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if v + 1 < ('cd', 100).length - 1:
                                                    if v + 1 >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 164).length:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 196).length:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(v + 1):
                                                        revert with 'NH{q', 17
                                                    idx = v + 2
                                                    s = cd[((32 * v + 1) + cd[196] + 36)]
                                                    t = cd[((32 * v + 1) + cd[164] + 36)]
                                                    u = mem[(32 * v + 1) + 140 len 20]
                                                    v = v + 1
                                                    continue 
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length - 1 >= mem[96]:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 164).length:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 196).length:
                                                    revert with 'NH{q', 50
                                                mem[_4044 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_4044 + 68] = cd[((32 * v + 1) + cd[164] + 36)]
                                                idx = 0
                                                while idx < 0:
                                                    mem[idx + _4044 + 228] = mem[idx + _4044 + 64]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(mem[(32 * ('cd', 100).length - 1) + 140 len 20])
                                                call mem[(32 * ('cd', 100).length - 1) + 140 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args cd[((32 * v + 1) + cd[164] + 36)], cd[(cd[196] + (32 * v + 1) + 36)], address(this.address), 128, 0, None
                                            else:
                                                mem[_4044 + mem[_4044] + 196] = 0
                                                require ext_code.size(u)
                                                call u.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args t, s, address(cd[((32 * idx) + cd[100] + 36)]), Array(len=mem[_4044], data=mem[_4044 + 196 len ceil32(mem[_4044])])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if v == -1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if v + 1 < ('cd', 100).length - 1:
                                                    if v + 1 >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 164).length:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 196).length:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(v + 1):
                                                        revert with 'NH{q', 17
                                                    idx = v + 2
                                                    s = cd[((32 * v + 1) + cd[196] + 36)]
                                                    t = cd[((32 * v + 1) + cd[164] + 36)]
                                                    u = mem[(32 * v + 1) + 140 len 20]
                                                    v = v + 1
                                                    continue 
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length - 1 >= mem[96]:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 164).length:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 196).length:
                                                    revert with 'NH{q', 50
                                                mem[_4044 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_4044 + 68] = cd[((32 * v + 1) + cd[164] + 36)]
                                                idx = 0
                                                while idx < 0:
                                                    mem[idx + _4044 + 228] = mem[idx + _4044 + 64]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(mem[(32 * ('cd', 100).length - 1) + 140 len 20])
                                                call mem[(32 * ('cd', 100).length - 1) + 140 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args cd[((32 * v + 1) + cd[164] + 36)], cd[(cd[196] + (32 * v + 1) + 36)], address(this.address), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 'NH{q', 50
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 100).length - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1372 = mem[(32 * ('cd', 100).length - 1) + 128]
                        if var104002 >= ('cd', 164).length:
                            revert with 'NH{q', 50
                        if var104002 >= ('cd', 196).length:
                            revert with 'NH{q', 50
                        _1388 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_1388 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1388 + 36] = cd[((32 * var104002) + cd[164] + 36)]
                        mem[_1388 + 68] = cd[(cd[196] + (32 * var104002) + 36)]
                        mem[_1388 + 100] = this.address
                        mem[_1388 + 132] = 128
                        mem[_1388 + 164] = mem[_1388]
                        mem[_1388 + 196 len ceil32(mem[_1388])] = mem[_1388 + 32 len ceil32(mem[_1388])]
                        if ceil32(mem[_1388]) > mem[_1388]:
                            mem[_1388 + mem[_1388] + 196] = 0
                        require ext_code.size(address(_1372))
                        call address(_1372).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args cd[((32 * var104002) + cd[164] + 36)], cd[(cd[196] + (32 * var104002) + 36)], address(this.address), Array(len=mem[_1388], data=mem[_1388 + 196 len ceil32(mem[_1388])])
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if var108002 < ('cd', 100).length - 1:
                            if var110001 < mem[96]:
                                if var112003 < ('cd', 164).length:
                                    if var114006 < ('cd', 196).length:
                                        if 1 > !var118002:
                                            revert with 'NH{q', 17
                                        idx = var120003 + 1
                                        s = var120007
                                        t = var120008
                                        u = var120010
                                        v = var120011
                                        while idx < ('cd', 100).length:
                                            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                                            _4045 = mem[64]
                                            mem[mem[64]] = 0
                                            mem[64] = mem[64] + 32
                                            mem[_4045 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_4045 + 36] = t
                                            mem[_4045 + 68] = s
                                            mem[_4045 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                            mem[_4045 + 132] = 128
                                            mem[_4045 + 164] = mem[_4045]
                                            w = 0
                                            while w < mem[_4045]:
                                                mem[w + _4045 + 196] = mem[w + _4045 + 32]
                                                w = w + 32
                                                continue 
                                            if ceil32(mem[_4045]) > mem[_4045]:
                                                mem[_4045 + mem[_4045] + 196] = 0
                                            require ext_code.size(u)
                                            call u.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args t, s, address(cd[((32 * idx) + cd[100] + 36)]), Array(len=mem[_4045], data=mem[_4045 + 196 len ceil32(mem[_4045])])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if v == -1:
                                                revert with 'NH{q', 17
                                            if ('cd', 100).length < 1:
                                                revert with 'NH{q', 17
                                            if v + 1 < ('cd', 100).length - 1:
                                                if v + 1 >= mem[96]:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 164).length:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 196).length:
                                                    revert with 'NH{q', 50
                                                if 1 > !(v + 1):
                                                    revert with 'NH{q', 17
                                                idx = v + 2
                                                s = cd[((32 * v + 1) + cd[196] + 36)]
                                                t = cd[((32 * v + 1) + cd[164] + 36)]
                                                u = mem[(32 * v + 1) + 140 len 20]
                                                v = v + 1
                                                continue 
                                            if ('cd', 100).length < 1:
                                                revert with 'NH{q', 17
                                            if ('cd', 100).length - 1 >= mem[96]:
                                                revert with 'NH{q', 50
                                            if v + 1 >= ('cd', 164).length:
                                                revert with 'NH{q', 50
                                            if v + 1 >= ('cd', 196).length:
                                                revert with 'NH{q', 50
                                            mem[_4045 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_4045 + 68] = cd[((32 * v + 1) + cd[164] + 36)]
                                            idx = 0
                                            while idx < 0:
                                                mem[idx + _4045 + 228] = mem[idx + _4045 + 64]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(mem[(32 * ('cd', 100).length - 1) + 140 len 20])
                                            call mem[(32 * ('cd', 100).length - 1) + 140 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args cd[((32 * v + 1) + cd[164] + 36)], cd[(cd[196] + (32 * v + 1) + 36)], address(this.address), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 'NH{q', 50
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 100).length - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1373 = mem[(32 * ('cd', 100).length - 1) + 128]
                        if var108002 >= ('cd', 164).length:
                            revert with 'NH{q', 50
                        if var108002 >= ('cd', 196).length:
                            revert with 'NH{q', 50
                        _1389 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_1389 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1389 + 36] = cd[((32 * var108002) + cd[164] + 36)]
                        mem[_1389 + 68] = cd[(cd[196] + (32 * var108002) + 36)]
                        mem[_1389 + 100] = this.address
                        mem[_1389 + 132] = 128
                        mem[_1389 + 164] = mem[_1389]
                        mem[_1389 + 196 len ceil32(mem[_1389])] = mem[_1389 + 32 len ceil32(mem[_1389])]
                        if ceil32(mem[_1389]) > mem[_1389]:
                            mem[_1389 + mem[_1389] + 196] = 0
                        require ext_code.size(address(_1373))
                        call address(_1373) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[_1389]) + _1389 + -mem[64] + 192]
                else:
                    _359 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_359] = return_data.size
                    mem[_359 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not return_data.size:
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if var104002 < ('cd', 100).length - 1:
                            if var106001 < mem[96]:
                                if var108003 < ('cd', 164).length:
                                    if var110006 < ('cd', 196).length:
                                        if 1 > !var114002:
                                            revert with 'NH{q', 17
                                        idx = var116003 + 1
                                        s = var116007
                                        t = var116008
                                        u = var116010
                                        v = var116011
                                        while idx < ('cd', 100).length:
                                            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                                            _4046 = mem[64]
                                            mem[mem[64]] = 0
                                            mem[64] = mem[64] + 32
                                            mem[_4046 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_4046 + 36] = t
                                            mem[_4046 + 68] = s
                                            mem[_4046 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                            mem[_4046 + 132] = 128
                                            mem[_4046 + 164] = mem[_4046]
                                            idx = 0
                                            while idx < mem[_4046]:
                                                mem[idx + _4046 + 196] = mem[idx + _4046 + 32]
                                                idx = idx + 32
                                                continue 
                                            if ceil32(mem[_4046]) <= mem[_4046]:
                                                require ext_code.size(u)
                                                call u.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len ceil32(mem[_4046]) + _4046 + -mem[64] + 192]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if v == -1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if v + 1 < ('cd', 100).length - 1:
                                                    if v + 1 >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 164).length:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 196).length:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(v + 1):
                                                        revert with 'NH{q', 17
                                                    idx = v + 2
                                                    s = cd[((32 * v + 1) + cd[196] + 36)]
                                                    t = cd[((32 * v + 1) + cd[164] + 36)]
                                                    u = mem[(32 * v + 1) + 140 len 20]
                                                    v = v + 1
                                                    continue 
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length - 1 >= mem[96]:
                                                    revert with 'NH{q', 50
                                                _4556 = mem[(32 * ('cd', 100).length - 1) + 128]
                                                if v + 1 >= ('cd', 164).length:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 196).length:
                                                    revert with 'NH{q', 50
                                                _4590 = mem[64]
                                                mem[mem[64]] = 0
                                                mem[64] = mem[64] + 32
                                                mem[_4590 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_4590 + 36] = cd[((32 * v + 1) + cd[164] + 36)]
                                                mem[_4590 + 68] = cd[(cd[196] + (32 * v + 1) + 36)]
                                                mem[_4590 + 100] = this.address
                                                mem[_4590 + 132] = 128
                                                mem[_4590 + 164] = mem[_4590]
                                                idx = 0
                                                while idx < mem[_4590]:
                                                    mem[idx + _4590 + 196] = mem[idx + _4590 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[_4590]) > mem[_4590]:
                                                    mem[_4590 + mem[_4590] + 196] = 0
                                                require ext_code.size(address(_4556))
                                                call address(_4556).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                     gas gas_remaining wei
                                                    args cd[((32 * v + 1) + cd[164] + 36)], cd[(cd[196] + (32 * v + 1) + 36)], address(this.address), Array(len=mem[_4590], data=mem[_4590 + 196 len ceil32(mem[_4590])])
                                            else:
                                                mem[_4046 + mem[_4046] + 196] = 0
                                                require ext_code.size(u)
                                                call u.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len ceil32(mem[_4046]) + _4046 + -mem[64] + 192]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if v == -1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if v + 1 < ('cd', 100).length - 1:
                                                    if v + 1 >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 164).length:
                                                        revert with 'NH{q', 50
                                                    if v + 1 >= ('cd', 196).length:
                                                        revert with 'NH{q', 50
                                                    if 1 > !(v + 1):
                                                        revert with 'NH{q', 17
                                                    idx = v + 2
                                                    s = cd[((32 * v + 1) + cd[196] + 36)]
                                                    t = cd[((32 * v + 1) + cd[164] + 36)]
                                                    u = mem[(32 * v + 1) + 140 len 20]
                                                    v = v + 1
                                                    continue 
                                                if ('cd', 100).length < 1:
                                                    revert with 'NH{q', 17
                                                if ('cd', 100).length - 1 >= mem[96]:
                                                    revert with 'NH{q', 50
                                                _4574 = mem[(32 * ('cd', 100).length - 1) + 128]
                                                if v + 1 >= ('cd', 164).length:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 196).length:
                                                    revert with 'NH{q', 50
                                                _4621 = mem[64]
                                                mem[mem[64]] = 0
                                                mem[64] = mem[64] + 32
                                                mem[_4621 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                mem[_4621 + 36] = cd[((32 * v + 1) + cd[164] + 36)]
                                                mem[_4621 + 68] = cd[(cd[196] + (32 * v + 1) + 36)]
                                                mem[_4621 + 100] = this.address
                                                mem[_4621 + 132] = 128
                                                mem[_4621 + 164] = mem[_4621]
                                                idx = 0
                                                while idx < mem[_4621]:
                                                    mem[idx + _4621 + 196] = mem[idx + _4621 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                if ceil32(mem[_4621]) > mem[_4621]:
                                                    mem[_4621 + mem[_4621] + 196] = 0
                                                require ext_code.size(address(_4574))
                                                call address(_4574).mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len ceil32(mem[_4621]) + _4621 + -mem[64] + 192]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 'NH{q', 50
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 100).length - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1374 = mem[(32 * ('cd', 100).length - 1) + 128]
                        if var104002 >= ('cd', 164).length:
                            revert with 'NH{q', 50
                        if var104002 >= ('cd', 196).length:
                            revert with 'NH{q', 50
                        _1390 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_1390 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1390 + 36] = cd[((32 * var104002) + cd[164] + 36)]
                        mem[_1390 + 68] = cd[(cd[196] + (32 * var104002) + 36)]
                        mem[_1390 + 100] = this.address
                        mem[_1390 + 132] = 128
                        mem[_1390 + 164] = mem[_1390]
                        mem[_1390 + 196 len ceil32(mem[_1390])] = mem[_1390 + 32 len ceil32(mem[_1390])]
                        if ceil32(mem[_1390]) > mem[_1390]:
                            mem[_1390 + mem[_1390] + 196] = 0
                        require ext_code.size(address(_1374))
                        call address(_1374) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[_1390]) + _1390 + -mem[64] + 192]
                    else:
                        require return_data.size >= 32
                        require mem[_359 + 32] == bool(mem[_359 + 32])
                        if not mem[_359 + 32]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if var108002 < ('cd', 100).length - 1:
                            if var110001 < mem[96]:
                                if var112003 < ('cd', 164).length:
                                    if var114006 < ('cd', 196).length:
                                        if 1 > !var118002:
                                            revert with 'NH{q', 17
                                        idx = var120003 + 1
                                        s = var120007
                                        t = var120008
                                        u = var120010
                                        v = var120011
                                        while idx < ('cd', 100).length:
                                            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                                            _4047 = mem[64]
                                            mem[mem[64]] = 0
                                            mem[64] = mem[64] + 32
                                            mem[_4047 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_4047 + 36] = t
                                            mem[_4047 + 68] = s
                                            mem[_4047 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                            mem[_4047 + 132] = 128
                                            mem[_4047 + 164] = mem[_4047]
                                            w = 0
                                            while w < mem[_4047]:
                                                mem[w + _4047 + 196] = mem[w + _4047 + 32]
                                                w = w + 32
                                                continue 
                                            if ceil32(mem[_4047]) > mem[_4047]:
                                                mem[_4047 + mem[_4047] + 196] = 0
                                            require ext_code.size(u)
                                            call u.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args t, s, address(cd[((32 * idx) + cd[100] + 36)]), Array(len=mem[_4047], data=mem[_4047 + 196 len ceil32(mem[_4047])])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if v == -1:
                                                revert with 'NH{q', 17
                                            if ('cd', 100).length < 1:
                                                revert with 'NH{q', 17
                                            if v + 1 < ('cd', 100).length - 1:
                                                if v + 1 >= mem[96]:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 164).length:
                                                    revert with 'NH{q', 50
                                                if v + 1 >= ('cd', 196).length:
                                                    revert with 'NH{q', 50
                                                if 1 > !(v + 1):
                                                    revert with 'NH{q', 17
                                                idx = v + 2
                                                s = cd[((32 * v + 1) + cd[196] + 36)]
                                                t = cd[((32 * v + 1) + cd[164] + 36)]
                                                u = mem[(32 * v + 1) + 140 len 20]
                                                v = v + 1
                                                continue 
                                            if ('cd', 100).length < 1:
                                                revert with 'NH{q', 17
                                            if ('cd', 100).length - 1 >= mem[96]:
                                                revert with 'NH{q', 50
                                            if v + 1 >= ('cd', 164).length:
                                                revert with 'NH{q', 50
                                            if v + 1 >= ('cd', 196).length:
                                                revert with 'NH{q', 50
                                            mem[_4047 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_4047 + 68] = cd[((32 * v + 1) + cd[164] + 36)]
                                            idx = 0
                                            while idx < 0:
                                                mem[idx + _4047 + 228] = mem[idx + _4047 + 64]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(mem[(32 * ('cd', 100).length - 1) + 140 len 20])
                                            call mem[(32 * ('cd', 100).length - 1) + 140 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args cd[((32 * v + 1) + cd[164] + 36)], cd[(cd[196] + (32 * v + 1) + 36)], address(this.address), 128, 0, None
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 'NH{q', 50
                        if ('cd', 100).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 100).length - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1375 = mem[(32 * ('cd', 100).length - 1) + 128]
                        if var108002 >= ('cd', 164).length:
                            revert with 'NH{q', 50
                        if var108002 >= ('cd', 196).length:
                            revert with 'NH{q', 50
                        _1391 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_1391 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1391 + 36] = cd[((32 * var108002) + cd[164] + 36)]
                        mem[_1391 + 68] = cd[(cd[196] + (32 * var108002) + 36)]
                        mem[_1391 + 100] = this.address
                        mem[_1391 + 132] = 128
                        mem[_1391 + 164] = mem[_1391]
                        mem[_1391 + 196 len ceil32(mem[_1391])] = mem[_1391 + 32 len ceil32(mem[_1391])]
                        if ceil32(mem[_1391]) > mem[_1391]:
                            mem[_1391 + mem[_1391] + 196] = 0
                        require ext_code.size(address(_1375))
                        call address(_1375) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[_1391]) + _1391 + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
