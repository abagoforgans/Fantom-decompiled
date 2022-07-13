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
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
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

function sub_832d1941(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    mem[64] = 192
    mem[96 len 96] = call.data[calldata.size len 96]
    idx = 0
    while idx < ('cd', 68).length:
        if cd[36] >= stor12.length:
            revert with 'NH{q', 50
        mem[0] = 12
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64] + 4] = address(cd[4])
        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
        require ext_code.size(stor12[cd[36]].field_256)
        staticcall stor12[cd[36]].field_256.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _55 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _56 = mem[_55]
        require mem[_55] == mem[_55 + 12 len 20]
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _59 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _60 = mem[_59]
        require mem[_59] == mem[_59]
        if not mem[_59]:
            if idx >= ('cd', 100).length:
                revert with 'NH{q', 50
            if cd[((32 * idx) + cd[100] + 36)] and 1 > -1 / cd[((32 * idx) + cd[100] + 36)]:
                revert with 'NH{q', 17
            if cd[36] >= stor12.length:
                revert with 'NH{q', 50
            mem[0] = 12
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(stor12[cd[36]].field_256)
            staticcall stor12[cd[36]].field_256.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _68 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_68] == mem[_68 + 12 len 20]
            if not mem[_68 + 12 len 20]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            require ext_code.size(address(_56))
            staticcall address(_56).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _78 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _79 = mem[_78]
            require mem[_78] == mem[_78 + 18 len 14]
            _87 = mem[_78 + 32]
            require mem[_78 + 32] == mem[_78 + 50 len 14]
            require mem[_78 + 64] == mem[_78 + 92 len 4]
            if mem[_78 + 18 len 14] < cd[((32 * idx) + cd[100] + 36)]:
                if mem[_78 + 50 len 14] < cd[((32 * idx) + cd[100] + 36)]:
                    _94 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_94] = 0
                    mem[_94 + 32] = idx
                    mem[_94 + 64] = Mask(112, 0, _79)
                    _95 = mem[64]
                    idx = 0
                    s = _94
                    t = mem[64]
                    while idx < 3:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _95 + -mem[64] + 96
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                require ext_code.size(address(_56))
                staticcall address(_56).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _106 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_106] == mem[_106 + 12 len 20]
                if mem[_106 + 12 len 20] != address(cd[((32 * idx) + cd[68] + 36)]):
                    _128 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_128] = 0
                    mem[_128 + 32] = idx
                    mem[_128 + 64] = Mask(112, 0, _79)
                    _132 = mem[64]
                    idx = 0
                    s = _128
                    t = mem[64]
                    while idx < 3:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _132 + -mem[64] + 96
                _129 = mem[64]
                mem[64] = mem[64] + 96
                mem[_129] = 1
                mem[_129 + 32] = idx
                mem[_129 + 64] = Mask(112, 0, _79)
                _133 = mem[64]
                idx = 0
                s = _129
                t = mem[64]
                while idx < 3:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _133 + -mem[64] + 96
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(address(_56))
            staticcall address(_56).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _105 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_105] == mem[_105 + 12 len 20]
            if mem[_105 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
                _126 = mem[64]
                mem[64] = mem[64] + 96
                mem[_126] = 1
                mem[_126 + 32] = idx
                mem[_126 + 64] = Mask(112, 0, _79)
                _131 = mem[64]
                idx = 0
                s = _126
                t = mem[64]
                while idx < 3:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _131 + -mem[64] + 96
            if Mask(112, 0, _87) < cd[((32 * idx) + cd[100] + 36)]:
                _130 = mem[64]
                mem[64] = mem[64] + 96
                mem[_130] = 0
                mem[_130 + 32] = idx
                mem[_130 + 64] = Mask(112, 0, _79)
                _134 = mem[64]
                idx = 0
                s = _130
                t = mem[64]
                while idx < 3:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _134 + -mem[64] + 96
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(address(_56))
            staticcall address(_56).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _160 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_160] == mem[_160 + 12 len 20]
            if mem[_160 + 12 len 20] != address(cd[((32 * idx) + cd[68] + 36)]):
                _174 = mem[64]
                mem[64] = mem[64] + 96
                mem[_174] = 0
                mem[_174 + 32] = idx
                mem[_174 + 64] = Mask(112, 0, _79)
                _176 = mem[64]
                idx = 0
                s = _174
                t = mem[64]
                while idx < 3:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _176 + -mem[64] + 96
            _175 = mem[64]
            mem[64] = mem[64] + 96
            mem[_175] = 1
            mem[_175 + 32] = idx
            mem[_175 + 64] = Mask(112, 0, _79)
            _177 = mem[64]
            idx = 0
            s = _175
            t = mem[64]
            while idx < 3:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _177 + -mem[64] + 96
        if bool(bool(mem[_59] < 78)) or bool(bool(mem[_59] < 32)):
            if 10^mem[_59] > -1:
                revert with 'NH{q', 17
            if idx >= ('cd', 100).length:
                revert with 'NH{q', 50
            if cd[((32 * idx) + cd[100] + 36)] and 10^mem[_59] > -1 / cd[((32 * idx) + cd[100] + 36)]:
                revert with 'NH{q', 17
            if cd[36] >= stor12.length:
                revert with 'NH{q', 50
            mem[0] = 12
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(stor12[cd[36]].field_256)
            staticcall stor12[cd[36]].field_256.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _71 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_71] == mem[_71 + 12 len 20]
            if not mem[_71 + 12 len 20]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            require ext_code.size(address(_56))
            staticcall address(_56).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _82 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _85 = mem[_82]
            require mem[_82] == mem[_82 + 18 len 14]
            _89 = mem[_82 + 32]
            require mem[_82 + 32] == mem[_82 + 50 len 14]
            require mem[_82 + 64] == mem[_82 + 92 len 4]
            if mem[_82 + 18 len 14] < cd[((32 * idx) + cd[100] + 36)] * 10^_60:
                if mem[_82 + 50 len 14] < cd[((32 * idx) + cd[100] + 36)] * 10^_60:
                    _96 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_96] = 0
                    mem[_96 + 32] = idx
                    mem[_96 + 64] = Mask(112, 0, _85)
                    _97 = mem[64]
                    idx = 0
                    s = _96
                    t = mem[64]
                    while idx < 3:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _97 + -mem[64] + 96
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                require ext_code.size(address(_56))
                staticcall address(_56).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _117 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_117] == mem[_117 + 12 len 20]
                if mem[_117 + 12 len 20] != address(cd[((32 * idx) + cd[68] + 36)]):
                    _136 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_136] = 0
                    mem[_136 + 32] = idx
                    mem[_136 + 64] = Mask(112, 0, _85)
                    _141 = mem[64]
                    idx = 0
                    s = _136
                    t = mem[64]
                    while idx < 3:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _141 + -mem[64] + 96
                _137 = mem[64]
                mem[64] = mem[64] + 96
                mem[_137] = 1
                mem[_137 + 32] = idx
                mem[_137 + 64] = Mask(112, 0, _85)
                _142 = mem[64]
                idx = 0
                s = _137
                t = mem[64]
                while idx < 3:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _142 + -mem[64] + 96
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(address(_56))
            staticcall address(_56).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _114 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_114] == mem[_114 + 12 len 20]
            if mem[_114 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
                _135 = mem[64]
                mem[64] = mem[64] + 96
                mem[_135] = 1
                mem[_135 + 32] = idx
                mem[_135 + 64] = Mask(112, 0, _85)
                _139 = mem[64]
                idx = 0
                s = _135
                t = mem[64]
                while idx < 3:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _139 + -mem[64] + 96
            if Mask(112, 0, _89) < cd[((32 * idx) + cd[100] + 36)] * 10^_60:
                _138 = mem[64]
                mem[64] = mem[64] + 96
                mem[_138] = 0
                mem[_138 + 32] = idx
                mem[_138 + 64] = Mask(112, 0, _85)
                _143 = mem[64]
                idx = 0
                s = _138
                t = mem[64]
                while idx < 3:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _143 + -mem[64] + 96
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(address(_56))
            staticcall address(_56).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _171 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_171] == mem[_171 + 12 len 20]
            if mem[_171 + 12 len 20] != address(cd[((32 * idx) + cd[68] + 36)]):
                _178 = mem[64]
                mem[64] = mem[64] + 96
                mem[_178] = 0
                mem[_178 + 32] = idx
                mem[_178 + 64] = Mask(112, 0, _85)
                _180 = mem[64]
                idx = 0
                s = _178
                t = mem[64]
                while idx < 3:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _180 + -mem[64] + 96
            _179 = mem[64]
            mem[64] = mem[64] + 96
            mem[_179] = 1
            mem[_179 + 32] = idx
            mem[_179 + 64] = Mask(112, 0, _85)
            _181 = mem[64]
            idx = 0
            s = _179
            t = mem[64]
            while idx < 3:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _181 + -mem[64] + 96
        t = 10
        u = 1
        s = mem[_59]
        while s > 1:
            if t > -1 / t:
                revert with 'NH{q', 17
            if not bool(s):
                t = t * t
                u = u
                s = uint255(s) * 0.5
                continue 
            t = t * t
            u = u * t
            s = uint255(s) * 0.5
            continue 
        if u > -1 / t:
            revert with 'NH{q', 17
        if idx >= ('cd', 100).length:
            revert with 'NH{q', 50
        if cd[((32 * idx) + cd[100] + 36)] and u * t > -1 / cd[((32 * idx) + cd[100] + 36)]:
            revert with 'NH{q', 17
        if cd[36] >= stor12.length:
            revert with 'NH{q', 50
        mem[0] = 12
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64] + 4] = address(cd[4])
        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
        require ext_code.size(stor12[cd[36]].field_256)
        staticcall stor12[cd[36]].field_256.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _188 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_188] == mem[_188 + 12 len 20]
        if not mem[_188 + 12 len 20]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        require ext_code.size(address(_56))
        staticcall address(_56).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _192 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _193 = mem[_192]
        require mem[_192] == mem[_192 + 18 len 14]
        _194 = mem[_192 + 32]
        require mem[_192 + 32] == mem[_192 + 50 len 14]
        require mem[_192 + 64] == mem[_192 + 92 len 4]
        if mem[_192 + 18 len 14] < cd[((32 * idx) + cd[100] + 36)] * u * t:
            if mem[_192 + 50 len 14] < cd[((32 * idx) + cd[100] + 36)] * u * t:
                _196 = mem[64]
                mem[64] = mem[64] + 96
                mem[_196] = 0
                mem[_196 + 32] = idx
                mem[_196 + 64] = Mask(112, 0, _193)
                _197 = mem[64]
                idx = 0
                s = _196
                t = mem[64]
                while idx < 3:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _197 + -mem[64] + 96
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(address(_56))
            staticcall address(_56).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _204 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_204] == mem[_204 + 12 len 20]
            if mem[_204 + 12 len 20] != address(cd[((32 * idx) + cd[68] + 36)]):
                _208 = mem[64]
                mem[64] = mem[64] + 96
                mem[_208] = 0
                mem[_208 + 32] = idx
                mem[_208 + 64] = Mask(112, 0, _193)
                _212 = mem[64]
                idx = 0
                s = _208
                t = mem[64]
                while idx < 3:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _212 + -mem[64] + 96
            _209 = mem[64]
            mem[64] = mem[64] + 96
            mem[_209] = 1
            mem[_209 + 32] = idx
            mem[_209 + 64] = Mask(112, 0, _193)
            _213 = mem[64]
            idx = 0
            s = _209
            t = mem[64]
            while idx < 3:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _213 + -mem[64] + 96
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        require ext_code.size(address(_56))
        staticcall address(_56).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _203 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_203] == mem[_203 + 12 len 20]
        if mem[_203 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
            _207 = mem[64]
            mem[64] = mem[64] + 96
            mem[_207] = 1
            mem[_207 + 32] = idx
            mem[_207 + 64] = Mask(112, 0, _193)
            _211 = mem[64]
            idx = 0
            s = _207
            t = mem[64]
            while idx < 3:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _211 + -mem[64] + 96
        if Mask(112, 0, _194) < cd[((32 * idx) + cd[100] + 36)] * u * t:
            _210 = mem[64]
            mem[64] = mem[64] + 96
            mem[_210] = 0
            mem[_210 + 32] = idx
            mem[_210 + 64] = Mask(112, 0, _193)
            _214 = mem[64]
            idx = 0
            s = _210
            t = mem[64]
            while idx < 3:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _214 + -mem[64] + 96
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        require ext_code.size(address(_56))
        staticcall address(_56).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _221 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_221] == mem[_221 + 12 len 20]
        if mem[_221 + 12 len 20] != address(cd[((32 * idx) + cd[68] + 36)]):
            _223 = mem[64]
            mem[64] = mem[64] + 96
            mem[_223] = 0
            mem[_223 + 32] = idx
            mem[_223 + 64] = Mask(112, 0, _193)
            _225 = mem[64]
            idx = 0
            s = _223
            t = mem[64]
            while idx < 3:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _225 + -mem[64] + 96
        _224 = mem[64]
        mem[64] = mem[64] + 96
        mem[_224] = 1
        mem[_224 + 32] = idx
        mem[_224 + 64] = Mask(112, 0, _193)
        _226 = mem[64]
        idx = 0
        s = _224
        t = mem[64]
        while idx < 3:
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _226 + -mem[64] + 96
    return 0
}

