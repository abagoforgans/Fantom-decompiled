contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
address owner;
address stor1;
address stor2;
address stor3;
uint256 sub_9fb06dcb;
uint256 sub_e3ef4ace;
mapping of address stor6;
array of struct stor7;
mapping of address stor8;
array of struct stor9;

function owner() {
    return owner
}

function sub_9fb06dcb(?) {
    return sub_9fb06dcb
}

function sub_e3ef4ace(?) {
    return sub_e3ef4ace
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_94c0a4a3(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e3ef4ace = arg1
    sub_9fb06dcb = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_911487a6(?) {
    if not stor6[msg.sender]:
        revert with 0, 'Caller not in whiteList'
    if stor7.length:
        mem[128] = address(stor7.field_0)
        if (32 * stor7.length) + 32 > 64:
            mem[160] = address(stor7.field_256)
            idx = 160
            s = 1
            while (32 * stor7.length) + 96 > idx:
                mem[idx + 32] = stor7[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor7.length) + 128] = 32
    mem[(32 * stor7.length) + 160] = stor7.length
    idx = 0
    s = 128
    t = (32 * stor7.length) + 192
    while idx < stor7.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * stor7.length) + 128
       len (96 * stor7.length) + 64
}

function sub_58e963a7(?) {
    if not stor8[msg.sender]:
        revert with 0, 'Caller not in whiteList'
    mem[64] = (32 * stor9.length) + 128
    mem[96] = stor9.length
    if not stor9.length:
        mem[(32 * stor9.length) + 128] = 32
        mem[(32 * stor9.length) + 160] = stor9.length
        idx = 0
        s = 128
        t = (32 * stor9.length) + 192
        while idx < stor9.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor9.length) + 128
           len (96 * stor9.length) + 64
    mem[128] = address(stor9.field_0)
    idx = 128
    s = 0
    while (32 * stor9.length) + 96 > idx:
        mem[idx + 32] = stor9[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor9.length) + 128] = 32
    mem[(32 * stor9.length) + 160] = stor9.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor9.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor9.length) + -mem[64] + 192
}

