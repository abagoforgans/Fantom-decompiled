contract main {




// =====================  Runtime code  =====================


#
#  - getPriceUsdcRecommended(address arg1)
#  - getNormalizedValueUsdc(address arg1, uint256 arg2)
#
address managementListAddress;
array of struct stor1;
address usdcAddress;
mapping of address tokenAliases;

function usdcAddress() payable {
    return usdcAddress
}

function tokenAliases(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenAliases[arg1]
}

function managementList() payable {
    return managementListAddress
}

function removeTokenAlias(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(managementListAddress)
    call managementListAddress.isManager(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'ManagementList: caller is not a manager'
    tokenAliases[address(arg1)] = 0
    emit TokenAliasRemoved(arg1);
}

function _fallback() payable {
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        mem[0 len calldata.size] = call.data[0 len calldata.size]
        staticcall stor1[idx].field_0 with:
             funct call.data[0 len 4]
                gas gas_remaining wei
               args call.data[4 len calldata.size - 4]
        mem[0 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            return ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    revert with 0, 'Oracle: Fallback proxy failed to return data'
}

function addTokenAlias(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(managementListAddress)
    call managementListAddress.isManager(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'ManagementList: caller is not a manager'
    tokenAliases[address(arg1)] = arg2
    emit TokenAliasAdded(address(arg1), arg2);
}

function calculations() payable {
    mem[64] = (32 * stor1.length) + 128
    mem[96] = stor1.length
    if not stor1.length:
        mem[(32 * stor1.length) + 128] = 32
        mem[(32 * stor1.length) + 160] = stor1.length
        idx = 0
        s = 128
        t = (32 * stor1.length) + 192
        while idx < stor1.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor1.length) + 128
           len (96 * stor1.length) + 64
    mem[128] = address(stor1.field_0)
    idx = 128
    s = 0
    while (32 * stor1.length) + 96 > idx:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor1.length) + 128] = 32
    mem[(32 * stor1.length) + 160] = stor1.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor1.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor1.length) + -mem[64] + 192
}

