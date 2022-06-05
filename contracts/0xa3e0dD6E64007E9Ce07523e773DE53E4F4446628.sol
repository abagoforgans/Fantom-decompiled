contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address stor3;
mapping of address stor4;
array of struct stor5;

function owner() {
    return owner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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
    if not stor4[msg.sender]:
        revert with 0, 'Caller not in whiteList'
    mem[64] = (32 * stor5.length) + 128
    mem[96] = stor5.length
    if not stor5.length:
        mem[(32 * stor5.length) + 128] = 32
        mem[(32 * stor5.length) + 160] = stor5.length
        idx = 0
        s = 128
        t = (32 * stor5.length) + 192
        while idx < stor5.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor5.length) + 128
           len (96 * stor5.length) + 64
    mem[128] = address(stor5.field_0)
    idx = 128
    s = 0
    while (32 * stor5.length) + 96 > idx:
        mem[idx + 32] = stor5[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor5.length) + 128] = 32
    mem[(32 * stor5.length) + 160] = stor5.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor5.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor5.length) + -mem[64] + 192
}

function sub_3c046960(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 'NH{q', 65
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
    mem[32] = 4
    if not stor4[msg.sender]:
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
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_cabb9212(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 'NH{q', 65
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
    while idx < stor5.length:
        mem[0] = stor5[idx].field_0
        mem[32] = 4
        stor4[stor5[idx].field_0] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + 140 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    stor5.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor5.length > idx:
            stor5[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            stor5[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor5.length > idx:
            stor5[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_c074cfd7(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg4 == address(arg4)
    mem[0] = msg.sender
    mem[32] = 4
    if not stor4[msg.sender]:
        revert with 0, 'Caller not in whiteList'
    if stor1 == address(arg1):
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 'NH{q', 17
        if ext_call.return_data[0] - arg2 >= 0:
            require ext_code.size(stor1)
            call stor1.0x2e1a7d4d with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call address(arg4) with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
    else:
        mem[100] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 'NH{q', 17
        if ext_call.return_data[0] - arg2 >= 0:
            mem[ceil32(return_data.size) + 128] = address(arg1)
            mem[ceil32(return_data.size) + 160] = stor1
            if 30 > !block.timestamp:
                revert with 'NH{q', 17
            mem[ceil32(return_data.size) + 192] = 0x59357f6100000000000000000000000000000000000000000000000000000000
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
            call stor2.0x59357f61 with:
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
                revert with 'NH{q', 65
            if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307():
                revert with 'NH{q', 65
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
}

function sub_a1ee5fbb(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 'NH{q', 65
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
            revert with 'NH{q', 17
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
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 'NH{q', 65
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
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 'NH{q', 65
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
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _94 / ('cd', 36).length
            continue 
        if mem[_93] < cd[68]:
            revert with 'NH{q', 17
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
                revert with 'NH{q', 17
            s = s + 1
            continue 
        if idx == -1:
            revert with 'NH{q', 17
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
                revert with 'NH{q', 17
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
    if 0 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _87 = mem[ceil32(arg2.length) + (32 * _3 + 1) + 160]
    if 1 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _89 = mem[ceil32(arg2.length) + (32 * _3 + 1) + 192]
    if 0 >= Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg2.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg2.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _89
    mem[ceil32(arg2.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg2.length) + 160]
    call _87.0xa9059cbb with:
         gas 300000 wei
        args _89, mem[ceil32(arg2.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _94 = mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]
    if mem[ceil32(arg2.length) + (32 * _3 + 1) + 128] < 2:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    s = 0
    while idx < _94 - 2:
        if 1 > !idx:
            revert with 'NH{q', 17
        if idx + 1 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if 1 > !s:
            revert with 'NH{q', 17
        if s + 1 >= mem[ceil32(arg2.length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * idx - 1) + ceil32(arg2.length) + (32 * _3 + 1) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg2.length) + (32 * _3 + 1) + 172 len 20]:
            _130 = mem[(32 * s + 1) + ceil32(arg2.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _134 = mem[(32 * idx) + ceil32(arg2.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _138 = mem[(32 * idx + 2) + ceil32(arg2.length) + (32 * _3 + 1) + 160]
            _140 = mem[64]
            mem[64] = mem[64] + 32
            mem[_140 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_140 + 36] = 0
            mem[_140 + 68] = _130
            mem[_140 + 100] = _138
            mem[_140 + 132] = 128
            t = 0
            while t < mem[_140] + 32:
                mem[t + _140 + 164] = mem[t + _140]
                t = t + 32
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _130, _138, 128, mem[_140 + 164 len mem[_140] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = 0
                s = s + 1
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args 0, _130, _138
        else:
            _131 = mem[(32 * s + 1) + ceil32(arg2.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _135 = mem[(32 * idx) + ceil32(arg2.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg2.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _139 = mem[(32 * idx + 2) + ceil32(arg2.length) + (32 * _3 + 1) + 160]
            _141 = mem[64]
            mem[64] = mem[64] + 32
            mem[_141 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_141 + 36] = _131
            mem[_141 + 68] = 0
            mem[_141 + 100] = _139
            mem[_141 + 132] = 128
            t = 0
            while t < mem[_141] + 32:
                mem[t + _141 + 164] = mem[t + _141]
                t = t + 32
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _131, 0, _139, 128, mem[_141 + 164 len mem[_141] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = _131
                s = s + 1
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args _131, 0, _139
        revert with 'sf'
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
    if 0 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _87 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 160]
    if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _89 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _89
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _87.0xa9059cbb with:
         gas 300000 wei
        args _89, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _94 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] < 2:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    s = 0
    while idx < _94 - 2:
        if 1 > !idx:
            revert with 'NH{q', 17
        if idx + 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if 1 > !s:
            revert with 'NH{q', 17
        if s + 1 >= mem[ceil32(arg4.length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * idx - 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20]:
            _130 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _134 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _138 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _140 = mem[64]
            mem[64] = mem[64] + 32
            mem[_140 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_140 + 36] = 0
            mem[_140 + 68] = _130
            mem[_140 + 100] = _138
            mem[_140 + 132] = 128
            t = 0
            while t < mem[_140] + 32:
                mem[t + _140 + 164] = mem[t + _140]
                t = t + 32
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _130, _138, 128, mem[_140 + 164 len mem[_140] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = 0
                s = s + 1
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args 0, _130, _138
        else:
            _131 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _135 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _139 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _141 = mem[64]
            mem[64] = mem[64] + 32
            mem[_141 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_141 + 36] = _131
            mem[_141 + 68] = 0
            mem[_141 + 100] = _139
            mem[_141 + 132] = 128
            t = 0
            while t < mem[_141] + 32:
                mem[t + _141 + 164] = mem[t + _141]
                t = t + 32
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _131, 0, _139, 128, mem[_141 + 164 len mem[_141] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = _131
                s = s + 1
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args _131, 0, _139
        revert with 'sf'
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
    if 0 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _87 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 160]
    if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _89 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _89
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _87.0xa9059cbb with:
         gas 300000 wei
        args _89, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _94 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] < 2:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    s = 0
    while idx < _94 - 2:
        if 1 > !idx:
            revert with 'NH{q', 17
        if idx + 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if 1 > !s:
            revert with 'NH{q', 17
        if s + 1 >= mem[ceil32(arg4.length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * idx - 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20]:
            _130 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _134 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _138 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _140 = mem[64]
            mem[64] = mem[64] + 32
            mem[_140 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_140 + 36] = 0
            mem[_140 + 68] = _130
            mem[_140 + 100] = _138
            mem[_140 + 132] = 128
            t = 0
            while t < mem[_140] + 32:
                mem[t + _140 + 164] = mem[t + _140]
                t = t + 32
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _130, _138, 128, mem[_140 + 164 len mem[_140] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = 0
                s = s + 1
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args 0, _130, _138
        else:
            _131 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _135 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _139 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _141 = mem[64]
            mem[64] = mem[64] + 32
            mem[_141 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_141 + 36] = _131
            mem[_141 + 68] = 0
            mem[_141 + 100] = _139
            mem[_141 + 132] = 128
            t = 0
            while t < mem[_141] + 32:
                mem[t + _141 + 164] = mem[t + _141]
                t = t + 32
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _131, 0, _139, 128, mem[_141 + 164 len mem[_141] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = _131
                s = s + 1
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args _131, 0, _139
        revert with 'sf'
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
    if 0 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _87 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 160]
    if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _89 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _89
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _87.0xa9059cbb with:
         gas 300000 wei
        args _89, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _94 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] < 2:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    s = 0
    while idx < _94 - 2:
        if 1 > !idx:
            revert with 'NH{q', 17
        if idx + 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if 1 > !s:
            revert with 'NH{q', 17
        if s + 1 >= mem[ceil32(arg4.length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * idx - 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20]:
            _130 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _134 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _138 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _140 = mem[64]
            mem[64] = mem[64] + 32
            mem[_140 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_140 + 36] = 0
            mem[_140 + 68] = _130
            mem[_140 + 100] = _138
            mem[_140 + 132] = 128
            t = 0
            while t < mem[_140] + 32:
                mem[t + _140 + 164] = mem[t + _140]
                t = t + 32
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _130, _138, 128, mem[_140 + 164 len mem[_140] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = 0
                s = s + 1
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args 0, _130, _138
        else:
            _131 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _135 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _139 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _141 = mem[64]
            mem[64] = mem[64] + 32
            mem[_141 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_141 + 36] = _131
            mem[_141 + 68] = 0
            mem[_141 + 100] = _139
            mem[_141 + 132] = 128
            t = 0
            while t < mem[_141] + 32:
                mem[t + _141 + 164] = mem[t + _141]
                t = t + 32
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _131, 0, _139, 128, mem[_141 + 164 len mem[_141] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = _131
                s = s + 1
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args _131, 0, _139
        revert with 'sf'
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
    if 0 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _87 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 160]
    if 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
        revert with 'NH{q', 50
    _89 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 192]
    if 0 >= Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
        revert with 'NH{q', 50
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 132] = _89
    mem[ceil32(arg4.length) + (32 * _3 + 1) + (32 * _4 + 1) + 164] = mem[ceil32(arg4.length) + 160]
    call _87.0xa9059cbb with:
         gas 300000 wei
        args _89, mem[ceil32(arg4.length) + 160]
    if not ext_call.success:
        revert with 0, 'tf'
    _94 = mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]
    if mem[ceil32(arg4.length) + (32 * _3 + 1) + 128] < 2:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    s = 0
    while idx < _94 - 2:
        if 1 > !idx:
            revert with 'NH{q', 17
        if idx + 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
            revert with 'NH{q', 50
        if 1 > !s:
            revert with 'NH{q', 17
        if s + 1 >= mem[ceil32(arg4.length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * idx - 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20] < mem[(32 * idx + 1) + ceil32(arg4.length) + (32 * _3 + 1) + 172 len 20]:
            _130 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _134 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _138 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _140 = mem[64]
            mem[64] = mem[64] + 32
            mem[_140 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_140 + 36] = 0
            mem[_140 + 68] = _130
            mem[_140 + 100] = _138
            mem[_140 + 132] = 128
            t = 0
            while t < mem[_140] + 32:
                mem[t + _140 + 164] = mem[t + _140]
                t = t + 32
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _130, _138, 128, mem[_140 + 164 len mem[_140] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = 0
                s = s + 1
                continue 
            call _134.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args 0, _130, _138
        else:
            _131 = mem[(32 * s + 1) + ceil32(arg4.length) + 160]
            if s == -1:
                revert with 'NH{q', 17
            if idx >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _135 = mem[(32 * idx) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            if 2 > !idx:
                revert with 'NH{q', 17
            if idx + 2 >= mem[ceil32(arg4.length) + (32 * _3 + 1) + 128]:
                revert with 'NH{q', 50
            _139 = mem[(32 * idx + 2) + ceil32(arg4.length) + (32 * _3 + 1) + 160]
            _141 = mem[64]
            mem[64] = mem[64] + 32
            mem[_141 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[_141 + 36] = _131
            mem[_141 + 68] = 0
            mem[_141 + 100] = _139
            mem[_141 + 132] = 128
            t = 0
            while t < mem[_141] + 32:
                mem[t + _141 + 164] = mem[t + _141]
                t = t + 32
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _131, 0, _139, 128, mem[_141 + 164 len mem[_141] + 64]
            if ext_call.success:
                if idx > -3:
                    revert with 'NH{q', 17
                idx = idx + 2
                s = _131
                s = s + 1
                continue 
            call _135.swap(uint256 arg1, uint256 arg2, address arg3) with:
                 gas 350000 wei
                args _131, 0, _139
        revert with 'sf'
}

function sub_6ecd2fb7(?) {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 'NH{q', 65
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
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 100).length) + 99 < 98 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 99 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] == bool(cd[132])
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 99] = ('cd', 36).length + 1
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131] = cd[68]
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + 99
    s = 0
    s = 0
    s = 0
    idx = 32
    while idx < 32 * ('cd', 4).length:
        staticcall mem[idx + 128].getReserves() with:
                gas 15000 wei
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + 99 len 64] = ext_call.return_data[0 len 64]
        if mem[idx + 96] <= mem[idx + 160]:
            if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 131] * mem[ceil32(32 * ('cd', 4).length) + s + 129] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 131] * mem[ceil32(32 * ('cd', 4).length) + s + 129]) < mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 130]:
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 163] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 131] * mem[ceil32(32 * ('cd', 4).length) + s + 129] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 131] * mem[ceil32(32 * ('cd', 4).length) + s + 129])
            s = ext_call.return_data[32]
            s = ext_call.return_data[0]
            s = s + 32
            idx = idx + 64
            continue 
        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 131] * mem[ceil32(32 * ('cd', 4).length) + s + 129] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 131] * mem[ceil32(32 * ('cd', 4).length) + s + 129]) < mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 130]:
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 163] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 131] * mem[ceil32(32 * ('cd', 4).length) + s + 129] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 131] * mem[ceil32(32 * ('cd', 4).length) + s + 129])
        s = ext_call.return_data[0]
        s = ext_call.return_data[32]
        s = s + 32
        idx = idx + 64
        continue 
    if idx < 9999:
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + 131 len floor32(('cd', 36).length + 2)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 99 len floor32(('cd', 36).length + 2)]
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length + 2) + 131 len floor32(('cd', 4).length + 1)] = mem[96 len floor32(('cd', 4).length + 1)]
        if mem[(32 * ('cd', 4).length) + 96 len ceil32(32 * ('cd', 4).length) + -(32 * ('cd', 4).length) + 1], Mask(8 * (32 * ('cd', 4).length) + -ceil32(32 * ('cd', 4).length) + 31, -(8 * (32 * ('cd', 4).length) + -ceil32(32 * ('cd', 4).length) + 31) + 256, ('cd', 36).length) >> -(8 * (32 * ('cd', 4).length) + -ceil32(32 * ('cd', 4).length) + 31) + 256 <= mem[(32 * ('cd', 4).length) + 32]:
            call mem[(32 * ('cd', 4).length) + 64] with:
               funct Mask(32, 224, sha3('swap(uint256,uint256,address,byt', 'es)')) >> 224
                 gas 350000 wei
                args mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + 99], 0, this.address, 128, Mask(8 * floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 1, -(8 * floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 1) + 256, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + floor32(('cd', 36).length + 2) + 131 len (32 * ('cd', 36).length + 2) - floor32(('cd', 36).length + 2)], mem[96 len floor32(('cd', 4).length + 1)], mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length + 2) + floor32(('cd', 4).length + 1) + 131 len floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + -(32 * ('cd', 36).length + 2) + -floor32(('cd', 4).length + 1) - 31]) << (8 * floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 1) - 256, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 264 len (32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + -floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 63]
        else:
            call mem[(32 * ('cd', 4).length) + 64] with:
               funct Mask(32, 224, sha3('swap(uint256,uint256,address,byt', 'es)')) >> 224
                 gas 350000 wei
                args 0, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + 99], this.address, 128, Mask(8 * floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 1, -(8 * floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 1) + 256, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + floor32(('cd', 36).length + 2) + 131 len (32 * ('cd', 36).length + 2) - floor32(('cd', 36).length + 2)], mem[96 len floor32(('cd', 4).length + 1)], mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length + 2) + floor32(('cd', 4).length + 1) + 131 len floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + -(32 * ('cd', 36).length + 2) + -floor32(('cd', 4).length + 1) - 31]) << (8 * floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 1) - 256, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 264 len (32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + -floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 63]
        if not ext_call.success:
            revert with 'sf'
    if cd[132]:
        require ext_code.size(stor3)
        if ('cd', 4).length <= 5:
            call stor3.free(uint256 arg1) with:
                 gas gas_remaining wei
                args 4
        else:
            call stor3.free(uint256 arg1) with:
                 gas gas_remaining wei
                args 6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0x715018a6(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xa1ee5fbb(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    emit OwnershipTransferred(owner, 0);
                    owner = 0
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x84800812(?????):
                        if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return owner
                        if uint32(call.func_hash) >> 224 != unknown_0x911487a6(?????):
                        require not msg.value
                        if not stor4[msg.sender]:
                            revert with 0, 'Caller not in whiteList'
                        mem[64] = (32 * stor5.length) + 160
                        mem[128] = stor5.length
                        if not stor5.length:
                            mem[(32 * stor5.length) + 160] = 32
                            mem[(32 * stor5.length) + 192] = stor5.length
                            idx = 0
                            s = 160
                            t = (32 * stor5.length) + 224
                            while idx < stor5.length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from (32 * stor5.length) + 160
                               len (96 * stor5.length) + 64
                        mem[160] = address(stor5.field_0)
                        idx = 160
                        s = 0
                        while (32 * stor5.length) + 128 > idx:
                            mem[idx + 32] = stor5[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[(32 * stor5.length) + 160] = 32
                        mem[(32 * stor5.length) + 192] = stor5.length
                        idx = 0
                        s = 160
                        t = mem[64] + 64
                        while idx < stor5.length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len (64 * stor5.length) + -mem[64] + 224
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require cd[4] == address(cd[4])
                    require cd[100] <= test266151307()
                    require cd[100] + 35 < calldata.size
                    require ('cd', 100).length <= test266151307()
                    require cd[100] + ('cd', 100).length + 36 <= calldata.size
                    mem[128] = ('cd', 100).length
                    mem[160 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                    mem[('cd', 100).length + 160] = 0
                    _47 = mem[160]
                    _48 = mem[(32 * mem[160] + 1) + 160]
                    mem[ceil32(('cd', 100).length) + 160 len floor32(mem[160] + 1)] = mem[160 len floor32(mem[160] + 1)]
                    mem[ceil32(('cd', 100).length) + (32 * _47 + 1) + 160 len floor32(_48 + 1)] = mem[(32 * _47 + 1) + 160 len floor32(_48 + 1)]
                    mem[64] = ceil32(('cd', 100).length) + (32 * _47 + 1) + (32 * _48 + 1) + 160
                    if 0 >= mem[ceil32(('cd', 100).length) + (32 * _47 + 1) + 160]:
                        revert with 'NH{q', 50
                    _802 = mem[ceil32(('cd', 100).length) + (32 * _47 + 1) + 192]
                    if 1 >= mem[ceil32(('cd', 100).length) + (32 * _47 + 1) + 160]:
                        revert with 'NH{q', 50
                    _820 = mem[ceil32(('cd', 100).length) + (32 * _47 + 1) + 224]
                    if 0 >= Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[('cd', 100).length + 192 len -('cd', 100).length + ceil32(('cd', 100).length)]:
                        revert with 'NH{q', 50
                    mem[ceil32(('cd', 100).length) + (32 * _47 + 1) + (32 * _48 + 1) + 160] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
                    mem[ceil32(('cd', 100).length) + (32 * _47 + 1) + (32 * _48 + 1) + 164] = _820
                    mem[ceil32(('cd', 100).length) + (32 * _47 + 1) + (32 * _48 + 1) + 196] = mem[ceil32(('cd', 100).length) + 192]
                    call _802.0xa9059cbb with:
                         gas 300000 wei
                        args _820, mem[ceil32(('cd', 100).length) + 192]
                    if not ext_call.success:
                        revert with 0, 'tf'
                    _865 = mem[ceil32(('cd', 100).length) + (32 * _47 + 1) + 160]
                    if mem[ceil32(('cd', 100).length) + (32 * _47 + 1) + 160] < 2:
                        revert with 'NH{q', 17
                    idx = 1
                    s = 0
                    s = 0
                    while idx < _865 - 2:
                        if 1 > !idx:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[ceil32(('cd', 100).length) + (32 * _47 + 1) + 160]:
                            revert with 'NH{q', 50
                        if idx < 1:
                            revert with 'NH{q', 17
                        if idx - 1 >= mem[ceil32(('cd', 100).length) + (32 * _47 + 1) + 160]:
                            revert with 'NH{q', 50
                        if 1 > !s:
                            revert with 'NH{q', 17
                        if s + 1 >= mem[ceil32(('cd', 100).length) + 160]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx - 1) + ceil32(('cd', 100).length) + (32 * _47 + 1) + 204 len 20] < mem[(32 * idx + 1) + ceil32(('cd', 100).length) + (32 * _47 + 1) + 204 len 20]:
                            _1196 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                            if s == -1:
                                revert with 'NH{q', 17
                            if idx >= mem[ceil32(('cd', 100).length) + (32 * _47 + 1) + 160]:
                                revert with 'NH{q', 50
                            _1230 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _47 + 1) + 192]
                            if 2 > !idx:
                                revert with 'NH{q', 17
                            if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _47 + 1) + 160]:
                                revert with 'NH{q', 50
                            _1260 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _47 + 1) + 192]
                            _1274 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1274 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                            mem[_1274 + 36] = 0
                            mem[_1274 + 68] = _1196
                            mem[_1274 + 100] = _1260
                            mem[_1274 + 132] = 128
                            t = 0
                            while t < mem[_1274] + 32:
                                mem[t + _1274 + 164] = mem[t + _1274]
                                t = t + 32
                                continue 
                            call _1230.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas 350000 wei
                                args 0, _1196, _1260, 128, mem[_1274 + 164 len mem[_1274] + 64]
                            if ext_call.success:
                                if idx > -3:
                                    revert with 'NH{q', 17
                                idx = idx + 2
                                s = 0
                                s = s + 1
                                continue 
                            call _1230.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas 350000 wei
                                args 0, _1196, _1260
                        else:
                            _1197 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                            if s == -1:
                                revert with 'NH{q', 17
                            if idx >= mem[ceil32(('cd', 100).length) + (32 * _47 + 1) + 160]:
                                revert with 'NH{q', 50
                            _1231 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _47 + 1) + 192]
                            if 2 > !idx:
                                revert with 'NH{q', 17
                            if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _47 + 1) + 160]:
                                revert with 'NH{q', 50
                            _1261 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _47 + 1) + 192]
                            _1275 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1275 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                            mem[_1275 + 36] = _1197
                            mem[_1275 + 68] = 0
                            mem[_1275 + 100] = _1261
                            mem[_1275 + 132] = 128
                            t = 0
                            while t < mem[_1275] + 32:
                                mem[t + _1275 + 164] = mem[t + _1275]
                                t = t + 32
                                continue 
                            call _1231.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas 350000 wei
                                args _1197, 0, _1261, 128, mem[_1275 + 164 len mem[_1275] + 64]
                            if ext_call.success:
                                if idx > -3:
                                    revert with 'NH{q', 17
                                idx = idx + 2
                                s = _1197
                                s = s + 1
                                continue 
                            call _1231.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas 350000 wei
                                args _1197, 0, _1261
                        revert with 'sf'
            else:
                if unknown_0xa1ee5fbb(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = ceil32(32 * ('cd', 4).length) + 129
                    mem[128] = ('cd', 4).length
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    idx = 0
                    s = cd[4] + 36
                    t = 160
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
                        if idx >= mem[128]:
                            revert with 'NH{q', 50
                        _790 = mem[(32 * idx) + 160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_790))
                        staticcall address(_790).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 == cd[68]:
                            _845 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _867 = mem[_845]
                            mem[mem[64] + 4] = address(cd[36])
                            mem[mem[64] + 36] = _867
                            require ext_code.size(address(_790))
                            call address(_790).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), _867
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _877 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_877] == bool(mem[_877])
                        else:
                            _835 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if cd[68] <= mem[_835]:
                                mem[mem[64] + 4] = address(cd[36])
                                mem[mem[64] + 36] = cd[68]
                                require ext_code.size(address(_790))
                                call address(_790).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(cd[36]), cd[68]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _880 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_880] == bool(mem[_880])
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_790))
                                staticcall address(_790).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _881 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _888 = mem[_881]
                                mem[mem[64] + 4] = address(cd[36])
                                mem[mem[64] + 36] = _888
                                require ext_code.size(address(_790))
                                call address(_790).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(cd[36]), _888
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _901 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_901] == bool(mem[_901])
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if eth.balance(this.address):
                        call address(cd[36]) with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xc074cfd7(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0xcabb9212(?????):
                            if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require cd[4] == address(cd[4])
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                if not address(cd[4]):
                                    revert with 0, 'Ownable: new owner is the zero address'
                                emit OwnershipTransferred(owner, address(cd[4]));
                                owner = address(cd[4])
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] <= test266151307()
                            require cd[4] + 35 < calldata.size
                            if ('cd', 4).length > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                                revert with 'NH{q', 65
                            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                            idx = 0
                            s = cd[4] + 36
                            t = 160
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
                            while idx < stor5.length:
                                mem[0] = stor5[idx].field_0
                                mem[32] = 4
                                stor4[stor5[idx].field_0] = 0
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < ('cd', 4).length:
                                if idx >= ('cd', 4).length:
                                    revert with 'NH{q', 50
                                if idx >= ('cd', 4).length:
                                    revert with 'NH{q', 50
                                mem[0] = mem[(32 * idx) + 172 len 20]
                                mem[32] = 4
                                stor4[mem[(32 * idx) + 172 len 20]] = mem[(32 * idx) + 172 len 20]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                            stor5.length = ('cd', 4).length
                            if not ('cd', 4).length:
                                idx = 0
                                while stor5.length > idx:
                                    stor5[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 160
                                while (32 * ('cd', 4).length) + 160 > idx:
                                    stor5[s].field_0 = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
                                while stor5.length > idx:
                                    stor5[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 128
                        require cd[4] == address(cd[4])
                        require cd[100] == address(cd[100])
                        if not stor4[msg.sender]:
                            revert with 0, 'Caller not in whiteList'
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < cd[36]:
                            revert with 'NH{q', 17
                        if stor1 == address(cd[4]):
                            if ext_call.return_data[0] - cd[36] >= 0:
                                require ext_code.size(stor1)
                                call stor1.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args cd[36]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call address(cd[100]) with:
                                   value cd[36] wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            if ext_call.return_data[0] - cd[36] >= 0:
                                mem[ceil32(return_data.size) + 160] = address(cd[4])
                                mem[ceil32(return_data.size) + 192] = stor1
                                if 30 > !block.timestamp:
                                    revert with 'NH{q', 17
                                mem[ceil32(return_data.size) + 224] = 0x59357f6100000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 228] = cd[36]
                                mem[ceil32(return_data.size) + 260] = cd[68]
                                mem[ceil32(return_data.size) + 292] = 160
                                mem[ceil32(return_data.size) + 388] = 2
                                idx = 0
                                s = ceil32(return_data.size) + 160
                                t = ceil32(return_data.size) + 420
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(return_data.size) + 324] = address(cd[100])
                                mem[ceil32(return_data.size) + 356] = block.timestamp + 30
                                require ext_code.size(stor2)
                                call stor2.0x59357f61 with:
                                     gas gas_remaining wei
                                    args cd[36], cd[68], Array(len=2, data=mem[ceil32(return_data.size) + 420 len 64]), address(cd[100]), block.timestamp + 30
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
                                require ceil32(return_data.size) + return_data.size + 224 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[36]) >> 32 + 255
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[36]) >> 32 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[36]) >> 32 + 224]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[36]) >> 32 + 224]) + 225 > test266151307():
                                    revert with 'NH{q', 65
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[36]) >> 32 + 224]) + 32 <= return_data.size
        else:
            if unknown_0x3aa99232(?????) > uint32(call.func_hash) >> 224:
                if elkCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require cd[4] == address(cd[4])
                    require cd[100] <= test266151307()
                    require cd[100] + 35 < calldata.size
                    require ('cd', 100).length <= test266151307()
                    require cd[100] + ('cd', 100).length + 36 <= calldata.size
                    mem[128] = ('cd', 100).length
                    mem[160 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                    mem[('cd', 100).length + 160] = 0
                    _38 = mem[160]
                    _39 = mem[(32 * mem[160] + 1) + 160]
                    mem[ceil32(('cd', 100).length) + 160 len floor32(mem[160] + 1)] = mem[160 len floor32(mem[160] + 1)]
                    mem[ceil32(('cd', 100).length) + (32 * _38 + 1) + 160 len floor32(_39 + 1)] = mem[(32 * _38 + 1) + 160 len floor32(_39 + 1)]
                    mem[64] = ceil32(('cd', 100).length) + (32 * _38 + 1) + (32 * _39 + 1) + 160
                    if 0 >= mem[ceil32(('cd', 100).length) + (32 * _38 + 1) + 160]:
                        revert with 'NH{q', 50
                    _794 = mem[ceil32(('cd', 100).length) + (32 * _38 + 1) + 192]
                    if 1 >= mem[ceil32(('cd', 100).length) + (32 * _38 + 1) + 160]:
                        revert with 'NH{q', 50
                    _809 = mem[ceil32(('cd', 100).length) + (32 * _38 + 1) + 224]
                    if 0 >= Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[('cd', 100).length + 192 len -('cd', 100).length + ceil32(('cd', 100).length)]:
                        revert with 'NH{q', 50
                    mem[ceil32(('cd', 100).length) + (32 * _38 + 1) + (32 * _39 + 1) + 160] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
                    mem[ceil32(('cd', 100).length) + (32 * _38 + 1) + (32 * _39 + 1) + 164] = _809
                    mem[ceil32(('cd', 100).length) + (32 * _38 + 1) + (32 * _39 + 1) + 196] = mem[ceil32(('cd', 100).length) + 192]
                    call _794.0xa9059cbb with:
                         gas 300000 wei
                        args _809, mem[ceil32(('cd', 100).length) + 192]
                    if not ext_call.success:
                        revert with 0, 'tf'
                    _857 = mem[ceil32(('cd', 100).length) + (32 * _38 + 1) + 160]
                    if mem[ceil32(('cd', 100).length) + (32 * _38 + 1) + 160] < 2:
                        revert with 'NH{q', 17
                    idx = 1
                    s = 0
                    s = 0
                    while idx < _857 - 2:
                        if 1 > !idx:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[ceil32(('cd', 100).length) + (32 * _38 + 1) + 160]:
                            revert with 'NH{q', 50
                        if idx < 1:
                            revert with 'NH{q', 17
                        if idx - 1 >= mem[ceil32(('cd', 100).length) + (32 * _38 + 1) + 160]:
                            revert with 'NH{q', 50
                        if 1 > !s:
                            revert with 'NH{q', 17
                        if s + 1 >= mem[ceil32(('cd', 100).length) + 160]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx - 1) + ceil32(('cd', 100).length) + (32 * _38 + 1) + 204 len 20] < mem[(32 * idx + 1) + ceil32(('cd', 100).length) + (32 * _38 + 1) + 204 len 20]:
                            _1181 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                            if s == -1:
                                revert with 'NH{q', 17
                            if idx >= mem[ceil32(('cd', 100).length) + (32 * _38 + 1) + 160]:
                                revert with 'NH{q', 50
                            _1217 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _38 + 1) + 192]
                            if 2 > !idx:
                                revert with 'NH{q', 17
                            if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _38 + 1) + 160]:
                                revert with 'NH{q', 50
                            _1250 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _38 + 1) + 192]
                            _1262 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1262 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                            mem[_1262 + 36] = 0
                            mem[_1262 + 68] = _1181
                            mem[_1262 + 100] = _1250
                            mem[_1262 + 132] = 128
                            t = 0
                            while t < mem[_1262] + 32:
                                mem[t + _1262 + 164] = mem[t + _1262]
                                t = t + 32
                                continue 
                            call _1217.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas 350000 wei
                                args 0, _1181, _1250, 128, mem[_1262 + 164 len mem[_1262] + 64]
                            if ext_call.success:
                                if idx > -3:
                                    revert with 'NH{q', 17
                                idx = idx + 2
                                s = 0
                                s = s + 1
                                continue 
                            call _1217.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas 350000 wei
                                args 0, _1181, _1250
                        else:
                            _1182 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                            if s == -1:
                                revert with 'NH{q', 17
                            if idx >= mem[ceil32(('cd', 100).length) + (32 * _38 + 1) + 160]:
                                revert with 'NH{q', 50
                            _1218 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _38 + 1) + 192]
                            if 2 > !idx:
                                revert with 'NH{q', 17
                            if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _38 + 1) + 160]:
                                revert with 'NH{q', 50
                            _1251 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _38 + 1) + 192]
                            _1263 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1263 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                            mem[_1263 + 36] = _1182
                            mem[_1263 + 68] = 0
                            mem[_1263 + 100] = _1251
                            mem[_1263 + 132] = 128
                            t = 0
                            while t < mem[_1263] + 32:
                                mem[t + _1263 + 164] = mem[t + _1263]
                                t = t + 32
                                continue 
                            call _1218.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas 350000 wei
                                args _1182, 0, _1251, 128, mem[_1263 + 164 len mem[_1263] + 64]
                            if ext_call.success:
                                if idx > -3:
                                    revert with 'NH{q', 17
                                idx = idx + 2
                                s = _1182
                                s = s + 1
                                continue 
                            call _1218.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas 350000 wei
                                args _1182, 0, _1251
                        revert with 'sf'
                else:
                    if unknown_0x10d1e85c(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 128
                        require cd[4] == address(cd[4])
                        require cd[100] <= test266151307()
                        require cd[100] + 35 < calldata.size
                        require ('cd', 100).length <= test266151307()
                        require cd[100] + ('cd', 100).length + 36 <= calldata.size
                        mem[128] = ('cd', 100).length
                        mem[160 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                        mem[('cd', 100).length + 160] = 0
                        _44 = mem[160]
                        _45 = mem[(32 * mem[160] + 1) + 160]
                        mem[ceil32(('cd', 100).length) + 160 len floor32(mem[160] + 1)] = mem[160 len floor32(mem[160] + 1)]
                        mem[ceil32(('cd', 100).length) + (32 * _44 + 1) + 160 len floor32(_45 + 1)] = mem[(32 * _44 + 1) + 160 len floor32(_45 + 1)]
                        mem[64] = ceil32(('cd', 100).length) + (32 * _44 + 1) + (32 * _45 + 1) + 160
                        if 0 >= mem[ceil32(('cd', 100).length) + (32 * _44 + 1) + 160]:
                            revert with 'NH{q', 50
                        _796 = mem[ceil32(('cd', 100).length) + (32 * _44 + 1) + 192]
                        if 1 >= mem[ceil32(('cd', 100).length) + (32 * _44 + 1) + 160]:
                            revert with 'NH{q', 50
                        _811 = mem[ceil32(('cd', 100).length) + (32 * _44 + 1) + 224]
                        if 0 >= Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[('cd', 100).length + 192 len -('cd', 100).length + ceil32(('cd', 100).length)]:
                            revert with 'NH{q', 50
                        mem[ceil32(('cd', 100).length) + (32 * _44 + 1) + (32 * _45 + 1) + 160] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
                        mem[ceil32(('cd', 100).length) + (32 * _44 + 1) + (32 * _45 + 1) + 164] = _811
                        mem[ceil32(('cd', 100).length) + (32 * _44 + 1) + (32 * _45 + 1) + 196] = mem[ceil32(('cd', 100).length) + 192]
                        call _796.0xa9059cbb with:
                             gas 300000 wei
                            args _811, mem[ceil32(('cd', 100).length) + 192]
                        if not ext_call.success:
                            revert with 0, 'tf'
                        _859 = mem[ceil32(('cd', 100).length) + (32 * _44 + 1) + 160]
                        if mem[ceil32(('cd', 100).length) + (32 * _44 + 1) + 160] < 2:
                            revert with 'NH{q', 17
                        idx = 1
                        s = 0
                        s = 0
                        while idx < _859 - 2:
                            if 1 > !idx:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[ceil32(('cd', 100).length) + (32 * _44 + 1) + 160]:
                                revert with 'NH{q', 50
                            if idx < 1:
                                revert with 'NH{q', 17
                            if idx - 1 >= mem[ceil32(('cd', 100).length) + (32 * _44 + 1) + 160]:
                                revert with 'NH{q', 50
                            if 1 > !s:
                                revert with 'NH{q', 17
                            if s + 1 >= mem[ceil32(('cd', 100).length) + 160]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx - 1) + ceil32(('cd', 100).length) + (32 * _44 + 1) + 204 len 20] < mem[(32 * idx + 1) + ceil32(('cd', 100).length) + (32 * _44 + 1) + 204 len 20]:
                                _1183 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                                if s == -1:
                                    revert with 'NH{q', 17
                                if idx >= mem[ceil32(('cd', 100).length) + (32 * _44 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _1219 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _44 + 1) + 192]
                                if 2 > !idx:
                                    revert with 'NH{q', 17
                                if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _44 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _1252 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _44 + 1) + 192]
                                _1264 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1264 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                mem[_1264 + 36] = 0
                                mem[_1264 + 68] = _1183
                                mem[_1264 + 100] = _1252
                                mem[_1264 + 132] = 128
                                t = 0
                                while t < mem[_1264] + 32:
                                    mem[t + _1264 + 164] = mem[t + _1264]
                                    t = t + 32
                                    continue 
                                call _1219.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas 350000 wei
                                    args 0, _1183, _1252, 128, mem[_1264 + 164 len mem[_1264] + 64]
                                if ext_call.success:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    idx = idx + 2
                                    s = 0
                                    s = s + 1
                                    continue 
                                call _1219.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas 350000 wei
                                    args 0, _1183, _1252
                            else:
                                _1184 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                                if s == -1:
                                    revert with 'NH{q', 17
                                if idx >= mem[ceil32(('cd', 100).length) + (32 * _44 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _1220 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _44 + 1) + 192]
                                if 2 > !idx:
                                    revert with 'NH{q', 17
                                if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _44 + 1) + 160]:
                                    revert with 'NH{q', 50
                                _1253 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _44 + 1) + 192]
                                _1265 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1265 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                mem[_1265 + 36] = _1184
                                mem[_1265 + 68] = 0
                                mem[_1265 + 100] = _1253
                                mem[_1265 + 132] = 128
                                t = 0
                                while t < mem[_1265] + 32:
                                    mem[t + _1265 + 164] = mem[t + _1265]
                                    t = t + 32
                                    continue 
                                call _1220.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas 350000 wei
                                    args _1184, 0, _1253, 128, mem[_1265 + 164 len mem[_1265] + 64]
                                if ext_call.success:
                                    if idx > -3:
                                        revert with 'NH{q', 17
                                    idx = idx + 2
                                    s = _1184
                                    s = s + 1
                                    continue 
                                call _1220.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas 350000 wei
                                    args _1184, 0, _1253
                            revert with 'sf'
                    else:
                        if unknown_0x2126f574(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 128
                            require cd[4] == address(cd[4])
                            require cd[100] <= test266151307()
                            require cd[100] + 35 < calldata.size
                            require ('cd', 100).length <= test266151307()
                            require cd[100] + ('cd', 100).length + 36 <= calldata.size
                            mem[128] = ('cd', 100).length
                            mem[160 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                            mem[('cd', 100).length + 160] = 0
                            _53 = mem[160]
                            _54 = mem[(32 * mem[160] + 1) + 160]
                            mem[ceil32(('cd', 100).length) + 160 len floor32(mem[160] + 1)] = mem[160 len floor32(mem[160] + 1)]
                            mem[ceil32(('cd', 100).length) + (32 * _53 + 1) + 160 len floor32(_54 + 1)] = mem[(32 * _53 + 1) + 160 len floor32(_54 + 1)]
                            mem[64] = ceil32(('cd', 100).length) + (32 * _53 + 1) + (32 * _54 + 1) + 160
                            if 0 >= mem[ceil32(('cd', 100).length) + (32 * _53 + 1) + 160]:
                                revert with 'NH{q', 50
                            _798 = mem[ceil32(('cd', 100).length) + (32 * _53 + 1) + 192]
                            if 1 >= mem[ceil32(('cd', 100).length) + (32 * _53 + 1) + 160]:
                                revert with 'NH{q', 50
                            _813 = mem[ceil32(('cd', 100).length) + (32 * _53 + 1) + 224]
                            if 0 >= Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[('cd', 100).length + 192 len -('cd', 100).length + ceil32(('cd', 100).length)]:
                                revert with 'NH{q', 50
                            mem[ceil32(('cd', 100).length) + (32 * _53 + 1) + (32 * _54 + 1) + 160] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
                            mem[ceil32(('cd', 100).length) + (32 * _53 + 1) + (32 * _54 + 1) + 164] = _813
                            mem[ceil32(('cd', 100).length) + (32 * _53 + 1) + (32 * _54 + 1) + 196] = mem[ceil32(('cd', 100).length) + 192]
                            call _798.0xa9059cbb with:
                                 gas 300000 wei
                                args _813, mem[ceil32(('cd', 100).length) + 192]
                            if not ext_call.success:
                                revert with 0, 'tf'
                            _861 = mem[ceil32(('cd', 100).length) + (32 * _53 + 1) + 160]
                            if mem[ceil32(('cd', 100).length) + (32 * _53 + 1) + 160] < 2:
                                revert with 'NH{q', 17
                            idx = 1
                            s = 0
                            s = 0
                            while idx < _861 - 2:
                                if 1 > !idx:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[ceil32(('cd', 100).length) + (32 * _53 + 1) + 160]:
                                    revert with 'NH{q', 50
                                if idx < 1:
                                    revert with 'NH{q', 17
                                if idx - 1 >= mem[ceil32(('cd', 100).length) + (32 * _53 + 1) + 160]:
                                    revert with 'NH{q', 50
                                if 1 > !s:
                                    revert with 'NH{q', 17
                                if s + 1 >= mem[ceil32(('cd', 100).length) + 160]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx - 1) + ceil32(('cd', 100).length) + (32 * _53 + 1) + 204 len 20] < mem[(32 * idx + 1) + ceil32(('cd', 100).length) + (32 * _53 + 1) + 204 len 20]:
                                    _1185 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    if idx >= mem[ceil32(('cd', 100).length) + (32 * _53 + 1) + 160]:
                                        revert with 'NH{q', 50
                                    _1221 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _53 + 1) + 192]
                                    if 2 > !idx:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _53 + 1) + 160]:
                                        revert with 'NH{q', 50
                                    _1254 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _53 + 1) + 192]
                                    _1266 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_1266 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                    mem[_1266 + 36] = 0
                                    mem[_1266 + 68] = _1185
                                    mem[_1266 + 100] = _1254
                                    mem[_1266 + 132] = 128
                                    t = 0
                                    while t < mem[_1266] + 32:
                                        mem[t + _1266 + 164] = mem[t + _1266]
                                        t = t + 32
                                        continue 
                                    call _1221.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas 350000 wei
                                        args 0, _1185, _1254, 128, mem[_1266 + 164 len mem[_1266] + 64]
                                    if ext_call.success:
                                        if idx > -3:
                                            revert with 'NH{q', 17
                                        idx = idx + 2
                                        s = 0
                                        s = s + 1
                                        continue 
                                    call _1221.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas 350000 wei
                                        args 0, _1185, _1254
                                else:
                                    _1186 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    if idx >= mem[ceil32(('cd', 100).length) + (32 * _53 + 1) + 160]:
                                        revert with 'NH{q', 50
                                    _1222 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _53 + 1) + 192]
                                    if 2 > !idx:
                                        revert with 'NH{q', 17
                                    if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _53 + 1) + 160]:
                                        revert with 'NH{q', 50
                                    _1255 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _53 + 1) + 192]
                                    _1267 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_1267 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                    mem[_1267 + 36] = _1186
                                    mem[_1267 + 68] = 0
                                    mem[_1267 + 100] = _1255
                                    mem[_1267 + 132] = 128
                                    t = 0
                                    while t < mem[_1267] + 32:
                                        mem[t + _1267 + 164] = mem[t + _1267]
                                        t = t + 32
                                        continue 
                                    call _1222.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas 350000 wei
                                        args _1186, 0, _1255, 128, mem[_1267 + 164 len mem[_1267] + 64]
                                    if ext_call.success:
                                        if idx > -3:
                                            revert with 'NH{q', 17
                                        idx = idx + 2
                                        s = _1186
                                        s = s + 1
                                        continue 
                                    call _1222.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas 350000 wei
                                        args _1186, 0, _1255
                                revert with 'sf'
            else:
                if unknown_0x3aa99232(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require cd[4] == address(cd[4])
                    require cd[100] <= test266151307()
                    require cd[100] + 35 < calldata.size
                    require ('cd', 100).length <= test266151307()
                    require cd[100] + ('cd', 100).length + 36 <= calldata.size
                    mem[128] = ('cd', 100).length
                    mem[160 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                    mem[('cd', 100).length + 160] = 0
                    _41 = mem[160]
                    _42 = mem[(32 * mem[160] + 1) + 160]
                    mem[ceil32(('cd', 100).length) + 160 len floor32(mem[160] + 1)] = mem[160 len floor32(mem[160] + 1)]
                    mem[ceil32(('cd', 100).length) + (32 * _41 + 1) + 160 len floor32(_42 + 1)] = mem[(32 * _41 + 1) + 160 len floor32(_42 + 1)]
                    mem[64] = ceil32(('cd', 100).length) + (32 * _41 + 1) + (32 * _42 + 1) + 160
                    if 0 >= mem[ceil32(('cd', 100).length) + (32 * _41 + 1) + 160]:
                        revert with 'NH{q', 50
                    _800 = mem[ceil32(('cd', 100).length) + (32 * _41 + 1) + 192]
                    if 1 >= mem[ceil32(('cd', 100).length) + (32 * _41 + 1) + 160]:
                        revert with 'NH{q', 50
                    _815 = mem[ceil32(('cd', 100).length) + (32 * _41 + 1) + 224]
                    if 0 >= Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[('cd', 100).length + 192 len -('cd', 100).length + ceil32(('cd', 100).length)]:
                        revert with 'NH{q', 50
                    mem[ceil32(('cd', 100).length) + (32 * _41 + 1) + (32 * _42 + 1) + 160] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
                    mem[ceil32(('cd', 100).length) + (32 * _41 + 1) + (32 * _42 + 1) + 164] = _815
                    mem[ceil32(('cd', 100).length) + (32 * _41 + 1) + (32 * _42 + 1) + 196] = mem[ceil32(('cd', 100).length) + 192]
                    call _800.0xa9059cbb with:
                         gas 300000 wei
                        args _815, mem[ceil32(('cd', 100).length) + 192]
                    if not ext_call.success:
                        revert with 0, 'tf'
                    _863 = mem[ceil32(('cd', 100).length) + (32 * _41 + 1) + 160]
                    if mem[ceil32(('cd', 100).length) + (32 * _41 + 1) + 160] < 2:
                        revert with 'NH{q', 17
                    idx = 1
                    s = 0
                    s = 0
                    while idx < _863 - 2:
                        if 1 > !idx:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[ceil32(('cd', 100).length) + (32 * _41 + 1) + 160]:
                            revert with 'NH{q', 50
                        if idx < 1:
                            revert with 'NH{q', 17
                        if idx - 1 >= mem[ceil32(('cd', 100).length) + (32 * _41 + 1) + 160]:
                            revert with 'NH{q', 50
                        if 1 > !s:
                            revert with 'NH{q', 17
                        if s + 1 >= mem[ceil32(('cd', 100).length) + 160]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx - 1) + ceil32(('cd', 100).length) + (32 * _41 + 1) + 204 len 20] < mem[(32 * idx + 1) + ceil32(('cd', 100).length) + (32 * _41 + 1) + 204 len 20]:
                            _1187 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                            if s == -1:
                                revert with 'NH{q', 17
                            if idx >= mem[ceil32(('cd', 100).length) + (32 * _41 + 1) + 160]:
                                revert with 'NH{q', 50
                            _1223 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _41 + 1) + 192]
                            if 2 > !idx:
                                revert with 'NH{q', 17
                            if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _41 + 1) + 160]:
                                revert with 'NH{q', 50
                            _1256 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _41 + 1) + 192]
                            _1268 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1268 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                            mem[_1268 + 36] = 0
                            mem[_1268 + 68] = _1187
                            mem[_1268 + 100] = _1256
                            mem[_1268 + 132] = 128
                            t = 0
                            while t < mem[_1268] + 32:
                                mem[t + _1268 + 164] = mem[t + _1268]
                                t = t + 32
                                continue 
                            call _1223.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas 350000 wei
                                args 0, _1187, _1256, 128, mem[_1268 + 164 len mem[_1268] + 64]
                            if ext_call.success:
                                if idx > -3:
                                    revert with 'NH{q', 17
                                idx = idx + 2
                                s = 0
                                s = s + 1
                                continue 
                            call _1223.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas 350000 wei
                                args 0, _1187, _1256
                        else:
                            _1188 = mem[(32 * s + 1) + ceil32(('cd', 100).length) + 192]
                            if s == -1:
                                revert with 'NH{q', 17
                            if idx >= mem[ceil32(('cd', 100).length) + (32 * _41 + 1) + 160]:
                                revert with 'NH{q', 50
                            _1224 = mem[(32 * idx) + ceil32(('cd', 100).length) + (32 * _41 + 1) + 192]
                            if 2 > !idx:
                                revert with 'NH{q', 17
                            if idx + 2 >= mem[ceil32(('cd', 100).length) + (32 * _41 + 1) + 160]:
                                revert with 'NH{q', 50
                            _1257 = mem[(32 * idx + 2) + ceil32(('cd', 100).length) + (32 * _41 + 1) + 192]
                            _1269 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1269 + 32] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                            mem[_1269 + 36] = _1188
                            mem[_1269 + 68] = 0
                            mem[_1269 + 100] = _1257
                            mem[_1269 + 132] = 128
                            t = 0
                            while t < mem[_1269] + 32:
                                mem[t + _1269 + 164] = mem[t + _1269]
                                t = t + 32
                                continue 
                            call _1224.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas 350000 wei
                                args _1188, 0, _1257, 128, mem[_1269 + 164 len mem[_1269] + 64]
                            if ext_call.success:
                                if idx > -3:
                                    revert with 'NH{q', 17
                                idx = idx + 2
                                s = _1188
                                s = s + 1
                                continue 
                            call _1224.swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas 350000 wei
                                args _1188, 0, _1257
                        revert with 'sf'
                else:
                    if unknown_0x3c046960(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] <= test266151307()
                        require cd[4] + 35 < calldata.size
                        if ('cd', 4).length > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = ceil32(32 * ('cd', 4).length) + 129
                        mem[128] = ('cd', 4).length
                        require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                        idx = 0
                        s = cd[4] + 36
                        t = 160
                        while idx < ('cd', 4).length:
                            require cd[s] == address(cd[s])
                            mem[t] = cd[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[0] = msg.sender
                        mem[32] = 4
                        if not stor4[msg.sender]:
                            revert with 0, 'Caller not in whiteList'
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= mem[128]:
                                revert with 'NH{q', 50
                            _785 = mem[(32 * idx) + 160]
                            mem[mem[64] + 4] = stor2
                            mem[mem[64] + 36] = cd[36]
                            require ext_code.size(address(_785))
                            call address(_785).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor2, cd[36]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _817 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_817] == bool(mem[_817])
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                    else:
                        if unknown_0x4c9a1fb8(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 96
                            require cd[4] <= test266151307()
                            require cd[4] + 35 < calldata.size
                            if ('cd', 4).length > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                                revert with 'NH{q', 65
                            mem[128] = ('cd', 4).length
                            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                            idx = 0
                            s = cd[4] + 36
                            t = 160
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
                                revert with 'NH{q', 65
                            if ceil32(32 * ('cd', 36).length) + 130 < 129 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 > test266151307():
                                revert with 'NH{q', 65
                            mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
                            mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 36).length
                            require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                            s = cd[36] + 36
                            t = ceil32(32 * ('cd', 4).length) + 161
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
                                if idx >= mem[128]:
                                    revert with 'NH{q', 50
                                _1112 = mem[(32 * idx) + 160]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_1112))
                                staticcall address(_1112).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1125 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1133 = mem[_1125]
                                if idx >= mem[128]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + 172 len 20] != stor1:
                                    if not ('cd', 36).length:
                                        revert with 'NH{q', 18
                                    s = 0
                                    while s < ('cd', 36).length:
                                        if s >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                            revert with 'NH{q', 50
                                        mem[mem[64] + 4] = mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 173 len 20]
                                        mem[mem[64] + 36] = _1133 / ('cd', 36).length
                                        require ext_code.size(address(_1112))
                                        call address(_1112).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _1133 / ('cd', 36).length
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1410 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1410] == bool(mem[_1410])
                                        if s == -1:
                                            revert with 'NH{q', 17
                                        s = s + 1
                                        continue 
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = _1133 / ('cd', 36).length
                                    continue 
                                if mem[_1125] < cd[68]:
                                    revert with 'NH{q', 17
                                if not ('cd', 36).length:
                                    revert with 'NH{q', 18
                                s = 0
                                while s < ('cd', 36).length:
                                    if s >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                        revert with 'NH{q', 50
                                    mem[mem[64] + 4] = mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 173 len 20]
                                    mem[mem[64] + 36] = _1133 - cd[68] / ('cd', 36).length
                                    require ext_code.size(address(_1112))
                                    call address(_1112).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _1133 - cd[68] / ('cd', 36).length
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1411 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1411] == bool(mem[_1411])
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    s = s + 1
                                    continue 
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = _1133 - cd[68] / ('cd', 36).length
                                continue 
                            if eth.balance(this.address):
                                if not ('cd', 36).length:
                                    revert with 'NH{q', 18
                                idx = 0
                                while idx < ('cd', 36).length:
                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                        revert with 'NH{q', 50
                                    call mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 173 len 20] with:
                                       value eth.balance(this.address) / ('cd', 36).length wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    continue 
                        else:
                            if unknown_0x6ecd2fb7(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 160
                                require cd[4] <= test266151307()
                                require cd[4] + 35 < calldata.size
                                if ('cd', 4).length > test266151307():
                                    revert with 'NH{q', 65
                                if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                                    revert with 'NH{q', 65
                                mem[128] = ('cd', 4).length
                                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                                idx = 0
                                s = cd[4] + 36
                                t = 160
                                while idx < ('cd', 4).length:
                                    require cd[s] == address(cd[s])
                                    mem[t] = cd[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require cd[36] <= test266151307()
                                require cd[36] + 35 < calldata.size
                                if ('cd', 36).length > test266151307():
                                    revert with 'NH{q', 65
                                if ceil32(32 * ('cd', 36).length) + 130 < 129 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 > test266151307():
                                    revert with 'NH{q', 65
                                mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 36).length
                                require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                                idx = 0
                                s = cd[36] + 36
                                t = ceil32(32 * ('cd', 4).length) + 161
                                while idx < ('cd', 36).length:
                                    mem[t] = cd[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require cd[100] <= test266151307()
                                require cd[100] + 35 < calldata.size
                                if ('cd', 100).length > test266151307():
                                    revert with 'NH{q', 65
                                if ceil32(32 * ('cd', 100).length) + 131 < 130 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131 > test266151307():
                                    revert with 'NH{q', 65
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = ('cd', 100).length
                                require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
                                idx = 0
                                s = cd[100] + 36
                                t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162
                                while idx < ('cd', 100).length:
                                    mem[t] = cd[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require cd[132] == bool(cd[132])
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131] = ('cd', 36).length + 1
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 163] = cd[68]
                                mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + 131
                                s = 0
                                s = 0
                                s = 0
                                idx = 32
                                while idx < 32 * ('cd', 4).length:
                                    staticcall mem[idx + 160].getReserves() with:
                                            gas 15000 wei
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + 131 len 64] = ext_call.return_data[0 len 64]
                                    if mem[idx + 128] <= mem[idx + 192]:
                                        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 163] * mem[ceil32(32 * ('cd', 4).length) + s + 161] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 163] * mem[ceil32(32 * ('cd', 4).length) + s + 161]) < mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 162]:
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 195] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 163] * mem[ceil32(32 * ('cd', 4).length) + s + 161] * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 163] * mem[ceil32(32 * ('cd', 4).length) + s + 161])
                                        s = ext_call.return_data[32]
                                        s = ext_call.return_data[0]
                                        s = s + 32
                                        idx = idx + 64
                                        continue 
                                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 163] * mem[ceil32(32 * ('cd', 4).length) + s + 161] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 163] * mem[ceil32(32 * ('cd', 4).length) + s + 161]) < mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + s + 162]:
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 195] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 163] * mem[ceil32(32 * ('cd', 4).length) + s + 161] * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + s + 163] * mem[ceil32(32 * ('cd', 4).length) + s + 161])
                                    s = ext_call.return_data[0]
                                    s = ext_call.return_data[32]
                                    s = s + 32
                                    idx = idx + 64
                                    continue 
                                if idx < 9999:
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + 163 len floor32(('cd', 36).length + 2)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131 len floor32(('cd', 36).length + 2)]
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length + 2) + 163 len floor32(('cd', 4).length + 1)] = mem[128 len floor32(('cd', 4).length + 1)]
                                    if mem[(32 * ('cd', 4).length) + 128 len ceil32(32 * ('cd', 4).length) + -(32 * ('cd', 4).length) + 1], Mask(8 * (32 * ('cd', 4).length) + -ceil32(32 * ('cd', 4).length) + 31, -(8 * (32 * ('cd', 4).length) + -ceil32(32 * ('cd', 4).length) + 31) + 256, ('cd', 36).length) >> -(8 * (32 * ('cd', 4).length) + -ceil32(32 * ('cd', 4).length) + 31) + 256 <= mem[(32 * ('cd', 4).length) + 64]:
                                        call mem[(32 * ('cd', 4).length) + 96] with:
                                           funct Mask(32, 224, sha3('swap(uint256,uint256,address,byt', 'es)')) >> 224
                                             gas 350000 wei
                                            args mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + 131], 0, this.address, 128, Mask(8 * floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 1, -(8 * floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 1) + 256, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + floor32(('cd', 36).length + 2) + 163 len (32 * ('cd', 36).length + 2) - floor32(('cd', 36).length + 2)], mem[128 len floor32(('cd', 4).length + 1)], mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length + 2) + floor32(('cd', 4).length + 1) + 163 len floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + -(32 * ('cd', 36).length + 2) + -floor32(('cd', 4).length + 1) - 31]) << (8 * floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 1) - 256, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 296 len (32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + -floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 63]
                                    else:
                                        call mem[(32 * ('cd', 4).length) + 96] with:
                                           funct Mask(32, 224, sha3('swap(uint256,uint256,address,byt', 'es)')) >> 224
                                             gas 350000 wei
                                            args 0, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + 131], this.address, 128, Mask(8 * floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 1, -(8 * floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 1) + 256, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + floor32(('cd', 36).length + 2) + 163 len (32 * ('cd', 36).length + 2) - floor32(('cd', 36).length + 2)], mem[128 len floor32(('cd', 4).length + 1)], mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length + 2) + floor32(('cd', 4).length + 1) + 163 len floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + -(32 * ('cd', 36).length + 2) + -floor32(('cd', 4).length + 1) - 31]) << (8 * floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 1) - 256, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 296 len (32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + -floor32((32 * ('cd', 36).length + 2) + (32 * ('cd', 4).length + 1) + 31) + 63]
                                    if not ext_call.success:
                                        revert with 'sf'
                                if cd[132]:
                                    require ext_code.size(stor3)
                                    if ('cd', 4).length <= 5:
                                        call stor3.free(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 4
                                    else:
                                        call stor3.free(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
}



}
