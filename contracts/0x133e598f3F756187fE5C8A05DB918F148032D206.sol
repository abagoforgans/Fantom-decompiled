contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
uint256 sub_36a041df;
uint256 sub_1f9b65c5;
uint256 sub_d89db4e3;
uint256 sub_43709d76;
uint256 sub_bdcd3d77;
uint256 totalTickets;
uint256 stor10;
uint256 stor11;
uint256 stor12;
mapping of uint128 tickets;
mapping of uint256 balance;
mapping of uint256 depositTime;
array of address users;
array of address winners;
array of address stor18;
address stor26;
array of uint256 rewards;
array of uint256 stor28;
uint256 stor36;
uint8 stor37;

function sub_1f9b65c5(?) payable {
    return sub_1f9b65c5
}

function users(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < users.length
    return users[arg1]
}

function sub_36a041df(?) payable {
    return sub_36a041df
}

function sub_43709d76(?) payable {
    return sub_43709d76
}

function depositTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return depositTime[arg1]
}

function tickets(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tickets[arg1]
}

function winners(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 10
    return winners[arg1]
}

function sub_bdcd3d77(?) payable {
    return sub_bdcd3d77
}

function sub_d89db4e3(?) payable {
    return sub_d89db4e3
}

function totalTickets() payable {
    return totalTickets
}

function balance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balance[arg1]
}

function rewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 10
    return rewards[arg1]
}

function _fallback() payable {
    revert
}

function updateFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor10 = arg1 % 101
}

function sub_136435ca(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        require msg.sender == stor1
    sub_d89db4e3 = arg1
}

function sub_657c0e0a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        require msg.sender == stor1
    stor11 = arg1 % 101
}

function sub_38422bb9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        require msg.sender == stor1
    require arg1 >= 3540
    sub_1f9b65c5 = arg1
}

function sub_cf794516(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        require msg.sender == stor1
    require arg1 >= 3540
    sub_36a041df = arg1
}

