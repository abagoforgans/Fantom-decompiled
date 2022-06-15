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
    call managementListAddress.0xf3ae2415 with:
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
            revert with 0, 17
        idx = idx + 1
        continue 
    revert with 0, 'Oracle: Fallback proxy failed to return data'
}

function addTokenAlias(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(managementListAddress)
    call managementListAddress.0xf3ae2415 with:
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
        s = (32 * stor1.length) + 192
        t = 128
        while idx < stor1.length:
            mem[s] = mem[t + 12 len 20]
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
    s = mem[64] + 64
    t = 128
    while idx < stor1.length:
        mem[s] = mem[t + 12 len 20]
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
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if floor32(arg1.length) + 97 < 96 or floor32(arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[floor32(arg1.length) + 101] = msg.sender
    require ext_code.size(managementListAddress)
    call managementListAddress.0xf3ae2415 with:
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
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if floor32(arg1.length) + 97 < 96 or floor32(arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = floor32(arg1.length) + 97
    mem[96] = arg1.length
    require calldata.size >= arg1 + (64 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require calldata.size - s >= 64
        _27 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 64
        require cd[s] == address(cd[s])
        mem[_27] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_27 + 32] = cd[(s + 32)]
        mem[t] = _27
        s = s + 64
        t = t + 32
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(managementListAddress)
    call managementListAddress.0xf3ae2415 with:
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
            revert with 0, 50
        _51 = mem[mem[(32 * idx) + 128]]
        if idx >= mem[96]:
            revert with 0, 50
        _54 = mem[mem[(32 * idx) + 128] + 32]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(managementListAddress)
        call managementListAddress.0xf3ae2415 with:
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
            revert with 0, 17
        _48 = mem[96]
        idx = idx + 1
        continue 
}

function getNormalizedValueUsdc(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1] < 6:
        if 6 < ext_call.return_data[31 len 1]:
            revert with 0, 17
        if not -ext_call.return_data[31 len 1] + 6:
            if arg2 and arg3 > -1 / arg2:
                revert with 0, 17
            return (arg2 * arg3 / 10^6)
        if -ext_call.return_data[31 len 1] + 6 > !ext_call.return_data[31 len 1]:
            revert with 0, 17
        if not -ext_call.return_data[31 len 1] + 6:
            if arg2 and arg3 > -1 / arg2:
                revert with 0, 17
            if arg2 * arg3 and 1 > -1 / arg2 * arg3:
                revert with 0, 17
            return (arg2 * arg3 / 10^6)
        if bool(bool(-ext_call.return_data[31 len 1] + 6 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 6 < 32)):
            if 10^(-ext_call.return_data[31 len 1] + 6) > -1:
                revert with 0, 17
            if arg2 and arg3 > -1 / arg2:
                revert with 0, 17
            if arg2 * arg3 and 10^(-ext_call.return_data[31 len 1] + 6) > -1 / arg2 * arg3:
                revert with 0, 17
            return (arg2 * arg3 * 10^(-ext_call.return_data[31 len 1] + 6) / 10^6)
        if var48005 > 1:
            s = var48001
            t = var48002
            u = var48005
            while s <= -1 / s:
                if not bool(u):
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = t
                        u = uint255(u) * 0.5
                        continue 
                    if t > -1 / s * s:
                        revert with 0, 17
                    if arg2 and arg3 > -1 / arg2:
                        revert with 0, 17
                    if arg2 * arg3 and s * s * t > -1 / arg2 * arg3:
                        revert with 0, 17
                    return (arg2 * arg3 * s * s * t / 10^6)
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = s * t
                    u = uint255(u) * 0.5
                    continue 
                if s * t > -1 / s * s:
                    revert with 0, 17
                if arg2 and arg3 > -1 / arg2:
                    revert with 0, 17
                if arg2 * arg3 and s * s * s * t > -1 / arg2 * arg3:
                    revert with 0, 17
                return (arg2 * arg3 * s * s * s * t / 10^6)
            revert with 0, 17
        if var48002 > -1 / var48001:
            revert with 0, 17
        if arg2 and arg3 > -1 / arg2:
            revert with 0, 17
        if arg2 * arg3 and var48001 * var48002 > -1 / arg2 * arg3:
            revert with 0, 17
        return (arg2 * arg3 * var48001 * var48002 / 10^6)
    if not ext_call.return_data[31 len 1] - 6:
        if arg2 and arg3 > -1 / arg2:
            revert with 0, 17
        return (arg2 * arg3 / 10^6)
    if ext_call.return_data[31 len 1] - 6 > !ext_call.return_data[31 len 1]:
        revert with 0, 17
    if not (2 * uint8(ext_call.return_data[0])) - 6:
        if not ext_call.return_data[31 len 1] - 6:
            if arg2 and arg3 > -1 / arg2:
                revert with 0, 17
            if arg2 * arg3 and 1 > -1 / arg2 * arg3:
                revert with 0, 17
            return (arg2 * arg3)
        if bool(bool(ext_call.return_data[31 len 1] - 6 < 78)) or bool(bool(ext_call.return_data[31 len 1] - 6 < 32)):
            if 10^(ext_call.return_data[31 len 1] - 6) > -1:
                revert with 0, 17
            if arg2 and arg3 > -1 / arg2:
                revert with 0, 17
            if arg2 * arg3 and 10^(ext_call.return_data[31 len 1] - 6) > -1 / arg2 * arg3:
                revert with 0, 17
            return (arg2 * arg3 * 10^(ext_call.return_data[31 len 1] - 6))
        if var42005 > 1:
            s = var42001
            t = var42002
            u = var42005
            while s <= -1 / s:
                if not bool(u):
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = t
                        u = uint255(u) * 0.5
                        continue 
                    if t > -1 / s * s:
                        revert with 0, 17
                    if arg2 and arg3 > -1 / arg2:
                        revert with 0, 17
                    if arg2 * arg3 and s * s * t > -1 / arg2 * arg3:
                        revert with 0, 17
                    return (arg2 * arg3 * s * s * t)
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = s * t
                    u = uint255(u) * 0.5
                    continue 
                if s * t > -1 / s * s:
                    revert with 0, 17
                if arg2 and arg3 > -1 / arg2:
                    revert with 0, 17
                if arg2 * arg3 and s * s * s * t > -1 / arg2 * arg3:
                    revert with 0, 17
                return (arg2 * arg3 * s * s * s * t)
            revert with 0, 17
        if var42002 > -1 / var42001:
            revert with 0, 17
        if arg2 and arg3 > -1 / arg2:
            revert with 0, 17
        if arg2 * arg3 and var42001 * var42002 > -1 / arg2 * arg3:
            revert with 0, 17
        return (arg2 * arg3 * var42001 * var42002)
    if bool(bool((2 * uint8(ext_call.return_data[0])) - 6 < 78)) or bool(bool((2 * uint8(ext_call.return_data[0])) - 6 < 32)):
        if 10^((2 * uint8(ext_call.return_data[0])) - 6) > -1:
            revert with 0, 17
        if not ext_call.return_data[31 len 1] - 6:
            if arg2 and arg3 > -1 / arg2:
                revert with 0, 17
            if arg2 * arg3 and 1 > -1 / arg2 * arg3:
                revert with 0, 17
            if not 10^((2 * uint8(ext_call.return_data[0])) - 6):
                revert with 0, 18
            return (arg2 * arg3 / 10^((2 * uint8(ext_call.return_data[0])) - 6))
        if bool(bool(ext_call.return_data[31 len 1] - 6 < 78)) or bool(bool(ext_call.return_data[31 len 1] - 6 < 32)):
            if 10^(ext_call.return_data[31 len 1] - 6) > -1:
                revert with 0, 17
            if arg2 and arg3 > -1 / arg2:
                revert with 0, 17
            if arg2 * arg3 and 10^(ext_call.return_data[31 len 1] - 6) > -1 / arg2 * arg3:
                revert with 0, 17
            if not 10^((2 * uint8(ext_call.return_data[0])) - 6):
                revert with 0, 18
            return (arg2 * arg3 * 10^(ext_call.return_data[31 len 1] - 6) / 10^((2 * uint8(ext_call.return_data[0])) - 6))
        if var48005 > 1:
            s = var48001
            t = var48002
            u = var48005
            while s <= -1 / s:
                if not bool(u):
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = t
                        u = uint255(u) * 0.5
                        continue 
                    if t > -1 / s * s:
                        revert with 0, 17
                    if arg2 and arg3 > -1 / arg2:
                        revert with 0, 17
                    if arg2 * arg3 and s * s * t > -1 / arg2 * arg3:
                        revert with 0, 17
                    if not 10^((2 * uint8(ext_call.return_data[0])) - 6):
                        revert with 0, 18
                    return (arg2 * arg3 * s * s * t / 10^((2 * uint8(ext_call.return_data[0])) - 6))
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = s * t
                    u = uint255(u) * 0.5
                    continue 
                if s * t > -1 / s * s:
                    revert with 0, 17
                if arg2 and arg3 > -1 / arg2:
                    revert with 0, 17
                if arg2 * arg3 and s * s * s * t > -1 / arg2 * arg3:
                    revert with 0, 17
                if not 10^((2 * uint8(ext_call.return_data[0])) - 6):
                    revert with 0, 18
                return (arg2 * arg3 * s * s * s * t / 10^((2 * uint8(ext_call.return_data[0])) - 6))
            revert with 0, 17
        if var48002 > -1 / var48001:
            revert with 0, 17
        if arg2 and arg3 > -1 / arg2:
            revert with 0, 17
        if arg2 * arg3 and var48001 * var48002 > -1 / arg2 * arg3:
            revert with 0, 17
        if not 10^((2 * uint8(ext_call.return_data[0])) - 6):
            revert with 0, 18
        return (arg2 * arg3 * var48001 * var48002 / 10^((2 * uint8(ext_call.return_data[0])) - 6))
    if var37005 > 1:
        s = var37001
        t = var37002
        u = var37005
        while s <= -1 / s:
            if not bool(u):
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = t
                    u = uint255(u) * 0.5
                    continue 
                if t > -1 / s * s:
                    revert with 0, 17
                if not ext_call.return_data[31 len 1] - 6:
                    if arg2 and arg3 > -1 / arg2:
                        revert with 0, 17
                    if arg2 * arg3 and 1 > -1 / arg2 * arg3:
                        revert with 0, 17
                    if not s * s * t:
                        revert with 0, 18
                    return (arg2 * arg3 / s * s * t)
                if bool(bool(ext_call.return_data[31 len 1] - 6 < 78)) or bool(bool(ext_call.return_data[31 len 1] - 6 < 32)):
                    if 10^(ext_call.return_data[31 len 1] - 6) > -1:
                        revert with 0, 17
                    if arg2 and arg3 > -1 / arg2:
                        revert with 0, 17
                    if arg2 * arg3 and 10^(ext_call.return_data[31 len 1] - 6) > -1 / arg2 * arg3:
                        revert with 0, 17
                    if not s * s * t:
                        revert with 0, 18
                    return (arg2 * arg3 * 10^(ext_call.return_data[31 len 1] - 6) / s * s * t)
                if var58005 > 1:
                    u = var58001
                    v = var58002
                    w = var58005
                    while u <= -1 / u:
                        if not bool(w):
                            if uint255(w) * 0.5 > 1:
                                u = u * u
                                v = v
                                w = uint255(w) * 0.5
                                continue 
                            if v > -1 / u * u:
                                revert with 0, 17
                            if arg2 and arg3 > -1 / arg2:
                                revert with 0, 17
                            if arg2 * arg3 and u * u * v > -1 / arg2 * arg3:
                                revert with 0, 17
                            if not s * s * t:
                                revert with 0, 18
                            return (arg2 * arg3 * u * u * v / s * s * t)
                        if uint255(w) * 0.5 > 1:
                            u = u * u
                            v = u * v
                            w = uint255(w) * 0.5
                            continue 
                        if u * v > -1 / u * u:
                            revert with 0, 17
                        if arg2 and arg3 > -1 / arg2:
                            revert with 0, 17
                        if arg2 * arg3 and u * u * u * v > -1 / arg2 * arg3:
                            revert with 0, 17
                        if not s * s * t:
                            revert with 0, 18
                        return (arg2 * arg3 * u * u * u * v / s * s * t)
                    revert with 0, 17
                if var58002 > -1 / var58001:
                    revert with 0, 17
                if arg2 and arg3 > -1 / arg2:
                    revert with 0, 17
                if arg2 * arg3 and var58001 * var58002 > -1 / arg2 * arg3:
                    revert with 0, 17
                if not s * s * t:
                    revert with 0, 18
                return (arg2 * arg3 * var58001 * var58002 / s * s * t)
            if uint255(u) * 0.5 > 1:
                s = s * s
                t = s * t
                u = uint255(u) * 0.5
                continue 
            if s * t > -1 / s * s:
                revert with 0, 17
            if not ext_call.return_data[31 len 1] - 6:
                if arg2 and arg3 > -1 / arg2:
                    revert with 0, 17
                if arg2 * arg3 and 1 > -1 / arg2 * arg3:
                    revert with 0, 17
                if not s * s * s * t:
                    revert with 0, 18
                return (arg2 * arg3 / s * s * s * t)
            if bool(bool(ext_call.return_data[31 len 1] - 6 < 78)) or bool(bool(ext_call.return_data[31 len 1] - 6 < 32)):
                if 10^(ext_call.return_data[31 len 1] - 6) > -1:
                    revert with 0, 17
                if arg2 and arg3 > -1 / arg2:
                    revert with 0, 17
                if arg2 * arg3 and 10^(ext_call.return_data[31 len 1] - 6) > -1 / arg2 * arg3:
                    revert with 0, 17
                if not s * s * s * t:
                    revert with 0, 18
                return (arg2 * arg3 * 10^(ext_call.return_data[31 len 1] - 6) / s * s * s * t)
            if var59005 > 1:
                u = var59001
                v = var59002
                w = var59005
                while u <= -1 / u:
                    if not bool(w):
                        if uint255(w) * 0.5 > 1:
                            u = u * u
                            v = v
                            w = uint255(w) * 0.5
                            continue 
                        if v > -1 / u * u:
                            revert with 0, 17
                        if arg2 and arg3 > -1 / arg2:
                            revert with 0, 17
                        if arg2 * arg3 and u * u * v > -1 / arg2 * arg3:
                            revert with 0, 17
                        if not s * s * s * t:
                            revert with 0, 18
                        return (arg2 * arg3 * u * u * v / s * s * s * t)
                    if uint255(w) * 0.5 > 1:
                        u = u * u
                        v = u * v
                        w = uint255(w) * 0.5
                        continue 
                    if u * v > -1 / u * u:
                        revert with 0, 17
                    if arg2 and arg3 > -1 / arg2:
                        revert with 0, 17
                    if arg2 * arg3 and u * u * u * v > -1 / arg2 * arg3:
                        revert with 0, 17
                    if not s * s * s * t:
                        revert with 0, 18
                    return (arg2 * arg3 * u * u * u * v / s * s * s * t)
                revert with 0, 17
            if var59002 > -1 / var59001:
                revert with 0, 17
            if arg2 and arg3 > -1 / arg2:
                revert with 0, 17
            if arg2 * arg3 and var59001 * var59002 > -1 / arg2 * arg3:
                revert with 0, 17
            if not s * s * s * t:
                revert with 0, 18
            return (arg2 * arg3 * var59001 * var59002 / s * s * s * t)
        revert with 0, 17
    if var37002 > -1 / var37001:
        revert with 0, 17
    if not ext_call.return_data[31 len 1] - 6:
        if arg2 and arg3 > -1 / arg2:
            revert with 0, 17
        if arg2 * arg3 and 1 > -1 / arg2 * arg3:
            revert with 0, 17
        if not var37001 * var37002:
            revert with 0, 18
        return (arg2 * arg3 / var37001 * var37002)
    if bool(bool(ext_call.return_data[31 len 1] - 6 < 78)) or bool(bool(ext_call.return_data[31 len 1] - 6 < 32)):
        if 10^(ext_call.return_data[31 len 1] - 6) > -1:
            revert with 0, 17
        if arg2 and arg3 > -1 / arg2:
            revert with 0, 17
        if arg2 * arg3 and 10^(ext_call.return_data[31 len 1] - 6) > -1 / arg2 * arg3:
            revert with 0, 17
        if not var37001 * var37002:
            revert with 0, 18
        return (arg2 * arg3 * 10^(ext_call.return_data[31 len 1] - 6) / var37001 * var37002)
    if var53005 > 1:
        s = var53001
        t = var53002
        u = var53005
        while s <= -1 / s:
            if not bool(u):
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = t
                    u = uint255(u) * 0.5
                    continue 
                if t > -1 / s * s:
                    revert with 0, 17
                if arg2 and arg3 > -1 / arg2:
                    revert with 0, 17
                if arg2 * arg3 and s * s * t > -1 / arg2 * arg3:
                    revert with 0, 17
                if not var37001 * var37002:
                    revert with 0, 18
                return (arg2 * arg3 * s * s * t / var37001 * var37002)
            if uint255(u) * 0.5 > 1:
                s = s * s
                t = s * t
                u = uint255(u) * 0.5
                continue 
            if s * t > -1 / s * s:
                revert with 0, 17
            if arg2 and arg3 > -1 / arg2:
                revert with 0, 17
            if arg2 * arg3 and s * s * s * t > -1 / arg2 * arg3:
                revert with 0, 17
            if not var37001 * var37002:
                revert with 0, 18
            return (arg2 * arg3 * s * s * s * t / var37001 * var37002)
        revert with 0, 17
    if var53002 > -1 / var53001:
        revert with 0, 17
    if arg2 and arg3 > -1 / arg2:
        revert with 0, 17
    if arg2 * arg3 and var53001 * var53002 > -1 / arg2 * arg3:
        revert with 0, 17
    if not var37001 * var37002:
        revert with 0, 18
    return (arg2 * arg3 * var53001 * var53002 / var37001 * var37002)
}



}