function sub_2e572faf(?) payable {
    require calldata.size - 4 >= 128
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
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    mem[64] = 256
    mem[96 len 160] = call.data[calldata.size len 160]
    idx = 0
    while idx < ('cd', 36).length:
        s = 0
        while s < ('cd', 4).length:
            require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            _138 = mem[64]
            mem[64] = mem[64] + 96
            mem[_138 len 96] = call.data[calldata.size len 96]
            t = 0
            while t < ('cd', 100).length:
                if cd[((32 * idx) + cd[36] + 36)] >= stor12.length:
                    revert with 'NH{q', 50
                mem[0] = 12
                if t >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                mem[mem[64] + 36] = address(cd[((32 * t) + cd[100] + 36)])
                require ext_code.size(stor12[cd[((32 * idx) + cd[36] + 36)]].field_256)
                staticcall stor12[cd[((32 * idx) + cd[36] + 36)]].field_256.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[100] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _234 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _235 = mem[_234]
                require mem[_234] == mem[_234 + 12 len 20]
                if t >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                require ext_code.size(address(cd[((32 * t) + cd[100] + 36)]))
                staticcall address(cd[((32 * t) + cd[100] + 36)]).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _238 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _239 = mem[_238]
                require mem[_238] == mem[_238]
                if not mem[_238]:
                    if t >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    if cd[((32 * t) + cd[68] + 36)] and 1 > -1 / cd[((32 * t) + cd[68] + 36)]:
                        revert with 'NH{q', 17
                    if cd[((32 * idx) + cd[36] + 36)] >= stor12.length:
                        revert with 'NH{q', 50
                    mem[0] = 12
                    if t >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[100] + 36)])
                    require ext_code.size(stor12[cd[((32 * idx) + cd[36] + 36)]].field_256)
                    staticcall stor12[cd[((32 * idx) + cd[36] + 36)]].field_256.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[100] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _247 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_247] == mem[_247 + 12 len 20]
                    if not mem[_247 + 12 len 20]:
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        continue 
                    require ext_code.size(address(_235))
                    staticcall address(_235).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _257 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _258 = mem[_257]
                    require mem[_257] == mem[_257 + 18 len 14]
                    _266 = mem[_257 + 32]
                    require mem[_257 + 32] == mem[_257 + 50 len 14]
                    require mem[_257 + 64] == mem[_257 + 92 len 4]
                    if mem[_257 + 18 len 14] < cd[((32 * t) + cd[68] + 36)]:
                        if mem[_257 + 50 len 14] < cd[((32 * t) + cd[68] + 36)]:
                            _273 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_273] = 0
                            mem[_273 + 32] = t
                            mem[_273 + 64] = Mask(112, 0, _258)
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            continue 
                        if t >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                        require ext_code.size(address(_235))
                        staticcall address(_235).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _293 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_293] == mem[_293 + 12 len 20]
                        if mem[_293 + 12 len 20] != address(cd[((32 * t) + cd[100] + 36)]):
                            _319 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_319] = 0
                            mem[_319 + 32] = t
                            mem[_319 + 64] = Mask(112, 0, _258)
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            continue 
                        _320 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_320] = 1
                        mem[_320 + 32] = t
                        mem[_320 + 64] = Mask(112, 0, _258)
                        _330 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_330] = 1
                        mem[_330 + 32] = s
                        mem[_330 + 64] = t
                        mem[_330 + 96] = idx
                        mem[_330 + 128] = Mask(112, 0, _258)
                        idx = 0
                        s = _330
                        t = mem[64]
                        while idx < 5:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        if t >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                        require ext_code.size(address(_235))
                        staticcall address(_235).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _289 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_289] == mem[_289 + 12 len 20]
                        if mem[_289 + 12 len 20] == address(cd[((32 * t) + cd[100] + 36)]):
                            _316 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_316] = 1
                            mem[_316 + 32] = t
                            mem[_316 + 64] = Mask(112, 0, _258)
                            _323 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_323] = 1
                            mem[_323 + 32] = s
                            mem[_323 + 64] = t
                            mem[_323 + 96] = idx
                            mem[_323 + 128] = Mask(112, 0, _258)
                            idx = 0
                            s = _323
                            t = mem[64]
                            while idx < 5:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            if Mask(112, 0, _266) < cd[((32 * t) + cd[68] + 36)]:
                                _321 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_321] = 0
                                mem[_321 + 32] = t
                                mem[_321 + 64] = Mask(112, 0, _258)
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                continue 
                            if t >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                            require ext_code.size(address(_235))
                            staticcall address(_235).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _377 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_377] == mem[_377 + 12 len 20]
                            if mem[_377 + 12 len 20] != address(cd[((32 * t) + cd[100] + 36)]):
                                _395 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_395] = 0
                                mem[_395 + 32] = t
                                mem[_395 + 64] = Mask(112, 0, _258)
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                continue 
                            _396 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_396] = 1
                            mem[_396 + 32] = t
                            mem[_396 + 64] = Mask(112, 0, _258)
                            _400 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_400] = 1
                            mem[_400 + 32] = s
                            mem[_400 + 64] = t
                            mem[_400 + 96] = idx
                            mem[_400 + 128] = Mask(112, 0, _258)
                            idx = 0
                            s = _400
                            t = mem[64]
                            while idx < 5:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                else:
                    if bool(bool(mem[_238] < 78)) or bool(bool(mem[_238] < 32)):
                        if 10^mem[_238] > -1:
                            revert with 'NH{q', 17
                        if t >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        if cd[((32 * t) + cd[68] + 36)] and 10^mem[_238] > -1 / cd[((32 * t) + cd[68] + 36)]:
                            revert with 'NH{q', 17
                        if cd[((32 * idx) + cd[36] + 36)] >= stor12.length:
                            revert with 'NH{q', 50
                        mem[0] = 12
                        if t >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[100] + 36)])
                        require ext_code.size(stor12[cd[((32 * idx) + cd[36] + 36)]].field_256)
                        staticcall stor12[cd[((32 * idx) + cd[36] + 36)]].field_256.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[100] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _250 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_250] == mem[_250 + 12 len 20]
                        if not mem[_250 + 12 len 20]:
                            if t == -1:
                                revert with 'NH{q', 17
                            t = t + 1
                            continue 
                        require ext_code.size(address(_235))
                        staticcall address(_235).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _261 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _264 = mem[_261]
                        require mem[_261] == mem[_261 + 18 len 14]
                        _268 = mem[_261 + 32]
                        require mem[_261 + 32] == mem[_261 + 50 len 14]
                        require mem[_261 + 64] == mem[_261 + 92 len 4]
                        if mem[_261 + 18 len 14] < cd[((32 * t) + cd[68] + 36)] * 10^_239:
                            if mem[_261 + 50 len 14] < cd[((32 * t) + cd[68] + 36)] * 10^_239:
                                _277 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_277] = 0
                                mem[_277 + 32] = t
                                mem[_277 + 64] = Mask(112, 0, _264)
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                continue 
                            if t >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                            require ext_code.size(address(_235))
                            staticcall address(_235).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _307 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_307] == mem[_307 + 12 len 20]
                            if mem[_307 + 12 len 20] != address(cd[((32 * t) + cd[100] + 36)]):
                                _336 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_336] = 0
                                mem[_336 + 32] = t
                                mem[_336 + 64] = Mask(112, 0, _264)
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                continue 
                            _337 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_337] = 1
                            mem[_337 + 32] = t
                            mem[_337 + 64] = Mask(112, 0, _264)
                            _357 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_357] = 1
                            mem[_357 + 32] = s
                            mem[_357 + 64] = t
                            mem[_357 + 96] = idx
                            mem[_357 + 128] = Mask(112, 0, _264)
                            idx = 0
                            s = _357
                            t = mem[64]
                            while idx < 5:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            if t >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                            require ext_code.size(address(_235))
                            staticcall address(_235).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _303 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_303] == mem[_303 + 12 len 20]
                            if mem[_303 + 12 len 20] == address(cd[((32 * t) + cd[100] + 36)]):
                                _328 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_328] = 1
                                mem[_328 + 32] = t
                                mem[_328 + 64] = Mask(112, 0, _264)
                                _345 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_345] = 1
                                mem[_345 + 32] = s
                                mem[_345 + 64] = t
                                mem[_345 + 96] = idx
                                mem[_345 + 128] = Mask(112, 0, _264)
                                idx = 0
                                s = _345
                                t = mem[64]
                                while idx < 5:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                            else:
                                if Mask(112, 0, _268) < cd[((32 * t) + cd[68] + 36)] * 10^_239:
                                    _338 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_338] = 0
                                    mem[_338 + 32] = t
                                    mem[_338 + 64] = Mask(112, 0, _264)
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    s = s + 1
                                    continue 
                                if t >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                require ext_code.size(address(_235))
                                staticcall address(_235).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _388 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_388] == mem[_388 + 12 len 20]
                                if mem[_388 + 12 len 20] != address(cd[((32 * t) + cd[100] + 36)]):
                                    _403 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_403] = 0
                                    mem[_403 + 32] = t
                                    mem[_403 + 64] = Mask(112, 0, _264)
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    s = s + 1
                                    continue 
                                _404 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_404] = 1
                                mem[_404 + 32] = t
                                mem[_404 + 64] = Mask(112, 0, _264)
                                _412 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_412] = 1
                                mem[_412 + 32] = s
                                mem[_412 + 64] = t
                                mem[_412 + 96] = idx
                                mem[_412 + 128] = Mask(112, 0, _264)
                                idx = 0
                                s = _412
                                t = mem[64]
                                while idx < 5:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                    else:
                        v = 10
                        w = 1
                        u = mem[_238]
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
                        if t >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        if cd[((32 * t) + cd[68] + 36)] and w * v > -1 / cd[((32 * t) + cd[68] + 36)]:
                            revert with 'NH{q', 17
                        if cd[((32 * idx) + cd[36] + 36)] >= stor12.length:
                            revert with 'NH{q', 50
                        mem[0] = 12
                        if t >= ('cd', 100).length:
                            revert with 'NH{q', 50
                        require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[100] + 36)])
                        require ext_code.size(stor12[cd[((32 * idx) + cd[36] + 36)]].field_256)
                        staticcall stor12[cd[((32 * idx) + cd[36] + 36)]].field_256.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[100] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _425 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_425] == mem[_425 + 12 len 20]
                        if not mem[_425 + 12 len 20]:
                            if t == -1:
                                revert with 'NH{q', 17
                            t = t + 1
                            continue 
                        require ext_code.size(address(_235))
                        staticcall address(_235).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _429 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _430 = mem[_429]
                        require mem[_429] == mem[_429 + 18 len 14]
                        _431 = mem[_429 + 32]
                        require mem[_429 + 32] == mem[_429 + 50 len 14]
                        require mem[_429 + 64] == mem[_429 + 92 len 4]
                        if mem[_429 + 18 len 14] < cd[((32 * t) + cd[68] + 36)] * w * v:
                            if mem[_429 + 50 len 14] < cd[((32 * t) + cd[68] + 36)] * w * v:
                                _433 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_433] = 0
                                mem[_433 + 32] = t
                                mem[_433 + 64] = Mask(112, 0, _430)
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                continue 
                            if t >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                            require ext_code.size(address(_235))
                            staticcall address(_235).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _444 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_444] == mem[_444 + 12 len 20]
                            if mem[_444 + 12 len 20] != address(cd[((32 * t) + cd[100] + 36)]):
                                _449 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_449] = 0
                                mem[_449 + 32] = t
                                mem[_449 + 64] = Mask(112, 0, _430)
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                continue 
                            _450 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_450] = 1
                            mem[_450 + 32] = t
                            mem[_450 + 64] = Mask(112, 0, _430)
                            _459 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_459] = 1
                            mem[_459 + 32] = s
                            mem[_459 + 64] = t
                            mem[_459 + 96] = idx
                            mem[_459 + 128] = Mask(112, 0, _430)
                            idx = 0
                            s = _459
                            t = mem[64]
                            while idx < 5:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            if t >= ('cd', 100).length:
                                revert with 'NH{q', 50
                            require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                            require ext_code.size(address(_235))
                            staticcall address(_235).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _443 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_443] == mem[_443 + 12 len 20]
                            if mem[_443 + 12 len 20] == address(cd[((32 * t) + cd[100] + 36)]):
                                _448 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_448] = 1
                                mem[_448 + 32] = t
                                mem[_448 + 64] = Mask(112, 0, _430)
                                _453 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_453] = 1
                                mem[_453 + 32] = s
                                mem[_453 + 64] = t
                                mem[_453 + 96] = idx
                                mem[_453 + 128] = Mask(112, 0, _430)
                                idx = 0
                                s = _453
                                t = mem[64]
                                while idx < 5:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                            else:
                                if Mask(112, 0, _431) < cd[((32 * t) + cd[68] + 36)] * w * v:
                                    _451 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_451] = 0
                                    mem[_451 + 32] = t
                                    mem[_451 + 64] = Mask(112, 0, _430)
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    s = s + 1
                                    continue 
                                if t >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * t) + cd[100] + 36)] == address(cd[((32 * t) + cd[100] + 36)])
                                require ext_code.size(address(_235))
                                staticcall address(_235).token1() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _474 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_474] == mem[_474 + 12 len 20]
                                if mem[_474 + 12 len 20] != address(cd[((32 * t) + cd[100] + 36)]):
                                    _480 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_480] = 0
                                    mem[_480 + 32] = t
                                    mem[_480 + 64] = Mask(112, 0, _430)
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    s = s + 1
                                    continue 
                                _481 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_481] = 1
                                mem[_481 + 32] = t
                                mem[_481 + 64] = Mask(112, 0, _430)
                                _485 = mem[64]
                                mem[64] = mem[64] + 160
                                mem[_485] = 1
                                mem[_485 + 32] = s
                                mem[_485 + 64] = t
                                mem[_485 + 96] = idx
                                mem[_485 + 128] = Mask(112, 0, _430)
                                idx = 0
                                s = _485
                                t = mem[64]
                                while idx < 5:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                return memory
                  from mem[64]
                   len 160
            _224 = mem[64]
            mem[64] = mem[64] + 96
            mem[_224] = 0
            mem[_224 + 32] = 0
            mem[_224 + 64] = 0
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
