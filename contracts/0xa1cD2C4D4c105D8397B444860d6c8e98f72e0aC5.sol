contract main {




// =====================  Runtime code  =====================


#
#  - sub_535397fc(?)
#
array of struct stor0;
address treasuryAddress;
uint256 treasuryFee;
address sub_5dfb849bAddress;
uint256 sub_68bb600b;
address sub_7d3cdd60Address;
uint256 sub_cb6adbe9;
uint256 stor7;
uint256 stor8;
uint256 stor9;
address stor10;
address stor11;
array of struct stor12;
mapping of struct info;
array of struct stor14;
uint256 stor15; offset 32
uint256 totalDeposits;
address uSDCAddress;
address sub_8b8de86cAddress;
address stor18;
uint256 stor19;
address stor23;
uint256 stor24;

function getDeposits(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= stor14.length:
        revert with 0, 'Index exceed no of deposits'
    return info[stor14[arg1].field_0].field_0, info[stor14[arg1].field_0].field_256
}

function getTotalDeposits() payable {
    return totalDeposits
}

function getTreasuryFee() payable {
    return treasuryFee
}

function getInfo() payable {
    return info[address(msg.sender)].field_0, info[address(msg.sender)].field_256
}

function sub_5dfb849b(?) payable {
    return sub_5dfb849bAddress
}

function sub_68bb600b(?) payable {
    return sub_68bb600b
}

function sub_7d3cdd60(?) payable {
    return sub_7d3cdd60Address
}

function sub_8b8de86c(?) payable {
    return sub_8b8de86cAddress
}

function sub_a5be5f7a(?) payable {
    return stor12.length
}

function getUSDCAddress() payable {
    return uSDCAddress
}

function sub_cb6adbe9(?) payable {
    return sub_cb6adbe9
}

function getTreasuryAddress() payable {
    return treasuryAddress
}

function _fallback() payable {
    revert
}

function sub_a35438c5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.number < arg1:
        revert with 0, 'BlockNo: Trading not started yet'
}

function sub_29b701ea(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Block Time: Trading not started yet'
}

function sub_1ba8f8cf(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if block.number < arg1:
        revert with 0, 'BlockNo: Trading not started yet'
    if block.timestamp < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Block Time: Trading not started yet'
}

function setdevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        sub_5dfb849bAddress = arg1
    revert with 0, 'Ownable: caller is not the owner'
}

function setTreasuryAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        treasuryAddress = arg1
    revert with 0, 'Ownable: caller is not the owner'
}

function sub_f6f8399e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        sub_7d3cdd60Address = address(arg1)
    revert with 0, 'Ownable: caller is not the owner'
}

function sub_f29100d8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if arg1 >= 1000:
            revert with 0, 'Max Fee allowed is 10%'
        sub_cb6adbe9 = arg1
    revert with 0, 'Ownable: caller is not the owner'
}

function setdevFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if arg1 >= 1000:
            revert with 0, 'Max Fee allowed is 10%'
        sub_68bb600b = arg1
    revert with 0, 'Ownable: caller is not the owner'
}

function sub_c416ee2d(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        stor7 = arg1
        stor8 = arg2
        stor9 = arg3
    revert with 0, 'Ownable: caller is not the owner'
}

function setTreasuryFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if arg1 >= 1000:
            revert with 0, 'Max Fee allowed is 10%'
        treasuryFee = arg1
    revert with 0, 'Ownable: caller is not the owner'
}

function setUSDCAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if not arg1:
            revert with 0, 'USDC address cannot be 0'
        uSDCAddress = arg1
        stor10 = uSDCAddress
    revert with 0, 'Ownable: caller is not the owner'
}

function sub_6afde6ae(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if not address(arg1):
            revert with 0, 'QS address cannot be 0'
        sub_8b8de86cAddress = 0xa5e0829caced8ffdd4de3c43696c57f7d7a678ff
    revert with 0, 'Ownable: caller is not the owner'
}

function getRouters() payable {
    mem[64] = (32 * stor12.length) + 128
    mem[96] = stor12.length
    s = 128
    idx = 0
    while idx < stor12.length:
        mem[0] = 12
        _11 = mem[64]
        mem[64] = mem[64] + 64
        mem[_11] = stor12[idx].field_0
        mem[_11 + 32] = stor12[idx].field_256
        mem[s] = _11
        s = s + 32
        idx = idx + 1
        continue 
    _12 = mem[64]
    mem[mem[64]] = 32
    _13 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _13:
        _18 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_18 + 44 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _12 + (64 * _13) + -mem[64] + 64
}

function addOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
        idx = 0
        while idx < stor0.length:
            mem[0] = 0
            if stor0[idx].field_0 == arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is already the owner'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        stor0.length++
        stor0[stor0.length].field_0 = arg1
    revert with 0, 'Ownable: caller is not the owner'
}

function addRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if not arg1:
            revert with 0, 'router address cannot be 0'
        require ext_code.size(arg1)
        staticcall arg1.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[128] = ext_call.return_data[12 len 20]
        if stor12.length >= stor12.length:
            revert with 'NH{q', 50
        stor12[stor12.length].field_0 = arg1
        stor12[stor12.length].field_256 = mem[140 len 20]
    revert with 0, 'Ownable: caller is not the owner'
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor10)
    call stor10.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    s = 0
    while idx < stor14.length:
        mem[0] = 14
        if idx == -1:
            revert with 'NH{q', 17
        if stor14[idx].field_0 != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        stor14.length++
        stor14[stor14.length].field_0 = msg.sender
    if info[address(msg.sender)].field_0 > -arg1 - 1:
        revert with 'NH{q', 17
    info[address(msg.sender)].field_0 += arg1
    info[address(msg.sender)].field_256 = msg.sender
    if totalDeposits > -arg1 - 1:
        revert with 'NH{q', 17
    totalDeposits += arg1
}

function owner() payable {
    mem[64] = (32 * stor0.length) + 128
    mem[96] = stor0.length
    if not stor0.length:
        mem[(32 * stor0.length) + 128] = 32
        mem[(32 * stor0.length) + 160] = stor0.length
        idx = 0
        s = 128
        t = (32 * stor0.length) + 192
        while idx < stor0.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor0.length) + 128
           len (96 * stor0.length) + 64
    mem[128] = address(stor0.field_0)
    idx = 128
    s = 0
    while (32 * stor0.length) + 96 > idx:
        mem[idx + 32] = stor0[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor0.length) + 128] = 32
    mem[(32 * stor0.length) + 160] = stor0.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor0.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor0.length) + -mem[64] + 192
}

function sub_02a9bc50(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args treasuryAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    revert with 0, 'Ownable: caller is not the owner'
}

function getUsers() payable {
    mem[64] = (32 * stor14.length) + 128
    mem[96] = stor14.length
    if not stor14.length:
        mem[(32 * stor14.length) + 128] = 32
        mem[(32 * stor14.length) + 160] = stor14.length
        idx = 0
        s = 128
        t = (32 * stor14.length) + 192
        while idx < stor14.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor14.length) + 128
           len (96 * stor14.length) + 64
    mem[128] = address(stor14.field_0)
    idx = 128
    s = 0
    while (32 * stor14.length) + 96 > idx:
        mem[idx + 32] = stor14[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor14.length) + 128] = 32
    mem[(32 * stor14.length) + 160] = stor14.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor14.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor14.length) + -mem[64] + 192
}

function sub_9ba7ef5f(?) payable {
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(stor10)
        call stor10.0xa9059cbb with:
             gas gas_remaining wei
            args treasuryAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        totalDeposits = 0
        idx = 0
        while idx < stor14.length:
            mem[0] = stor14[idx].field_0
            mem[32] = 13
            info[stor14[idx].field_0].field_0 = 0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    revert with 0, 'Ownable: caller is not the owner'
}

function sub_c5aaa1ef(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if info[address(msg.sender)].field_256:
        require ext_code.size(stor10)
        if info[address(msg.sender)].field_0 >= arg1:
            call stor10.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if info[address(msg.sender)].field_0 < arg1:
                revert with 'NH{q', 17
            info[address(msg.sender)].field_0 -= arg1
            info[address(msg.sender)].field_256 = info[address(msg.sender)].field_256
            if totalDeposits < arg1:
                revert with 'NH{q', 17
            totalDeposits -= arg1
        else:
            call stor10.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, info[address(msg.sender)].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if info[address(msg.sender)].field_0 < info[address(msg.sender)].field_0:
                revert with 'NH{q', 17
            info[address(msg.sender)].field_0 = 0
            info[address(msg.sender)].field_256 = info[address(msg.sender)].field_256
            if totalDeposits < info[address(msg.sender)].field_0:
                revert with 'NH{q', 17
            totalDeposits -= info[address(msg.sender)].field_0
}

function distribute(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2:
        s = arg2
        idx = mem[96]
        while idx > 0:
            mem[mem[64] + 4] = msg.sender
            if s <= idx:
                mem[mem[64] + 36] = s
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _29 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_29] == bool(mem[_29])
                if idx < s:
                    revert with 'NH{q', 17
                s = s
                idx = idx - s
                continue 
            mem[mem[64] + 36] = idx
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _31 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_31] == bool(mem[_31])
            if idx < idx:
                revert with 'NH{q', 17
            s = idx
            idx = 0
            continue 
    else:
        idx = mem[96]
        while idx > 0:
            mem[mem[64] + 4] = msg.sender
            if ext_call.return_data[0] <= idx:
                mem[mem[64] + 36] = ext_call.return_data[0]
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _30 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_30] == bool(mem[_30])
                if idx < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                idx = idx - ext_call.return_data[0]
                continue 
            mem[mem[64] + 36] = idx
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _32 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_32] == bool(mem[_32])
            if idx < idx:
                revert with 'NH{q', 17
            idx = 0
            continue 
}

