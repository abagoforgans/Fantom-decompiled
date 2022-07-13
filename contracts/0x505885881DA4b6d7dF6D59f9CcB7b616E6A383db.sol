contract main {




// =====================  Runtime code  =====================


#
#  - sub_28f96474(?)
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
array of struct stor12;
mapping of struct info;
array of struct stor14;
uint256 totalDeposits;
address uSDCAddress;
address sub_8b8de86cAddress;

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
        stor12.length++
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

function sub_535397fc(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 36).length:
        s = 0
        while s < ('cd', 4).length:
            t = 0
            while t < ('cd', 68).length:
                if idx >= ('cd', 36).length:
                    revert with 'NH{q', 50
                if cd[((32 * idx) + cd[36] + 36)] >= stor12.length:
                    revert with 'NH{q', 50
                mem[0] = 12
                if s >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
                if t >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                require ext_code.size(stor12[cd[((32 * idx) + cd[36] + 36)]].field_256)
                staticcall stor12[cd[((32 * idx) + cd[36] + 36)]].field_256.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _95 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _96 = mem[_95]
                require mem[_95] == mem[_95 + 12 len 20]
                if mem[_95 + 12 len 20]:
                    require ext_code.size(mem[_95 + 12 len 20])
                    staticcall mem[_95 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _99 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_99] == mem[_99 + 18 len 14]
                    _101 = mem[_99 + 32]
                    require mem[_99 + 32] == mem[_99 + 50 len 14]
                    require mem[_99 + 64] == mem[_99 + 92 len 4]
                    if mem[_99 + 18 len 14] < 0:
                        if mem[_99 + 50 len 14] >= 0:
                            if t >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                            require ext_code.size(address(_96))
                            staticcall address(_96).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _108 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_108] == mem[_108 + 12 len 20]
                            if mem[_108 + 12 len 20] == address(cd[((32 * t) + cd[68] + 36)]):
                                return s, t, idx, Mask(112, 0, _101)
                    else:
                        if t >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                        require ext_code.size(address(_96))
                        staticcall address(_96).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _107 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_107] == mem[_107 + 12 len 20]
                        if mem[_107 + 12 len 20] == address(cd[((32 * t) + cd[68] + 36)]):
                            return s, t, idx, Mask(112, 0, _101)
                        if Mask(112, 0, _101) >= 0:
                            if t >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                            require ext_code.size(address(_96))
                            staticcall address(_96).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _115 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_115] == mem[_115 + 12 len 20]
                            if mem[_115 + 12 len 20] == address(cd[((32 * t) + cd[68] + 36)]):
                                return s, t, idx, Mask(112, 0, _101)
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                continue 
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}



}