function sub_1d9e75f2(?) payable {
    if sub_bdcd3d77 > -sub_36a041df - 1:
        revert with 'NH{q', 17
    if sub_bdcd3d77 + sub_36a041df < 600:
        revert with 'NH{q', 17
    require block.timestamp > sub_bdcd3d77 + sub_36a041df - 600
    idx = 0
    while idx < users.length:
        if idx >= users.length:
            revert with 'NH{q', 50
        if tickets[stor16[idx]] > -uint128(balance[stor16[idx]] / 1000) + test266151307():
            revert with 'NH{q', 17
        tickets[stor16[idx]] = uint128(tickets[stor16[idx]] + uint128(balance[stor16[idx]] / 1000))
        if idx >= users.length:
            revert with 'NH{q', 50
        mem[0] = users[idx]
        mem[32] = 14
        if totalTickets > -(balance[stor16[idx]] / 1000) - 1:
            revert with 'NH{q', 17
        totalTickets += balance[stor16[idx]] / 1000
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function withdraw() payable {
    if depositTime[address(msg.sender)] > -sub_d89db4e3 - 1:
        revert with 'NH{q', 17
    require depositTime[address(msg.sender)] + sub_d89db4e3 < block.timestamp
    require balance[address(msg.sender)] > 0
    require ext_code.size(stor3)
    call stor3.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    balance[address(msg.sender)] = 0
    require ext_code.size(stor3)
    call stor3.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, balance[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stor12 < balance[address(msg.sender)]:
        revert with 'NH{q', 17
    stor12 -= balance[address(msg.sender)]
}

function getWinner() payable {
    mem[64] = 480
    mem[416] = 0
    mem[448] = 0
    mem[var7001] = 416
    s = var7001
    idx = var7002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[416] = 0
        mem[448] = 0
        mem[s + 32] = 416
        s = s + 32
        idx = idx - 1
        continue 
    _7 = mem[64]
    mem[64] = mem[64] + 320
    _11 = mem[64]
    mem[64] = mem[64] + 64
    mem[_11] = 0
    mem[_11 + 32] = 0
    mem[var15001] = _11
    s = var15001
    idx = var15002
    while idx - 1:
        _11 = mem[64]
        mem[64] = mem[64] + 64
        mem[_11] = 0
        mem[_11 + 32] = 0
        mem[s + 32] = _11
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < 10:
        _13 = mem[64]
        mem[64] = mem[64] + 64
        mem[_13] = winners[idx]
        mem[_13 + 32] = rewards[idx]
        mem[(32 * idx) + _7] = _13
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _14 = mem[64]
    idx = 0
    s = _7
    t = mem[64]
    while idx < 10:
        _18 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_18 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _14 + -mem[64] + 640
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 > 0
    require not stor37
    require ext_code.size(stor3)
    call stor3.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    idx = 0
    while idx < users.length:
        mem[0] = 16
        if users[idx] != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if balance[address(msg.sender)] > -arg1 - 1:
            revert with 'NH{q', 17
        balance[address(msg.sender)] += arg1
        depositTime[address(msg.sender)] = block.timestamp
        if stor12 > -arg1 - 1:
            revert with 'NH{q', 17
        stor12 += arg1
    users.length++
    users[users.length] = msg.sender
    if balance[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    balance[address(msg.sender)] += arg1
    depositTime[address(msg.sender)] = block.timestamp
    if stor12 > -arg1 - 1:
        revert with 'NH{q', 17
    stor12 += arg1
}

function sub_90d22ed2(?) payable {
    mem[64] = 96
    if msg.sender == stor0:
        idx = 0
        while idx < users.length:
            mem[0] = users[idx]
            mem[32] = 14
            mem[mem[64] + 4] = users[idx]
            mem[mem[64] + 36] = balance[stor16[idx]]
            require ext_code.size(stor3)
            call stor3.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args users[idx], balance[stor16[idx]]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _25 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_25] == bool(mem[_25])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        require msg.sender == stor1
        idx = 0
        while idx < users.length:
            mem[0] = users[idx]
            mem[32] = 14
            mem[mem[64] + 4] = users[idx]
            mem[mem[64] + 36] = balance[stor16[idx]]
            require ext_code.size(stor3)
            call stor3.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args users[idx], balance[stor16[idx]]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _26 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_26] == bool(mem[_26])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    stor37 = 1
}

function drawing() payable {
    if sub_43709d76 > -sub_1f9b65c5 - 1:
        revert with 'NH{q', 17
    if sub_43709d76 + sub_1f9b65c5 < 600:
        revert with 'NH{q', 17
    require sub_43709d76 + sub_1f9b65c5 - 600 < block.timestamp
    sub_43709d76 = block.timestamp
    require ext_code.size(stor3)
    call stor3.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor3)
    staticcall stor3.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < stor12:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - stor12 / 100 and stor10 > -1 / ext_call.return_data[0] - stor12 / 100:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - stor12 / 100 * stor10 / 100 and 75 > -1 / ext_call.return_data[0] - stor12 / 100 * stor10 / 100:
        revert with 'NH{q', 17
    require ext_code.size(stor3)
    call stor3.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, 75 * ext_call.return_data[0] - stor12 / 100 * stor10 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0] - stor12 / 100 and stor10 > -1 / ext_call.return_data[0] - stor12 / 100:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - stor12 / 100 * stor10 / 100 and 25 > -1 / ext_call.return_data[0] - stor12 / 100 * stor10 / 100:
        revert with 'NH{q', 17
    require ext_code.size(stor3)
    call stor3.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, 25 * ext_call.return_data[0] - stor12 / 100 * stor10 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.number < 1:
        revert with 'NH{q', 17
    if not totalTickets:
        revert with 'NH{q', 18
    idx = 0
    s = 0
    while idx < users.length:
        mem[0] = users[idx]
        mem[32] = 13
        if s > -tickets[stor16[idx]] - 1:
            revert with 'NH{q', 17
        if s + tickets[stor16[idx]] <= sha3(block.hash(block.number - 1)) % totalTickets:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + tickets[stor16[idx]]
            continue 
        if idx >= users.length:
            revert with 'NH{q', 50
        if 100 < stor10:
            revert with 'NH{q', 17
        if -stor10 + 100 < stor11:
            revert with 'NH{q', 17
        if ext_call.return_data[0] - stor12 / 100 and -stor10 + -stor11 + 100 > -1 / ext_call.return_data[0] - stor12 / 100:
            revert with 'NH{q', 17
        require ext_code.size(stor3)
        call stor3.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args users[idx], (100 * ext_call.return_data[0] - stor12 / 100) - (stor10 * ext_call.return_data[0] - stor12 / 100) - (stor11 * ext_call.return_data[0] - stor12 / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        s = 0
        while s < 9:
            if s > -2:
                revert with 'NH{q', 17
            if s + 1 >= 10:
                revert with 'NH{q', 50
            if s >= 10:
                revert with 'NH{q', 50
            rewards[s] = stor28[s]
            if s > -2:
                revert with 'NH{q', 17
            if s + 1 >= 10:
                revert with 'NH{q', 50
            if s >= 10:
                revert with 'NH{q', 50
            winners[s] = stor18[s]
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            continue 
        if 100 < stor10:
            revert with 'NH{q', 17
        if -stor10 + 100 < stor11:
            revert with 'NH{q', 17
        if ext_call.return_data[0] - stor12 / 100 and -stor10 + -stor11 + 100 > -1 / ext_call.return_data[0] - stor12 / 100:
            revert with 'NH{q', 17
        stor36 = (100 * ext_call.return_data[0] - stor12 / 100) - (stor10 * ext_call.return_data[0] - stor12 / 100) - (stor11 * ext_call.return_data[0] - stor12 / 100)
        if idx >= users.length:
            revert with 'NH{q', 50
        stor26 = users[idx]
    require ext_code.size(stor3)
    staticcall stor3.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    stor12 = ext_call.return_data[0]
}



}