function sub_3c046960(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 6
    if not stor6[msg.sender]:
        revert with 0, 'Caller not in whiteList'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _24 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = stor2
        mem[mem[64] + 36] = cd[36]
        require ext_code.size(address(_24))
        call address(_24).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor2, cd[36]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _27 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_27] == bool(mem[_27])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_cabb9212(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < stor7.length:
        mem[0] = stor7[idx].field_0
        mem[32] = 6
        stor6[stor7[idx].field_0] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + 140 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor7.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor7.length > idx:
            stor7[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            stor7[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor7.length > idx:
            stor7[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_8a78524f(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        stor8[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        stor8[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + 140 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor9.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor9.length > idx:
            stor9[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            stor9[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor9.length > idx:
            stor9[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_c074cfd7(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg4 == address(arg4)
    if not stor6[msg.sender]:
        revert with 0, 'Caller not in whiteList'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 17
    if stor1 == address(arg1):
        if ext_call.return_data[0] - arg2 >= sub_e3ef4ace:
            require ext_code.size(stor1)
            call stor1.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call address(arg4) with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
    else:
        if ext_call.return_data[0] - arg2 >= sub_9fb06dcb:
            mem[ceil32(return_data.size) + 128] = address(arg1)
            mem[ceil32(return_data.size) + 160] = stor1
            if 30 > !block.timestamp:
                revert with 0, 17
            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = arg2
            mem[ceil32(return_data.size) + 228] = arg3
            mem[ceil32(return_data.size) + 260] = 160
            mem[ceil32(return_data.size) + 356] = 2
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 292] = address(arg4)
            mem[ceil32(return_data.size) + 324] = block.timestamp + 30
            require ext_code.size(stor2)
            call stor2.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, arg3, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(arg4), block.timestamp + 30
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
            require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307():
                revert with 0, 65
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
}

function sub_a1ee5fbb(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _65 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_65))
        staticcall address(_65).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 0 == cd[68]:
            _71 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _73 = mem[_71]
            mem[mem[64] + 4] = address(cd[36])
            mem[mem[64] + 36] = _73
            require ext_code.size(address(_65))
            call address(_65).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[36]), _73
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _80 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_80] == bool(mem[_80])
        else:
            _70 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if cd[68] <= mem[_70]:
                mem[mem[64] + 4] = address(cd[36])
                mem[mem[64] + 36] = cd[68]
                require ext_code.size(address(_65))
                call address(_65).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[36]), cd[68]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _81 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_81] == bool(mem[_81])
            else:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_65))
                staticcall address(_65).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _82 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _85 = mem[_82]
                mem[mem[64] + 4] = address(cd[36])
                mem[mem[64] + 36] = _85
                require ext_code.size(address(_65))
                call address(_65).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[36]), _85
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _88 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_88] == bool(mem[_88])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if eth.balance(this.address):
        call address(cd[36]) with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_4c9a1fb8(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _90 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_90))
        staticcall address(_90).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _93 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _94 = mem[_93]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if mem[(32 * idx) + 140 len 20] != stor1:
            if not ('cd', 36).length:
                revert with 'NH{q', 18
            s = 0
            while s < ('cd', 36).length:
                if s >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 141 len 20]
                mem[mem[64] + 36] = _94 / ('cd', 36).length
                require ext_code.size(address(_90))
                call address(_90).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _94 / ('cd', 36).length
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _125 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_125] == bool(mem[_125])
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _94 / ('cd', 36).length
            continue 
        if mem[_93] < cd[68]:
            revert with 0, 17
        if not ('cd', 36).length:
            revert with 'NH{q', 18
        s = 0
        while s < ('cd', 36).length:
            if s >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 141 len 20]
            mem[mem[64] + 36] = _94 - cd[68] / ('cd', 36).length
            require ext_code.size(address(_90))
            call address(_90).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _94 - cd[68] / ('cd', 36).length
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _126 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_126] == bool(mem[_126])
            if s == -1:
                revert with 0, 17
            s = s + 1
            continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _94 - cd[68] / ('cd', 36).length
        continue 
    if eth.balance(this.address):
        if not ('cd', 36).length:
            revert with 'NH{q', 18
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            call mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 141 len 20] with:
               value eth.balance(this.address) / ('cd', 36).length wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_3aa99232(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    _3 = mem[128]
    _4 = mem[(32 * mem[128] + 1) + 128]
    mem[ceil32(arg2.length) + 128 len floor32(mem[128] + 1)] = mem[128 len floor32(mem[128] + 1)]
    mem[ceil32(arg2.length) + (32 * _3 + 1) + 128 len floor32(_4 + 1)] = mem[(32 * _3 + 1) + 128 len floor32(_4 + 1)]
    mem[64] = ceil32(arg2.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128
    if 2 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _157 = mem[ceil32(arg2.length) + (32 * _3 + 1) + 224]
    if 3 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _159 = mem[ceil32(arg2.length) + (32 * _3 + 1) + 256]
    if 0 >= Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg2.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg2.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _159
    mem[ceil32(arg2.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg2.length) + 160]
    call _157.0xa9059cbb with:
         gas 300000 wei
        args _159, mem[ceil32(arg2.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _229 = mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]
    idx = 3
    s = 0
    s = 0
    while idx < _229:
        if 1 > !idx:
            revert with 0, 17
        if idx + 1 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if idx < 1:
            revert with 0, 17
        if idx - 1 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if 1 > !s:
            revert with 0, 17
        if s + 1 >= mem[ceil32(arg2.length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * idx - 1) + ceil32(arg2.length) + (32 * _3 + 1) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg2.length) + (32 * _3 + 1) + 172 len 20]:
            _249 = mem[(32 * s + 1) + ceil32(arg2.length) + 160]
            if s == -1:
                revert with 0, 17
            if 2 > !idx:
                revert with 0, 17
            if idx >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            if idx + 2 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
                _257 = mem[(32 * idx) + ceil32(arg2.length) + (32 * _3 + 1) + 160]
                if 1 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
                    revert with 'NH{q', 50
                _263 = mem[ceil32(arg2.length) + (32 * _3 + 1) + 192]
                _265 = mem[64]
                mem[64] = mem[64] + 32
                mem[_265 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                mem[_265 + 36] = 0
                mem[_265 + 68] = _249
                mem[_265 + 100] = _263
                mem[_265 + 132] = 128
                t = 0
                while t < mem[_265] + 32:
                    mem[t + _265 + 164] = mem[t + _265]
                    t = t + 32
                    continue 
                call _257.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 350000 wei
                    args 0, _249, _263, 128, mem[_265 + 164 len mem[_265] + 64]
                if ext_call.success:
                    if 2 > !idx:
                        revert with 0, 17
                    idx = idx + 2
                    s = 0
                    s = s + 1
                    continue 
                call _257.swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args 0, _249, _263
            else:
                _259 = mem[(32 * idx) + ceil32(arg2.length) + (32 * _3 + 1) + 160]
                if 2 > !idx:
                    revert with 0, 17
                if idx + 2 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
                    revert with 'NH{q', 50
                _271 = mem[(32 * idx + 2) + ceil32(arg2.length) + (32 * _3 + 1) + 160]
                _275 = mem[64]
                mem[64] = mem[64] + 32
                mem[_275 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                mem[_275 + 36] = 0
                mem[_275 + 68] = _249
                mem[_275 + 100] = _271
                mem[_275 + 132] = 128
                t = 0
                while t < mem[_275] + 32:
                    mem[t + _275 + 164] = mem[t + _275]
                    t = t + 32
                    continue 
                call _259.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 350000 wei
                    args 0, _249, _271, 128, mem[_275 + 164 len mem[_275] + 64]
                if ext_call.success:
                    if 2 > !idx:
                        revert with 0, 17
                    idx = idx + 2
                    s = 0
                    s = s + 1
                    continue 
                call _259.swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args 0, _249, _271
        else:
            _250 = mem[(32 * s + 1) + ceil32(arg2.length) + 160]
            if s == -1:
                revert with 0, 17
            if 2 > !idx:
                revert with 0, 17
            if idx >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            if idx + 2 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
                _260 = mem[(32 * idx) + ceil32(arg2.length) + (32 * _3 + 1) + 160]
                if 1 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
                    revert with 'NH{q', 50
                _264 = mem[ceil32(arg2.length) + (32 * _3 + 1) + 192]
                _266 = mem[64]
                mem[64] = mem[64] + 32
                mem[_266 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                mem[_266 + 36] = _250
                mem[_266 + 68] = 0
                mem[_266 + 100] = _264
                mem[_266 + 132] = 128
                t = 0
                while t < mem[_266] + 32:
                    mem[t + _266 + 164] = mem[t + _266]
                    t = t + 32
                    continue 
                call _260.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 350000 wei
                    args _250, 0, _264, 128, mem[_266 + 164 len mem[_266] + 64]
                if ext_call.success:
                    if 2 > !idx:
                        revert with 0, 17
                    idx = idx + 2
                    s = _250
                    s = s + 1
                    continue 
                call _260.swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args _250, 0, _264
            else:
                _262 = mem[(32 * idx) + ceil32(arg2.length) + (32 * _3 + 1) + 160]
                if 2 > !idx:
                    revert with 0, 17
                if idx + 2 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
                    revert with 'NH{q', 50
                _274 = mem[(32 * idx + 2) + ceil32(arg2.length) + (32 * _3 + 1) + 160]
                _276 = mem[64]
                mem[64] = mem[64] + 32
                mem[_276 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                mem[_276 + 36] = _250
                mem[_276 + 68] = 0
                mem[_276 + 100] = _274
                mem[_276 + 132] = 128
                t = 0
                while t < mem[_276] + 32:
                    mem[t + _276 + 164] = mem[t + _276]
                    t = t + 32
                    continue 
                call _262.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 350000 wei
                    args _250, 0, _274, 128, mem[_276 + 164 len mem[_276] + 64]
                if ext_call.success:
                    if 2 > !idx:
                        revert with 0, 17
                    idx = idx + 2
                    s = _250
                    s = s + 1
                    continue 
                call _262.swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args _250, 0, _274
        revert with 'sf'
    call stor3.0x70a08231 with:
         gas 15000 wei
        args this.address
    if mem[ceil32(arg2.length) + (32 * _3 + 1) + 128] <= 5:
        if ext_call.return_data[0] >= 4:
            require ext_code.size(stor3)
            call stor3.0xd8ccd0f3 with:
                 gas gas_remaining wei
                args 4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        if ext_call.return_data[0] >= 6:
            require ext_code.size(stor3)
            call stor3.0xd8ccd0f3 with:
                 gas gas_remaining wei
                args 6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function sub_ce1fea8e(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    _3 = mem[128]
    _4 = mem[(32 * mem[128] + 1) + 128]
    mem[ceil32(arg2.length) + 128 len floor32(mem[128] + 1)] = mem[128 len floor32(mem[128] + 1)]
    mem[ceil32(arg2.length) + (32 * _3 + 1) + 128 len floor32(_4 + 1)] = mem[(32 * _3 + 1) + 128 len floor32(_4 + 1)]
    mem[64] = ceil32(arg2.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128
    if 2 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _157 = mem[ceil32(arg2.length) + (32 * _3 + 1) + 224]
    if 3 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _159 = mem[ceil32(arg2.length) + (32 * _3 + 1) + 256]
    if 0 >= Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg2.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg2.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _159
    mem[ceil32(arg2.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg2.length) + 160]
    call _157.0xa9059cbb with:
         gas 300000 wei
        args _159, mem[ceil32(arg2.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _229 = mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]
    idx = 3
    s = 0
    s = 0
    while idx < _229:
        if 1 > !idx:
            revert with 0, 17
        if idx + 1 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if idx < 1:
            revert with 0, 17
        if idx - 1 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if 1 > !s:
            revert with 0, 17
        if s + 1 >= mem[ceil32(arg2.length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * idx - 1) + ceil32(arg2.length) + (32 * _3 + 1) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg2.length) + (32 * _3 + 1) + 172 len 20]:
            _249 = mem[(32 * s + 1) + ceil32(arg2.length) + 160]
            if s == -1:
                revert with 0, 17
            if 2 > !idx:
                revert with 0, 17
            if idx >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            if idx + 2 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
                _257 = mem[(32 * idx) + ceil32(arg2.length) + (32 * _3 + 1) + 160]
                if 1 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
                    revert with 'NH{q', 50
                _263 = mem[ceil32(arg2.length) + (32 * _3 + 1) + 192]
                _265 = mem[64]
                mem[64] = mem[64] + 32
                mem[_265 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                mem[_265 + 36] = 0
                mem[_265 + 68] = _249
                mem[_265 + 100] = _263
                mem[_265 + 132] = 128
                t = 0
                while t < mem[_265] + 32:
                    mem[t + _265 + 164] = mem[t + _265]
                    t = t + 32
                    continue 
                call _257.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 350000 wei
                    args 0, _249, _263, 128, mem[_265 + 164 len mem[_265] + 64]
                if ext_call.success:
                    if 2 > !idx:
                        revert with 0, 17
                    idx = idx + 2
                    s = 0
                    s = s + 1
                    continue 
                call _257.swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args 0, _249, _263
            else:
                _259 = mem[(32 * idx) + ceil32(arg2.length) + (32 * _3 + 1) + 160]
                if 2 > !idx:
                    revert with 0, 17
                if idx + 2 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
                    revert with 'NH{q', 50
                _271 = mem[(32 * idx + 2) + ceil32(arg2.length) + (32 * _3 + 1) + 160]
                _275 = mem[64]
                mem[64] = mem[64] + 32
                mem[_275 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                mem[_275 + 36] = 0
                mem[_275 + 68] = _249
                mem[_275 + 100] = _271
                mem[_275 + 132] = 128
                t = 0
                while t < mem[_275] + 32:
                    mem[t + _275 + 164] = mem[t + _275]
                    t = t + 32
                    continue 
                call _259.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 350000 wei
                    args 0, _249, _271, 128, mem[_275 + 164 len mem[_275] + 64]
                if ext_call.success:
                    if 2 > !idx:
                        revert with 0, 17
                    idx = idx + 2
                    s = 0
                    s = s + 1
                    continue 
                call _259.swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args 0, _249, _271
        else:
            _250 = mem[(32 * s + 1) + ceil32(arg2.length) + 160]
            if s == -1:
                revert with 0, 17
            if 2 > !idx:
                revert with 0, 17
            if idx >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            if idx + 2 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
                _260 = mem[(32 * idx) + ceil32(arg2.length) + (32 * _3 + 1) + 160]
                if 1 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
                    revert with 'NH{q', 50
                _264 = mem[ceil32(arg2.length) + (32 * _3 + 1) + 192]
                _266 = mem[64]
                mem[64] = mem[64] + 32
                mem[_266 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                mem[_266 + 36] = _250
                mem[_266 + 68] = 0
                mem[_266 + 100] = _264
                mem[_266 + 132] = 128
                t = 0
                while t < mem[_266] + 32:
                    mem[t + _266 + 164] = mem[t + _266]
                    t = t + 32
                    continue 
                call _260.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 350000 wei
                    args _250, 0, _264, 128, mem[_266 + 164 len mem[_266] + 64]
                if ext_call.success:
                    if 2 > !idx:
                        revert with 0, 17
                    idx = idx + 2
                    s = _250
                    s = s + 1
                    continue 
                call _260.swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args _250, 0, _264
            else:
                _262 = mem[(32 * idx) + ceil32(arg2.length) + (32 * _3 + 1) + 160]
                if 2 > !idx:
                    revert with 0, 17
                if idx + 2 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
                    revert with 'NH{q', 50
                _274 = mem[(32 * idx + 2) + ceil32(arg2.length) + (32 * _3 + 1) + 160]
                _276 = mem[64]
                mem[64] = mem[64] + 32
                mem[_276 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                mem[_276 + 36] = _250
                mem[_276 + 68] = 0
                mem[_276 + 100] = _274
                mem[_276 + 132] = 128
                t = 0
                while t < mem[_276] + 32:
                    mem[t + _276 + 164] = mem[t + _276]
                    t = t + 32
                    continue 
                call _262.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 350000 wei
                    args _250, 0, _274, 128, mem[_276 + 164 len mem[_276] + 64]
                if ext_call.success:
                    if 2 > !idx:
                        revert with 0, 17
                    idx = idx + 2
                    s = _250
                    s = s + 1
                    continue 
                call _262.swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args _250, 0, _274
        revert with 'sf'
    call stor3.0x70a08231 with:
         gas 15000 wei
        args this.address
    if mem[ceil32(arg2.length) + (32 * _3 + 1) + 128] <= 5:
        if ext_call.return_data[0] >= 4:
            require ext_code.size(stor3)
            call stor3.0xd8ccd0f3 with:
                 gas gas_remaining wei
                args 4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        if ext_call.return_data[0] >= 6:
            require ext_code.size(stor3)
            call stor3.0xd8ccd0f3 with:
                 gas gas_remaining wei
                args 6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function elkCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    _4 = mem[(32 * mem[128] + 1) + 128]
    mem[ceil32(arg4.length) + 128 len floor32(mem[128] + 1)] = mem[128 len floor32(mem[128] + 1)]
    mem[ceil32(arg4.length) + (32 * _3 + 1) + 128 len floor32(_4 + 1)] = mem[(32 * _3 + 1) + 128 len floor32(_4 + 1)]
    mem[64] = ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128
    if 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _157 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 224]
    if 3 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _159 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 256]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _159
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _157.0xa9059cbb with:
         gas 300000 wei
        args _159, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _229 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    idx = 3
    s = 0
    s = 0
    while idx < _229:
        if 1 > !idx:
            revert with 0, 17
        if idx + 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if idx < 1:
            revert with 0, 17
        if idx - 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if 1 > !s:
            revert with 0, 17
        if s + 1 >= mem[ceil32(arg4.length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * idx - 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20]:
            _249 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 0, 17
            if 2 > !idx:
                revert with 0, 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                _257 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
                if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                    revert with 'NH{q', 50
                _263 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
                _265 = mem[64]
                mem[64] = mem[64] + 32
                mem[_265 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                mem[_265 + 36] = 0
                mem[_265 + 68] = _249
                mem[_265 + 100] = _263
                mem[_265 + 132] = 128
                t = 0
                while t < mem[_265] + 32:
                    mem[t + _265 + 164] = mem[t + _265]
                    t = t + 32
                    continue 
                call _257.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 350000 wei
                    args 0, _249, _263, 128, mem[_265 + 164 len mem[_265] + 64]
                if ext_call.success:
                    if 2 > !idx:
                        revert with 0, 17
                    idx = idx + 2
                    s = 0
                    s = s + 1
                    continue 
                call _257.swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args 0, _249, _263
            else:
                _259 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
                if 2 > !idx:
                    revert with 0, 17
                if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                    revert with 'NH{q', 50
                _271 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
                _275 = mem[64]
                mem[64] = mem[64] + 32
                mem[_275 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                mem[_275 + 36] = 0
                mem[_275 + 68] = _249
                mem[_275 + 100] = _271
                mem[_275 + 132] = 128
                t = 0
                while t < mem[_275] + 32:
                    mem[t + _275 + 164] = mem[t + _275]
                    t = t + 32
                    continue 
                call _259.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 350000 wei
                    args 0, _249, _271, 128, mem[_275 + 164 len mem[_275] + 64]
                if ext_call.success:
                    if 2 > !idx:
                        revert with 0, 17
                    idx = idx + 2
                    s = 0
                    s = s + 1
                    continue 
                call _259.swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args 0, _249, _271
        else:
            _250 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 0, 17
            if 2 > !idx:
                revert with 0, 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                _260 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
                if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                    revert with 'NH{q', 50
                _264 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
                _266 = mem[64]
                mem[64] = mem[64] + 32
                mem[_266 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                mem[_266 + 36] = _250
                mem[_266 + 68] = 0
                mem[_266 + 100] = _264
                mem[_266 + 132] = 128
                t = 0
                while t < mem[_266] + 32:
                    mem[t + _266 + 164] = mem[t + _266]
                    t = t + 32
                    continue 
                call _260.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 350000 wei
                    args _250, 0, _264, 128, mem[_266 + 164 len mem[_266] + 64]
                if ext_call.success:
                    if 2 > !idx:
                        revert with 0, 17
                    idx = idx + 2
                    s = _250
                    s = s + 1
                    continue 
                call _260.swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args _250, 0, _264
            else:
                _262 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
                if 2 > !idx:
                    revert with 0, 17
                if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                    revert with 'NH{q', 50
                _274 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
                _276 = mem[64]
                mem[64] = mem[64] + 32
                mem[_276 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                mem[_276 + 36] = _250
                mem[_276 + 68] = 0
                mem[_276 + 100] = _274
                mem[_276 + 132] = 128
                t = 0
                while t < mem[_276] + 32:
                    mem[t + _276 + 164] = mem[t + _276]
                    t = t + 32
                    continue 
                call _262.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 350000 wei
                    args _250, 0, _274, 128, mem[_276 + 164 len mem[_276] + 64]
                if ext_call.success:
                    if 2 > !idx:
                        revert with 0, 17
                    idx = idx + 2
                    s = _250
                    s = s + 1
                    continue 
                call _262.swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args _250, 0, _274
        revert with 'sf'
    call stor3.0x70a08231 with:
         gas 15000 wei
        args this.address
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] <= 5:
        if ext_call.return_data[0] >= 4:
            require ext_code.size(stor3)
            call stor3.0xd8ccd0f3 with:
                 gas gas_remaining wei
                args 4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        if ext_call.return_data[0] >= 6:
            require ext_code.size(stor3)
            call stor3.0xd8ccd0f3 with:
                 gas gas_remaining wei
                args 6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    _4 = mem[(32 * mem[128] + 1) + 128]
    mem[ceil32(arg4.length) + 128 len floor32(mem[128] + 1)] = mem[128 len floor32(mem[128] + 1)]
    mem[ceil32(arg4.length) + (32 * _3 + 1) + 128 len floor32(_4 + 1)] = mem[(32 * _3 + 1) + 128 len floor32(_4 + 1)]
    mem[64] = ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128
    if 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _157 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 224]
    if 3 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _159 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 256]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _159
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _157.0xa9059cbb with:
         gas 300000 wei
        args _159, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _229 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    idx = 3
    s = 0
    s = 0
    while idx < _229:
        if 1 > !idx:
            revert with 0, 17
        if idx + 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if idx < 1:
            revert with 0, 17
        if idx - 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if 1 > !s:
            revert with 0, 17
        if s + 1 >= mem[ceil32(arg4.length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * idx - 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20]:
            _249 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 0, 17
            if 2 > !idx:
                revert with 0, 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                _257 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
                if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                    revert with 'NH{q', 50
                _263 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
                _265 = mem[64]
                mem[64] = mem[64] + 32
                mem[_265 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                mem[_265 + 36] = 0
                mem[_265 + 68] = _249
                mem[_265 + 100] = _263
                mem[_265 + 132] = 128
                t = 0
                while t < mem[_265] + 32:
                    mem[t + _265 + 164] = mem[t + _265]
                    t = t + 32
                    continue 
                call _257.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 350000 wei
                    args 0, _249, _263, 128, mem[_265 + 164 len mem[_265] + 64]
                if ext_call.success:
                    if 2 > !idx:
                        revert with 0, 17
                    idx = idx + 2
                    s = 0
                    s = s + 1
                    continue 
                call _257.swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args 0, _249, _263
            else:
                _259 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
                if 2 > !idx:
                    revert with 0, 17
                if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                    revert with 'NH{q', 50
                _271 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
                _275 = mem[64]
                mem[64] = mem[64] + 32
                mem[_275 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                mem[_275 + 36] = 0
                mem[_275 + 68] = _249
                mem[_275 + 100] = _271
                mem[_275 + 132] = 128
                t = 0
                while t < mem[_275] + 32:
                    mem[t + _275 + 164] = mem[t + _275]
                    t = t + 32
                    continue 
                call _259.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 350000 wei
                    args 0, _249, _271, 128, mem[_275 + 164 len mem[_275] + 64]
                if ext_call.success:
                    if 2 > !idx:
                        revert with 0, 17
                    idx = idx + 2
                    s = 0
                    s = s + 1
                    continue 
                call _259.swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args 0, _249, _271
        else:
            _250 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 0, 17
            if 2 > !idx:
                revert with 0, 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                _260 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
                if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                    revert with 'NH{q', 50
                _264 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
                _266 = mem[64]
                mem[64] = mem[64] + 32
                mem[_266 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                mem[_266 + 36] = _250
                mem[_266 + 68] = 0
                mem[_266 + 100] = _264
                mem[_266 + 132] = 128
                t = 0
                while t < mem[_266] + 32:
                    mem[t + _266 + 164] = mem[t + _266]
                    t = t + 32
                    continue 
                call _260.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 350000 wei
                    args _250, 0, _264, 128, mem[_266 + 164 len mem[_266] + 64]
                if ext_call.success:
                    if 2 > !idx:
                        revert with 0, 17
                    idx = idx + 2
                    s = _250
                    s = s + 1
                    continue 
                call _260.swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args _250, 0, _264
            else:
                _262 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
                if 2 > !idx:
                    revert with 0, 17
                if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                    revert with 'NH{q', 50
                _274 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
                _276 = mem[64]
                mem[64] = mem[64] + 32
                mem[_276 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                mem[_276 + 36] = _250
                mem[_276 + 68] = 0
                mem[_276 + 100] = _274
                mem[_276 + 132] = 128
                t = 0
                while t < mem[_276] + 32:
                    mem[t + _276 + 164] = mem[t + _276]
                    t = t + 32
                    continue 
                call _262.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 350000 wei
                    args _250, 0, _274, 128, mem[_276 + 164 len mem[_276] + 64]
                if ext_call.success:
                    if 2 > !idx:
                        revert with 0, 17
                    idx = idx + 2
                    s = _250
                    s = s + 1
                    continue 
                call _262.swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args _250, 0, _274
        revert with 'sf'
    call stor3.0x70a08231 with:
         gas 15000 wei
        args this.address
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] <= 5:
        if ext_call.return_data[0] >= 4:
            require ext_code.size(stor3)
            call stor3.0xd8ccd0f3 with:
                 gas gas_remaining wei
                args 4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        if ext_call.return_data[0] >= 6:
            require ext_code.size(stor3)
            call stor3.0xd8ccd0f3 with:
                 gas gas_remaining wei
                args 6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function wakaSwapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    _4 = mem[(32 * mem[128] + 1) + 128]
    mem[ceil32(arg4.length) + 128 len floor32(mem[128] + 1)] = mem[128 len floor32(mem[128] + 1)]
    mem[ceil32(arg4.length) + (32 * _3 + 1) + 128 len floor32(_4 + 1)] = mem[(32 * _3 + 1) + 128 len floor32(_4 + 1)]
    mem[64] = ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128
    if 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _157 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 224]
    if 3 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _159 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 256]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _159
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _157.0xa9059cbb with:
         gas 300000 wei
        args _159, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _229 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    idx = 3
    s = 0
    s = 0
    while idx < _229:
        if 1 > !idx:
            revert with 0, 17
        if idx + 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if idx < 1:
            revert with 0, 17
        if idx - 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if 1 > !s:
            revert with 0, 17
        if s + 1 >= mem[ceil32(arg4.length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * idx - 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20]:
            _249 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 0, 17
            if 2 > !idx:
                revert with 0, 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                _257 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
                if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                    revert with 'NH{q', 50
                _263 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
                _265 = mem[64]
                mem[64] = mem[64] + 32
                mem[_265 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                mem[_265 + 36] = 0
                mem[_265 + 68] = _249
                mem[_265 + 100] = _263
                mem[_265 + 132] = 128
                t = 0
                while t < mem[_265] + 32:
                    mem[t + _265 + 164] = mem[t + _265]
                    t = t + 32
                    continue 
                call _257.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 350000 wei
                    args 0, _249, _263, 128, mem[_265 + 164 len mem[_265] + 64]
                if ext_call.success:
                    if 2 > !idx:
                        revert with 0, 17
                    idx = idx + 2
                    s = 0
                    s = s + 1
                    continue 
                call _257.swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args 0, _249, _263
            else:
                _259 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
                if 2 > !idx:
                    revert with 0, 17
                if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                    revert with 'NH{q', 50
                _271 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
                _275 = mem[64]
                mem[64] = mem[64] + 32
                mem[_275 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                mem[_275 + 36] = 0
                mem[_275 + 68] = _249
                mem[_275 + 100] = _271
                mem[_275 + 132] = 128
                t = 0
                while t < mem[_275] + 32:
                    mem[t + _275 + 164] = mem[t + _275]
                    t = t + 32
                    continue 
                call _259.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 350000 wei
                    args 0, _249, _271, 128, mem[_275 + 164 len mem[_275] + 64]
                if ext_call.success:
                    if 2 > !idx:
                        revert with 0, 17
                    idx = idx + 2
                    s = 0
                    s = s + 1
                    continue 
                call _259.swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args 0, _249, _271
        else:
            _250 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 0, 17
            if 2 > !idx:
                revert with 0, 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                _260 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
                if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                    revert with 'NH{q', 50
                _264 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
                _266 = mem[64]
                mem[64] = mem[64] + 32
                mem[_266 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                mem[_266 + 36] = _250
                mem[_266 + 68] = 0
                mem[_266 + 100] = _264
                mem[_266 + 132] = 128
                t = 0
                while t < mem[_266] + 32:
                    mem[t + _266 + 164] = mem[t + _266]
                    t = t + 32
                    continue 
                call _260.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 350000 wei
                    args _250, 0, _264, 128, mem[_266 + 164 len mem[_266] + 64]
                if ext_call.success:
                    if 2 > !idx:
                        revert with 0, 17
                    idx = idx + 2
                    s = _250
                    s = s + 1
                    continue 
                call _260.swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args _250, 0, _264
            else:
                _262 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
                if 2 > !idx:
                    revert with 0, 17
                if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                    revert with 'NH{q', 50
                _274 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
                _276 = mem[64]
                mem[64] = mem[64] + 32
                mem[_276 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                mem[_276 + 36] = _250
                mem[_276 + 68] = 0
                mem[_276 + 100] = _274
                mem[_276 + 132] = 128
                t = 0
                while t < mem[_276] + 32:
                    mem[t + _276 + 164] = mem[t + _276]
                    t = t + 32
                    continue 
                call _262.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 350000 wei
                    args _250, 0, _274, 128, mem[_276 + 164 len mem[_276] + 64]
                if ext_call.success:
                    if 2 > !idx:
                        revert with 0, 17
                    idx = idx + 2
                    s = _250
                    s = s + 1
                    continue 
                call _262.swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args _250, 0, _274
        revert with 'sf'
    call stor3.0x70a08231 with:
         gas 15000 wei
        args this.address
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] <= 5:
        if ext_call.return_data[0] >= 4:
            require ext_code.size(stor3)
            call stor3.0xd8ccd0f3 with:
                 gas gas_remaining wei
                args 4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        if ext_call.return_data[0] >= 6:
            require ext_code.size(stor3)
            call stor3.0xd8ccd0f3 with:
                 gas gas_remaining wei
                args 6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    _4 = mem[(32 * mem[128] + 1) + 128]
    mem[ceil32(arg4.length) + 128 len floor32(mem[128] + 1)] = mem[128 len floor32(mem[128] + 1)]
    mem[ceil32(arg4.length) + (32 * _3 + 1) + 128 len floor32(_4 + 1)] = mem[(32 * _3 + 1) + 128 len floor32(_4 + 1)]
    mem[64] = ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128
    if 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _157 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 224]
    if 3 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _159 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 256]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _159
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _157.0xa9059cbb with:
         gas 300000 wei
        args _159, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _229 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    idx = 3
    s = 0
    s = 0
    while idx < _229:
        if 1 > !idx:
            revert with 0, 17
        if idx + 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if idx < 1:
            revert with 0, 17
        if idx - 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if 1 > !s:
            revert with 0, 17
        if s + 1 >= mem[ceil32(arg4.length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * idx - 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20]:
            _249 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 0, 17
            if 2 > !idx:
                revert with 0, 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                _257 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
                if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                    revert with 'NH{q', 50
                _263 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
                _265 = mem[64]
                mem[64] = mem[64] + 32
                mem[_265 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                mem[_265 + 36] = 0
                mem[_265 + 68] = _249
                mem[_265 + 100] = _263
                mem[_265 + 132] = 128
                t = 0
                while t < mem[_265] + 32:
                    mem[t + _265 + 164] = mem[t + _265]
                    t = t + 32
                    continue 
                call _257.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 350000 wei
                    args 0, _249, _263, 128, mem[_265 + 164 len mem[_265] + 64]
                if ext_call.success:
                    if 2 > !idx:
                        revert with 0, 17
                    idx = idx + 2
                    s = 0
                    s = s + 1
                    continue 
                call _257.swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args 0, _249, _263
            else:
                _259 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
                if 2 > !idx:
                    revert with 0, 17
                if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                    revert with 'NH{q', 50
                _271 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
                _275 = mem[64]
                mem[64] = mem[64] + 32
                mem[_275 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                mem[_275 + 36] = 0
                mem[_275 + 68] = _249
                mem[_275 + 100] = _271
                mem[_275 + 132] = 128
                t = 0
                while t < mem[_275] + 32:
                    mem[t + _275 + 164] = mem[t + _275]
                    t = t + 32
                    continue 
                call _259.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 350000 wei
                    args 0, _249, _271, 128, mem[_275 + 164 len mem[_275] + 64]
                if ext_call.success:
                    if 2 > !idx:
                        revert with 0, 17
                    idx = idx + 2
                    s = 0
                    s = s + 1
                    continue 
                call _259.swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args 0, _249, _271
        else:
            _250 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 0, 17
            if 2 > !idx:
                revert with 0, 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                _260 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
                if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                    revert with 'NH{q', 50
                _264 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
                _266 = mem[64]
                mem[64] = mem[64] + 32
                mem[_266 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                mem[_266 + 36] = _250
                mem[_266 + 68] = 0
                mem[_266 + 100] = _264
                mem[_266 + 132] = 128
                t = 0
                while t < mem[_266] + 32:
                    mem[t + _266 + 164] = mem[t + _266]
                    t = t + 32
                    continue 
                call _260.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 350000 wei
                    args _250, 0, _264, 128, mem[_266 + 164 len mem[_266] + 64]
                if ext_call.success:
                    if 2 > !idx:
                        revert with 0, 17
                    idx = idx + 2
                    s = _250
                    s = s + 1
                    continue 
                call _260.swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args _250, 0, _264
            else:
                _262 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
                if 2 > !idx:
                    revert with 0, 17
                if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                    revert with 'NH{q', 50
                _274 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
                _276 = mem[64]
                mem[64] = mem[64] + 32
                mem[_276 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                mem[_276 + 36] = _250
                mem[_276 + 68] = 0
                mem[_276 + 100] = _274
                mem[_276 + 132] = 128
                t = 0
                while t < mem[_276] + 32:
                    mem[t + _276 + 164] = mem[t + _276]
                    t = t + 32
                    continue 
                call _262.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 350000 wei
                    args _250, 0, _274, 128, mem[_276 + 164 len mem[_276] + 64]
                if ext_call.success:
                    if 2 > !idx:
                        revert with 0, 17
                    idx = idx + 2
                    s = _250
                    s = s + 1
                    continue 
                call _262.swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args _250, 0, _274
        revert with 'sf'
    call stor3.0x70a08231 with:
         gas 15000 wei
        args this.address
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] <= 5:
        if ext_call.return_data[0] >= 4:
            require ext_code.size(stor3)
            call stor3.0xd8ccd0f3 with:
                 gas gas_remaining wei
                args 4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        if ext_call.return_data[0] >= 6:
            require ext_code.size(stor3)
            call stor3.0xd8ccd0f3 with:
                 gas gas_remaining wei
                args 6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function sub_114546dd(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    idx = 0
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[0] = msg.sender
    mem[32] = 8
    if not stor8[msg.sender]:
        revert with 0, 'Caller not in whiteList'
    if ('cd', 4).length < 1:
        revert with 0, 17
    if ('cd', 4).length - 1 / 2 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = ('cd', 4).length - 1 / 2
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130
    if not Mask(255, 1, ('cd', 4).length - 1):
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = cd[68]
        idx = 96
        s = 32
        t = mem[192]
        while idx < 32 * ('cd', 4).length:
            staticcall mem[idx + 128].getReserves() with:
                    gas 15000 wei
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130 len 64] = ext_call.return_data[0 len 64]
            if t <= mem[idx + 160]:
                mem[s + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = (10000 * mem[s + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] * ext_call.return_data[32]) - (mem[ceil32(32 * ('cd', 4).length) + s + 129] * mem[s + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] * ext_call.return_data[32]) / (10000 * mem[s + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]) - (mem[ceil32(32 * ('cd', 4).length) + s + 129] * mem[s + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]) + (10000 * ext_call.return_data[0])
            else:
                mem[s + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = (10000 * mem[s + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] * ext_call.return_data[0]) - (mem[ceil32(32 * ('cd', 4).length) + s + 129] * mem[s + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] * ext_call.return_data[0]) / (10000 * mem[s + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]) - (mem[ceil32(32 * ('cd', 4).length) + s + 129] * mem[s + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]) + (10000 * ext_call.return_data[32])
            idx = idx + 64
            s = s + 32
            t = mem[idx + 160]
            continue 
        staticcall mem[160].getReserves() with:
                gas 15000 wei
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130 len 64] = ext_call.return_data[0 len 64]
        if mem[(32 * ('cd', 4).length) + 96 len ceil32(32 * ('cd', 4).length) + -(32 * ('cd', 4).length) + 1], Mask(8 * (32 * ('cd', 4).length) + -ceil32(32 * ('cd', 4).length) + 31, -(8 * (32 * ('cd', 4).length) + -ceil32(32 * ('cd', 4).length) + 31) + 256, ('cd', 36).length) >> -(8 * (32 * ('cd', 4).length) + -ceil32(32 * ('cd', 4).length) + 31) + 256 <= mem[128]:
            if (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[32]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]) < cd[100]:
            if mem[128] <= mem[(32 * ('cd', 4).length) + 96 len ceil32(32 * ('cd', 4).length) + -(32 * ('cd', 4).length) + 1], Mask(8 * (32 * ('cd', 4).length) + -ceil32(32 * ('cd', 4).length) + 31, -(8 * (32 * ('cd', 4).length) + -ceil32(32 * ('cd', 4).length) + 31) + 256, ('cd', 36).length) >> -(8 * (32 * ('cd', 4).length) + -ceil32(32 * ('cd', 4).length) + 31) + 256:
                _552 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130] = (32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 1) + (32 * ('cd', 4).length + 1)
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 162 len floor32(_552 + 1)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 len floor32(_552 + 1)]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _552 + 1) + 162 len floor32(('cd', 4).length + 1)] = mem[96 len floor32(('cd', 4).length + 1)]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _552 + 1) + (32 * ('cd', 4).length + 1) + 162] = sha3('swap(uint256,uint256,address,byt', 'es)')
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _552 + 1) + (32 * ('cd', 4).length + 1) + 166] = (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[32]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98])
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _552 + 1) + (32 * ('cd', 4).length + 1) + 198] = 0
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _552 + 1) + (32 * ('cd', 4).length + 1) + 230] = this.address
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _552 + 1) + (32 * ('cd', 4).length + 1) + 262] = 128
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _552 + 1) + (32 * ('cd', 4).length + 1) + 294 len ceil32(mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130]) + 1] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130 len ceil32(mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130]) + 1]
                call mem[160] with:
                   funct Mask(32, 224, sha3('swap(uint256,uint256,address,byt', 'es)')) >> 224
                     gas 350000 wei
                    args (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[32]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]), 0, this.address, 128, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _552 + 1) + (32 * ('cd', 4).length + 1) + 294 len mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130] + 64]
            else:
                _558 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130] = (32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 1) + (32 * ('cd', 4).length + 1)
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 162 len floor32(_558 + 1)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 len floor32(_558 + 1)]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _558 + 1) + 162 len floor32(('cd', 4).length + 1)] = mem[96 len floor32(('cd', 4).length + 1)]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _558 + 1) + (32 * ('cd', 4).length + 1) + 162] = sha3('swap(uint256,uint256,address,byt', 'es)')
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _558 + 1) + (32 * ('cd', 4).length + 1) + 166] = 0
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _558 + 1) + (32 * ('cd', 4).length + 1) + 198] = (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[32]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98])
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _558 + 1) + (32 * ('cd', 4).length + 1) + 230] = this.address
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _558 + 1) + (32 * ('cd', 4).length + 1) + 262] = 128
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _558 + 1) + (32 * ('cd', 4).length + 1) + 294 len ceil32(mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130]) + 1] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130 len ceil32(mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130]) + 1]
                call mem[160] with:
                   funct Mask(32, 224, sha3('swap(uint256,uint256,address,byt', 'es)')) >> 224
                     gas 350000 wei
                    args 0, (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[32]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]), this.address, 128, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _558 + 1) + (32 * ('cd', 4).length + 1) + 294 len mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130] + 64]
        else:
            if (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[0]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]) < cd[100]:
            if mem[128] <= mem[(32 * ('cd', 4).length) + 96 len ceil32(32 * ('cd', 4).length) + -(32 * ('cd', 4).length) + 1], Mask(8 * (32 * ('cd', 4).length) + -ceil32(32 * ('cd', 4).length) + 31, -(8 * (32 * ('cd', 4).length) + -ceil32(32 * ('cd', 4).length) + 31) + 256, ('cd', 36).length) >> -(8 * (32 * ('cd', 4).length) + -ceil32(32 * ('cd', 4).length) + 31) + 256:
                _561 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130] = (32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 1) + (32 * ('cd', 4).length + 1)
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 162 len floor32(_561 + 1)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 len floor32(_561 + 1)]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _561 + 1) + 162 len floor32(('cd', 4).length + 1)] = mem[96 len floor32(('cd', 4).length + 1)]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _561 + 1) + (32 * ('cd', 4).length + 1) + 162] = sha3('swap(uint256,uint256,address,byt', 'es)')
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _561 + 1) + (32 * ('cd', 4).length + 1) + 166] = (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[0]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98])
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _561 + 1) + (32 * ('cd', 4).length + 1) + 198] = 0
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _561 + 1) + (32 * ('cd', 4).length + 1) + 230] = this.address
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _561 + 1) + (32 * ('cd', 4).length + 1) + 262] = 128
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _561 + 1) + (32 * ('cd', 4).length + 1) + 294 len ceil32(mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130]) + 1] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130 len ceil32(mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130]) + 1]
                call mem[160] with:
                   funct Mask(32, 224, sha3('swap(uint256,uint256,address,byt', 'es)')) >> 224
                     gas 350000 wei
                    args (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[0]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]), 0, this.address, 128, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _561 + 1) + (32 * ('cd', 4).length + 1) + 294 len mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130] + 64]
            else:
                _571 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130] = (32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 1) + (32 * ('cd', 4).length + 1)
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 162 len floor32(_571 + 1)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 len floor32(_571 + 1)]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _571 + 1) + 162 len floor32(('cd', 4).length + 1)] = mem[96 len floor32(('cd', 4).length + 1)]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _571 + 1) + (32 * ('cd', 4).length + 1) + 162] = sha3('swap(uint256,uint256,address,byt', 'es)')
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _571 + 1) + (32 * ('cd', 4).length + 1) + 166] = 0
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _571 + 1) + (32 * ('cd', 4).length + 1) + 198] = (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[0]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98])
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _571 + 1) + (32 * ('cd', 4).length + 1) + 230] = this.address
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _571 + 1) + (32 * ('cd', 4).length + 1) + 262] = 128
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _571 + 1) + (32 * ('cd', 4).length + 1) + 294 len ceil32(mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130]) + 1] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130 len ceil32(mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130]) + 1]
                call mem[160] with:
                   funct Mask(32, 224, sha3('swap(uint256,uint256,address,byt', 'es)')) >> 224
                     gas 350000 wei
                    args 0, (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[0]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]), this.address, 128, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _571 + 1) + (32 * ('cd', 4).length + 1) + 294 len mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130] + 64]
    else:
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 len 16 * Mask(251, 1, ('cd', 4).length - 1)] = call.data[calldata.size len 16 * Mask(251, 1, ('cd', 4).length - 1)]
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = cd[68]
        idx = 96
        s = 32
        t = mem[192]
        while idx < 32 * ('cd', 4).length:
            staticcall mem[idx + 128].getReserves() with:
                    gas 15000 wei
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130 len 64] = ext_call.return_data[0 len 64]
            if t <= mem[idx + 160]:
                mem[s + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = (10000 * mem[s + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] * ext_call.return_data[32]) - (mem[ceil32(32 * ('cd', 4).length) + s + 129] * mem[s + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] * ext_call.return_data[32]) / (10000 * mem[s + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]) - (mem[ceil32(32 * ('cd', 4).length) + s + 129] * mem[s + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]) + (10000 * ext_call.return_data[0])
            else:
                mem[s + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = (10000 * mem[s + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] * ext_call.return_data[0]) - (mem[ceil32(32 * ('cd', 4).length) + s + 129] * mem[s + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] * ext_call.return_data[0]) / (10000 * mem[s + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]) - (mem[ceil32(32 * ('cd', 4).length) + s + 129] * mem[s + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]) + (10000 * ext_call.return_data[32])
            idx = idx + 64
            s = s + 32
            t = mem[idx + 160]
            continue 
        staticcall mem[160].getReserves() with:
                gas 15000 wei
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130 len 64] = ext_call.return_data[0 len 64]
        if mem[(32 * ('cd', 4).length) + 96 len ceil32(32 * ('cd', 4).length) + -(32 * ('cd', 4).length) + 1], Mask(8 * (32 * ('cd', 4).length) + -ceil32(32 * ('cd', 4).length) + 31, -(8 * (32 * ('cd', 4).length) + -ceil32(32 * ('cd', 4).length) + 31) + 256, ('cd', 36).length) >> -(8 * (32 * ('cd', 4).length) + -ceil32(32 * ('cd', 4).length) + 31) + 256 <= mem[128]:
            if (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[32]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]) < cd[100]:
            if mem[128] <= mem[(32 * ('cd', 4).length) + 96 len ceil32(32 * ('cd', 4).length) + -(32 * ('cd', 4).length) + 1], Mask(8 * (32 * ('cd', 4).length) + -ceil32(32 * ('cd', 4).length) + 31, -(8 * (32 * ('cd', 4).length) + -ceil32(32 * ('cd', 4).length) + 31) + 256, ('cd', 36).length) >> -(8 * (32 * ('cd', 4).length) + -ceil32(32 * ('cd', 4).length) + 31) + 256:
                _555 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130] = (32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 1) + (32 * ('cd', 4).length + 1)
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 162 len floor32(_555 + 1)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 len floor32(_555 + 1)]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _555 + 1) + 162 len floor32(('cd', 4).length + 1)] = mem[96 len floor32(('cd', 4).length + 1)]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _555 + 1) + (32 * ('cd', 4).length + 1) + 162] = sha3('swap(uint256,uint256,address,byt', 'es)')
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _555 + 1) + (32 * ('cd', 4).length + 1) + 166] = (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[32]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98])
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _555 + 1) + (32 * ('cd', 4).length + 1) + 198] = 0
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _555 + 1) + (32 * ('cd', 4).length + 1) + 230] = this.address
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _555 + 1) + (32 * ('cd', 4).length + 1) + 262] = 128
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _555 + 1) + (32 * ('cd', 4).length + 1) + 294 len ceil32(mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130]) + 1] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130 len ceil32(mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130]) + 1]
                call mem[160] with:
                   funct Mask(32, 224, sha3('swap(uint256,uint256,address,byt', 'es)')) >> 224
                     gas 350000 wei
                    args (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[32]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]), 0, this.address, 128, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _555 + 1) + (32 * ('cd', 4).length + 1) + 294 len mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130] + 64]
            else:
                _564 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130] = (32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 1) + (32 * ('cd', 4).length + 1)
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 162 len floor32(_564 + 1)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 len floor32(_564 + 1)]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _564 + 1) + 162 len floor32(('cd', 4).length + 1)] = mem[96 len floor32(('cd', 4).length + 1)]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _564 + 1) + (32 * ('cd', 4).length + 1) + 162] = sha3('swap(uint256,uint256,address,byt', 'es)')
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _564 + 1) + (32 * ('cd', 4).length + 1) + 166] = 0
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _564 + 1) + (32 * ('cd', 4).length + 1) + 198] = (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[32]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98])
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _564 + 1) + (32 * ('cd', 4).length + 1) + 230] = this.address
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _564 + 1) + (32 * ('cd', 4).length + 1) + 262] = 128
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _564 + 1) + (32 * ('cd', 4).length + 1) + 294 len ceil32(mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130]) + 1] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130 len ceil32(mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130]) + 1]
                call mem[160] with:
                   funct Mask(32, 224, sha3('swap(uint256,uint256,address,byt', 'es)')) >> 224
                     gas 350000 wei
                    args 0, (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[32]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[32]) / (10000 * ext_call.return_data[0]) + (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]), this.address, 128, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _564 + 1) + (32 * ('cd', 4).length + 1) + 294 len mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130] + 64]
        else:
            if (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[0]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]) < cd[100]:
            if mem[128] <= mem[(32 * ('cd', 4).length) + 96 len ceil32(32 * ('cd', 4).length) + -(32 * ('cd', 4).length) + 1], Mask(8 * (32 * ('cd', 4).length) + -ceil32(32 * ('cd', 4).length) + 31, -(8 * (32 * ('cd', 4).length) + -ceil32(32 * ('cd', 4).length) + 31) + 256, ('cd', 36).length) >> -(8 * (32 * ('cd', 4).length) + -ceil32(32 * ('cd', 4).length) + 31) + 256:
                _567 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130] = (32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 1) + (32 * ('cd', 4).length + 1)
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 162 len floor32(_567 + 1)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 len floor32(_567 + 1)]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _567 + 1) + 162 len floor32(('cd', 4).length + 1)] = mem[96 len floor32(('cd', 4).length + 1)]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _567 + 1) + (32 * ('cd', 4).length + 1) + 162] = sha3('swap(uint256,uint256,address,byt', 'es)')
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _567 + 1) + (32 * ('cd', 4).length + 1) + 166] = (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[0]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98])
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _567 + 1) + (32 * ('cd', 4).length + 1) + 198] = 0
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _567 + 1) + (32 * ('cd', 4).length + 1) + 230] = this.address
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _567 + 1) + (32 * ('cd', 4).length + 1) + 262] = 128
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _567 + 1) + (32 * ('cd', 4).length + 1) + 294 len ceil32(mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130]) + 1] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130 len ceil32(mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130]) + 1]
                call mem[160] with:
                   funct Mask(32, 224, sha3('swap(uint256,uint256,address,byt', 'es)')) >> 224
                     gas 350000 wei
                    args (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[0]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]), 0, this.address, 128, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _567 + 1) + (32 * ('cd', 4).length + 1) + 294 len mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130] + 64]
            else:
                _575 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130] = (32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] + 1) + (32 * ('cd', 4).length + 1)
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 162 len floor32(_575 + 1)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 len floor32(_575 + 1)]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _575 + 1) + 162 len floor32(('cd', 4).length + 1)] = mem[96 len floor32(('cd', 4).length + 1)]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _575 + 1) + (32 * ('cd', 4).length + 1) + 162] = sha3('swap(uint256,uint256,address,byt', 'es)')
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _575 + 1) + (32 * ('cd', 4).length + 1) + 166] = 0
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _575 + 1) + (32 * ('cd', 4).length + 1) + 198] = (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[0]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98])
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _575 + 1) + (32 * ('cd', 4).length + 1) + 230] = this.address
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _575 + 1) + (32 * ('cd', 4).length + 1) + 262] = 128
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _575 + 1) + (32 * ('cd', 4).length + 1) + 294 len ceil32(mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130]) + 1] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130 len ceil32(mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130]) + 1]
                call mem[160] with:
                   funct Mask(32, 224, sha3('swap(uint256,uint256,address,byt', 'es)')) >> 224
                     gas 350000 wei
                    args 0, (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[0]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98] * ext_call.return_data[0]) / (10000 * ext_call.return_data[32]) + (10000 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]) - (mem[ceil32(32 * ('cd', 4).length) + 129] * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 98]), this.address, 128, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + (32 * _575 + 1) + (32 * ('cd', 4).length + 1) + 294 len mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (16 * Mask(251, 1, ('cd', 4).length - 1)) + 130] + 64]
    if not ext_call.success:
        revert with 'sf'
    return 0
}



}
