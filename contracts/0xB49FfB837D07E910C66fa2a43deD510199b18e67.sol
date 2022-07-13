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

function addRouters(address[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            s = 0
            while s < stor0.length:
                mem[0] = 0
                if stor0[s].field_0 != msg.sender:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
                if not address(cd[((32 * idx) + arg1 + 36)]):
                    revert with 0, 'router address cannot be 0'
                _48 = mem[64]
                mem[64] = mem[64] + 64
                mem[_48] = address(cd[((32 * idx) + arg1 + 36)])
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _53 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_53] == mem[_53 + 12 len 20]
                mem[_48 + 32] = mem[_53 + 12 len 20]
                stor12.length++
                mem[0] = 12
                stor12[stor12.length].field_0 = address(cd[((32 * idx) + arg1 + 36)])
                stor12[stor12.length].field_256 = mem[_48 + 44 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            revert with 0, 'Ownable: caller is not the owner'
    revert with 0, 'Ownable: caller is not the owner'
}

function getContractInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _8 = mem[ceil32(return_data.size) + 96]
    require mem[ceil32(return_data.size) + 96] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
    _9 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97 > test266151307() or ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _9
    require _8 + _9 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_9)] = mem[ceil32(return_data.size) + _8 + 128 len ceil32(_9)]
    if ceil32(_9) > _9:
        mem[(2 * ceil32(return_data.size)) + _9 + 128] = 0
    mem[mem[64]] = ext_call.return_data[0]
    mem[mem[64] + 32] = 64
    mem[mem[64] + 64] = _9
    mem[mem[64] + 96 len ceil32(_9)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_9)]
    if ceil32(_9) > _9:
        mem[mem[64] + _9 + 96] = 0
    return ext_call.return_data[0], Array(len=_9, data=mem[mem[64] + 96 len ceil32(_9)])
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
                _76 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_76] == bool(mem[_76])
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
            _79 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_79] == bool(mem[_79])
            if idx < idx:
                revert with 'NH{q', 17
            s = idx
            idx = 0
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _69 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _75 = mem[_69]
        require mem[_69] == mem[_69]
        if mem[_69]:
            idx = mem[_69]
            while idx > 0:
                mem[mem[64] + 4] = sub_5dfb849bAddress
                if _75 <= idx:
                    mem[mem[64] + 36] = _75
                    require ext_code.size(stor10)
                    call stor10.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_5dfb849bAddress, _75
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _133 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_133] == bool(mem[_133])
                    if idx < _75:
                        revert with 'NH{q', 17
                    idx = idx - _75
                    continue 
                mem[mem[64] + 36] = idx
                require ext_code.size(stor10)
                call stor10.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_5dfb849bAddress, idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _137 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_137] == bool(mem[_137])
                if idx < idx:
                    revert with 'NH{q', 17
                idx = 0
                continue 
        else:
            idx = mem[_69]
            while idx > 0:
                mem[mem[64] + 4] = sub_5dfb849bAddress
                if _75 <= idx:
                    mem[mem[64] + 36] = _75
                    require ext_code.size(stor10)
                    call stor10.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_5dfb849bAddress, _75
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _134 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_134] == bool(mem[_134])
                    if idx < _75:
                        revert with 'NH{q', 17
                    idx = idx - _75
                    continue 
                mem[mem[64] + 36] = idx
                require ext_code.size(stor10)
                call stor10.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_5dfb849bAddress, idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _138 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_138] == bool(mem[_138])
                if idx < idx:
                    revert with 'NH{q', 17
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
                _78 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_78] == bool(mem[_78])
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
            _80 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_80] == bool(mem[_80])
            if idx < idx:
                revert with 'NH{q', 17
            idx = 0
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _70 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _77 = mem[_70]
        require mem[_70] == mem[_70]
        if mem[_70]:
            idx = mem[_70]
            while idx > 0:
                mem[mem[64] + 4] = sub_5dfb849bAddress
                if _77 <= idx:
                    mem[mem[64] + 36] = _77
                    require ext_code.size(stor10)
                    call stor10.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_5dfb849bAddress, _77
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _135 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_135] == bool(mem[_135])
                    if idx < _77:
                        revert with 'NH{q', 17
                    idx = idx - _77
                    continue 
                mem[mem[64] + 36] = idx
                require ext_code.size(stor10)
                call stor10.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_5dfb849bAddress, idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _139 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_139] == bool(mem[_139])
                if idx < idx:
                    revert with 'NH{q', 17
                idx = 0
                continue 
        else:
            idx = mem[_70]
            while idx > 0:
                mem[mem[64] + 4] = sub_5dfb849bAddress
                if _77 <= idx:
                    mem[mem[64] + 36] = _77
                    require ext_code.size(stor10)
                    call stor10.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_5dfb849bAddress, _77
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _136 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_136] == bool(mem[_136])
                    if idx < _77:
                        revert with 'NH{q', 17
                    idx = idx - _77
                    continue 
                mem[mem[64] + 36] = idx
                require ext_code.size(stor10)
                call stor10.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_5dfb849bAddress, idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _140 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_140] == bool(mem[_140])
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
                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                require ext_code.size(address(cd[((32 * t) + cd[68] + 36)]))
                staticcall address(cd[((32 * t) + cd[68] + 36)]).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _154 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _155 = mem[_154]
                require mem[_154] == mem[_154]
                if mem[_154] < 2:
                    revert with 'NH{q', 17
                if not mem[_154] - 2:
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    if cd[((32 * idx) + cd[36] + 36)] < 1:
                        revert with 'NH{q', 17
                    if cd[((32 * idx) + cd[36] + 36)] - 1 >= stor12.length:
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
                    require ext_code.size(stor12[cd[((32 * idx) + cd[36] + 36)] - 1].field_256)
                    staticcall stor12[cd[((32 * idx) + cd[36] + 36)] - 1].field_256.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _163 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _164 = mem[_163]
                    require mem[_163] == mem[_163 + 12 len 20]
                    if not mem[_163 + 12 len 20]:
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        continue 
                    require ext_code.size(mem[_163 + 12 len 20])
                    staticcall mem[_163 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _173 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _174 = mem[_173]
                    require mem[_173] == mem[_173 + 18 len 14]
                    _182 = mem[_173 + 32]
                    require mem[_173 + 32] == mem[_173 + 50 len 14]
                    require mem[_173 + 64] == mem[_173 + 92 len 4]
                    if t >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                    require ext_code.size(address(cd[((32 * t) + cd[68] + 36)]))
                    staticcall address(cd[((32 * t) + cd[68] + 36)]).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _191 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_191] == mem[_191]
                    if mem[_191] < 2:
                        revert with 'NH{q', 17
                    if not mem[_191] - 2:
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        if cd[((32 * idx) + cd[36] + 36)] < 1:
                            revert with 'NH{q', 17
                        if t >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                        if Mask(112, 0, _174) < cd[((32 * idx) + cd[36] + 36)] - 1:
                            require ext_code.size(address(cd[((32 * t) + cd[68] + 36)]))
                            staticcall address(cd[((32 * t) + cd[68] + 36)]).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _206 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_206] == mem[_206]
                            if mem[_206] < 2:
                                revert with 'NH{q', 17
                            if not mem[_206] - 2:
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                if cd[((32 * idx) + cd[36] + 36)] < 1:
                                    revert with 'NH{q', 17
                                if Mask(112, 0, _182) < cd[((32 * idx) + cd[36] + 36)] - 1:
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    t = t + 1
                                    continue 
                                if t >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                require ext_code.size(address(_164))
                                staticcall address(_164).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _282 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_282] == mem[_282 + 12 len 20]
                                if mem[_282 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    t = t + 1
                                    continue 
                            else:
                                if bool(bool(mem[_206] - 2 < 78)) or bool(bool(mem[_206] - 2 < 32)):
                                    if 10^(mem[_206] - 2) > -1:
                                        revert with 'NH{q', 17
                                    if idx >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    if cd[((32 * idx) + cd[36] + 36)] < 10^(mem[_206] - 2):
                                        revert with 'NH{q', 17
                                    if Mask(112, 0, _182) < cd[((32 * idx) + cd[36] + 36)] - 10^(mem[_206] - 2):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                    if t >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                    require ext_code.size(address(_164))
                                    staticcall address(_164).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _299 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_299] == mem[_299 + 12 len 20]
                                    if mem[_299 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                else:
                                    v = 10
                                    w = 1
                                    u = mem[_206] - 2
                                    while u > 1:
                                        if v > -1 / v:
                                            revert with 'NH{q', 17
                                        if not bool(u):
                                            v = v * v
                                            w = w
                                            u = uint255(u) * 0.5
                                            continue 
                                        v = v * v
                                        w = w * v
                                        u = uint255(u) * 0.5
                                        continue 
                                    if w > -1 / v:
                                        revert with 'NH{q', 17
                                    if idx >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    if cd[((32 * idx) + cd[36] + 36)] < w * v:
                                        revert with 'NH{q', 17
                                    if Mask(112, 0, _182) < cd[((32 * idx) + cd[36] + 36)] - (w * v):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                    if t >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                    require ext_code.size(address(_164))
                                    staticcall address(_164).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _605 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_605] == mem[_605 + 12 len 20]
                                    if mem[_605 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                        else:
                            require ext_code.size(address(_164))
                            staticcall address(_164).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _205 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_205] == mem[_205 + 12 len 20]
                            if mem[_205 + 12 len 20] == address(cd[((32 * t) + cd[68] + 36)]):
                                if s > -2:
                                    revert with 'NH{q', 17
                                return s + 1, t, idx, Mask(112, 0, _174)
                            if t >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                            require ext_code.size(address(cd[((32 * t) + cd[68] + 36)]))
                            staticcall address(cd[((32 * t) + cd[68] + 36)]).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _255 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_255] == mem[_255]
                            if mem[_255] < 2:
                                revert with 'NH{q', 17
                            if not mem[_255] - 2:
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                if cd[((32 * idx) + cd[36] + 36)] < 1:
                                    revert with 'NH{q', 17
                                if Mask(112, 0, _182) < cd[((32 * idx) + cd[36] + 36)] - 1:
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    t = t + 1
                                    continue 
                                if t >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                require ext_code.size(address(_164))
                                staticcall address(_164).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _357 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_357] == mem[_357 + 12 len 20]
                                if mem[_357 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    t = t + 1
                                    continue 
                            else:
                                if bool(bool(mem[_255] - 2 < 78)) or bool(bool(mem[_255] - 2 < 32)):
                                    if 10^(mem[_255] - 2) > -1:
                                        revert with 'NH{q', 17
                                    if idx >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    if cd[((32 * idx) + cd[36] + 36)] < 10^(mem[_255] - 2):
                                        revert with 'NH{q', 17
                                    if Mask(112, 0, _182) < cd[((32 * idx) + cd[36] + 36)] - 10^(mem[_255] - 2):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                    if t >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                    require ext_code.size(address(_164))
                                    staticcall address(_164).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _382 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_382] == mem[_382 + 12 len 20]
                                    if mem[_382 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                else:
                                    v = 10
                                    w = 1
                                    u = mem[_255] - 2
                                    while u > 1:
                                        if v > -1 / v:
                                            revert with 'NH{q', 17
                                        if not bool(u):
                                            v = v * v
                                            w = w
                                            u = uint255(u) * 0.5
                                            continue 
                                        v = v * v
                                        w = w * v
                                        u = uint255(u) * 0.5
                                        continue 
                                    if w > -1 / v:
                                        revert with 'NH{q', 17
                                    if idx >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    if cd[((32 * idx) + cd[36] + 36)] < w * v:
                                        revert with 'NH{q', 17
                                    if Mask(112, 0, _182) < cd[((32 * idx) + cd[36] + 36)] - (w * v):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                    if t >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                    require ext_code.size(address(_164))
                                    staticcall address(_164).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _606 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_606] == mem[_606 + 12 len 20]
                                    if mem[_606 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                    else:
                        if bool(bool(mem[_191] - 2 < 78)) or bool(bool(mem[_191] - 2 < 32)):
                            if 10^(mem[_191] - 2) > -1:
                                revert with 'NH{q', 17
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            if cd[((32 * idx) + cd[36] + 36)] < 10^(mem[_191] - 2):
                                revert with 'NH{q', 17
                            if t >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                            if Mask(112, 0, _174) < cd[((32 * idx) + cd[36] + 36)] - 10^(mem[_191] - 2):
                                require ext_code.size(address(cd[((32 * t) + cd[68] + 36)]))
                                staticcall address(cd[((32 * t) + cd[68] + 36)]).0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _220 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_220] == mem[_220]
                                if mem[_220] < 2:
                                    revert with 'NH{q', 17
                                if not mem[_220] - 2:
                                    if idx >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    if cd[((32 * idx) + cd[36] + 36)] < 1:
                                        revert with 'NH{q', 17
                                    if Mask(112, 0, _182) < cd[((32 * idx) + cd[36] + 36)] - 1:
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                    if t >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                    require ext_code.size(address(_164))
                                    staticcall address(_164).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _298 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_298] == mem[_298 + 12 len 20]
                                    if mem[_298 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                else:
                                    if bool(bool(mem[_220] - 2 < 78)) or bool(bool(mem[_220] - 2 < 32)):
                                        if 10^(mem[_220] - 2) > -1:
                                            revert with 'NH{q', 17
                                        if idx >= ('cd', 36).length:
                                            revert with 'NH{q', 50
                                        if cd[((32 * idx) + cd[36] + 36)] < 10^(mem[_220] - 2):
                                            revert with 'NH{q', 17
                                        if Mask(112, 0, _182) < cd[((32 * idx) + cd[36] + 36)] - 10^(mem[_220] - 2):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                                        if t >= ('cd', 68).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                        require ext_code.size(address(_164))
                                        staticcall address(_164).token1() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _315 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_315] == mem[_315 + 12 len 20]
                                        if mem[_315 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                                    else:
                                        v = 10
                                        w = 1
                                        u = mem[_220] - 2
                                        while u > 1:
                                            if v > -1 / v:
                                                revert with 'NH{q', 17
                                            if not bool(u):
                                                v = v * v
                                                w = w
                                                u = uint255(u) * 0.5
                                                continue 
                                            v = v * v
                                            w = w * v
                                            u = uint255(u) * 0.5
                                            continue 
                                        if w > -1 / v:
                                            revert with 'NH{q', 17
                                        if idx >= ('cd', 36).length:
                                            revert with 'NH{q', 50
                                        if cd[((32 * idx) + cd[36] + 36)] < w * v:
                                            revert with 'NH{q', 17
                                        if Mask(112, 0, _182) < cd[((32 * idx) + cd[36] + 36)] - (w * v):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                                        if t >= ('cd', 68).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                        require ext_code.size(address(_164))
                                        staticcall address(_164).token1() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _603 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_603] == mem[_603 + 12 len 20]
                                        if mem[_603 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                            else:
                                require ext_code.size(address(_164))
                                staticcall address(_164).token0() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _218 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_218] == mem[_218 + 12 len 20]
                                if mem[_218 + 12 len 20] == address(cd[((32 * t) + cd[68] + 36)]):
                                    if s > -2:
                                        revert with 'NH{q', 17
                                    return s + 1, t, idx, Mask(112, 0, _174)
                                if t >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                require ext_code.size(address(cd[((32 * t) + cd[68] + 36)]))
                                staticcall address(cd[((32 * t) + cd[68] + 36)]).0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _263 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_263] == mem[_263]
                                if mem[_263] < 2:
                                    revert with 'NH{q', 17
                                if not mem[_263] - 2:
                                    if idx >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    if cd[((32 * idx) + cd[36] + 36)] < 1:
                                        revert with 'NH{q', 17
                                    if Mask(112, 0, _182) < cd[((32 * idx) + cd[36] + 36)] - 1:
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                    if t >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                    require ext_code.size(address(_164))
                                    staticcall address(_164).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _381 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_381] == mem[_381 + 12 len 20]
                                    if mem[_381 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                else:
                                    if bool(bool(mem[_263] - 2 < 78)) or bool(bool(mem[_263] - 2 < 32)):
                                        if 10^(mem[_263] - 2) > -1:
                                            revert with 'NH{q', 17
                                        if idx >= ('cd', 36).length:
                                            revert with 'NH{q', 50
                                        if cd[((32 * idx) + cd[36] + 36)] < 10^(mem[_263] - 2):
                                            revert with 'NH{q', 17
                                        if Mask(112, 0, _182) < cd[((32 * idx) + cd[36] + 36)] - 10^(mem[_263] - 2):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                                        if t >= ('cd', 68).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                        require ext_code.size(address(_164))
                                        staticcall address(_164).token1() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _405 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_405] == mem[_405 + 12 len 20]
                                        if mem[_405 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                                    else:
                                        v = 10
                                        w = 1
                                        u = mem[_263] - 2
                                        while u > 1:
                                            if v > -1 / v:
                                                revert with 'NH{q', 17
                                            if not bool(u):
                                                v = v * v
                                                w = w
                                                u = uint255(u) * 0.5
                                                continue 
                                            v = v * v
                                            w = w * v
                                            u = uint255(u) * 0.5
                                            continue 
                                        if w > -1 / v:
                                            revert with 'NH{q', 17
                                        if idx >= ('cd', 36).length:
                                            revert with 'NH{q', 50
                                        if cd[((32 * idx) + cd[36] + 36)] < w * v:
                                            revert with 'NH{q', 17
                                        if Mask(112, 0, _182) < cd[((32 * idx) + cd[36] + 36)] - (w * v):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                                        if t >= ('cd', 68).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                        require ext_code.size(address(_164))
                                        staticcall address(_164).token1() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _604 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_604] == mem[_604 + 12 len 20]
                                        if mem[_604 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                        else:
                            v = 10
                            w = 1
                            u = mem[_191] - 2
                            while u > 1:
                                if v > -1 / v:
                                    revert with 'NH{q', 17
                                if not bool(u):
                                    v = v * v
                                    w = w
                                    u = uint255(u) * 0.5
                                    continue 
                                v = v * v
                                w = w * v
                                u = uint255(u) * 0.5
                                continue 
                            if w > -1 / v:
                                revert with 'NH{q', 17
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            if cd[((32 * idx) + cd[36] + 36)] < w * v:
                                revert with 'NH{q', 17
                            if t >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                            if Mask(112, 0, _174) < cd[((32 * idx) + cd[36] + 36)] - (w * v):
                                require ext_code.size(address(cd[((32 * t) + cd[68] + 36)]))
                                staticcall address(cd[((32 * t) + cd[68] + 36)]).0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _246 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_246] == mem[_246]
                                if mem[_246] < 2:
                                    revert with 'NH{q', 17
                                if not mem[_246] - 2:
                                    if idx >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    if cd[((32 * idx) + cd[36] + 36)] < 1:
                                        revert with 'NH{q', 17
                                    if Mask(112, 0, _182) < cd[((32 * idx) + cd[36] + 36)] - 1:
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                    if t >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                    require ext_code.size(address(_164))
                                    staticcall address(_164).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _347 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_347] == mem[_347 + 12 len 20]
                                    if mem[_347 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                else:
                                    if bool(bool(mem[_246] - 2 < 78)) or bool(bool(mem[_246] - 2 < 32)):
                                        if 10^(mem[_246] - 2) > -1:
                                            revert with 'NH{q', 17
                                        if idx >= ('cd', 36).length:
                                            revert with 'NH{q', 50
                                        if cd[((32 * idx) + cd[36] + 36)] < 10^(mem[_246] - 2):
                                            revert with 'NH{q', 17
                                        if Mask(112, 0, _182) < cd[((32 * idx) + cd[36] + 36)] - 10^(mem[_246] - 2):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                                        if t >= ('cd', 68).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                        require ext_code.size(address(_164))
                                        staticcall address(_164).token1() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _362 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_362] == mem[_362 + 12 len 20]
                                        if mem[_362 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                                    else:
                                        v = 10
                                        w = 1
                                        u = mem[_246] - 2
                                        while u > 1:
                                            if v > -1 / v:
                                                revert with 'NH{q', 17
                                            if not bool(u):
                                                v = v * v
                                                w = w
                                                u = uint255(u) * 0.5
                                                continue 
                                            v = v * v
                                            w = w * v
                                            u = uint255(u) * 0.5
                                            continue 
                                        if w > -1 / v:
                                            revert with 'NH{q', 17
                                        if idx >= ('cd', 36).length:
                                            revert with 'NH{q', 50
                                        if cd[((32 * idx) + cd[36] + 36)] < w * v:
                                            revert with 'NH{q', 17
                                        if Mask(112, 0, _182) < cd[((32 * idx) + cd[36] + 36)] - (w * v):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                                        if t >= ('cd', 68).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                        require ext_code.size(address(_164))
                                        staticcall address(_164).token1() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _601 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_601] == mem[_601 + 12 len 20]
                                        if mem[_601 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                            else:
                                require ext_code.size(address(_164))
                                staticcall address(_164).token0() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _244 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_244] == mem[_244 + 12 len 20]
                                if mem[_244 + 12 len 20] == address(cd[((32 * t) + cd[68] + 36)]):
                                    if s > -2:
                                        revert with 'NH{q', 17
                                    return s + 1, t, idx, Mask(112, 0, _174)
                                if t >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                require ext_code.size(address(cd[((32 * t) + cd[68] + 36)]))
                                staticcall address(cd[((32 * t) + cd[68] + 36)]).0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _285 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_285] == mem[_285]
                                if mem[_285] < 2:
                                    revert with 'NH{q', 17
                                if not mem[_285] - 2:
                                    if idx >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    if cd[((32 * idx) + cd[36] + 36)] < 1:
                                        revert with 'NH{q', 17
                                    if Mask(112, 0, _182) < cd[((32 * idx) + cd[36] + 36)] - 1:
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                    if t >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                    require ext_code.size(address(_164))
                                    staticcall address(_164).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _440 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_440] == mem[_440 + 12 len 20]
                                    if mem[_440 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                else:
                                    if bool(bool(mem[_285] - 2 < 78)) or bool(bool(mem[_285] - 2 < 32)):
                                        if 10^(mem[_285] - 2) > -1:
                                            revert with 'NH{q', 17
                                        if idx >= ('cd', 36).length:
                                            revert with 'NH{q', 50
                                        if cd[((32 * idx) + cd[36] + 36)] < 10^(mem[_285] - 2):
                                            revert with 'NH{q', 17
                                        if Mask(112, 0, _182) < cd[((32 * idx) + cd[36] + 36)] - 10^(mem[_285] - 2):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                                        if t >= ('cd', 68).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                        require ext_code.size(address(_164))
                                        staticcall address(_164).token1() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _463 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_463] == mem[_463 + 12 len 20]
                                        if mem[_463 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                                    else:
                                        v = 10
                                        w = 1
                                        u = mem[_285] - 2
                                        while u > 1:
                                            if v > -1 / v:
                                                revert with 'NH{q', 17
                                            if not bool(u):
                                                v = v * v
                                                w = w
                                                u = uint255(u) * 0.5
                                                continue 
                                            v = v * v
                                            w = w * v
                                            u = uint255(u) * 0.5
                                            continue 
                                        if w > -1 / v:
                                            revert with 'NH{q', 17
                                        if idx >= ('cd', 36).length:
                                            revert with 'NH{q', 50
                                        if cd[((32 * idx) + cd[36] + 36)] < w * v:
                                            revert with 'NH{q', 17
                                        if Mask(112, 0, _182) < cd[((32 * idx) + cd[36] + 36)] - (w * v):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                                        if t >= ('cd', 68).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                        require ext_code.size(address(_164))
                                        staticcall address(_164).token1() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _602 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_602] == mem[_602 + 12 len 20]
                                        if mem[_602 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                    if s > -2:
                        revert with 'NH{q', 17
                    return s + 1, t, idx, Mask(112, 0, _182)
                if bool(bool(mem[_154] - 2 < 78)) or bool(bool(mem[_154] - 2 < 32)):
                    if 10^(mem[_154] - 2) > -1:
                        revert with 'NH{q', 17
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    if not 10^(mem[_154] - 2):
                        revert with 'NH{q', 18
                    if cd[((32 * idx) + cd[36] + 36)] / 10^(mem[_154] - 2) < 1:
                        revert with 'NH{q', 17
                    if (cd[((32 * idx) + cd[36] + 36)] / 10^(mem[_154] - 2)) - 1 >= stor12.length:
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
                    require ext_code.size(stor12[(cd[((32 * idx) + cd[36] + 36)] / 10^(_155 - 2)) - 1].field_256)
                    staticcall stor12[(cd[((32 * idx) + cd[36] + 36)] / 10^(_155 - 2)) - 1].field_256.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _166 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _168 = mem[_166]
                    require mem[_166] == mem[_166 + 12 len 20]
                    if not mem[_166 + 12 len 20]:
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        continue 
                    require ext_code.size(mem[_166 + 12 len 20])
                    staticcall mem[_166 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _177 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _180 = mem[_177]
                    require mem[_177] == mem[_177 + 18 len 14]
                    _184 = mem[_177 + 32]
                    require mem[_177 + 32] == mem[_177 + 50 len 14]
                    require mem[_177 + 64] == mem[_177 + 92 len 4]
                    if t >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                    require ext_code.size(address(cd[((32 * t) + cd[68] + 36)]))
                    staticcall address(cd[((32 * t) + cd[68] + 36)]).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _195 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_195] == mem[_195]
                    if mem[_195] < 2:
                        revert with 'NH{q', 17
                    if not mem[_195] - 2:
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        if cd[((32 * idx) + cd[36] + 36)] < 1:
                            revert with 'NH{q', 17
                        if t >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                        if Mask(112, 0, _180) < cd[((32 * idx) + cd[36] + 36)] - 1:
                            require ext_code.size(address(cd[((32 * t) + cd[68] + 36)]))
                            staticcall address(cd[((32 * t) + cd[68] + 36)]).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _219 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_219] == mem[_219]
                            if mem[_219] < 2:
                                revert with 'NH{q', 17
                            if not mem[_219] - 2:
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                if cd[((32 * idx) + cd[36] + 36)] < 1:
                                    revert with 'NH{q', 17
                                if Mask(112, 0, _184) < cd[((32 * idx) + cd[36] + 36)] - 1:
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    t = t + 1
                                    continue 
                                if t >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                require ext_code.size(address(_168))
                                staticcall address(_168).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _297 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_297] == mem[_297 + 12 len 20]
                                if mem[_297 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    t = t + 1
                                    continue 
                            else:
                                if bool(bool(mem[_219] - 2 < 78)) or bool(bool(mem[_219] - 2 < 32)):
                                    if 10^(mem[_219] - 2) > -1:
                                        revert with 'NH{q', 17
                                    if idx >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    if cd[((32 * idx) + cd[36] + 36)] < 10^(mem[_219] - 2):
                                        revert with 'NH{q', 17
                                    if Mask(112, 0, _184) < cd[((32 * idx) + cd[36] + 36)] - 10^(mem[_219] - 2):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                    if t >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                    require ext_code.size(address(_168))
                                    staticcall address(_168).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _314 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_314] == mem[_314 + 12 len 20]
                                    if mem[_314 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                else:
                                    v = 10
                                    w = 1
                                    u = mem[_219] - 2
                                    while u > 1:
                                        if v > -1 / v:
                                            revert with 'NH{q', 17
                                        if not bool(u):
                                            v = v * v
                                            w = w
                                            u = uint255(u) * 0.5
                                            continue 
                                        v = v * v
                                        w = w * v
                                        u = uint255(u) * 0.5
                                        continue 
                                    if w > -1 / v:
                                        revert with 'NH{q', 17
                                    if idx >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    if cd[((32 * idx) + cd[36] + 36)] < w * v:
                                        revert with 'NH{q', 17
                                    if Mask(112, 0, _184) < cd[((32 * idx) + cd[36] + 36)] - (w * v):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                    if t >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                    require ext_code.size(address(_168))
                                    staticcall address(_168).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _599 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_599] == mem[_599 + 12 len 20]
                                    if mem[_599 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                        else:
                            require ext_code.size(address(_168))
                            staticcall address(_168).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _217 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_217] == mem[_217 + 12 len 20]
                            if mem[_217 + 12 len 20] == address(cd[((32 * t) + cd[68] + 36)]):
                                if s > -2:
                                    revert with 'NH{q', 17
                                return s + 1, t, idx, Mask(112, 0, _180)
                            if t >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                            require ext_code.size(address(cd[((32 * t) + cd[68] + 36)]))
                            staticcall address(cd[((32 * t) + cd[68] + 36)]).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _262 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_262] == mem[_262]
                            if mem[_262] < 2:
                                revert with 'NH{q', 17
                            if not mem[_262] - 2:
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                if cd[((32 * idx) + cd[36] + 36)] < 1:
                                    revert with 'NH{q', 17
                                if Mask(112, 0, _184) < cd[((32 * idx) + cd[36] + 36)] - 1:
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    t = t + 1
                                    continue 
                                if t >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                require ext_code.size(address(_168))
                                staticcall address(_168).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _379 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_379] == mem[_379 + 12 len 20]
                                if mem[_379 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    t = t + 1
                                    continue 
                            else:
                                if bool(bool(mem[_262] - 2 < 78)) or bool(bool(mem[_262] - 2 < 32)):
                                    if 10^(mem[_262] - 2) > -1:
                                        revert with 'NH{q', 17
                                    if idx >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    if cd[((32 * idx) + cd[36] + 36)] < 10^(mem[_262] - 2):
                                        revert with 'NH{q', 17
                                    if Mask(112, 0, _184) < cd[((32 * idx) + cd[36] + 36)] - 10^(mem[_262] - 2):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                    if t >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                    require ext_code.size(address(_168))
                                    staticcall address(_168).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _404 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_404] == mem[_404 + 12 len 20]
                                    if mem[_404 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                else:
                                    v = 10
                                    w = 1
                                    u = mem[_262] - 2
                                    while u > 1:
                                        if v > -1 / v:
                                            revert with 'NH{q', 17
                                        if not bool(u):
                                            v = v * v
                                            w = w
                                            u = uint255(u) * 0.5
                                            continue 
                                        v = v * v
                                        w = w * v
                                        u = uint255(u) * 0.5
                                        continue 
                                    if w > -1 / v:
                                        revert with 'NH{q', 17
                                    if idx >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    if cd[((32 * idx) + cd[36] + 36)] < w * v:
                                        revert with 'NH{q', 17
                                    if Mask(112, 0, _184) < cd[((32 * idx) + cd[36] + 36)] - (w * v):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                    if t >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                    require ext_code.size(address(_168))
                                    staticcall address(_168).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _600 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_600] == mem[_600 + 12 len 20]
                                    if mem[_600 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                    else:
                        if bool(bool(mem[_195] - 2 < 78)) or bool(bool(mem[_195] - 2 < 32)):
                            if 10^(mem[_195] - 2) > -1:
                                revert with 'NH{q', 17
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            if cd[((32 * idx) + cd[36] + 36)] < 10^(mem[_195] - 2):
                                revert with 'NH{q', 17
                            if t >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                            if Mask(112, 0, _180) < cd[((32 * idx) + cd[36] + 36)] - 10^(mem[_195] - 2):
                                require ext_code.size(address(cd[((32 * t) + cd[68] + 36)]))
                                staticcall address(cd[((32 * t) + cd[68] + 36)]).0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _230 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_230] == mem[_230]
                                if mem[_230] < 2:
                                    revert with 'NH{q', 17
                                if not mem[_230] - 2:
                                    if idx >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    if cd[((32 * idx) + cd[36] + 36)] < 1:
                                        revert with 'NH{q', 17
                                    if Mask(112, 0, _184) < cd[((32 * idx) + cd[36] + 36)] - 1:
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                    if t >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                    require ext_code.size(address(_168))
                                    staticcall address(_168).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _313 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_313] == mem[_313 + 12 len 20]
                                    if mem[_313 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                else:
                                    if bool(bool(mem[_230] - 2 < 78)) or bool(bool(mem[_230] - 2 < 32)):
                                        if 10^(mem[_230] - 2) > -1:
                                            revert with 'NH{q', 17
                                        if idx >= ('cd', 36).length:
                                            revert with 'NH{q', 50
                                        if cd[((32 * idx) + cd[36] + 36)] < 10^(mem[_230] - 2):
                                            revert with 'NH{q', 17
                                        if Mask(112, 0, _184) < cd[((32 * idx) + cd[36] + 36)] - 10^(mem[_230] - 2):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                                        if t >= ('cd', 68).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                        require ext_code.size(address(_168))
                                        staticcall address(_168).token1() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _330 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_330] == mem[_330 + 12 len 20]
                                        if mem[_330 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                                    else:
                                        v = 10
                                        w = 1
                                        u = mem[_230] - 2
                                        while u > 1:
                                            if v > -1 / v:
                                                revert with 'NH{q', 17
                                            if not bool(u):
                                                v = v * v
                                                w = w
                                                u = uint255(u) * 0.5
                                                continue 
                                            v = v * v
                                            w = w * v
                                            u = uint255(u) * 0.5
                                            continue 
                                        if w > -1 / v:
                                            revert with 'NH{q', 17
                                        if idx >= ('cd', 36).length:
                                            revert with 'NH{q', 50
                                        if cd[((32 * idx) + cd[36] + 36)] < w * v:
                                            revert with 'NH{q', 17
                                        if Mask(112, 0, _184) < cd[((32 * idx) + cd[36] + 36)] - (w * v):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                                        if t >= ('cd', 68).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                        require ext_code.size(address(_168))
                                        staticcall address(_168).token1() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _597 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_597] == mem[_597 + 12 len 20]
                                        if mem[_597 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                            else:
                                require ext_code.size(address(_168))
                                staticcall address(_168).token0() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _229 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_229] == mem[_229 + 12 len 20]
                                if mem[_229 + 12 len 20] == address(cd[((32 * t) + cd[68] + 36)]):
                                    if s > -2:
                                        revert with 'NH{q', 17
                                    return s + 1, t, idx, Mask(112, 0, _180)
                                if t >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                require ext_code.size(address(cd[((32 * t) + cd[68] + 36)]))
                                staticcall address(cd[((32 * t) + cd[68] + 36)]).0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _268 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_268] == mem[_268]
                                if mem[_268] < 2:
                                    revert with 'NH{q', 17
                                if not mem[_268] - 2:
                                    if idx >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    if cd[((32 * idx) + cd[36] + 36)] < 1:
                                        revert with 'NH{q', 17
                                    if Mask(112, 0, _184) < cd[((32 * idx) + cd[36] + 36)] - 1:
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                    if t >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                    require ext_code.size(address(_168))
                                    staticcall address(_168).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _403 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_403] == mem[_403 + 12 len 20]
                                    if mem[_403 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                else:
                                    if bool(bool(mem[_268] - 2 < 78)) or bool(bool(mem[_268] - 2 < 32)):
                                        if 10^(mem[_268] - 2) > -1:
                                            revert with 'NH{q', 17
                                        if idx >= ('cd', 36).length:
                                            revert with 'NH{q', 50
                                        if cd[((32 * idx) + cd[36] + 36)] < 10^(mem[_268] - 2):
                                            revert with 'NH{q', 17
                                        if Mask(112, 0, _184) < cd[((32 * idx) + cd[36] + 36)] - 10^(mem[_268] - 2):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                                        if t >= ('cd', 68).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                        require ext_code.size(address(_168))
                                        staticcall address(_168).token1() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _421 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_421] == mem[_421 + 12 len 20]
                                        if mem[_421 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                                    else:
                                        v = 10
                                        w = 1
                                        u = mem[_268] - 2
                                        while u > 1:
                                            if v > -1 / v:
                                                revert with 'NH{q', 17
                                            if not bool(u):
                                                v = v * v
                                                w = w
                                                u = uint255(u) * 0.5
                                                continue 
                                            v = v * v
                                            w = w * v
                                            u = uint255(u) * 0.5
                                            continue 
                                        if w > -1 / v:
                                            revert with 'NH{q', 17
                                        if idx >= ('cd', 36).length:
                                            revert with 'NH{q', 50
                                        if cd[((32 * idx) + cd[36] + 36)] < w * v:
                                            revert with 'NH{q', 17
                                        if Mask(112, 0, _184) < cd[((32 * idx) + cd[36] + 36)] - (w * v):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                                        if t >= ('cd', 68).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                        require ext_code.size(address(_168))
                                        staticcall address(_168).token1() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _598 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_598] == mem[_598 + 12 len 20]
                                        if mem[_598 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                        else:
                            v = 10
                            w = 1
                            u = mem[_195] - 2
                            while u > 1:
                                if v > -1 / v:
                                    revert with 'NH{q', 17
                                if not bool(u):
                                    v = v * v
                                    w = w
                                    u = uint255(u) * 0.5
                                    continue 
                                v = v * v
                                w = w * v
                                u = uint255(u) * 0.5
                                continue 
                            if w > -1 / v:
                                revert with 'NH{q', 17
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            if cd[((32 * idx) + cd[36] + 36)] < w * v:
                                revert with 'NH{q', 17
                            if t >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                            if Mask(112, 0, _180) < cd[((32 * idx) + cd[36] + 36)] - (w * v):
                                require ext_code.size(address(cd[((32 * t) + cd[68] + 36)]))
                                staticcall address(cd[((32 * t) + cd[68] + 36)]).0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _245 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_245] == mem[_245]
                                if mem[_245] < 2:
                                    revert with 'NH{q', 17
                                if not mem[_245] - 2:
                                    if idx >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    if cd[((32 * idx) + cd[36] + 36)] < 1:
                                        revert with 'NH{q', 17
                                    if Mask(112, 0, _184) < cd[((32 * idx) + cd[36] + 36)] - 1:
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                    if t >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                    require ext_code.size(address(_168))
                                    staticcall address(_168).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _346 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_346] == mem[_346 + 12 len 20]
                                    if mem[_346 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                else:
                                    if bool(bool(mem[_245] - 2 < 78)) or bool(bool(mem[_245] - 2 < 32)):
                                        if 10^(mem[_245] - 2) > -1:
                                            revert with 'NH{q', 17
                                        if idx >= ('cd', 36).length:
                                            revert with 'NH{q', 50
                                        if cd[((32 * idx) + cd[36] + 36)] < 10^(mem[_245] - 2):
                                            revert with 'NH{q', 17
                                        if Mask(112, 0, _184) < cd[((32 * idx) + cd[36] + 36)] - 10^(mem[_245] - 2):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                                        if t >= ('cd', 68).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                        require ext_code.size(address(_168))
                                        staticcall address(_168).token1() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _361 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_361] == mem[_361 + 12 len 20]
                                        if mem[_361 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                                    else:
                                        v = 10
                                        w = 1
                                        u = mem[_245] - 2
                                        while u > 1:
                                            if v > -1 / v:
                                                revert with 'NH{q', 17
                                            if not bool(u):
                                                v = v * v
                                                w = w
                                                u = uint255(u) * 0.5
                                                continue 
                                            v = v * v
                                            w = w * v
                                            u = uint255(u) * 0.5
                                            continue 
                                        if w > -1 / v:
                                            revert with 'NH{q', 17
                                        if idx >= ('cd', 36).length:
                                            revert with 'NH{q', 50
                                        if cd[((32 * idx) + cd[36] + 36)] < w * v:
                                            revert with 'NH{q', 17
                                        if Mask(112, 0, _184) < cd[((32 * idx) + cd[36] + 36)] - (w * v):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                                        if t >= ('cd', 68).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                        require ext_code.size(address(_168))
                                        staticcall address(_168).token1() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _595 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_595] == mem[_595 + 12 len 20]
                                        if mem[_595 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                            else:
                                require ext_code.size(address(_168))
                                staticcall address(_168).token0() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _243 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_243] == mem[_243 + 12 len 20]
                                if mem[_243 + 12 len 20] == address(cd[((32 * t) + cd[68] + 36)]):
                                    if s > -2:
                                        revert with 'NH{q', 17
                                    return s + 1, t, idx, Mask(112, 0, _180)
                                if t >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                require ext_code.size(address(cd[((32 * t) + cd[68] + 36)]))
                                staticcall address(cd[((32 * t) + cd[68] + 36)]).0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _283 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_283] == mem[_283]
                                if mem[_283] < 2:
                                    revert with 'NH{q', 17
                                if not mem[_283] - 2:
                                    if idx >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    if cd[((32 * idx) + cd[36] + 36)] < 1:
                                        revert with 'NH{q', 17
                                    if Mask(112, 0, _184) < cd[((32 * idx) + cd[36] + 36)] - 1:
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                    if t >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                    require ext_code.size(address(_168))
                                    staticcall address(_168).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _439 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_439] == mem[_439 + 12 len 20]
                                    if mem[_439 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                else:
                                    if bool(bool(mem[_283] - 2 < 78)) or bool(bool(mem[_283] - 2 < 32)):
                                        if 10^(mem[_283] - 2) > -1:
                                            revert with 'NH{q', 17
                                        if idx >= ('cd', 36).length:
                                            revert with 'NH{q', 50
                                        if cd[((32 * idx) + cd[36] + 36)] < 10^(mem[_283] - 2):
                                            revert with 'NH{q', 17
                                        if Mask(112, 0, _184) < cd[((32 * idx) + cd[36] + 36)] - 10^(mem[_283] - 2):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                                        if t >= ('cd', 68).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                        require ext_code.size(address(_168))
                                        staticcall address(_168).token1() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _462 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_462] == mem[_462 + 12 len 20]
                                        if mem[_462 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                                    else:
                                        v = 10
                                        w = 1
                                        u = mem[_283] - 2
                                        while u > 1:
                                            if v > -1 / v:
                                                revert with 'NH{q', 17
                                            if not bool(u):
                                                v = v * v
                                                w = w
                                                u = uint255(u) * 0.5
                                                continue 
                                            v = v * v
                                            w = w * v
                                            u = uint255(u) * 0.5
                                            continue 
                                        if w > -1 / v:
                                            revert with 'NH{q', 17
                                        if idx >= ('cd', 36).length:
                                            revert with 'NH{q', 50
                                        if cd[((32 * idx) + cd[36] + 36)] < w * v:
                                            revert with 'NH{q', 17
                                        if Mask(112, 0, _184) < cd[((32 * idx) + cd[36] + 36)] - (w * v):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                                        if t >= ('cd', 68).length:
                                            revert with 'NH{q', 50
                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                        require ext_code.size(address(_168))
                                        staticcall address(_168).token1() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _596 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_596] == mem[_596 + 12 len 20]
                                        if mem[_596 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                            if t == -1:
                                                revert with 'NH{q', 17
                                            t = t + 1
                                            continue 
                    if s > -2:
                        revert with 'NH{q', 17
                    return s + 1, t, idx, Mask(112, 0, _184)
                v = 10
                w = 1
                u = mem[_154] - 2
                while u > 1:
                    if v > -1 / v:
                        revert with 'NH{q', 17
                    if not bool(u):
                        v = v * v
                        w = w
                        u = uint255(u) * 0.5
                        continue 
                    v = v * v
                    w = w * v
                    u = uint255(u) * 0.5
                    continue 
                if w > -1 / v:
                    revert with 'NH{q', 17
                if idx >= ('cd', 36).length:
                    revert with 'NH{q', 50
                if not w * v:
                    revert with 'NH{q', 18
                if cd[((32 * idx) + cd[36] + 36)] / w * v < 1:
                    revert with 'NH{q', 17
                if (cd[((32 * idx) + cd[36] + 36)] / w * v) - 1 >= stor12.length:
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
                require ext_code.size(stor12[(cd[((32 * idx) + cd[36] + 36)] / w * v) - 1].field_256)
                staticcall stor12[(cd[((32 * idx) + cd[36] + 36)] / w * v) - 1].field_256.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _296 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _302 = mem[_296]
                require mem[_296] == mem[_296 + 12 len 20]
                if not mem[_296 + 12 len 20]:
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    continue 
                require ext_code.size(mem[_296 + 12 len 20])
                staticcall mem[_296 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _337 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _345 = mem[_337]
                require mem[_337] == mem[_337 + 18 len 14]
                _363 = mem[_337 + 32]
                require mem[_337 + 32] == mem[_337 + 50 len 14]
                require mem[_337 + 64] == mem[_337 + 92 len 4]
                if t >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                require ext_code.size(address(cd[((32 * t) + cd[68] + 36)]))
                staticcall address(cd[((32 * t) + cd[68] + 36)]).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _465 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_465] == mem[_465]
                if mem[_465] < 2:
                    revert with 'NH{q', 17
                if not mem[_465] - 2:
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    if cd[((32 * idx) + cd[36] + 36)] < 1:
                        revert with 'NH{q', 17
                    if t >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                    if Mask(112, 0, _345) < cd[((32 * idx) + cd[36] + 36)] - 1:
                        require ext_code.size(address(cd[((32 * t) + cd[68] + 36)]))
                        staticcall address(cd[((32 * t) + cd[68] + 36)]).0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _521 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_521] == mem[_521]
                        if mem[_521] < 2:
                            revert with 'NH{q', 17
                        if not mem[_521] - 2:
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            if cd[((32 * idx) + cd[36] + 36)] < 1:
                                revert with 'NH{q', 17
                            if Mask(112, 0, _363) < cd[((32 * idx) + cd[36] + 36)] - 1:
                                if t == -1:
                                    revert with 'NH{q', 17
                                t = t + 1
                                continue 
                            if t >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                            require ext_code.size(address(_302))
                            staticcall address(_302).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _554 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_554] == mem[_554 + 12 len 20]
                            if mem[_554 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                if t == -1:
                                    revert with 'NH{q', 17
                                t = t + 1
                                continue 
                        else:
                            if bool(bool(mem[_521] - 2 < 78)) or bool(bool(mem[_521] - 2 < 32)):
                                if 10^(mem[_521] - 2) > -1:
                                    revert with 'NH{q', 17
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                if cd[((32 * idx) + cd[36] + 36)] < 10^(mem[_521] - 2):
                                    revert with 'NH{q', 17
                                if Mask(112, 0, _363) < cd[((32 * idx) + cd[36] + 36)] - 10^(mem[_521] - 2):
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    t = t + 1
                                    continue 
                                if t >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                require ext_code.size(address(_302))
                                staticcall address(_302).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _561 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_561] == mem[_561 + 12 len 20]
                                if mem[_561 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    t = t + 1
                                    continue 
                            else:
                                v = 10
                                w = 1
                                u = mem[_521] - 2
                                while u > 1:
                                    if v > -1 / v:
                                        revert with 'NH{q', 17
                                    if not bool(u):
                                        v = v * v
                                        w = w
                                        u = uint255(u) * 0.5
                                        continue 
                                    v = v * v
                                    w = w * v
                                    u = uint255(u) * 0.5
                                    continue 
                                if w > -1 / v:
                                    revert with 'NH{q', 17
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                if cd[((32 * idx) + cd[36] + 36)] < w * v:
                                    revert with 'NH{q', 17
                                if Mask(112, 0, _363) < cd[((32 * idx) + cd[36] + 36)] - (w * v):
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    t = t + 1
                                    continue 
                                if t >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                require ext_code.size(address(_302))
                                staticcall address(_302).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _762 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_762] == mem[_762 + 12 len 20]
                                if mem[_762 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    t = t + 1
                                    continue 
                    else:
                        require ext_code.size(address(_302))
                        staticcall address(_302).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _520 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_520] == mem[_520 + 12 len 20]
                        if mem[_520 + 12 len 20] == address(cd[((32 * t) + cd[68] + 36)]):
                            if s > -2:
                                revert with 'NH{q', 17
                            return s + 1, t, idx, Mask(112, 0, _345)
                        if t >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                        require ext_code.size(address(cd[((32 * t) + cd[68] + 36)]))
                        staticcall address(cd[((32 * t) + cd[68] + 36)]).0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _544 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_544] == mem[_544]
                        if mem[_544] < 2:
                            revert with 'NH{q', 17
                        if not mem[_544] - 2:
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            if cd[((32 * idx) + cd[36] + 36)] < 1:
                                revert with 'NH{q', 17
                            if Mask(112, 0, _363) < cd[((32 * idx) + cd[36] + 36)] - 1:
                                if t == -1:
                                    revert with 'NH{q', 17
                                t = t + 1
                                continue 
                            if t >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                            require ext_code.size(address(_302))
                            staticcall address(_302).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _635 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_635] == mem[_635 + 12 len 20]
                            if mem[_635 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                if t == -1:
                                    revert with 'NH{q', 17
                                t = t + 1
                                continue 
                        else:
                            if bool(bool(mem[_544] - 2 < 78)) or bool(bool(mem[_544] - 2 < 32)):
                                if 10^(mem[_544] - 2) > -1:
                                    revert with 'NH{q', 17
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                if cd[((32 * idx) + cd[36] + 36)] < 10^(mem[_544] - 2):
                                    revert with 'NH{q', 17
                                if Mask(112, 0, _363) < cd[((32 * idx) + cd[36] + 36)] - 10^(mem[_544] - 2):
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    t = t + 1
                                    continue 
                                if t >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                require ext_code.size(address(_302))
                                staticcall address(_302).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _658 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_658] == mem[_658 + 12 len 20]
                                if mem[_658 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    t = t + 1
                                    continue 
                            else:
                                v = 10
                                w = 1
                                u = mem[_544] - 2
                                while u > 1:
                                    if v > -1 / v:
                                        revert with 'NH{q', 17
                                    if not bool(u):
                                        v = v * v
                                        w = w
                                        u = uint255(u) * 0.5
                                        continue 
                                    v = v * v
                                    w = w * v
                                    u = uint255(u) * 0.5
                                    continue 
                                if w > -1 / v:
                                    revert with 'NH{q', 17
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                if cd[((32 * idx) + cd[36] + 36)] < w * v:
                                    revert with 'NH{q', 17
                                if Mask(112, 0, _363) < cd[((32 * idx) + cd[36] + 36)] - (w * v):
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    t = t + 1
                                    continue 
                                if t >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                require ext_code.size(address(_302))
                                staticcall address(_302).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _763 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_763] == mem[_763 + 12 len 20]
                                if mem[_763 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    t = t + 1
                                    continue 
                else:
                    if bool(bool(mem[_465] - 2 < 78)) or bool(bool(mem[_465] - 2 < 32)):
                        if 10^(mem[_465] - 2) > -1:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        if cd[((32 * idx) + cd[36] + 36)] < 10^(mem[_465] - 2):
                            revert with 'NH{q', 17
                        if t >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                        if Mask(112, 0, _345) < cd[((32 * idx) + cd[36] + 36)] - 10^(mem[_465] - 2):
                            require ext_code.size(address(cd[((32 * t) + cd[68] + 36)]))
                            staticcall address(cd[((32 * t) + cd[68] + 36)]).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _529 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_529] == mem[_529]
                            if mem[_529] < 2:
                                revert with 'NH{q', 17
                            if not mem[_529] - 2:
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                if cd[((32 * idx) + cd[36] + 36)] < 1:
                                    revert with 'NH{q', 17
                                if Mask(112, 0, _363) < cd[((32 * idx) + cd[36] + 36)] - 1:
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    t = t + 1
                                    continue 
                                if t >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                require ext_code.size(address(_302))
                                staticcall address(_302).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _560 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_560] == mem[_560 + 12 len 20]
                                if mem[_560 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    t = t + 1
                                    continue 
                            else:
                                if bool(bool(mem[_529] - 2 < 78)) or bool(bool(mem[_529] - 2 < 32)):
                                    if 10^(mem[_529] - 2) > -1:
                                        revert with 'NH{q', 17
                                    if idx >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    if cd[((32 * idx) + cd[36] + 36)] < 10^(mem[_529] - 2):
                                        revert with 'NH{q', 17
                                    if Mask(112, 0, _363) < cd[((32 * idx) + cd[36] + 36)] - 10^(mem[_529] - 2):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                    if t >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                    require ext_code.size(address(_302))
                                    staticcall address(_302).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _612 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_612] == mem[_612 + 12 len 20]
                                    if mem[_612 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                else:
                                    v = 10
                                    w = 1
                                    u = mem[_529] - 2
                                    while u > 1:
                                        if v > -1 / v:
                                            revert with 'NH{q', 17
                                        if not bool(u):
                                            v = v * v
                                            w = w
                                            u = uint255(u) * 0.5
                                            continue 
                                        v = v * v
                                        w = w * v
                                        u = uint255(u) * 0.5
                                        continue 
                                    if w > -1 / v:
                                        revert with 'NH{q', 17
                                    if idx >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    if cd[((32 * idx) + cd[36] + 36)] < w * v:
                                        revert with 'NH{q', 17
                                    if Mask(112, 0, _363) < cd[((32 * idx) + cd[36] + 36)] - (w * v):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                    if t >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                    require ext_code.size(address(_302))
                                    staticcall address(_302).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _760 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_760] == mem[_760 + 12 len 20]
                                    if mem[_760 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                        else:
                            require ext_code.size(address(_302))
                            staticcall address(_302).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _528 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_528] == mem[_528 + 12 len 20]
                            if mem[_528 + 12 len 20] == address(cd[((32 * t) + cd[68] + 36)]):
                                if s > -2:
                                    revert with 'NH{q', 17
                                return s + 1, t, idx, Mask(112, 0, _345)
                            if t >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                            require ext_code.size(address(cd[((32 * t) + cd[68] + 36)]))
                            staticcall address(cd[((32 * t) + cd[68] + 36)]).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _548 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_548] == mem[_548]
                            if mem[_548] < 2:
                                revert with 'NH{q', 17
                            if not mem[_548] - 2:
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                if cd[((32 * idx) + cd[36] + 36)] < 1:
                                    revert with 'NH{q', 17
                                if Mask(112, 0, _363) < cd[((32 * idx) + cd[36] + 36)] - 1:
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    t = t + 1
                                    continue 
                                if t >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                require ext_code.size(address(_302))
                                staticcall address(_302).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _657 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_657] == mem[_657 + 12 len 20]
                                if mem[_657 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    t = t + 1
                                    continue 
                            else:
                                if bool(bool(mem[_548] - 2 < 78)) or bool(bool(mem[_548] - 2 < 32)):
                                    if 10^(mem[_548] - 2) > -1:
                                        revert with 'NH{q', 17
                                    if idx >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    if cd[((32 * idx) + cd[36] + 36)] < 10^(mem[_548] - 2):
                                        revert with 'NH{q', 17
                                    if Mask(112, 0, _363) < cd[((32 * idx) + cd[36] + 36)] - 10^(mem[_548] - 2):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                    if t >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                    require ext_code.size(address(_302))
                                    staticcall address(_302).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _671 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_671] == mem[_671 + 12 len 20]
                                    if mem[_671 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                else:
                                    v = 10
                                    w = 1
                                    u = mem[_548] - 2
                                    while u > 1:
                                        if v > -1 / v:
                                            revert with 'NH{q', 17
                                        if not bool(u):
                                            v = v * v
                                            w = w
                                            u = uint255(u) * 0.5
                                            continue 
                                        v = v * v
                                        w = w * v
                                        u = uint255(u) * 0.5
                                        continue 
                                    if w > -1 / v:
                                        revert with 'NH{q', 17
                                    if idx >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    if cd[((32 * idx) + cd[36] + 36)] < w * v:
                                        revert with 'NH{q', 17
                                    if Mask(112, 0, _363) < cd[((32 * idx) + cd[36] + 36)] - (w * v):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                    if t >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                    require ext_code.size(address(_302))
                                    staticcall address(_302).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _761 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_761] == mem[_761 + 12 len 20]
                                    if mem[_761 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                    else:
                        v = 10
                        w = 1
                        u = mem[_465] - 2
                        while u > 1:
                            if v > -1 / v:
                                revert with 'NH{q', 17
                            if not bool(u):
                                v = v * v
                                w = w
                                u = uint255(u) * 0.5
                                continue 
                            v = v * v
                            w = w * v
                            u = uint255(u) * 0.5
                            continue 
                        if w > -1 / v:
                            revert with 'NH{q', 17
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        if cd[((32 * idx) + cd[36] + 36)] < w * v:
                            revert with 'NH{q', 17
                        if t >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                        if Mask(112, 0, _345) < cd[((32 * idx) + cd[36] + 36)] - (w * v):
                            require ext_code.size(address(cd[((32 * t) + cd[68] + 36)]))
                            staticcall address(cd[((32 * t) + cd[68] + 36)]).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _607 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_607] == mem[_607]
                            if mem[_607] < 2:
                                revert with 'NH{q', 17
                            if not mem[_607] - 2:
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                if cd[((32 * idx) + cd[36] + 36)] < 1:
                                    revert with 'NH{q', 17
                                if Mask(112, 0, _363) < cd[((32 * idx) + cd[36] + 36)] - 1:
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    t = t + 1
                                    continue 
                                if t >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                require ext_code.size(address(_302))
                                staticcall address(_302).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _703 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_703] == mem[_703 + 12 len 20]
                                if mem[_703 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    t = t + 1
                                    continue 
                            else:
                                if bool(bool(mem[_607] - 2 < 78)) or bool(bool(mem[_607] - 2 < 32)):
                                    if 10^(mem[_607] - 2) > -1:
                                        revert with 'NH{q', 17
                                    if idx >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    if cd[((32 * idx) + cd[36] + 36)] < 10^(mem[_607] - 2):
                                        revert with 'NH{q', 17
                                    if Mask(112, 0, _363) < cd[((32 * idx) + cd[36] + 36)] - 10^(mem[_607] - 2):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                    if t >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                    require ext_code.size(address(_302))
                                    staticcall address(_302).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _709 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_709] == mem[_709 + 12 len 20]
                                    if mem[_709 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                else:
                                    v = 10
                                    w = 1
                                    u = mem[_607] - 2
                                    while u > 1:
                                        if v > -1 / v:
                                            revert with 'NH{q', 17
                                        if not bool(u):
                                            v = v * v
                                            w = w
                                            u = uint255(u) * 0.5
                                            continue 
                                        v = v * v
                                        w = w * v
                                        u = uint255(u) * 0.5
                                        continue 
                                    if w > -1 / v:
                                        revert with 'NH{q', 17
                                    if idx >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    if cd[((32 * idx) + cd[36] + 36)] < w * v:
                                        revert with 'NH{q', 17
                                    if Mask(112, 0, _363) < cd[((32 * idx) + cd[36] + 36)] - (w * v):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                    if t >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                    require ext_code.size(address(_302))
                                    staticcall address(_302).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _758 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_758] == mem[_758 + 12 len 20]
                                    if mem[_758 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                        else:
                            require ext_code.size(address(_302))
                            staticcall address(_302).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _592 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_592] == mem[_592 + 12 len 20]
                            if mem[_592 + 12 len 20] == address(cd[((32 * t) + cd[68] + 36)]):
                                if s > -2:
                                    revert with 'NH{q', 17
                                return s + 1, t, idx, Mask(112, 0, _345)
                            if t >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                            require ext_code.size(address(cd[((32 * t) + cd[68] + 36)]))
                            staticcall address(cd[((32 * t) + cd[68] + 36)]).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _666 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_666] == mem[_666]
                            if mem[_666] < 2:
                                revert with 'NH{q', 17
                            if not mem[_666] - 2:
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                if cd[((32 * idx) + cd[36] + 36)] < 1:
                                    revert with 'NH{q', 17
                                if Mask(112, 0, _363) < cd[((32 * idx) + cd[36] + 36)] - 1:
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    t = t + 1
                                    continue 
                                if t >= ('cd', 68).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                require ext_code.size(address(_302))
                                staticcall address(_302).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _725 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_725] == mem[_725 + 12 len 20]
                                if mem[_725 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    t = t + 1
                                    continue 
                            else:
                                if bool(bool(mem[_666] - 2 < 78)) or bool(bool(mem[_666] - 2 < 32)):
                                    if 10^(mem[_666] - 2) > -1:
                                        revert with 'NH{q', 17
                                    if idx >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    if cd[((32 * idx) + cd[36] + 36)] < 10^(mem[_666] - 2):
                                        revert with 'NH{q', 17
                                    if Mask(112, 0, _363) < cd[((32 * idx) + cd[36] + 36)] - 10^(mem[_666] - 2):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                    if t >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                    require ext_code.size(address(_302))
                                    staticcall address(_302).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _731 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_731] == mem[_731 + 12 len 20]
                                    if mem[_731 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                else:
                                    v = 10
                                    w = 1
                                    u = mem[_666] - 2
                                    while u > 1:
                                        if v > -1 / v:
                                            revert with 'NH{q', 17
                                        if not bool(u):
                                            v = v * v
                                            w = w
                                            u = uint255(u) * 0.5
                                            continue 
                                        v = v * v
                                        w = w * v
                                        u = uint255(u) * 0.5
                                        continue 
                                    if w > -1 / v:
                                        revert with 'NH{q', 17
                                    if idx >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    if cd[((32 * idx) + cd[36] + 36)] < w * v:
                                        revert with 'NH{q', 17
                                    if Mask(112, 0, _363) < cd[((32 * idx) + cd[36] + 36)] - (w * v):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                                    if t >= ('cd', 68).length:
                                        revert with 'NH{q', 50
                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                    require ext_code.size(address(_302))
                                    staticcall address(_302).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _759 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_759] == mem[_759 + 12 len 20]
                                    if mem[_759 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        continue 
                if s > -2:
                    revert with 'NH{q', 17
                return s + 1, t, idx, Mask(112, 0, _363)
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