function sub_3bac8ef0(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 132).length) + 97 > test266151307() or floor32(('cd', 132).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = 128
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 132).length) + 101] = msg.sender
    mem[floor32(('cd', 132).length) + 133] = this.address
    mem[floor32(('cd', 132).length) + 165] = cd[4]
    require ext_code.size(stor10)
    call stor10.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[4]
    mem[floor32(('cd', 132).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    totalDeposits = cd[4]
    stor19 = cd[100]
    if block.timestamp > -601:
        revert with 'NH{q', 17
    stor24 = block.timestamp + 600
    stor23 = address(cd[36])
    if 1 >= ('cd', 132).length:
        revert with 'NH{q', 50
    stor18 = mem[172 len 20]
    if 0 >= ('cd', 132).length:
        revert with 'NH{q', 50
    _78 = mem[128]
    mem[floor32(('cd', 132).length) + ceil32(return_data.size) + 101] = address(cd[36])
    mem[floor32(('cd', 132).length) + ceil32(return_data.size) + 133] = 2777775 * 10^15 * 24 * 3600
    require ext_code.size(address(_78))
    call address(_78).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[36]), 2777775 * 10^15 * 24 * 3600
    mem[floor32(('cd', 132).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 0 >= ('cd', 132).length:
        revert with 'NH{q', 50
    if uSDCAddress == mem[140 len 20]:
        if stor19:
            mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 97] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 101] = totalDeposits
            mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 133] = 64
            mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 165] = ('cd', 132).length
            idx = 0
            s = 128
            t = floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 197
            while idx < ('cd', 132).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor23)
            staticcall stor23.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args totalDeposits, Array(len=('cd', 132).length, data=mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 197 len 32 * ('cd', 132).length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 97
            require return_data.size >= 32
            _398 = mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 97 len 4], stor15
            require mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 97 len 4], stor15 <= test266151307()
            require floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 97 len 4], stor15 + 128 < floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + return_data.size + 97
            _400 = mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 97 len 4], stor15 + 97]
            if mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 97 len 4], stor15 + 97] > test266151307():
                revert with 'NH{q', 65
            if floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 97 len 4], stor15 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 97 len 4], stor15 + 97]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 97 len 4], stor15 + 97]) + 98
            mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 97] = _400
            require _398 + (32 * _400) + 32 <= return_data.size
            idx = 0
            s = floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + _398 + 129
            t = floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 129
            while idx < _400:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if 1 >= _400:
                revert with 'NH{q', 50
            _1483 = mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 161]
            require ext_code.size(stor18)
            staticcall stor18.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1491 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1491] == mem[_1491]
            if not mem[_1491]:
                if 0 >= _400:
                    revert with 'NH{q', 50
                if mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 129] and 1 > -1 / mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 129]:
                    revert with 'NH{q', 17
                if not _1483:
                    revert with 'NH{q', 18
                if cd[68] < mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 129] / _1483:
                    revert with 0, ' MAX PRICE check failed.'
                if stor19 > totalDeposits:
                    stor19 = totalDeposits
                    if not stor19:
                        revert with 'NH{q', 18
                    idx = 0
                    s = 0
                    while idx < totalDeposits / stor19:
                        if s >= totalDeposits:
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _2819 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_2819))
                            staticcall address(_2819).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2885 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2911 = mem[_2885]
                            require mem[_2885] == mem[_2885]
                            idx = mem[_2885]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _2911 <= idx:
                                    mem[mem[64] + 36] = _2911
                                    require ext_code.size(address(_2819))
                                    call address(_2819).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2911
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4313 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4313] == bool(mem[_4313])
                                    if idx < _2911:
                                        revert with 'NH{q', 17
                                    idx = idx - _2911
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_2819))
                                call address(_2819).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4333 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4333] == bool(mem[_4333])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                        if totalDeposits < s:
                            revert with 'NH{q', 17
                        if stor19 <= totalDeposits - s:
                            _2851 = mem[64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor19
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _2929 = mem[96]
                            mem[mem[64] + 164] = mem[96]
                            t = 0
                            u = 128
                            v = mem[64] + 196
                            while t < _2929:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_2851 + 100] = this.address
                            mem[_2851 + 132] = stor24
                            require ext_code.size(stor23)
                            call stor23.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2851 + (32 * _2929) + -mem[64] + 192]
                        else:
                            if totalDeposits < s:
                                revert with 'NH{q', 17
                            stor19 = totalDeposits - s
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor19
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            t = 0
                            u = 128
                            v = mem[64] + 196
                            while t < mem[96]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor24
                            require ext_code.size(stor23)
                            call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s > -stor19 - 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + stor19
                        continue 
                    if s >= totalDeposits:
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _2793 = mem[160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_2793))
                        staticcall address(_2793).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2872 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2895 = mem[_2872]
                        require mem[_2872] == mem[_2872]
                        idx = mem[_2872]
                        while idx > 0:
                            mem[mem[64] + 4] = msg.sender
                            if _2895 <= idx:
                                mem[mem[64] + 36] = _2895
                                require ext_code.size(address(_2793))
                                call address(_2793).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2895
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4312 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4312] == bool(mem[_4312])
                                if idx < _2895:
                                    revert with 'NH{q', 17
                                idx = idx - _2895
                                continue 
                            mem[mem[64] + 36] = idx
                            require ext_code.size(address(_2793))
                            call address(_2793).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4332 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4332] == bool(mem[_4332])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                    else:
                        if totalDeposits < s:
                            revert with 'NH{q', 17
                        stor19 = totalDeposits - s
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor19
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 196
                        while idx < mem[96]:
                            mem[u] = mem[t + 12 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = stor24
                        require ext_code.size(stor23)
                        call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s > -stor19 - 1:
                            revert with 'NH{q', 17
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _4403 = mem[160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_4403))
                        staticcall address(_4403).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4461 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4475 = mem[_4461]
                        require mem[_4461] == mem[_4461]
                        idx = mem[_4461]
                        while idx > 0:
                            mem[mem[64] + 4] = msg.sender
                            if _4475 <= idx:
                                mem[mem[64] + 36] = _4475
                                require ext_code.size(address(_4403))
                                call address(_4403).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4475
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5511 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5511] == bool(mem[_5511])
                                if idx < _4475:
                                    revert with 'NH{q', 17
                                idx = idx - _4475
                                continue 
                            mem[mem[64] + 36] = idx
                            require ext_code.size(address(_4403))
                            call address(_4403).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5535 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5535] == bool(mem[_5535])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                else:
                    if not stor19:
                        revert with 'NH{q', 18
                    idx = 0
                    s = 0
                    while idx < totalDeposits / stor19:
                        if s >= totalDeposits:
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _2818 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_2818))
                            staticcall address(_2818).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2884 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2910 = mem[_2884]
                            require mem[_2884] == mem[_2884]
                            idx = mem[_2884]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _2910 <= idx:
                                    mem[mem[64] + 36] = _2910
                                    require ext_code.size(address(_2818))
                                    call address(_2818).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2910
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4311 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4311] == bool(mem[_4311])
                                    if idx < _2910:
                                        revert with 'NH{q', 17
                                    idx = idx - _2910
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_2818))
                                call address(_2818).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4331 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4331] == bool(mem[_4331])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                        if totalDeposits < s:
                            revert with 'NH{q', 17
                        if stor19 <= totalDeposits - s:
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor19
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            t = 0
                            u = 128
                            v = mem[64] + 196
                            while t < mem[96]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor24
                            require ext_code.size(stor23)
                            call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                        else:
                            if totalDeposits < s:
                                revert with 'NH{q', 17
                            stor19 = totalDeposits - s
                            _2902 = mem[64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor19
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _2964 = mem[96]
                            mem[mem[64] + 164] = mem[96]
                            t = 0
                            u = 128
                            v = mem[64] + 196
                            while t < _2964:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_2902 + 100] = this.address
                            mem[_2902 + 132] = stor24
                            require ext_code.size(stor23)
                            call stor23.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2902 + (32 * _2964) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s > -stor19 - 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + stor19
                        continue 
                    if s >= totalDeposits:
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _2792 = mem[160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_2792))
                        staticcall address(_2792).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2870 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2894 = mem[_2870]
                        require mem[_2870] == mem[_2870]
                        idx = mem[_2870]
                        while idx > 0:
                            mem[mem[64] + 4] = msg.sender
                            if _2894 <= idx:
                                mem[mem[64] + 36] = _2894
                                require ext_code.size(address(_2792))
                                call address(_2792).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2894
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4310 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4310] == bool(mem[_4310])
                                if idx < _2894:
                                    revert with 'NH{q', 17
                                idx = idx - _2894
                                continue 
                            mem[mem[64] + 36] = idx
                            require ext_code.size(address(_2792))
                            call address(_2792).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4330 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4330] == bool(mem[_4330])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                    else:
                        if totalDeposits < s:
                            revert with 'NH{q', 17
                        stor19 = totalDeposits - s
                        _2842 = mem[64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor19
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _2919 = mem[96]
                        mem[mem[64] + 164] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 196
                        while idx < _2919:
                            mem[u] = mem[t + 12 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_2842 + 100] = this.address
                        mem[_2842 + 132] = stor24
                        require ext_code.size(stor23)
                        call stor23.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2842 + (32 * _2919) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s > -stor19 - 1:
                            revert with 'NH{q', 17
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _4402 = mem[160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_4402))
                        staticcall address(_4402).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4460 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4474 = mem[_4460]
                        require mem[_4460] == mem[_4460]
                        idx = mem[_4460]
                        while idx > 0:
                            mem[mem[64] + 4] = msg.sender
                            if _4474 <= idx:
                                mem[mem[64] + 36] = _4474
                                require ext_code.size(address(_4402))
                                call address(_4402).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4474
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5510 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5510] == bool(mem[_5510])
                                if idx < _4474:
                                    revert with 'NH{q', 17
                                idx = idx - _4474
                                continue 
                            mem[mem[64] + 36] = idx
                            require ext_code.size(address(_4402))
                            call address(_4402).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5534 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5534] == bool(mem[_5534])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
            else:
                if not bool(mem[_1491] < 78) and not bool(mem[_1491] < 32):
                    s = 10
                    t = 1
                    idx = mem[_1491]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = t * s
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 'NH{q', 17
                    if 0 >= _400:
                        revert with 'NH{q', 50
                    if mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 129] and t * s > -1 / mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 129]:
                        revert with 'NH{q', 17
                    if not _1483:
                        revert with 'NH{q', 18
                    if cd[68] < mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 129] * t * s / _1483:
                        revert with 0, ' MAX PRICE check failed.'
                    if stor19 <= totalDeposits:
                        if not stor19:
                            revert with 'NH{q', 18
                        idx = 0
                        s = 0
                        while idx < totalDeposits / stor19:
                            if s >= totalDeposits:
                                if 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _4210 = mem[160]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_4210))
                                staticcall address(_4210).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4304 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4348 = mem[_4304]
                                require mem[_4304] == mem[_4304]
                                idx = mem[_4304]
                                while idx > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    if _4348 <= idx:
                                        mem[mem[64] + 36] = _4348
                                        require ext_code.size(address(_4210))
                                        call address(_4210).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, _4348
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5505 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5505] == bool(mem[_5505])
                                        if idx < _4348:
                                            revert with 'NH{q', 17
                                        idx = idx - _4348
                                        continue 
                                    mem[mem[64] + 36] = idx
                                    require ext_code.size(address(_4210))
                                    call address(_4210).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, idx
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5529 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5529] == bool(mem[_5529])
                                    if idx < idx:
                                        revert with 'NH{q', 17
                                    idx = 0
                                    continue 
                            if totalDeposits < s:
                                revert with 'NH{q', 17
                            if stor19 <= totalDeposits - s:
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor19
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = mem[96]
                                t = 0
                                u = 128
                                v = mem[64] + 196
                                while t < mem[96]:
                                    mem[v] = mem[u + 12 len 20]
                                    t = t + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = stor24
                                require ext_code.size(stor23)
                                call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                            else:
                                if totalDeposits < s:
                                    revert with 'NH{q', 17
                                stor19 = totalDeposits - s
                                _4344 = mem[64]
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor19
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _4428 = mem[96]
                                mem[mem[64] + 164] = mem[96]
                                t = 0
                                u = 128
                                v = mem[64] + 196
                                while t < _4428:
                                    mem[v] = mem[u + 12 len 20]
                                    t = t + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[_4344 + 100] = this.address
                                mem[_4344 + 132] = stor24
                                require ext_code.size(stor23)
                                call stor23.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4344 + (32 * _4428) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + stor19
                            continue 
                        if s >= totalDeposits:
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _4180 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_4180))
                            staticcall address(_4180).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4264 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4324 = mem[_4264]
                            require mem[_4264] == mem[_4264]
                            idx = mem[_4264]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _4324 <= idx:
                                    mem[mem[64] + 36] = _4324
                                    require ext_code.size(address(_4180))
                                    call address(_4180).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4324
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5504 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5504] == bool(mem[_5504])
                                    if idx < _4324:
                                        revert with 'NH{q', 17
                                    idx = idx - _4324
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_4180))
                                call address(_4180).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5528 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5528] == bool(mem[_5528])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                        else:
                            if totalDeposits < s:
                                revert with 'NH{q', 17
                            stor19 = totalDeposits - s
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor19
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 196
                            while idx < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor24
                            require ext_code.size(stor23)
                            call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _5622 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_5622))
                            staticcall address(_5622).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5690 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5718 = mem[_5690]
                            require mem[_5690] == mem[_5690]
                            idx = mem[_5690]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _5718 <= idx:
                                    mem[mem[64] + 36] = _5718
                                    require ext_code.size(address(_5622))
                                    call address(_5622).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5718
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6360 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6360] == bool(mem[_6360])
                                    if idx < _5718:
                                        revert with 'NH{q', 17
                                    idx = idx - _5718
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_5622))
                                call address(_5622).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6384 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6384] == bool(mem[_6384])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                    else:
                        stor19 = totalDeposits
                        if not stor19:
                            revert with 'NH{q', 18
                        idx = 0
                        s = 0
                        while idx < totalDeposits / stor19:
                            if s >= totalDeposits:
                                if 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _4211 = mem[160]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_4211))
                                staticcall address(_4211).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4305 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4349 = mem[_4305]
                                require mem[_4305] == mem[_4305]
                                idx = mem[_4305]
                                while idx > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    if _4349 <= idx:
                                        mem[mem[64] + 36] = _4349
                                        require ext_code.size(address(_4211))
                                        call address(_4211).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, _4349
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5507 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5507] == bool(mem[_5507])
                                        if idx < _4349:
                                            revert with 'NH{q', 17
                                        idx = idx - _4349
                                        continue 
                                    mem[mem[64] + 36] = idx
                                    require ext_code.size(address(_4211))
                                    call address(_4211).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, idx
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5531 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5531] == bool(mem[_5531])
                                    if idx < idx:
                                        revert with 'NH{q', 17
                                    idx = 0
                                    continue 
                            if totalDeposits < s:
                                revert with 'NH{q', 17
                            if stor19 <= totalDeposits - s:
                                _4231 = mem[64]
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor19
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _4389 = mem[96]
                                mem[mem[64] + 164] = mem[96]
                                t = 0
                                u = 128
                                v = mem[64] + 196
                                while t < _4389:
                                    mem[v] = mem[u + 12 len 20]
                                    t = t + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[_4231 + 100] = this.address
                                mem[_4231 + 132] = stor24
                                require ext_code.size(stor23)
                                call stor23.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4231 + (32 * _4389) + -mem[64] + 192]
                            else:
                                if totalDeposits < s:
                                    revert with 'NH{q', 17
                                stor19 = totalDeposits - s
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor19
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = mem[96]
                                t = 0
                                u = 128
                                v = mem[64] + 196
                                while t < mem[96]:
                                    mem[v] = mem[u + 12 len 20]
                                    t = t + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = stor24
                                require ext_code.size(stor23)
                                call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + stor19
                            continue 
                        if s >= totalDeposits:
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _4181 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_4181))
                            staticcall address(_4181).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4266 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4325 = mem[_4266]
                            require mem[_4266] == mem[_4266]
                            idx = mem[_4266]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _4325 <= idx:
                                    mem[mem[64] + 36] = _4325
                                    require ext_code.size(address(_4181))
                                    call address(_4181).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4325
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5506 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5506] == bool(mem[_5506])
                                    if idx < _4325:
                                        revert with 'NH{q', 17
                                    idx = idx - _4325
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_4181))
                                call address(_4181).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5530 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5530] == bool(mem[_5530])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                        else:
                            if totalDeposits < s:
                                revert with 'NH{q', 17
                            stor19 = totalDeposits - s
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor19
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 196
                            while idx < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor24
                            require ext_code.size(stor23)
                            call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _5623 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_5623))
                            staticcall address(_5623).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5691 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5719 = mem[_5691]
                            require mem[_5691] == mem[_5691]
                            idx = mem[_5691]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _5719 <= idx:
                                    mem[mem[64] + 36] = _5719
                                    require ext_code.size(address(_5623))
                                    call address(_5623).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5719
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6361 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6361] == bool(mem[_6361])
                                    if idx < _5719:
                                        revert with 'NH{q', 17
                                    idx = idx - _5719
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_5623))
                                call address(_5623).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6385 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6385] == bool(mem[_6385])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                else:
                    if 10^mem[_1491] > -1:
                        revert with 'NH{q', 17
                    if 0 >= _400:
                        revert with 'NH{q', 50
                    if mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 129] and 10^mem[_1491] > -1 / mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 129]:
                        revert with 'NH{q', 17
                    if not _1483:
                        revert with 'NH{q', 18
                    if cd[68] < mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 129] * 10^mem[_1491] / _1483:
                        revert with 0, ' MAX PRICE check failed.'
                    if stor19 <= totalDeposits:
                        if not stor19:
                            revert with 'NH{q', 18
                        idx = 0
                        s = 0
                        while idx < totalDeposits / stor19:
                            if s >= totalDeposits:
                                if 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _2816 = mem[160]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_2816))
                                staticcall address(_2816).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2882 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2908 = mem[_2882]
                                require mem[_2882] == mem[_2882]
                                idx = mem[_2882]
                                while idx > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    if _2908 <= idx:
                                        mem[mem[64] + 36] = _2908
                                        require ext_code.size(address(_2816))
                                        call address(_2816).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, _2908
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4307 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4307] == bool(mem[_4307])
                                        if idx < _2908:
                                            revert with 'NH{q', 17
                                        idx = idx - _2908
                                        continue 
                                    mem[mem[64] + 36] = idx
                                    require ext_code.size(address(_2816))
                                    call address(_2816).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, idx
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4327 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4327] == bool(mem[_4327])
                                    if idx < idx:
                                        revert with 'NH{q', 17
                                    idx = 0
                                    continue 
                            if totalDeposits < s:
                                revert with 'NH{q', 17
                            if stor19 <= totalDeposits - s:
                                _2848 = mem[64]
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor19
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _2926 = mem[96]
                                mem[mem[64] + 164] = mem[96]
                                t = 0
                                u = 128
                                v = mem[64] + 196
                                while t < _2926:
                                    mem[v] = mem[u + 12 len 20]
                                    t = t + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[_2848 + 100] = this.address
                                mem[_2848 + 132] = stor24
                                require ext_code.size(stor23)
                                call stor23.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2848 + (32 * _2926) + -mem[64] + 192]
                            else:
                                if totalDeposits < s:
                                    revert with 'NH{q', 17
                                stor19 = totalDeposits - s
                                _2900 = mem[64]
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor19
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _2962 = mem[96]
                                mem[mem[64] + 164] = mem[96]
                                t = 0
                                u = 128
                                v = mem[64] + 196
                                while t < _2962:
                                    mem[v] = mem[u + 12 len 20]
                                    t = t + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[_2900 + 100] = this.address
                                mem[_2900 + 132] = stor24
                                require ext_code.size(stor23)
                                call stor23.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2900 + (32 * _2962) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + stor19
                            continue 
                        if s >= totalDeposits:
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _2790 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_2790))
                            staticcall address(_2790).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2866 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2892 = mem[_2866]
                            require mem[_2866] == mem[_2866]
                            idx = mem[_2866]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _2892 <= idx:
                                    mem[mem[64] + 36] = _2892
                                    require ext_code.size(address(_2790))
                                    call address(_2790).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2892
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4306 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4306] == bool(mem[_4306])
                                    if idx < _2892:
                                        revert with 'NH{q', 17
                                    idx = idx - _2892
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_2790))
                                call address(_2790).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4326 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4326] == bool(mem[_4326])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                        else:
                            if totalDeposits < s:
                                revert with 'NH{q', 17
                            stor19 = totalDeposits - s
                            _2840 = mem[64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor19
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _2917 = mem[96]
                            mem[mem[64] + 164] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 196
                            while idx < _2917:
                                mem[u] = mem[t + 12 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_2840 + 100] = this.address
                            mem[_2840 + 132] = stor24
                            require ext_code.size(stor23)
                            call stor23.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2840 + (32 * _2917) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _4400 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_4400))
                            staticcall address(_4400).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4458 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4472 = mem[_4458]
                            require mem[_4458] == mem[_4458]
                            idx = mem[_4458]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _4472 <= idx:
                                    mem[mem[64] + 36] = _4472
                                    require ext_code.size(address(_4400))
                                    call address(_4400).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4472
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5508 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5508] == bool(mem[_5508])
                                    if idx < _4472:
                                        revert with 'NH{q', 17
                                    idx = idx - _4472
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_4400))
                                call address(_4400).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5532 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5532] == bool(mem[_5532])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                    else:
                        stor19 = totalDeposits
                        if not stor19:
                            revert with 'NH{q', 18
                        idx = 0
                        s = 0
                        while idx < totalDeposits / stor19:
                            if s >= totalDeposits:
                                if 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _2817 = mem[160]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_2817))
                                staticcall address(_2817).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2883 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2909 = mem[_2883]
                                require mem[_2883] == mem[_2883]
                                idx = mem[_2883]
                                while idx > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    if _2909 <= idx:
                                        mem[mem[64] + 36] = _2909
                                        require ext_code.size(address(_2817))
                                        call address(_2817).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, _2909
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4309 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4309] == bool(mem[_4309])
                                        if idx < _2909:
                                            revert with 'NH{q', 17
                                        idx = idx - _2909
                                        continue 
                                    mem[mem[64] + 36] = idx
                                    require ext_code.size(address(_2817))
                                    call address(_2817).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, idx
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4329 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4329] == bool(mem[_4329])
                                    if idx < idx:
                                        revert with 'NH{q', 17
                                    idx = 0
                                    continue 
                            if totalDeposits < s:
                                revert with 'NH{q', 17
                            if stor19 > totalDeposits - s:
                                if totalDeposits < s:
                                    revert with 'NH{q', 17
                                stor19 = totalDeposits - s
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor19
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            t = 0
                            u = 128
                            v = mem[64] + 196
                            while t < mem[96]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor24
                            require ext_code.size(stor23)
                            call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + stor19
                            continue 
                        if s >= totalDeposits:
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _2791 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_2791))
                            staticcall address(_2791).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2868 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2893 = mem[_2868]
                            require mem[_2868] == mem[_2868]
                            idx = mem[_2868]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _2893 <= idx:
                                    mem[mem[64] + 36] = _2893
                                    require ext_code.size(address(_2791))
                                    call address(_2791).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2893
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4308 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4308] == bool(mem[_4308])
                                    if idx < _2893:
                                        revert with 'NH{q', 17
                                    idx = idx - _2893
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_2791))
                                call address(_2791).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4328 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4328] == bool(mem[_4328])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                        else:
                            if totalDeposits < s:
                                revert with 'NH{q', 17
                            stor19 = totalDeposits - s
                            _2841 = mem[64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor19
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _2918 = mem[96]
                            mem[mem[64] + 164] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 196
                            while idx < _2918:
                                mem[u] = mem[t + 12 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_2841 + 100] = this.address
                            mem[_2841 + 132] = stor24
                            require ext_code.size(stor23)
                            call stor23.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2841 + (32 * _2918) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _4401 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_4401))
                            staticcall address(_4401).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4459 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4473 = mem[_4459]
                            require mem[_4459] == mem[_4459]
                            idx = mem[_4459]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _4473 <= idx:
                                    mem[mem[64] + 36] = _4473
                                    require ext_code.size(address(_4401))
                                    call address(_4401).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4473
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5509 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5509] == bool(mem[_5509])
                                    if idx < _4473:
                                        revert with 'NH{q', 17
                                    idx = idx - _4473
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_4401))
                                call address(_4401).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5533 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5533] == bool(mem[_5533])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
        else:
            stor19 = totalDeposits
            mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 97] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 101] = totalDeposits
            mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 133] = 64
            mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 165] = ('cd', 132).length
            idx = 0
            s = 128
            t = floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 197
            while idx < ('cd', 132).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor23)
            staticcall stor23.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args totalDeposits, Array(len=('cd', 132).length, data=mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 197 len 32 * ('cd', 132).length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 97
            require return_data.size >= 32
            _399 = mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 97 len 4], stor15
            require mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 97 len 4], stor15 <= test266151307()
            require floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 97 len 4], stor15 + 128 < floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + return_data.size + 97
            _401 = mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 97 len 4], stor15 + 97]
            if mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 97 len 4], stor15 + 97] > test266151307():
                revert with 'NH{q', 65
            if floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 97 len 4], stor15 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 97 len 4], stor15 + 97]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 97 len 4], stor15 + 97]) + 98
            mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 97] = _401
            require _399 + (32 * _401) + 32 <= return_data.size
            idx = 0
            s = floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + _399 + 129
            t = floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 129
            while idx < _401:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if 1 >= _401:
                revert with 'NH{q', 50
            _1486 = mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 161]
            require ext_code.size(stor18)
            staticcall stor18.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1492 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1492] == mem[_1492]
            if not mem[_1492]:
                if 0 >= _401:
                    revert with 'NH{q', 50
                if mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 129] and 1 > -1 / mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 129]:
                    revert with 'NH{q', 17
                if not _1486:
                    revert with 'NH{q', 18
                if cd[68] < mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 129] / _1486:
                    revert with 0, ' MAX PRICE check failed.'
                if stor19 <= totalDeposits:
                    if not stor19:
                        revert with 'NH{q', 18
                    idx = 0
                    s = 0
                    while idx < totalDeposits / stor19:
                        if s >= totalDeposits:
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _2822 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_2822))
                            staticcall address(_2822).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2888 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2914 = mem[_2888]
                            require mem[_2888] == mem[_2888]
                            idx = mem[_2888]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _2914 <= idx:
                                    mem[mem[64] + 36] = _2914
                                    require ext_code.size(address(_2822))
                                    call address(_2822).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2914
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4321 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4321] == bool(mem[_4321])
                                    if idx < _2914:
                                        revert with 'NH{q', 17
                                    idx = idx - _2914
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_2822))
                                call address(_2822).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4341 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4341] == bool(mem[_4341])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                        if totalDeposits < s:
                            revert with 'NH{q', 17
                        if stor19 <= totalDeposits - s:
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor19
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            t = 0
                            u = 128
                            v = mem[64] + 196
                            while t < mem[96]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor24
                            require ext_code.size(stor23)
                            call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                        else:
                            if totalDeposits < s:
                                revert with 'NH{q', 17
                            stor19 = totalDeposits - s
                            _2906 = mem[64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor19
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _2968 = mem[96]
                            mem[mem[64] + 164] = mem[96]
                            t = 0
                            u = 128
                            v = mem[64] + 196
                            while t < _2968:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_2906 + 100] = this.address
                            mem[_2906 + 132] = stor24
                            require ext_code.size(stor23)
                            call stor23.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2906 + (32 * _2968) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s > -stor19 - 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + stor19
                        continue 
                    if s >= totalDeposits:
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _2796 = mem[160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_2796))
                        staticcall address(_2796).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2878 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2898 = mem[_2878]
                        require mem[_2878] == mem[_2878]
                        idx = mem[_2878]
                        while idx > 0:
                            mem[mem[64] + 4] = msg.sender
                            if _2898 <= idx:
                                mem[mem[64] + 36] = _2898
                                require ext_code.size(address(_2796))
                                call address(_2796).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2898
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4320 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4320] == bool(mem[_4320])
                                if idx < _2898:
                                    revert with 'NH{q', 17
                                idx = idx - _2898
                                continue 
                            mem[mem[64] + 36] = idx
                            require ext_code.size(address(_2796))
                            call address(_2796).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4340 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4340] == bool(mem[_4340])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                    else:
                        if totalDeposits < s:
                            revert with 'NH{q', 17
                        stor19 = totalDeposits - s
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor19
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 196
                        while idx < mem[96]:
                            mem[u] = mem[t + 12 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = stor24
                        require ext_code.size(stor23)
                        call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s > -stor19 - 1:
                            revert with 'NH{q', 17
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _4406 = mem[160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_4406))
                        staticcall address(_4406).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4466 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4480 = mem[_4466]
                        require mem[_4466] == mem[_4466]
                        idx = mem[_4466]
                        while idx > 0:
                            mem[mem[64] + 4] = msg.sender
                            if _4480 <= idx:
                                mem[mem[64] + 36] = _4480
                                require ext_code.size(address(_4406))
                                call address(_4406).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4480
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5518 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5518] == bool(mem[_5518])
                                if idx < _4480:
                                    revert with 'NH{q', 17
                                idx = idx - _4480
                                continue 
                            mem[mem[64] + 36] = idx
                            require ext_code.size(address(_4406))
                            call address(_4406).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5542 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5542] == bool(mem[_5542])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                else:
                    stor19 = totalDeposits
                    if not stor19:
                        revert with 'NH{q', 18
                    idx = 0
                    s = 0
                    while idx < totalDeposits / stor19:
                        if s >= totalDeposits:
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _2823 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_2823))
                            staticcall address(_2823).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2889 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2915 = mem[_2889]
                            require mem[_2889] == mem[_2889]
                            idx = mem[_2889]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _2915 <= idx:
                                    mem[mem[64] + 36] = _2915
                                    require ext_code.size(address(_2823))
                                    call address(_2823).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2915
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4323 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4323] == bool(mem[_4323])
                                    if idx < _2915:
                                        revert with 'NH{q', 17
                                    idx = idx - _2915
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_2823))
                                call address(_2823).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4343 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4343] == bool(mem[_4343])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                        if totalDeposits < s:
                            revert with 'NH{q', 17
                        if stor19 <= totalDeposits - s:
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor19
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            t = 0
                            u = 128
                            v = mem[64] + 196
                            while t < mem[96]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor24
                            require ext_code.size(stor23)
                            call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                        else:
                            if totalDeposits < s:
                                revert with 'NH{q', 17
                            stor19 = totalDeposits - s
                            _2907 = mem[64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor19
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _2969 = mem[96]
                            mem[mem[64] + 164] = mem[96]
                            t = 0
                            u = 128
                            v = mem[64] + 196
                            while t < _2969:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_2907 + 100] = this.address
                            mem[_2907 + 132] = stor24
                            require ext_code.size(stor23)
                            call stor23.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2907 + (32 * _2969) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s > -stor19 - 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + stor19
                        continue 
                    if s >= totalDeposits:
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _2797 = mem[160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_2797))
                        staticcall address(_2797).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2880 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2899 = mem[_2880]
                        require mem[_2880] == mem[_2880]
                        idx = mem[_2880]
                        while idx > 0:
                            mem[mem[64] + 4] = msg.sender
                            if _2899 <= idx:
                                mem[mem[64] + 36] = _2899
                                require ext_code.size(address(_2797))
                                call address(_2797).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2899
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4322 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4322] == bool(mem[_4322])
                                if idx < _2899:
                                    revert with 'NH{q', 17
                                idx = idx - _2899
                                continue 
                            mem[mem[64] + 36] = idx
                            require ext_code.size(address(_2797))
                            call address(_2797).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4342 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4342] == bool(mem[_4342])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                    else:
                        if totalDeposits < s:
                            revert with 'NH{q', 17
                        stor19 = totalDeposits - s
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor19
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 196
                        while idx < mem[96]:
                            mem[u] = mem[t + 12 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = stor24
                        require ext_code.size(stor23)
                        call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s > -stor19 - 1:
                            revert with 'NH{q', 17
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _4407 = mem[160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_4407))
                        staticcall address(_4407).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4467 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4481 = mem[_4467]
                        require mem[_4467] == mem[_4467]
                        idx = mem[_4467]
                        while idx > 0:
                            mem[mem[64] + 4] = msg.sender
                            if _4481 <= idx:
                                mem[mem[64] + 36] = _4481
                                require ext_code.size(address(_4407))
                                call address(_4407).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _4481
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5519 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5519] == bool(mem[_5519])
                                if idx < _4481:
                                    revert with 'NH{q', 17
                                idx = idx - _4481
                                continue 
                            mem[mem[64] + 36] = idx
                            require ext_code.size(address(_4407))
                            call address(_4407).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5543 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5543] == bool(mem[_5543])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
            else:
                if not bool(mem[_1492] < 78) and not bool(mem[_1492] < 32):
                    s = 10
                    t = 1
                    idx = mem[_1492]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = t * s
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 'NH{q', 17
                    if 0 >= _401:
                        revert with 'NH{q', 50
                    if mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 129] and t * s > -1 / mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 129]:
                        revert with 'NH{q', 17
                    if not _1486:
                        revert with 'NH{q', 18
                    if cd[68] < mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 129] * t * s / _1486:
                        revert with 0, ' MAX PRICE check failed.'
                    if stor19 > totalDeposits:
                        stor19 = totalDeposits
                        if not stor19:
                            revert with 'NH{q', 18
                        idx = 0
                        s = 0
                        while idx < totalDeposits / stor19:
                            if s >= totalDeposits:
                                if 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _4213 = mem[160]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_4213))
                                staticcall address(_4213).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4315 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4359 = mem[_4315]
                                require mem[_4315] == mem[_4315]
                                idx = mem[_4315]
                                while idx > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    if _4359 <= idx:
                                        mem[mem[64] + 36] = _4359
                                        require ext_code.size(address(_4213))
                                        call address(_4213).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, _4359
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5515 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5515] == bool(mem[_5515])
                                        if idx < _4359:
                                            revert with 'NH{q', 17
                                        idx = idx - _4359
                                        continue 
                                    mem[mem[64] + 36] = idx
                                    require ext_code.size(address(_4213))
                                    call address(_4213).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, idx
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5539 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5539] == bool(mem[_5539])
                                    if idx < idx:
                                        revert with 'NH{q', 17
                                    idx = 0
                                    continue 
                            if totalDeposits < s:
                                revert with 'NH{q', 17
                            if stor19 > totalDeposits - s:
                                if totalDeposits < s:
                                    revert with 'NH{q', 17
                                stor19 = totalDeposits - s
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor19
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            t = 0
                            u = 128
                            v = mem[64] + 196
                            while t < mem[96]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor24
                            require ext_code.size(stor23)
                            call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + stor19
                            continue 
                        if s >= totalDeposits:
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _4191 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_4191))
                            staticcall address(_4191).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4278 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4335 = mem[_4278]
                            require mem[_4278] == mem[_4278]
                            idx = mem[_4278]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _4335 <= idx:
                                    mem[mem[64] + 36] = _4335
                                    require ext_code.size(address(_4191))
                                    call address(_4191).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4335
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5514 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5514] == bool(mem[_5514])
                                    if idx < _4335:
                                        revert with 'NH{q', 17
                                    idx = idx - _4335
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_4191))
                                call address(_4191).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5538 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5538] == bool(mem[_5538])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                        else:
                            if totalDeposits < s:
                                revert with 'NH{q', 17
                            stor19 = totalDeposits - s
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor19
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 196
                            while idx < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor24
                            require ext_code.size(stor23)
                            call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _5625 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_5625))
                            staticcall address(_5625).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5693 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5721 = mem[_5693]
                            require mem[_5693] == mem[_5693]
                            idx = mem[_5693]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _5721 <= idx:
                                    mem[mem[64] + 36] = _5721
                                    require ext_code.size(address(_5625))
                                    call address(_5625).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5721
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6363 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6363] == bool(mem[_6363])
                                    if idx < _5721:
                                        revert with 'NH{q', 17
                                    idx = idx - _5721
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_5625))
                                call address(_5625).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6387 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6387] == bool(mem[_6387])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                    else:
                        if not stor19:
                            revert with 'NH{q', 18
                        idx = 0
                        s = 0
                        while idx < totalDeposits / stor19:
                            if s >= totalDeposits:
                                if 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _4212 = mem[160]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_4212))
                                staticcall address(_4212).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4314 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4358 = mem[_4314]
                                require mem[_4314] == mem[_4314]
                                idx = mem[_4314]
                                while idx > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    if _4358 <= idx:
                                        mem[mem[64] + 36] = _4358
                                        require ext_code.size(address(_4212))
                                        call address(_4212).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, _4358
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5513 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5513] == bool(mem[_5513])
                                        if idx < _4358:
                                            revert with 'NH{q', 17
                                        idx = idx - _4358
                                        continue 
                                    mem[mem[64] + 36] = idx
                                    require ext_code.size(address(_4212))
                                    call address(_4212).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, idx
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5537 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5537] == bool(mem[_5537])
                                    if idx < idx:
                                        revert with 'NH{q', 17
                                    idx = 0
                                    continue 
                            if totalDeposits < s:
                                revert with 'NH{q', 17
                            if stor19 <= totalDeposits - s:
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor19
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = mem[96]
                                t = 0
                                u = 128
                                v = mem[64] + 196
                                while t < mem[96]:
                                    mem[v] = mem[u + 12 len 20]
                                    t = t + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = stor24
                                require ext_code.size(stor23)
                                call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                            else:
                                if totalDeposits < s:
                                    revert with 'NH{q', 17
                                stor19 = totalDeposits - s
                                _4346 = mem[64]
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor19
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _4430 = mem[96]
                                mem[mem[64] + 164] = mem[96]
                                t = 0
                                u = 128
                                v = mem[64] + 196
                                while t < _4430:
                                    mem[v] = mem[u + 12 len 20]
                                    t = t + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[_4346 + 100] = this.address
                                mem[_4346 + 132] = stor24
                                require ext_code.size(stor23)
                                call stor23.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4346 + (32 * _4430) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + stor19
                            continue 
                        if s >= totalDeposits:
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _4190 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_4190))
                            staticcall address(_4190).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4276 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4334 = mem[_4276]
                            require mem[_4276] == mem[_4276]
                            idx = mem[_4276]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _4334 <= idx:
                                    mem[mem[64] + 36] = _4334
                                    require ext_code.size(address(_4190))
                                    call address(_4190).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4334
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5512 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5512] == bool(mem[_5512])
                                    if idx < _4334:
                                        revert with 'NH{q', 17
                                    idx = idx - _4334
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_4190))
                                call address(_4190).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5536 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5536] == bool(mem[_5536])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                        else:
                            if totalDeposits < s:
                                revert with 'NH{q', 17
                            stor19 = totalDeposits - s
                            _4228 = mem[64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor19
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _4386 = mem[96]
                            mem[mem[64] + 164] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 196
                            while idx < _4386:
                                mem[u] = mem[t + 12 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_4228 + 100] = this.address
                            mem[_4228 + 132] = stor24
                            require ext_code.size(stor23)
                            call stor23.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4228 + (32 * _4386) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _5624 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_5624))
                            staticcall address(_5624).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5692 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5720 = mem[_5692]
                            require mem[_5692] == mem[_5692]
                            idx = mem[_5692]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _5720 <= idx:
                                    mem[mem[64] + 36] = _5720
                                    require ext_code.size(address(_5624))
                                    call address(_5624).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5720
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6362 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6362] == bool(mem[_6362])
                                    if idx < _5720:
                                        revert with 'NH{q', 17
                                    idx = idx - _5720
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_5624))
                                call address(_5624).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6386 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6386] == bool(mem[_6386])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                else:
                    if 10^mem[_1492] > -1:
                        revert with 'NH{q', 17
                    if 0 >= _401:
                        revert with 'NH{q', 50
                    if mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 129] and 10^mem[_1492] > -1 / mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 129]:
                        revert with 'NH{q', 17
                    if not _1486:
                        revert with 'NH{q', 18
                    if cd[68] < mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 129] * 10^mem[_1492] / _1486:
                        revert with 0, ' MAX PRICE check failed.'
                    if stor19 <= totalDeposits:
                        if not stor19:
                            revert with 'NH{q', 18
                        idx = 0
                        s = 0
                        while idx < totalDeposits / stor19:
                            if s >= totalDeposits:
                                if 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _2820 = mem[160]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_2820))
                                staticcall address(_2820).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2886 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2912 = mem[_2886]
                                require mem[_2886] == mem[_2886]
                                idx = mem[_2886]
                                while idx > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    if _2912 <= idx:
                                        mem[mem[64] + 36] = _2912
                                        require ext_code.size(address(_2820))
                                        call address(_2820).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, _2912
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4317 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4317] == bool(mem[_4317])
                                        if idx < _2912:
                                            revert with 'NH{q', 17
                                        idx = idx - _2912
                                        continue 
                                    mem[mem[64] + 36] = idx
                                    require ext_code.size(address(_2820))
                                    call address(_2820).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, idx
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4337 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4337] == bool(mem[_4337])
                                    if idx < idx:
                                        revert with 'NH{q', 17
                                    idx = 0
                                    continue 
                            if totalDeposits < s:
                                revert with 'NH{q', 17
                            if stor19 <= totalDeposits - s:
                                _2852 = mem[64]
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor19
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _2930 = mem[96]
                                mem[mem[64] + 164] = mem[96]
                                t = 0
                                u = 128
                                v = mem[64] + 196
                                while t < _2930:
                                    mem[v] = mem[u + 12 len 20]
                                    t = t + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[_2852 + 100] = this.address
                                mem[_2852 + 132] = stor24
                                require ext_code.size(stor23)
                                call stor23.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2852 + (32 * _2930) + -mem[64] + 192]
                            else:
                                if totalDeposits < s:
                                    revert with 'NH{q', 17
                                stor19 = totalDeposits - s
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor19
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = mem[96]
                                t = 0
                                u = 128
                                v = mem[64] + 196
                                while t < mem[96]:
                                    mem[v] = mem[u + 12 len 20]
                                    t = t + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = stor24
                                require ext_code.size(stor23)
                                call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + stor19
                            continue 
                        if s >= totalDeposits:
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _2794 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_2794))
                            staticcall address(_2794).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2874 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2896 = mem[_2874]
                            require mem[_2874] == mem[_2874]
                            idx = mem[_2874]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _2896 <= idx:
                                    mem[mem[64] + 36] = _2896
                                    require ext_code.size(address(_2794))
                                    call address(_2794).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2896
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4316 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4316] == bool(mem[_4316])
                                    if idx < _2896:
                                        revert with 'NH{q', 17
                                    idx = idx - _2896
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_2794))
                                call address(_2794).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4336 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4336] == bool(mem[_4336])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                        else:
                            if totalDeposits < s:
                                revert with 'NH{q', 17
                            stor19 = totalDeposits - s
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor19
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 196
                            while idx < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor24
                            require ext_code.size(stor23)
                            call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _4404 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_4404))
                            staticcall address(_4404).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4464 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4478 = mem[_4464]
                            require mem[_4464] == mem[_4464]
                            idx = mem[_4464]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _4478 <= idx:
                                    mem[mem[64] + 36] = _4478
                                    require ext_code.size(address(_4404))
                                    call address(_4404).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4478
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5516 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5516] == bool(mem[_5516])
                                    if idx < _4478:
                                        revert with 'NH{q', 17
                                    idx = idx - _4478
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_4404))
                                call address(_4404).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5540 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5540] == bool(mem[_5540])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                    else:
                        stor19 = totalDeposits
                        if not stor19:
                            revert with 'NH{q', 18
                        idx = 0
                        s = 0
                        while idx < totalDeposits / stor19:
                            if s >= totalDeposits:
                                if 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _2821 = mem[160]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_2821))
                                staticcall address(_2821).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2887 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2913 = mem[_2887]
                                require mem[_2887] == mem[_2887]
                                idx = mem[_2887]
                                while idx > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    if _2913 <= idx:
                                        mem[mem[64] + 36] = _2913
                                        require ext_code.size(address(_2821))
                                        call address(_2821).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, _2913
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4319 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4319] == bool(mem[_4319])
                                        if idx < _2913:
                                            revert with 'NH{q', 17
                                        idx = idx - _2913
                                        continue 
                                    mem[mem[64] + 36] = idx
                                    require ext_code.size(address(_2821))
                                    call address(_2821).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, idx
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4339 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4339] == bool(mem[_4339])
                                    if idx < idx:
                                        revert with 'NH{q', 17
                                    idx = 0
                                    continue 
                            if totalDeposits < s:
                                revert with 'NH{q', 17
                            if stor19 <= totalDeposits - s:
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor19
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = mem[96]
                                t = 0
                                u = 128
                                v = mem[64] + 196
                                while t < mem[96]:
                                    mem[v] = mem[u + 12 len 20]
                                    t = t + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = stor24
                                require ext_code.size(stor23)
                                call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                            else:
                                if totalDeposits < s:
                                    revert with 'NH{q', 17
                                stor19 = totalDeposits - s
                                _2905 = mem[64]
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor19
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _2967 = mem[96]
                                mem[mem[64] + 164] = mem[96]
                                t = 0
                                u = 128
                                v = mem[64] + 196
                                while t < _2967:
                                    mem[v] = mem[u + 12 len 20]
                                    t = t + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[_2905 + 100] = this.address
                                mem[_2905 + 132] = stor24
                                require ext_code.size(stor23)
                                call stor23.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2905 + (32 * _2967) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + stor19
                            continue 
                        if s >= totalDeposits:
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _2795 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_2795))
                            staticcall address(_2795).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2876 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2897 = mem[_2876]
                            require mem[_2876] == mem[_2876]
                            idx = mem[_2876]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _2897 <= idx:
                                    mem[mem[64] + 36] = _2897
                                    require ext_code.size(address(_2795))
                                    call address(_2795).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2897
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4318 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4318] == bool(mem[_4318])
                                    if idx < _2897:
                                        revert with 'NH{q', 17
                                    idx = idx - _2897
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_2795))
                                call address(_2795).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4338 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4338] == bool(mem[_4338])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                        else:
                            if totalDeposits < s:
                                revert with 'NH{q', 17
                            stor19 = totalDeposits - s
                            _2845 = mem[64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor19
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _2923 = mem[96]
                            mem[mem[64] + 164] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 196
                            while idx < _2923:
                                mem[u] = mem[t + 12 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_2845 + 100] = this.address
                            mem[_2845 + 132] = stor24
                            require ext_code.size(stor23)
                            call stor23.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2845 + (32 * _2923) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _4405 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_4405))
                            staticcall address(_4405).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4465 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4479 = mem[_4465]
                            require mem[_4465] == mem[_4465]
                            idx = mem[_4465]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _4479 <= idx:
                                    mem[mem[64] + 36] = _4479
                                    require ext_code.size(address(_4405))
                                    call address(_4405).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _4479
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5517 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5517] == bool(mem[_5517])
                                    if idx < _4479:
                                        revert with 'NH{q', 17
                                    idx = idx - _4479
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_4405))
                                call address(_4405).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5541 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5541] == bool(mem[_5541])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
    else:
        mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 101] = sub_8b8de86cAddress
        mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 133] = totalDeposits
        require ext_code.size(stor10)
        call stor10.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_8b8de86cAddress, totalDeposits
        mem[floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 97] = 2
        mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 129] = uSDCAddress
        if 0 >= ('cd', 132).length:
            revert with 'NH{q', 50
        mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 161] = mem[140 len 20]
        mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 193] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 197] = totalDeposits
        mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 229] = 0
        mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 261] = 160
        mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 357] = 2
        idx = 0
        s = floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 129
        t = floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 389
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 293] = this.address
        mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 325] = stor24
        require ext_code.size(stor11)
        call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args totalDeposits, 0, 160, address(this.address), stor24, 2, mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 389 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 193 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 132).length) + (6 * ceil32(return_data.size)) + 193
        require return_data.size >= 32
        _406 = mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 193 len 4], stor15
        require mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 193 len 4], stor15 <= test266151307()
        require floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 193 len 4], stor15 + 224 < floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + return_data.size + 193
        _407 = mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 193 len 4], stor15 + 193]
        if mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 193 len 4], stor15 + 193] > test266151307():
            revert with 'NH{q', 65
        if floor32(('cd', 132).length) + (6 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 193 len 4], stor15 + 193]) + 194 > test266151307() or floor32(mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 193 len 4], stor15 + 193]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = floor32(('cd', 132).length) + (6 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 193 len 4], stor15 + 193]) + 194
        mem[floor32(('cd', 132).length) + (6 * ceil32(return_data.size)) + 193] = mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + mem[floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 193 len 4], stor15 + 193]
        require _406 + (32 * _407) + 32 <= return_data.size
        idx = 0
        s = floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + _406 + 225
        t = floor32(('cd', 132).length) + (6 * ceil32(return_data.size)) + 225
        while idx < _407:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 0 >= ('cd', 132).length:
            revert with 'NH{q', 50
        _1489 = mem[128]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_1489))
        staticcall address(_1489).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1496 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1497 = mem[_1496]
        require mem[_1496] == mem[_1496]
        if stor19:
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1497
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = ('cd', 132).length
            idx = 0
            s = 128
            t = mem[64] + 100
            while idx < ('cd', 132).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor23)
            staticcall stor23.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _1497, 64, mem[mem[64] + 68 len (32 * ('cd', 132).length) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2824 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2838 = mem[_2824]
            require mem[_2824] <= test266151307()
            require _2824 + mem[_2824] + 31 < _2824 + return_data.size
            _2856 = mem[_2824 + mem[_2824]]
            if mem[_2824 + mem[_2824]] > test266151307():
                revert with 'NH{q', 65
            if _2824 + ceil32(return_data.size) + floor32(mem[_2824 + mem[_2824]]) + 1 > test266151307() or floor32(mem[_2824 + mem[_2824]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _2824 + ceil32(return_data.size) + floor32(mem[_2824 + mem[_2824]]) + 1
            mem[_2824 + ceil32(return_data.size)] = _2856
            require _2838 + (32 * _2856) + 32 <= return_data.size
            idx = 0
            s = _2824 + _2838 + 32
            t = _2824 + ceil32(return_data.size) + 32
            while idx < _2856:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if 1 >= _2856:
                revert with 'NH{q', 50
            _4214 = mem[_2824 + ceil32(return_data.size) + 64]
            require ext_code.size(stor18)
            staticcall stor18.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4224 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_4224] == mem[_4224]
            if not mem[_4224]:
                if 0 >= _2856:
                    revert with 'NH{q', 50
                if mem[_2824 + ceil32(return_data.size) + 32] and 1 > -1 / mem[_2824 + ceil32(return_data.size) + 32]:
                    revert with 'NH{q', 17
                if not _4214:
                    revert with 'NH{q', 18
                if cd[68] < mem[_2824 + ceil32(return_data.size) + 32] / _4214:
                    revert with 0, ' MAX PRICE check failed.'
                if stor19 > _1497:
                    stor19 = _1497
                    if not stor19:
                        revert with 'NH{q', 18
                    idx = 0
                    s = 0
                    while idx < _1497 / stor19:
                        if s >= _1497:
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _5403 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_5403))
                            staticcall address(_5403).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5523 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5579 = mem[_5523]
                            require mem[_5523] == mem[_5523]
                            idx = mem[_5523]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _5579 <= idx:
                                    mem[mem[64] + 36] = _5579
                                    require ext_code.size(address(_5403))
                                    call address(_5403).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5579
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6373 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6373] == bool(mem[_6373])
                                    if idx < _5579:
                                        revert with 'NH{q', 17
                                    idx = idx - _5579
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_5403))
                                call address(_5403).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6397 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6397] == bool(mem[_6397])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                        if _1497 < s:
                            revert with 'NH{q', 17
                        if stor19 > _1497 - s:
                            if _1497 < s:
                                revert with 'NH{q', 17
                            stor19 = _1497 - s
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor19
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        t = 0
                        u = 128
                        v = mem[64] + 196
                        while t < mem[96]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = stor24
                        require ext_code.size(stor23)
                        call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s > -stor19 - 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + stor19
                        continue 
                    if s >= _1497:
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _5379 = mem[160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_5379))
                        staticcall address(_5379).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5478 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5547 = mem[_5478]
                        require mem[_5478] == mem[_5478]
                        idx = mem[_5478]
                        while idx > 0:
                            mem[mem[64] + 4] = msg.sender
                            if _5547 <= idx:
                                mem[mem[64] + 36] = _5547
                                require ext_code.size(address(_5379))
                                call address(_5379).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _5547
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6372 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6372] == bool(mem[_6372])
                                if idx < _5547:
                                    revert with 'NH{q', 17
                                idx = idx - _5547
                                continue 
                            mem[mem[64] + 36] = idx
                            require ext_code.size(address(_5379))
                            call address(_5379).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6396 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6396] == bool(mem[_6396])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                    else:
                        if _1497 < s:
                            revert with 'NH{q', 17
                        stor19 = _1497 - s
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor19
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 196
                        while idx < mem[96]:
                            mem[u] = mem[t + 12 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = stor24
                        require ext_code.size(stor23)
                        call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s > -stor19 - 1:
                            revert with 'NH{q', 17
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _6475 = mem[160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_6475))
                        staticcall address(_6475).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6525 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6537 = mem[_6525]
                        require mem[_6525] == mem[_6525]
                        idx = mem[_6525]
                        while idx > 0:
                            mem[mem[64] + 4] = msg.sender
                            if _6537 <= idx:
                                mem[mem[64] + 36] = _6537
                                require ext_code.size(address(_6475))
                                call address(_6475).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _6537
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6819 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6819] == bool(mem[_6819])
                                if idx < _6537:
                                    revert with 'NH{q', 17
                                idx = idx - _6537
                                continue 
                            mem[mem[64] + 36] = idx
                            require ext_code.size(address(_6475))
                            call address(_6475).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6835 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6835] == bool(mem[_6835])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                else:
                    if not stor19:
                        revert with 'NH{q', 18
                    idx = 0
                    s = 0
                    while idx < _1497 / stor19:
                        if s >= _1497:
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _5402 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_5402))
                            staticcall address(_5402).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5522 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5578 = mem[_5522]
                            require mem[_5522] == mem[_5522]
                            idx = mem[_5522]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _5578 <= idx:
                                    mem[mem[64] + 36] = _5578
                                    require ext_code.size(address(_5402))
                                    call address(_5402).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5578
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6371 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6371] == bool(mem[_6371])
                                    if idx < _5578:
                                        revert with 'NH{q', 17
                                    idx = idx - _5578
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_5402))
                                call address(_5402).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6395 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6395] == bool(mem[_6395])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                        if _1497 < s:
                            revert with 'NH{q', 17
                        if stor19 > _1497 - s:
                            if _1497 < s:
                                revert with 'NH{q', 17
                            stor19 = _1497 - s
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor19
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        t = 0
                        u = 128
                        v = mem[64] + 196
                        while t < mem[96]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = stor24
                        require ext_code.size(stor23)
                        call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s > -stor19 - 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + stor19
                        continue 
                    if s >= _1497:
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _5378 = mem[160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_5378))
                        staticcall address(_5378).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5476 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5546 = mem[_5476]
                        require mem[_5476] == mem[_5476]
                        idx = mem[_5476]
                        while idx > 0:
                            mem[mem[64] + 4] = msg.sender
                            if _5546 <= idx:
                                mem[mem[64] + 36] = _5546
                                require ext_code.size(address(_5378))
                                call address(_5378).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _5546
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6370 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6370] == bool(mem[_6370])
                                if idx < _5546:
                                    revert with 'NH{q', 17
                                idx = idx - _5546
                                continue 
                            mem[mem[64] + 36] = idx
                            require ext_code.size(address(_5378))
                            call address(_5378).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6394 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6394] == bool(mem[_6394])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                    else:
                        if _1497 < s:
                            revert with 'NH{q', 17
                        stor19 = _1497 - s
                        _5422 = mem[64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor19
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _5603 = mem[96]
                        mem[mem[64] + 164] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 196
                        while idx < _5603:
                            mem[u] = mem[t + 12 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_5422 + 100] = this.address
                        mem[_5422 + 132] = stor24
                        require ext_code.size(stor23)
                        call stor23.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _5422 + (32 * _5603) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s > -stor19 - 1:
                            revert with 'NH{q', 17
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _6474 = mem[160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_6474))
                        staticcall address(_6474).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6524 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6536 = mem[_6524]
                        require mem[_6524] == mem[_6524]
                        idx = mem[_6524]
                        while idx > 0:
                            mem[mem[64] + 4] = msg.sender
                            if _6536 <= idx:
                                mem[mem[64] + 36] = _6536
                                require ext_code.size(address(_6474))
                                call address(_6474).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _6536
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6818 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6818] == bool(mem[_6818])
                                if idx < _6536:
                                    revert with 'NH{q', 17
                                idx = idx - _6536
                                continue 
                            mem[mem[64] + 36] = idx
                            require ext_code.size(address(_6474))
                            call address(_6474).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6834 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6834] == bool(mem[_6834])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
            else:
                if not bool(mem[_4224] < 78) and not bool(mem[_4224] < 32):
                    s = 10
                    t = 1
                    idx = mem[_4224]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = t * s
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 'NH{q', 17
                    if 0 >= _2856:
                        revert with 'NH{q', 50
                    if mem[_2824 + ceil32(return_data.size) + 32] and t * s > -1 / mem[_2824 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    if not _4214:
                        revert with 'NH{q', 18
                    if cd[68] < mem[_2824 + ceil32(return_data.size) + 32] * t * s / _4214:
                        revert with 0, ' MAX PRICE check failed.'
                    if stor19 <= _1497:
                        if not stor19:
                            revert with 'NH{q', 18
                        idx = 0
                        s = 0
                        while idx < _1497 / stor19:
                            if s >= _1497:
                                if 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _6268 = mem[160]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_6268))
                                staticcall address(_6268).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6364 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6416 = mem[_6364]
                                require mem[_6364] == mem[_6364]
                                idx = mem[_6364]
                                while idx > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    if _6416 <= idx:
                                        mem[mem[64] + 36] = _6416
                                        require ext_code.size(address(_6268))
                                        call address(_6268).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, _6416
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6813 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6813] == bool(mem[_6813])
                                        if idx < _6416:
                                            revert with 'NH{q', 17
                                        idx = idx - _6416
                                        continue 
                                    mem[mem[64] + 36] = idx
                                    require ext_code.size(address(_6268))
                                    call address(_6268).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, idx
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6829 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6829] == bool(mem[_6829])
                                    if idx < idx:
                                        revert with 'NH{q', 17
                                    idx = 0
                                    continue 
                            if _1497 < s:
                                revert with 'NH{q', 17
                            if stor19 <= _1497 - s:
                                _6280 = mem[64]
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor19
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _6460 = mem[96]
                                mem[mem[64] + 164] = mem[96]
                                t = 0
                                u = 128
                                v = mem[64] + 196
                                while t < _6460:
                                    mem[v] = mem[u + 12 len 20]
                                    t = t + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[_6280 + 100] = this.address
                                mem[_6280 + 132] = stor24
                                require ext_code.size(stor23)
                                call stor23.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _6280 + (32 * _6460) + -mem[64] + 192]
                            else:
                                if _1497 < s:
                                    revert with 'NH{q', 17
                                stor19 = _1497 - s
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor19
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = mem[96]
                                t = 0
                                u = 128
                                v = mem[64] + 196
                                while t < mem[96]:
                                    mem[v] = mem[u + 12 len 20]
                                    t = t + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = stor24
                                require ext_code.size(stor23)
                                call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + stor19
                            continue 
                        if s >= _1497:
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _6240 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_6240))
                            staticcall address(_6240).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6316 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6388 = mem[_6316]
                            require mem[_6316] == mem[_6316]
                            idx = mem[_6316]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _6388 <= idx:
                                    mem[mem[64] + 36] = _6388
                                    require ext_code.size(address(_6240))
                                    call address(_6240).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _6388
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6812 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6812] == bool(mem[_6812])
                                    if idx < _6388:
                                        revert with 'NH{q', 17
                                    idx = idx - _6388
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_6240))
                                call address(_6240).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6828 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6828] == bool(mem[_6828])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                        else:
                            if _1497 < s:
                                revert with 'NH{q', 17
                            stor19 = _1497 - s
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor19
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 196
                            while idx < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor24
                            require ext_code.size(stor23)
                            call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _6880 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_6880))
                            staticcall address(_6880).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6892 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6896 = mem[_6892]
                            require mem[_6892] == mem[_6892]
                            idx = mem[_6892]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _6896 <= idx:
                                    mem[mem[64] + 36] = _6896
                                    require ext_code.size(address(_6880))
                                    call address(_6880).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _6896
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6948 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6948] == bool(mem[_6948])
                                    if idx < _6896:
                                        revert with 'NH{q', 17
                                    idx = idx - _6896
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_6880))
                                call address(_6880).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6952 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6952] == bool(mem[_6952])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                    else:
                        stor19 = _1497
                        if not stor19:
                            revert with 'NH{q', 18
                        idx = 0
                        s = 0
                        while idx < _1497 / stor19:
                            if s >= _1497:
                                if 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _6269 = mem[160]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_6269))
                                staticcall address(_6269).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6365 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6417 = mem[_6365]
                                require mem[_6365] == mem[_6365]
                                idx = mem[_6365]
                                while idx > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    if _6417 <= idx:
                                        mem[mem[64] + 36] = _6417
                                        require ext_code.size(address(_6269))
                                        call address(_6269).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, _6417
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6815 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6815] == bool(mem[_6815])
                                        if idx < _6417:
                                            revert with 'NH{q', 17
                                        idx = idx - _6417
                                        continue 
                                    mem[mem[64] + 36] = idx
                                    require ext_code.size(address(_6269))
                                    call address(_6269).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, idx
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6831 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6831] == bool(mem[_6831])
                                    if idx < idx:
                                        revert with 'NH{q', 17
                                    idx = 0
                                    continue 
                            if _1497 < s:
                                revert with 'NH{q', 17
                            if stor19 > _1497 - s:
                                if _1497 < s:
                                    revert with 'NH{q', 17
                                stor19 = _1497 - s
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor19
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            t = 0
                            u = 128
                            v = mem[64] + 196
                            while t < mem[96]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor24
                            require ext_code.size(stor23)
                            call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + stor19
                            continue 
                        if s >= _1497:
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _6241 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_6241))
                            staticcall address(_6241).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6318 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6389 = mem[_6318]
                            require mem[_6318] == mem[_6318]
                            idx = mem[_6318]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _6389 <= idx:
                                    mem[mem[64] + 36] = _6389
                                    require ext_code.size(address(_6241))
                                    call address(_6241).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _6389
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6814 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6814] == bool(mem[_6814])
                                    if idx < _6389:
                                        revert with 'NH{q', 17
                                    idx = idx - _6389
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_6241))
                                call address(_6241).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6830 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6830] == bool(mem[_6830])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                        else:
                            if _1497 < s:
                                revert with 'NH{q', 17
                            stor19 = _1497 - s
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor19
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 196
                            while idx < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor24
                            require ext_code.size(stor23)
                            call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _6881 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_6881))
                            staticcall address(_6881).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6893 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6897 = mem[_6893]
                            require mem[_6893] == mem[_6893]
                            idx = mem[_6893]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _6897 <= idx:
                                    mem[mem[64] + 36] = _6897
                                    require ext_code.size(address(_6881))
                                    call address(_6881).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _6897
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6949 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6949] == bool(mem[_6949])
                                    if idx < _6897:
                                        revert with 'NH{q', 17
                                    idx = idx - _6897
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_6881))
                                call address(_6881).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6953 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6953] == bool(mem[_6953])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                else:
                    if 10^mem[_4224] > -1:
                        revert with 'NH{q', 17
                    if 0 >= _2856:
                        revert with 'NH{q', 50
                    if mem[_2824 + ceil32(return_data.size) + 32] and 10^mem[_4224] > -1 / mem[_2824 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    if not _4214:
                        revert with 'NH{q', 18
                    if cd[68] < mem[_2824 + ceil32(return_data.size) + 32] * 10^mem[_4224] / _4214:
                        revert with 0, ' MAX PRICE check failed.'
                    if stor19 > _1497:
                        stor19 = _1497
                        if not stor19:
                            revert with 'NH{q', 18
                        idx = 0
                        s = 0
                        while idx < _1497 / stor19:
                            if s >= _1497:
                                if 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _5401 = mem[160]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_5401))
                                staticcall address(_5401).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5521 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5577 = mem[_5521]
                                require mem[_5521] == mem[_5521]
                                idx = mem[_5521]
                                while idx > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    if _5577 <= idx:
                                        mem[mem[64] + 36] = _5577
                                        require ext_code.size(address(_5401))
                                        call address(_5401).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, _5577
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6369 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6369] == bool(mem[_6369])
                                        if idx < _5577:
                                            revert with 'NH{q', 17
                                        idx = idx - _5577
                                        continue 
                                    mem[mem[64] + 36] = idx
                                    require ext_code.size(address(_5401))
                                    call address(_5401).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, idx
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6393 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6393] == bool(mem[_6393])
                                    if idx < idx:
                                        revert with 'NH{q', 17
                                    idx = 0
                                    continue 
                            if _1497 < s:
                                revert with 'NH{q', 17
                            if stor19 <= _1497 - s:
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor19
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = mem[96]
                                t = 0
                                u = 128
                                v = mem[64] + 196
                                while t < mem[96]:
                                    mem[v] = mem[u + 12 len 20]
                                    t = t + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = stor24
                                require ext_code.size(stor23)
                                call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                            else:
                                if _1497 < s:
                                    revert with 'NH{q', 17
                                stor19 = _1497 - s
                                _5553 = mem[64]
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor19
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _5649 = mem[96]
                                mem[mem[64] + 164] = mem[96]
                                t = 0
                                u = 128
                                v = mem[64] + 196
                                while t < _5649:
                                    mem[v] = mem[u + 12 len 20]
                                    t = t + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[_5553 + 100] = this.address
                                mem[_5553 + 132] = stor24
                                require ext_code.size(stor23)
                                call stor23.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _5553 + (32 * _5649) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + stor19
                            continue 
                        if s >= _1497:
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _5377 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_5377))
                            staticcall address(_5377).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5474 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5545 = mem[_5474]
                            require mem[_5474] == mem[_5474]
                            idx = mem[_5474]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _5545 <= idx:
                                    mem[mem[64] + 36] = _5545
                                    require ext_code.size(address(_5377))
                                    call address(_5377).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5545
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6368 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6368] == bool(mem[_6368])
                                    if idx < _5545:
                                        revert with 'NH{q', 17
                                    idx = idx - _5545
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_5377))
                                call address(_5377).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6392 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6392] == bool(mem[_6392])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                        else:
                            if _1497 < s:
                                revert with 'NH{q', 17
                            stor19 = _1497 - s
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor19
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 196
                            while idx < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor24
                            require ext_code.size(stor23)
                            call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _6473 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_6473))
                            staticcall address(_6473).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6523 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6535 = mem[_6523]
                            require mem[_6523] == mem[_6523]
                            idx = mem[_6523]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _6535 <= idx:
                                    mem[mem[64] + 36] = _6535
                                    require ext_code.size(address(_6473))
                                    call address(_6473).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _6535
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6817 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6817] == bool(mem[_6817])
                                    if idx < _6535:
                                        revert with 'NH{q', 17
                                    idx = idx - _6535
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_6473))
                                call address(_6473).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6833 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6833] == bool(mem[_6833])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                    else:
                        if not stor19:
                            revert with 'NH{q', 18
                        idx = 0
                        s = 0
                        while idx < _1497 / stor19:
                            if s >= _1497:
                                if 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _5400 = mem[160]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_5400))
                                staticcall address(_5400).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5520 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5576 = mem[_5520]
                                require mem[_5520] == mem[_5520]
                                idx = mem[_5520]
                                while idx > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    if _5576 <= idx:
                                        mem[mem[64] + 36] = _5576
                                        require ext_code.size(address(_5400))
                                        call address(_5400).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, _5576
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6367 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6367] == bool(mem[_6367])
                                        if idx < _5576:
                                            revert with 'NH{q', 17
                                        idx = idx - _5576
                                        continue 
                                    mem[mem[64] + 36] = idx
                                    require ext_code.size(address(_5400))
                                    call address(_5400).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, idx
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6391 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6391] == bool(mem[_6391])
                                    if idx < idx:
                                        revert with 'NH{q', 17
                                    idx = 0
                                    continue 
                            if _1497 < s:
                                revert with 'NH{q', 17
                            if stor19 > _1497 - s:
                                if _1497 < s:
                                    revert with 'NH{q', 17
                                stor19 = _1497 - s
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor19
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            t = 0
                            u = 128
                            v = mem[64] + 196
                            while t < mem[96]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor24
                            require ext_code.size(stor23)
                            call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + stor19
                            continue 
                        if s >= _1497:
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _5376 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_5376))
                            staticcall address(_5376).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5472 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5544 = mem[_5472]
                            require mem[_5472] == mem[_5472]
                            idx = mem[_5472]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _5544 <= idx:
                                    mem[mem[64] + 36] = _5544
                                    require ext_code.size(address(_5376))
                                    call address(_5376).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5544
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6366 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6366] == bool(mem[_6366])
                                    if idx < _5544:
                                        revert with 'NH{q', 17
                                    idx = idx - _5544
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_5376))
                                call address(_5376).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6390 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6390] == bool(mem[_6390])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                        else:
                            if _1497 < s:
                                revert with 'NH{q', 17
                            stor19 = _1497 - s
                            _5420 = mem[64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor19
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _5601 = mem[96]
                            mem[mem[64] + 164] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 196
                            while idx < _5601:
                                mem[u] = mem[t + 12 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_5420 + 100] = this.address
                            mem[_5420 + 132] = stor24
                            require ext_code.size(stor23)
                            call stor23.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5420 + (32 * _5601) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _6472 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_6472))
                            staticcall address(_6472).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6522 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6534 = mem[_6522]
                            require mem[_6522] == mem[_6522]
                            idx = mem[_6522]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _6534 <= idx:
                                    mem[mem[64] + 36] = _6534
                                    require ext_code.size(address(_6472))
                                    call address(_6472).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _6534
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6816 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6816] == bool(mem[_6816])
                                    if idx < _6534:
                                        revert with 'NH{q', 17
                                    idx = idx - _6534
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_6472))
                                call address(_6472).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6832 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6832] == bool(mem[_6832])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
        else:
            stor19 = mem[_1496]
            _1503 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1497
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = ('cd', 132).length
            idx = 0
            s = 128
            t = mem[64] + 100
            while idx < ('cd', 132).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor23)
            staticcall stor23.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1503 + (32 * ('cd', 132).length) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2825 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2839 = mem[_2825]
            require mem[_2825] <= test266151307()
            require _2825 + mem[_2825] + 31 < _2825 + return_data.size
            _2857 = mem[_2825 + mem[_2825]]
            if mem[_2825 + mem[_2825]] > test266151307():
                revert with 'NH{q', 65
            if _2825 + ceil32(return_data.size) + floor32(mem[_2825 + mem[_2825]]) + 1 > test266151307() or floor32(mem[_2825 + mem[_2825]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _2825 + ceil32(return_data.size) + floor32(mem[_2825 + mem[_2825]]) + 1
            mem[_2825 + ceil32(return_data.size)] = _2857
            require _2839 + (32 * _2857) + 32 <= return_data.size
            idx = 0
            s = _2825 + _2839 + 32
            t = _2825 + ceil32(return_data.size) + 32
            while idx < _2857:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if 1 >= _2857:
                revert with 'NH{q', 50
            _4217 = mem[_2825 + ceil32(return_data.size) + 64]
            require ext_code.size(stor18)
            staticcall stor18.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4225 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_4225] == mem[_4225]
            if not mem[_4225]:
                if 0 >= _2857:
                    revert with 'NH{q', 50
                if mem[_2825 + ceil32(return_data.size) + 32] and 1 > -1 / mem[_2825 + ceil32(return_data.size) + 32]:
                    revert with 'NH{q', 17
                if not _4217:
                    revert with 'NH{q', 18
                if cd[68] < mem[_2825 + ceil32(return_data.size) + 32] / _4217:
                    revert with 0, ' MAX PRICE check failed.'
                if stor19 <= _1497:
                    if not stor19:
                        revert with 'NH{q', 18
                    idx = 0
                    s = 0
                    while idx < _1497 / stor19:
                        if s >= _1497:
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _5406 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_5406))
                            staticcall address(_5406).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5526 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5582 = mem[_5526]
                            require mem[_5526] == mem[_5526]
                            idx = mem[_5526]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _5582 <= idx:
                                    mem[mem[64] + 36] = _5582
                                    require ext_code.size(address(_5406))
                                    call address(_5406).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5582
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6381 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6381] == bool(mem[_6381])
                                    if idx < _5582:
                                        revert with 'NH{q', 17
                                    idx = idx - _5582
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_5406))
                                call address(_5406).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6405 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6405] == bool(mem[_6405])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                        if _1497 < s:
                            revert with 'NH{q', 17
                        if stor19 > _1497 - s:
                            if _1497 < s:
                                revert with 'NH{q', 17
                            stor19 = _1497 - s
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor19
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        t = 0
                        u = 128
                        v = mem[64] + 196
                        while t < mem[96]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = stor24
                        require ext_code.size(stor23)
                        call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s > -stor19 - 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + stor19
                        continue 
                    if s >= _1497:
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _5382 = mem[160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_5382))
                        staticcall address(_5382).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5484 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5550 = mem[_5484]
                        require mem[_5484] == mem[_5484]
                        idx = mem[_5484]
                        while idx > 0:
                            mem[mem[64] + 4] = msg.sender
                            if _5550 <= idx:
                                mem[mem[64] + 36] = _5550
                                require ext_code.size(address(_5382))
                                call address(_5382).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _5550
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6380 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6380] == bool(mem[_6380])
                                if idx < _5550:
                                    revert with 'NH{q', 17
                                idx = idx - _5550
                                continue 
                            mem[mem[64] + 36] = idx
                            require ext_code.size(address(_5382))
                            call address(_5382).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6404 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6404] == bool(mem[_6404])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                    else:
                        if _1497 < s:
                            revert with 'NH{q', 17
                        stor19 = _1497 - s
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor19
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 196
                        while idx < mem[96]:
                            mem[u] = mem[t + 12 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = stor24
                        require ext_code.size(stor23)
                        call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s > -stor19 - 1:
                            revert with 'NH{q', 17
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _6478 = mem[160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_6478))
                        staticcall address(_6478).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6530 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6542 = mem[_6530]
                        require mem[_6530] == mem[_6530]
                        idx = mem[_6530]
                        while idx > 0:
                            mem[mem[64] + 4] = msg.sender
                            if _6542 <= idx:
                                mem[mem[64] + 36] = _6542
                                require ext_code.size(address(_6478))
                                call address(_6478).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _6542
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6826 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6826] == bool(mem[_6826])
                                if idx < _6542:
                                    revert with 'NH{q', 17
                                idx = idx - _6542
                                continue 
                            mem[mem[64] + 36] = idx
                            require ext_code.size(address(_6478))
                            call address(_6478).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6842 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6842] == bool(mem[_6842])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                else:
                    stor19 = _1497
                    if not stor19:
                        revert with 'NH{q', 18
                    idx = 0
                    s = 0
                    while idx < _1497 / stor19:
                        if s >= _1497:
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _5407 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_5407))
                            staticcall address(_5407).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5527 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5583 = mem[_5527]
                            require mem[_5527] == mem[_5527]
                            idx = mem[_5527]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _5583 <= idx:
                                    mem[mem[64] + 36] = _5583
                                    require ext_code.size(address(_5407))
                                    call address(_5407).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5583
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6383 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6383] == bool(mem[_6383])
                                    if idx < _5583:
                                        revert with 'NH{q', 17
                                    idx = idx - _5583
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_5407))
                                call address(_5407).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6407 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6407] == bool(mem[_6407])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                        if _1497 < s:
                            revert with 'NH{q', 17
                        if stor19 > _1497 - s:
                            if _1497 < s:
                                revert with 'NH{q', 17
                            stor19 = _1497 - s
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor19
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        t = 0
                        u = 128
                        v = mem[64] + 196
                        while t < mem[96]:
                            mem[v] = mem[u + 12 len 20]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = stor24
                        require ext_code.size(stor23)
                        call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s > -stor19 - 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + stor19
                        continue 
                    if s >= _1497:
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _5383 = mem[160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_5383))
                        staticcall address(_5383).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5486 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5551 = mem[_5486]
                        require mem[_5486] == mem[_5486]
                        idx = mem[_5486]
                        while idx > 0:
                            mem[mem[64] + 4] = msg.sender
                            if _5551 <= idx:
                                mem[mem[64] + 36] = _5551
                                require ext_code.size(address(_5383))
                                call address(_5383).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _5551
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6382 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6382] == bool(mem[_6382])
                                if idx < _5551:
                                    revert with 'NH{q', 17
                                idx = idx - _5551
                                continue 
                            mem[mem[64] + 36] = idx
                            require ext_code.size(address(_5383))
                            call address(_5383).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6406 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6406] == bool(mem[_6406])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
                    else:
                        if _1497 < s:
                            revert with 'NH{q', 17
                        stor19 = _1497 - s
                        _5427 = mem[64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor19
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _5609 = mem[96]
                        mem[mem[64] + 164] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 196
                        while idx < _5609:
                            mem[u] = mem[t + 12 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_5427 + 100] = this.address
                        mem[_5427 + 132] = stor24
                        require ext_code.size(stor23)
                        call stor23.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _5427 + (32 * _5609) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s > -stor19 - 1:
                            revert with 'NH{q', 17
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _6479 = mem[160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_6479))
                        staticcall address(_6479).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6531 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6543 = mem[_6531]
                        require mem[_6531] == mem[_6531]
                        idx = mem[_6531]
                        while idx > 0:
                            mem[mem[64] + 4] = msg.sender
                            if _6543 <= idx:
                                mem[mem[64] + 36] = _6543
                                require ext_code.size(address(_6479))
                                call address(_6479).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _6543
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6827 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6827] == bool(mem[_6827])
                                if idx < _6543:
                                    revert with 'NH{q', 17
                                idx = idx - _6543
                                continue 
                            mem[mem[64] + 36] = idx
                            require ext_code.size(address(_6479))
                            call address(_6479).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6843 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6843] == bool(mem[_6843])
                            if idx < idx:
                                revert with 'NH{q', 17
                            idx = 0
                            continue 
            else:
                if bool(bool(mem[_4225] < 78)) or bool(bool(mem[_4225] < 32)):
                    if 10^mem[_4225] > -1:
                        revert with 'NH{q', 17
                    if 0 >= _2857:
                        revert with 'NH{q', 50
                    if mem[_2825 + ceil32(return_data.size) + 32] and 10^mem[_4225] > -1 / mem[_2825 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    if not _4217:
                        revert with 'NH{q', 18
                    if cd[68] < mem[_2825 + ceil32(return_data.size) + 32] * 10^mem[_4225] / _4217:
                        revert with 0, ' MAX PRICE check failed.'
                    if stor19 <= _1497:
                        if not stor19:
                            revert with 'NH{q', 18
                        idx = 0
                        s = 0
                        while idx < _1497 / stor19:
                            if s >= _1497:
                                if 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _5404 = mem[160]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_5404))
                                staticcall address(_5404).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5524 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5580 = mem[_5524]
                                require mem[_5524] == mem[_5524]
                                idx = mem[_5524]
                                while idx > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    if _5580 <= idx:
                                        mem[mem[64] + 36] = _5580
                                        require ext_code.size(address(_5404))
                                        call address(_5404).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, _5580
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6377 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6377] == bool(mem[_6377])
                                        if idx < _5580:
                                            revert with 'NH{q', 17
                                        idx = idx - _5580
                                        continue 
                                    mem[mem[64] + 36] = idx
                                    require ext_code.size(address(_5404))
                                    call address(_5404).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, idx
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6401 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6401] == bool(mem[_6401])
                                    if idx < idx:
                                        revert with 'NH{q', 17
                                    idx = 0
                                    continue 
                            if _1497 < s:
                                revert with 'NH{q', 17
                            if stor19 <= _1497 - s:
                                _5432 = mem[64]
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor19
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _5618 = mem[96]
                                mem[mem[64] + 164] = mem[96]
                                t = 0
                                u = 128
                                v = mem[64] + 196
                                while t < _5618:
                                    mem[v] = mem[u + 12 len 20]
                                    t = t + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[_5432 + 100] = this.address
                                mem[_5432 + 132] = stor24
                                require ext_code.size(stor23)
                                call stor23.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _5432 + (32 * _5618) + -mem[64] + 192]
                            else:
                                if _1497 < s:
                                    revert with 'NH{q', 17
                                stor19 = _1497 - s
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor19
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = mem[96]
                                t = 0
                                u = 128
                                v = mem[64] + 196
                                while t < mem[96]:
                                    mem[v] = mem[u + 12 len 20]
                                    t = t + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = stor24
                                require ext_code.size(stor23)
                                call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + stor19
                            continue 
                        if s >= _1497:
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _5380 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_5380))
                            staticcall address(_5380).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5480 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5548 = mem[_5480]
                            require mem[_5480] == mem[_5480]
                            idx = mem[_5480]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _5548 <= idx:
                                    mem[mem[64] + 36] = _5548
                                    require ext_code.size(address(_5380))
                                    call address(_5380).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5548
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6376 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6376] == bool(mem[_6376])
                                    if idx < _5548:
                                        revert with 'NH{q', 17
                                    idx = idx - _5548
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_5380))
                                call address(_5380).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6400 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6400] == bool(mem[_6400])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                        else:
                            if _1497 < s:
                                revert with 'NH{q', 17
                            stor19 = _1497 - s
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor19
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 196
                            while idx < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor24
                            require ext_code.size(stor23)
                            call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _6476 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_6476))
                            staticcall address(_6476).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6528 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6540 = mem[_6528]
                            require mem[_6528] == mem[_6528]
                            idx = mem[_6528]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _6540 <= idx:
                                    mem[mem[64] + 36] = _6540
                                    require ext_code.size(address(_6476))
                                    call address(_6476).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _6540
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6824 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6824] == bool(mem[_6824])
                                    if idx < _6540:
                                        revert with 'NH{q', 17
                                    idx = idx - _6540
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_6476))
                                call address(_6476).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6840 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6840] == bool(mem[_6840])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                    else:
                        stor19 = _1497
                        if not stor19:
                            revert with 'NH{q', 18
                        idx = 0
                        s = 0
                        while idx < _1497 / stor19:
                            if s >= _1497:
                                if 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _5405 = mem[160]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_5405))
                                staticcall address(_5405).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5525 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5581 = mem[_5525]
                                require mem[_5525] == mem[_5525]
                                idx = mem[_5525]
                                while idx > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    if _5581 <= idx:
                                        mem[mem[64] + 36] = _5581
                                        require ext_code.size(address(_5405))
                                        call address(_5405).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, _5581
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6379 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6379] == bool(mem[_6379])
                                        if idx < _5581:
                                            revert with 'NH{q', 17
                                        idx = idx - _5581
                                        continue 
                                    mem[mem[64] + 36] = idx
                                    require ext_code.size(address(_5405))
                                    call address(_5405).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, idx
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6403 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6403] == bool(mem[_6403])
                                    if idx < idx:
                                        revert with 'NH{q', 17
                                    idx = 0
                                    continue 
                            if _1497 < s:
                                revert with 'NH{q', 17
                            if stor19 <= _1497 - s:
                                _5433 = mem[64]
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor19
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _5619 = mem[96]
                                mem[mem[64] + 164] = mem[96]
                                t = 0
                                u = 128
                                v = mem[64] + 196
                                while t < _5619:
                                    mem[v] = mem[u + 12 len 20]
                                    t = t + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[_5433 + 100] = this.address
                                mem[_5433 + 132] = stor24
                                require ext_code.size(stor23)
                                call stor23.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _5433 + (32 * _5619) + -mem[64] + 192]
                            else:
                                if _1497 < s:
                                    revert with 'NH{q', 17
                                stor19 = _1497 - s
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = stor19
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = mem[96]
                                t = 0
                                u = 128
                                v = mem[64] + 196
                                while t < mem[96]:
                                    mem[v] = mem[u + 12 len 20]
                                    t = t + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = stor24
                                require ext_code.size(stor23)
                                call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + stor19
                            continue 
                        if s >= _1497:
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _5381 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_5381))
                            staticcall address(_5381).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5482 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5549 = mem[_5482]
                            require mem[_5482] == mem[_5482]
                            idx = mem[_5482]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _5549 <= idx:
                                    mem[mem[64] + 36] = _5549
                                    require ext_code.size(address(_5381))
                                    call address(_5381).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _5549
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6378 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6378] == bool(mem[_6378])
                                    if idx < _5549:
                                        revert with 'NH{q', 17
                                    idx = idx - _5549
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_5381))
                                call address(_5381).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6402 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6402] == bool(mem[_6402])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                        else:
                            if _1497 < s:
                                revert with 'NH{q', 17
                            stor19 = _1497 - s
                            _5425 = mem[64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor19
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _5607 = mem[96]
                            mem[mem[64] + 164] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 196
                            while idx < _5607:
                                mem[u] = mem[t + 12 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_5425 + 100] = this.address
                            mem[_5425 + 132] = stor24
                            require ext_code.size(stor23)
                            call stor23.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5425 + (32 * _5607) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _6477 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_6477))
                            staticcall address(_6477).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6529 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6541 = mem[_6529]
                            require mem[_6529] == mem[_6529]
                            idx = mem[_6529]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _6541 <= idx:
                                    mem[mem[64] + 36] = _6541
                                    require ext_code.size(address(_6477))
                                    call address(_6477).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _6541
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6825 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6825] == bool(mem[_6825])
                                    if idx < _6541:
                                        revert with 'NH{q', 17
                                    idx = idx - _6541
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_6477))
                                call address(_6477).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6841 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6841] == bool(mem[_6841])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                else:
                    s = 10
                    t = 1
                    idx = mem[_4225]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = t * s
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 'NH{q', 17
                    if 0 >= _2857:
                        revert with 'NH{q', 50
                    if mem[_2825 + ceil32(return_data.size) + 32] and t * s > -1 / mem[_2825 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    if not _4217:
                        revert with 'NH{q', 18
                    if cd[68] < mem[_2825 + ceil32(return_data.size) + 32] * t * s / _4217:
                        revert with 0, ' MAX PRICE check failed.'
                    if stor19 <= _1497:
                        if not stor19:
                            revert with 'NH{q', 18
                        idx = 0
                        s = 0
                        while idx < _1497 / stor19:
                            if s >= _1497:
                                if 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _6270 = mem[160]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_6270))
                                staticcall address(_6270).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6374 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6426 = mem[_6374]
                                require mem[_6374] == mem[_6374]
                                idx = mem[_6374]
                                while idx > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    if _6426 <= idx:
                                        mem[mem[64] + 36] = _6426
                                        require ext_code.size(address(_6270))
                                        call address(_6270).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, _6426
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6821 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6821] == bool(mem[_6821])
                                        if idx < _6426:
                                            revert with 'NH{q', 17
                                        idx = idx - _6426
                                        continue 
                                    mem[mem[64] + 36] = idx
                                    require ext_code.size(address(_6270))
                                    call address(_6270).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, idx
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6837 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6837] == bool(mem[_6837])
                                    if idx < idx:
                                        revert with 'NH{q', 17
                                    idx = 0
                                    continue 
                            if _1497 < s:
                                revert with 'NH{q', 17
                            if stor19 > _1497 - s:
                                if _1497 < s:
                                    revert with 'NH{q', 17
                                stor19 = _1497 - s
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor19
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            t = 0
                            u = 128
                            v = mem[64] + 196
                            while t < mem[96]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor24
                            require ext_code.size(stor23)
                            call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + stor19
                            continue 
                        if s >= _1497:
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _6250 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_6250))
                            staticcall address(_6250).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6328 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6398 = mem[_6328]
                            require mem[_6328] == mem[_6328]
                            idx = mem[_6328]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _6398 <= idx:
                                    mem[mem[64] + 36] = _6398
                                    require ext_code.size(address(_6250))
                                    call address(_6250).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _6398
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6820 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6820] == bool(mem[_6820])
                                    if idx < _6398:
                                        revert with 'NH{q', 17
                                    idx = idx - _6398
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_6250))
                                call address(_6250).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6836 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6836] == bool(mem[_6836])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                        else:
                            if _1497 < s:
                                revert with 'NH{q', 17
                            stor19 = _1497 - s
                            _6278 = mem[64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor19
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _6458 = mem[96]
                            mem[mem[64] + 164] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 196
                            while idx < _6458:
                                mem[u] = mem[t + 12 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_6278 + 100] = this.address
                            mem[_6278 + 132] = stor24
                            require ext_code.size(stor23)
                            call stor23.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _6278 + (32 * _6458) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _6882 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_6882))
                            staticcall address(_6882).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6894 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6898 = mem[_6894]
                            require mem[_6894] == mem[_6894]
                            idx = mem[_6894]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _6898 <= idx:
                                    mem[mem[64] + 36] = _6898
                                    require ext_code.size(address(_6882))
                                    call address(_6882).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _6898
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6950 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6950] == bool(mem[_6950])
                                    if idx < _6898:
                                        revert with 'NH{q', 17
                                    idx = idx - _6898
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_6882))
                                call address(_6882).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6954 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6954] == bool(mem[_6954])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                    else:
                        stor19 = _1497
                        if not stor19:
                            revert with 'NH{q', 18
                        idx = 0
                        s = 0
                        while idx < _1497 / stor19:
                            if s >= _1497:
                                if 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _6271 = mem[160]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_6271))
                                staticcall address(_6271).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6375 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6427 = mem[_6375]
                                require mem[_6375] == mem[_6375]
                                idx = mem[_6375]
                                while idx > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    if _6427 <= idx:
                                        mem[mem[64] + 36] = _6427
                                        require ext_code.size(address(_6271))
                                        call address(_6271).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, _6427
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6823 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6823] == bool(mem[_6823])
                                        if idx < _6427:
                                            revert with 'NH{q', 17
                                        idx = idx - _6427
                                        continue 
                                    mem[mem[64] + 36] = idx
                                    require ext_code.size(address(_6271))
                                    call address(_6271).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, idx
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6839 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6839] == bool(mem[_6839])
                                    if idx < idx:
                                        revert with 'NH{q', 17
                                    idx = 0
                                    continue 
                            if _1497 < s:
                                revert with 'NH{q', 17
                            if stor19 > _1497 - s:
                                if _1497 < s:
                                    revert with 'NH{q', 17
                                stor19 = _1497 - s
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor19
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            t = 0
                            u = 128
                            v = mem[64] + 196
                            while t < mem[96]:
                                mem[v] = mem[u + 12 len 20]
                                t = t + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor24
                            require ext_code.size(stor23)
                            call stor23.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args stor19, 0, 160, address(this.address), stor24, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s + stor19
                            continue 
                        if s >= _1497:
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _6251 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_6251))
                            staticcall address(_6251).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6330 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6399 = mem[_6330]
                            require mem[_6330] == mem[_6330]
                            idx = mem[_6330]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _6399 <= idx:
                                    mem[mem[64] + 36] = _6399
                                    require ext_code.size(address(_6251))
                                    call address(_6251).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _6399
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6822 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6822] == bool(mem[_6822])
                                    if idx < _6399:
                                        revert with 'NH{q', 17
                                    idx = idx - _6399
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_6251))
                                call address(_6251).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6838 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6838] == bool(mem[_6838])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
                        else:
                            if _1497 < s:
                                revert with 'NH{q', 17
                            stor19 = _1497 - s
                            _6279 = mem[64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = stor19
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _6459 = mem[96]
                            mem[mem[64] + 164] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 196
                            while idx < _6459:
                                mem[u] = mem[t + 12 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_6279 + 100] = this.address
                            mem[_6279 + 132] = stor24
                            require ext_code.size(stor23)
                            call stor23.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _6279 + (32 * _6459) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s > -stor19 - 1:
                                revert with 'NH{q', 17
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _6883 = mem[160]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_6883))
                            staticcall address(_6883).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6895 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6899 = mem[_6895]
                            require mem[_6895] == mem[_6895]
                            idx = mem[_6895]
                            while idx > 0:
                                mem[mem[64] + 4] = msg.sender
                                if _6899 <= idx:
                                    mem[mem[64] + 36] = _6899
                                    require ext_code.size(address(_6883))
                                    call address(_6883).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _6899
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6951 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6951] == bool(mem[_6951])
                                    if idx < _6899:
                                        revert with 'NH{q', 17
                                    idx = idx - _6899
                                    continue 
                                mem[mem[64] + 36] = idx
                                require ext_code.size(address(_6883))
                                call address(_6883).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6955 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6955] == bool(mem[_6955])
                                if idx < idx:
                                    revert with 'NH{q', 17
                                idx = 0
                                continue 
}



}
