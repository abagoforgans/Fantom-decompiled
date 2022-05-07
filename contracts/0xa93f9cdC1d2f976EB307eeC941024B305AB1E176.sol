contract main {




// =====================  Runtime code  =====================


address owner;
array of address shares;
array of address farms;
array of uint256 lastPortions;
uint256 currentUser;
uint256 currentFarm;
uint256 currentPortion;
uint256 totalUnlocked;
uint256 totalBalance;
uint256 totalUsers;
address balanceKeeperAddress;
mapping of uint8 stor11;

function currentPortion() payable {
    return currentPortion
}

function lastPortions(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < lastPortions.length
    return lastPortions[arg1]
}

function totalFarms() payable {
    return farms.length
}

function shares(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < shares.length
    return address(shares[arg1])
}

function isProcessing(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
}

function currentFarm() payable {
    return currentFarm
}

function farms(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < farms.length
    return address(farms[arg1])
}

function owner() payable {
    return owner
}

function currentUser() payable {
    return currentUser
}

function totalUnlocked() payable {
    return totalUnlocked
}

function totalBalance() payable {
    return totalBalance
}

function totalUsers() payable {
    return totalUsers
}

function balanceKeeper() payable {
    return balanceKeeperAddress
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    owner = arg1
    emit SetOwner(owner, arg1);
}

function addFarm(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    shares.length++
    address(shares[shares.length]) = arg1
    farms.length++
    address(farms[farms.length]) = arg2
    lastPortions.length++
    lastPortions[lastPortions.length] = 0
    emit 0xbdfbf34b: farms.length, arg1, arg2
}

function removeFarm(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if stor11[stor5]:
        revert with 0, 'farm is processing balances'
    if arg1 >= shares.length:
        revert with 'NH{q', 50
    if shares.length < 1:
        revert with 'NH{q', 17
    if shares.length - 1 > test266151307():
        revert with 'NH{q', 65
    if shares.length - 1:
        mem[128 len 32 * shares.length - 1] = call.data[calldata.size len 32 * shares.length - 1]
    idx = 0
    while idx < shares.length:
        if idx != arg1:
            if idx >= shares.length:
                revert with 'NH{q', 50
            mem[0] = 1
            if 0 >= shares.length - 1:
                revert with 'NH{q', 50
            mem[128] = address(shares[idx])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    shares.length--
    if not shares.length - 1:
        idx = 0
        while shares.length > idx:
            uint256(shares[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * shares.length - 1) + 128 > idx:
            address(shares[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * shares.length - 1) + 31) >> 5
        while shares.length > idx:
            uint256(shares[idx]) = 0
            idx = idx + 1
            continue 
    if arg1 >= farms.length:
        revert with 'NH{q', 50
    if farms.length < 1:
        revert with 'NH{q', 17
    if farms.length - 1 > test266151307():
        revert with 'NH{q', 65
    if farms.length - 1:
        mem[(32 * shares.length - 1) + 160 len 32 * farms.length - 1] = call.data[calldata.size len 32 * farms.length - 1]
    idx = 0
    while idx < farms.length:
        if idx != arg1:
            if idx >= farms.length:
                revert with 'NH{q', 50
            mem[0] = 2
            if 0 >= farms.length - 1:
                revert with 'NH{q', 50
            mem[(32 * shares.length - 1) + 160] = address(farms[idx])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    farms.length--
    if not farms.length - 1:
        idx = 0
        while farms.length > idx:
            uint256(farms[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * shares.length - 1) + 160
        while (32 * shares.length - 1) + (32 * farms.length - 1) + 160 > idx:
            address(farms[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * farms.length - 1) + 31) >> 5
        while farms.length > idx:
            uint256(farms[idx]) = 0
            idx = idx + 1
            continue 
    if arg1 >= lastPortions.length:
        revert with 'NH{q', 50
    if lastPortions.length < 1:
        revert with 'NH{q', 17
    if lastPortions.length - 1 > test266151307():
        revert with 'NH{q', 65
    if lastPortions.length - 1:
        mem[(32 * shares.length - 1) + (32 * farms.length - 1) + 192 len 32 * lastPortions.length - 1] = call.data[calldata.size len 32 * lastPortions.length - 1]
    idx = 0
    while idx < lastPortions.length:
        if idx != arg1:
            if idx >= lastPortions.length:
                revert with 'NH{q', 50
            mem[0] = 3
            if 0 >= lastPortions.length - 1:
                revert with 'NH{q', 50
            mem[(32 * shares.length - 1) + (32 * farms.length - 1) + 192] = lastPortions[idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    lastPortions.length--
    if not lastPortions.length - 1:
        idx = 0
        while lastPortions.length > idx:
            lastPortions[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * shares.length - 1) + (32 * farms.length - 1) + 192
        while (32 * shares.length - 1) + (32 * farms.length - 1) + (32 * lastPortions.length - 1) + 192 > idx:
            lastPortions[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * lastPortions.length - 1) + 31) >> 5
        while lastPortions.length > idx:
            lastPortions[idx] = 0
            idx = idx + 1
            continue 
    emit 0xf9d680c6: arg1, lastPortions[arg1], address(shares[arg1]), address(farms[arg1])
}

function processBalances(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if farms.length:
        if currentUser > -arg1 - 1:
            revert with 'NH{q', 17
        mem[32] = 11
        if stor11[stor5]:
            if currentFarm >= farms.length:
                revert with 'NH{q', 50
            if currentFarm >= shares.length:
                revert with 'NH{q', 50
            mem[0] = 1
            mem[96] = currentFarm
            mem[128] = arg1
            emit 0xe6b463a3: currentFarm, arg1, address(shares[stor5]), address(farms[stor5])
            if currentUser + arg1 <= totalUsers:
                idx = currentUser
                while idx < currentUser + arg1:
                    if currentFarm >= shares.length:
                        revert with 'NH{q', 50
                    mem[0] = 1
                    require ext_code.size(address(shares[stor5]))
                    staticcall address(shares[stor5]).0x3a98ef39 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _163 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_163] == mem[_163]
                    if mem[_163] <= 0:
                        revert with 0, 'there are no shares'
                    if currentFarm >= shares.length:
                        revert with 'NH{q', 50
                    mem[0] = 1
                    mem[mem[64] + 4] = idx
                    require ext_code.size(address(shares[stor5]))
                    staticcall address(shares[stor5]).shareById(uint256 arg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _198 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _203 = mem[_198]
                    require mem[_198] == mem[_198]
                    if mem[_198] and currentPortion > -1 / mem[_198]:
                        revert with 'NH{q', 17
                    if not totalBalance:
                        revert with 'NH{q', 18
                    mem[mem[64] + 36] = mem[_198] * currentPortion / totalBalance
                    require ext_code.size(balanceKeeperAddress)
                    call balanceKeeperAddress.0x771602f7 with:
                         gas gas_remaining wei
                        args idx, _203 * currentPortion / totalBalance
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if currentFarm >= farms.length:
                        revert with 'NH{q', 50
                    if currentFarm >= shares.length:
                        revert with 'NH{q', 50
                    mem[0] = 1
                    mem[mem[64]] = currentFarm
                    mem[mem[64] + 32] = _203 * currentPortion / totalBalance
                    emit 0xdb82536d: currentFarm, _203 * currentPortion / totalBalance, address(shares[stor5]), address(farms[stor5]), idx
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if currentUser + arg1 != totalUsers:
                    currentUser += arg1
                else:
                    if currentFarm >= lastPortions.length:
                        revert with 'NH{q', 50
                    lastPortions[stor5] = totalUnlocked
                    stor11[stor5] = 0
                    if farms.length < 1:
                        revert with 'NH{q', 17
                    if currentFarm == farms.length - 1:
                        currentFarm = 0
                    else:
                        if currentFarm == -1:
                            revert with 'NH{q', 17
                        currentFarm++
                    currentUser = 0
            else:
                idx = currentUser
                while idx < totalUsers:
                    if currentFarm >= shares.length:
                        revert with 'NH{q', 50
                    mem[0] = 1
                    require ext_code.size(address(shares[stor5]))
                    staticcall address(shares[stor5]).0x3a98ef39 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _164 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_164] == mem[_164]
                    if mem[_164] <= 0:
                        revert with 0, 'there are no shares'
                    if currentFarm >= shares.length:
                        revert with 'NH{q', 50
                    mem[0] = 1
                    mem[mem[64] + 4] = idx
                    require ext_code.size(address(shares[stor5]))
                    staticcall address(shares[stor5]).shareById(uint256 arg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _199 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _204 = mem[_199]
                    require mem[_199] == mem[_199]
                    if mem[_199] and currentPortion > -1 / mem[_199]:
                        revert with 'NH{q', 17
                    if not totalBalance:
                        revert with 'NH{q', 18
                    mem[mem[64] + 36] = mem[_199] * currentPortion / totalBalance
                    require ext_code.size(balanceKeeperAddress)
                    call balanceKeeperAddress.0x771602f7 with:
                         gas gas_remaining wei
                        args idx, _204 * currentPortion / totalBalance
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if currentFarm >= farms.length:
                        revert with 'NH{q', 50
                    if currentFarm >= shares.length:
                        revert with 'NH{q', 50
                    mem[0] = 1
                    mem[mem[64]] = currentFarm
                    mem[mem[64] + 32] = _204 * currentPortion / totalBalance
                    emit 0xdb82536d: currentFarm, _204 * currentPortion / totalBalance, address(shares[stor5]), address(farms[stor5]), idx
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if totalUsers != totalUsers:
                    currentUser = totalUsers
                else:
                    if currentFarm >= lastPortions.length:
                        revert with 'NH{q', 50
                    lastPortions[stor5] = totalUnlocked
                    stor11[stor5] = 0
                    if farms.length < 1:
                        revert with 'NH{q', 17
                    if currentFarm == farms.length - 1:
                        currentFarm = 0
                    else:
                        if currentFarm == -1:
                            revert with 'NH{q', 17
                        currentFarm++
                    currentUser = 0
        else:
            if currentUser + arg1 <= 0:
                if currentFarm >= farms.length:
                    revert with 'NH{q', 50
                if currentFarm >= shares.length:
                    revert with 'NH{q', 50
                mem[0] = 1
                mem[96] = currentFarm
                mem[128] = arg1
                emit 0xe6b463a3: currentFarm, arg1, address(shares[stor5]), address(farms[stor5])
                idx = currentUser
                while idx < currentUser + arg1:
                    if currentFarm >= shares.length:
                        revert with 'NH{q', 50
                    mem[0] = 1
                    require ext_code.size(address(shares[stor5]))
                    staticcall address(shares[stor5]).0x3a98ef39 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _165 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_165] == mem[_165]
                    if mem[_165] <= 0:
                        revert with 0, 'there are no shares'
                    if currentFarm >= shares.length:
                        revert with 'NH{q', 50
                    mem[0] = 1
                    mem[mem[64] + 4] = idx
                    require ext_code.size(address(shares[stor5]))
                    staticcall address(shares[stor5]).shareById(uint256 arg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _200 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _205 = mem[_200]
                    require mem[_200] == mem[_200]
                    if mem[_200] and currentPortion > -1 / mem[_200]:
                        revert with 'NH{q', 17
                    if not totalBalance:
                        revert with 'NH{q', 18
                    mem[mem[64] + 36] = mem[_200] * currentPortion / totalBalance
                    require ext_code.size(balanceKeeperAddress)
                    call balanceKeeperAddress.0x771602f7 with:
                         gas gas_remaining wei
                        args idx, _205 * currentPortion / totalBalance
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if currentFarm >= farms.length:
                        revert with 'NH{q', 50
                    if currentFarm >= shares.length:
                        revert with 'NH{q', 50
                    mem[0] = 1
                    mem[mem[64]] = currentFarm
                    mem[mem[64] + 32] = _205 * currentPortion / totalBalance
                    emit 0xdb82536d: currentFarm, _205 * currentPortion / totalBalance, address(shares[stor5]), address(farms[stor5]), idx
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if currentUser + arg1 != totalUsers:
                    currentUser += arg1
                else:
                    if currentFarm >= lastPortions.length:
                        revert with 'NH{q', 50
                    lastPortions[stor5] = totalUnlocked
                    stor11[stor5] = 0
                    if farms.length < 1:
                        revert with 'NH{q', 17
                    if currentFarm == farms.length - 1:
                        currentFarm = 0
                    else:
                        if currentFarm == -1:
                            revert with 'NH{q', 17
                        currentFarm++
                    currentUser = 0
            else:
                mem[32] = 11
                stor11[stor5] = 1
                require ext_code.size(balanceKeeperAddress)
                staticcall balanceKeeperAddress.0xbff1f9e1 with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                totalUsers = ext_call.return_data[0]
                if currentFarm >= shares.length:
                    revert with 'NH{q', 50
                require ext_code.size(address(shares[stor5]))
                staticcall address(shares[stor5]).0x3a98ef39 with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                totalBalance = ext_call.return_data[0]
                if currentFarm >= farms.length:
                    revert with 'NH{q', 50
                require ext_code.size(address(farms[stor5]))
                staticcall address(farms[stor5]).0xa779d080 with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                totalUnlocked = ext_call.return_data[0]
                if currentFarm >= lastPortions.length:
                    revert with 'NH{q', 50
                if totalUnlocked < lastPortions[stor5]:
                    revert with 'NH{q', 17
                currentPortion = totalUnlocked - lastPortions[stor5]
                if currentFarm >= farms.length:
                    revert with 'NH{q', 50
                if currentFarm >= shares.length:
                    revert with 'NH{q', 50
                mem[0] = 1
                mem[(4 * ceil32(return_data.size)) + 96] = currentFarm
                mem[(4 * ceil32(return_data.size)) + 128] = arg1
                emit 0xe6b463a3: currentFarm, arg1, address(shares[stor5]), address(farms[stor5])
                if currentUser + arg1 <= totalUsers:
                    idx = currentUser
                    while idx < currentUser + arg1:
                        if currentFarm >= shares.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address(shares[stor5]))
                        staticcall address(shares[stor5]).0x3a98ef39 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _166 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_166] == mem[_166]
                        if mem[_166] <= 0:
                            revert with 0, 'there are no shares'
                        if currentFarm >= shares.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        mem[mem[64] + 4] = idx
                        require ext_code.size(address(shares[stor5]))
                        staticcall address(shares[stor5]).shareById(uint256 arg1) with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _201 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _206 = mem[_201]
                        require mem[_201] == mem[_201]
                        if mem[_201] and currentPortion > -1 / mem[_201]:
                            revert with 'NH{q', 17
                        if not totalBalance:
                            revert with 'NH{q', 18
                        mem[mem[64] + 36] = mem[_201] * currentPortion / totalBalance
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0x771602f7 with:
                             gas gas_remaining wei
                            args idx, _206 * currentPortion / totalBalance
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if currentFarm >= farms.length:
                            revert with 'NH{q', 50
                        if currentFarm >= shares.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        mem[mem[64]] = currentFarm
                        mem[mem[64] + 32] = _206 * currentPortion / totalBalance
                        emit 0xdb82536d: currentFarm, _206 * currentPortion / totalBalance, address(shares[stor5]), address(farms[stor5]), idx
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if currentUser + arg1 != totalUsers:
                        currentUser += arg1
                    else:
                        if currentFarm >= lastPortions.length:
                            revert with 'NH{q', 50
                        lastPortions[stor5] = totalUnlocked
                        stor11[stor5] = 0
                        if farms.length < 1:
                            revert with 'NH{q', 17
                        if currentFarm == farms.length - 1:
                            currentFarm = 0
                        else:
                            if currentFarm == -1:
                                revert with 'NH{q', 17
                            currentFarm++
                        currentUser = 0
                else:
                    idx = currentUser
                    while idx < totalUsers:
                        if currentFarm >= shares.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        require ext_code.size(address(shares[stor5]))
                        staticcall address(shares[stor5]).0x3a98ef39 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _167 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_167] == mem[_167]
                        if mem[_167] <= 0:
                            revert with 0, 'there are no shares'
                        if currentFarm >= shares.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        mem[mem[64] + 4] = idx
                        require ext_code.size(address(shares[stor5]))
                        staticcall address(shares[stor5]).shareById(uint256 arg1) with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _202 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _207 = mem[_202]
                        require mem[_202] == mem[_202]
                        if mem[_202] and currentPortion > -1 / mem[_202]:
                            revert with 'NH{q', 17
                        if not totalBalance:
                            revert with 'NH{q', 18
                        mem[mem[64] + 36] = mem[_202] * currentPortion / totalBalance
                        require ext_code.size(balanceKeeperAddress)
                        call balanceKeeperAddress.0x771602f7 with:
                             gas gas_remaining wei
                            args idx, _207 * currentPortion / totalBalance
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if currentFarm >= farms.length:
                            revert with 'NH{q', 50
                        if currentFarm >= shares.length:
                            revert with 'NH{q', 50
                        mem[0] = 1
                        mem[mem[64]] = currentFarm
                        mem[mem[64] + 32] = _207 * currentPortion / totalBalance
                        emit 0xdb82536d: currentFarm, _207 * currentPortion / totalBalance, address(shares[stor5]), address(farms[stor5]), idx
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if totalUsers != totalUsers:
                        currentUser = totalUsers
                    else:
                        if currentFarm >= lastPortions.length:
                            revert with 'NH{q', 50
                        lastPortions[stor5] = totalUnlocked
                        stor11[stor5] = 0
                        if farms.length < 1:
                            revert with 'NH{q', 17
                        if currentFarm == farms.length - 1:
                            currentFarm = 0
                        else:
                            if currentFarm == -1:
                                revert with 'NH{q', 17
                            currentFarm++
                        currentUser = 0
}



}
