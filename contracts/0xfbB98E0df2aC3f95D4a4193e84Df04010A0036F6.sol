contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
uint256 sub_36a041df;
uint256 sub_1f9b65c5;
uint256 sub_d89db4e3;
uint256 sub_43709d76;
uint256 sub_bdcd3d77;
uint256 totalTickets;
uint256 stor9;
uint256 stor10;
mapping of uint128 tickets;
mapping of uint256 balance;
mapping of uint256 depositTime;
array of address users;
uint8 stor15;

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

function _fallback() payable {
    revert
}

function updateFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor9 = arg1 % 101
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
    stor10 = arg1 % 101
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

function withdraw() payable {
    if depositTime[address(msg.sender)] > -sub_d89db4e3 - 1:
        revert with 'NH{q', 17
    require depositTime[address(msg.sender)] + sub_d89db4e3 < block.timestamp
    require balance[address(msg.sender)] > 0
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    balance[address(msg.sender)] = 0
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, balance[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_1d9e75f2(?) payable {
    if sub_bdcd3d77 > -sub_36a041df - 1:
        revert with 'NH{q', 17
    if sub_bdcd3d77 + sub_36a041df < 600:
        revert with 'NH{q', 17
    require block.timestamp > sub_bdcd3d77 + sub_36a041df - 600
    require not stor15
    idx = 0
    while idx < users.length:
        if idx >= users.length:
            revert with 'NH{q', 50
        if tickets[stor14[idx]] > -uint128(balance[stor14[idx]] / 1000) + test266151307():
            revert with 'NH{q', 17
        tickets[stor14[idx]] = uint128(tickets[stor14[idx]] + uint128(balance[stor14[idx]] / 1000))
        if idx >= users.length:
            revert with 'NH{q', 50
        mem[0] = users[idx]
        mem[32] = 12
        if totalTickets > -(balance[stor14[idx]] / 1000) - 1:
            revert with 'NH{q', 17
        totalTickets += balance[stor14[idx]] / 1000
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 > 0
    require not stor15
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    idx = 0
    while idx < users.length:
        mem[0] = 14
        if users[idx] != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if balance[address(msg.sender)] > -arg1 - 1:
            revert with 'NH{q', 17
        balance[address(msg.sender)] += arg1
        depositTime[address(msg.sender)] = block.timestamp
    users.length++
    users[users.length] = msg.sender
    if balance[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    balance[address(msg.sender)] += arg1
    depositTime[address(msg.sender)] = block.timestamp
}

function sub_90d22ed2(?) payable {
    mem[64] = 96
    if msg.sender == stor0:
        idx = 0
        while idx < users.length:
            mem[0] = users[idx]
            mem[32] = 12
            mem[mem[64] + 4] = users[idx]
            mem[mem[64] + 36] = balance[stor14[idx]]
            require ext_code.size(stor2)
            call stor2.0xa9059cbb with:
                 gas gas_remaining wei
                args users[idx], balance[stor14[idx]]
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
            mem[32] = 12
            mem[mem[64] + 4] = users[idx]
            mem[mem[64] + 36] = balance[stor14[idx]]
            require ext_code.size(stor2)
            call stor2.0xa9059cbb with:
                 gas gas_remaining wei
                args users[idx], balance[stor14[idx]]
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
    stor15 = 1
}

function drawing() payable {
    if sub_43709d76 > -sub_1f9b65c5 - 1:
        revert with 'NH{q', 17
    if sub_43709d76 + sub_1f9b65c5 < 600:
        revert with 'NH{q', 17
    require sub_43709d76 + sub_1f9b65c5 - 600 < block.timestamp
    require not stor15
    sub_43709d76 = block.timestamp
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 0 / 100 and stor9 > -1 / 0 / 100:
        revert with 'NH{q', 17
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, 0 / 100 * stor9
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
        mem[32] = 11
        if s > -tickets[stor14[idx]] - 1:
            revert with 'NH{q', 17
        if s + tickets[stor14[idx]] <= sha3(block.hash(block.number - 1)) % totalTickets:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + tickets[stor14[idx]]
            continue 
        if idx >= users.length:
            revert with 'NH{q', 50
        if 100 < stor9:
            revert with 'NH{q', 17
        if -stor9 + 100 < stor10:
            revert with 'NH{q', 17
        if 0 / 100 and -stor9 + -stor10 + 100 > -1 / 0 / 100:
            revert with 'NH{q', 17
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args users[idx], (100 * 0 / 100) - (stor9 * 0 / 100) - (stor10 * 0 / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