function setCalculations(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg1.length) + 101] = msg.sender
    require ext_code.size(managementListAddress)
    call managementListAddress.isManager(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    mem[floor32(arg1.length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'ManagementList: caller is not a manager'
    stor1.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor1.length > idx:
            stor1[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            stor1[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor1.length > idx:
            stor1[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function addTokenAliases(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + 97
    mem[96] = arg1.length
    require arg1 + (64 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size - s >= 64
        _26 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[s] == address(cd[s])
        mem[_26] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_26 + 32] = cd[(s + 32)]
        mem[t] = _26
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(managementListAddress)
    call managementListAddress.isManager(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _28 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_28] == bool(mem[_28])
    if not mem[_28]:
        revert with 0, 'ManagementList: caller is not a manager'
    _48 = mem[96]
    idx = 0
    while idx < _48:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _51 = mem[mem[(32 * idx) + 128]]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _54 = mem[mem[(32 * idx) + 128] + 32]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(managementListAddress)
        call managementListAddress.isManager(address rg1) with:
             gas gas_remaining wei
            args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _57 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_57] == bool(mem[_57])
        if not mem[_57]:
            revert with 0, 'ManagementList: caller is not a manager'
        mem[0] = address(_51)
        mem[32] = 3
        tokenAliases[address(_51)] = address(_54)
        mem[mem[64]] = address(_51)
        mem[mem[64] + 32] = address(_54)
        emit TokenAliasAdded(address(_51), address(_54));
        if idx == -1:
            revert with 'NH{q', 17
        _48 = mem[96]
        idx = idx + 1
        continue 
}

function getNormalizedValueUsdc(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    staticcall arg1.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1] < 6:
        if 6 < ext_call.return_data[31 len 1]:
            revert with 'NH{q', 17
        if -ext_call.return_data[31 len 1] + 6 > 0:
            revert with 'NH{q', 17
        if arg2 and arg3 > -1 / arg2:
            revert with 'NH{q', 17
        return (arg2 * arg3 / 10^6)
    if ext_call.return_data[31 len 1] - 6 <= 0:
        if arg2 and arg3 > -1 / arg2:
            revert with 'NH{q', 17
        return (arg2 * arg3 / 10^6)
    if ext_call.return_data[31 len 1] - 6 > -ext_call.return_data[31 len 1] - 1:
        revert with 'NH{q', 17
    if not (2 * uint8(ext_call.return_data[0])) - 6:
        if not ext_call.return_data[31 len 1] - 6:
            if arg2 and arg3 > -1 / arg2:
                revert with 'NH{q', 17
            if arg2 * arg3 and 1 > -1 / arg2 * arg3:
                revert with 'NH{q', 17
            return (arg2 * arg3)
        if bool(bool(ext_call.return_data[31 len 1] - 6 < 78)) or bool(bool(ext_call.return_data[31 len 1] - 6 < 32)):
            if 10^(ext_call.return_data[31 len 1] - 6) > -1:
                revert with 'NH{q', 17
            if arg2 and arg3 > -1 / arg2:
                revert with 'NH{q', 17
            if arg2 * arg3 and 10^(ext_call.return_data[31 len 1] - 6) > -1 / arg2 * arg3:
                revert with 'NH{q', 17
            return (arg2 * arg3 * 10^(ext_call.return_data[31 len 1] - 6))
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1] - 6
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
        if arg2 and arg3 > -1 / arg2:
            revert with 'NH{q', 17
        if arg2 * arg3 and t * s > -1 / arg2 * arg3:
            revert with 'NH{q', 17
        return (arg2 * arg3 * t * s)
    if bool(bool((2 * uint8(ext_call.return_data[0])) - 6 < 78)) or bool(bool((2 * uint8(ext_call.return_data[0])) - 6 < 32)):
        if 10^((2 * uint8(ext_call.return_data[0])) - 6) > -1:
            revert with 'NH{q', 17
        if not ext_call.return_data[31 len 1] - 6:
            if arg2 and arg3 > -1 / arg2:
                revert with 'NH{q', 17
            if arg2 * arg3 and 1 > -1 / arg2 * arg3:
                revert with 'NH{q', 17
            if not 10^((2 * uint8(ext_call.return_data[0])) - 6):
                revert with 'NH{q', 18
            return (arg2 * arg3 / 10^((2 * uint8(ext_call.return_data[0])) - 6))
        if bool(bool(ext_call.return_data[31 len 1] - 6 < 78)) or bool(bool(ext_call.return_data[31 len 1] - 6 < 32)):
            if 10^(ext_call.return_data[31 len 1] - 6) > -1:
                revert with 'NH{q', 17
            if arg2 and arg3 > -1 / arg2:
                revert with 'NH{q', 17
            if arg2 * arg3 and 10^(ext_call.return_data[31 len 1] - 6) > -1 / arg2 * arg3:
                revert with 'NH{q', 17
            if not 10^((2 * uint8(ext_call.return_data[0])) - 6):
                revert with 'NH{q', 18
            return (arg2 * arg3 * 10^(ext_call.return_data[31 len 1] - 6) / 10^((2 * uint8(ext_call.return_data[0])) - 6))
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1] - 6
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
        if arg2 and arg3 > -1 / arg2:
            revert with 'NH{q', 17
        if arg2 * arg3 and t * s > -1 / arg2 * arg3:
            revert with 'NH{q', 17
        if not 10^((2 * uint8(ext_call.return_data[0])) - 6):
            revert with 'NH{q', 18
        return (arg2 * arg3 * t * s / 10^((2 * uint8(ext_call.return_data[0])) - 6))
    s = 10
    t = 1
    idx = (2 * uint8(ext_call.return_data[0])) - 6
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
    if not ext_call.return_data[31 len 1] - 6:
        if arg2 and arg3 > -1 / arg2:
            revert with 'NH{q', 17
        if arg2 * arg3 and 1 > -1 / arg2 * arg3:
            revert with 'NH{q', 17
        if not t * s:
            revert with 'NH{q', 18
        return (arg2 * arg3 / t * s)
    if bool(bool(ext_call.return_data[31 len 1] - 6 < 78)) or bool(bool(ext_call.return_data[31 len 1] - 6 < 32)):
        if 10^(ext_call.return_data[31 len 1] - 6) > -1:
            revert with 'NH{q', 17
        if arg2 and arg3 > -1 / arg2:
            revert with 'NH{q', 17
        if arg2 * arg3 and 10^(ext_call.return_data[31 len 1] - 6) > -1 / arg2 * arg3:
            revert with 'NH{q', 17
        if not t * s:
            revert with 'NH{q', 18
        return (arg2 * arg3 * 10^(ext_call.return_data[31 len 1] - 6) / t * s)
    u = 10
    v = 1
    idx = ext_call.return_data[31 len 1] - 6
    while idx > 1:
        if u > -1 / u:
            revert with 'NH{q', 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = v * u
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 'NH{q', 17
    if arg2 and arg3 > -1 / arg2:
        revert with 'NH{q', 17
    if arg2 * arg3 and v * u > -1 / arg2 * arg3:
        revert with 'NH{q', 17
    if not t * s:
        revert with 'NH{q', 18
    return (arg2 * arg3 * v * u / t * s)
}



}
