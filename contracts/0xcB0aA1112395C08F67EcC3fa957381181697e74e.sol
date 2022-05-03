contract main {




// =====================  Runtime code  =====================


address owner;
array of address shares;
array of address farms;
array of uint256 lastPortions;
uint256 totalFarms;
uint256 lastUser;
uint256 currentFarm;
uint256 currentPortion;
uint256 totalUnlocked;
uint256 totalBalance;
uint256 totalUsers;
address balanceKeeperAddress;
mapping of uint8 stor12;

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
    return totalFarms
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
    return bool(stor12[arg1])
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

function totalUnlocked() payable {
    return totalUnlocked
}

function totalBalance() payable {
    return totalBalance
}

function lastUser() payable {
    return lastUser
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
    if totalFarms == -1:
        revert with 'NH{q', 17
    totalFarms++
}

function removeFarm(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if stor12[stor6]:
        revert with 0, 'farm is processing balances'
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
    if not totalFarms:
        revert with 'NH{q', 17
    totalFarms--
}

function processBalances(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if currentFarm < farms.length:
        if lastUser:
            if lastUser > -arg1 - 1:
                revert with 'NH{q', 17
            if lastUser + arg1 <= totalUsers:
                idx = lastUser
                while idx < lastUser + arg1:
                    if currentFarm >= shares.length:
                        revert with 'NH{q', 50
                    mem[0] = 1
                    require ext_code.size(address(shares[stor6]))
                    call address(shares[stor6]).0x3a98ef39 with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _101 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_101] == mem[_101]
                    if mem[_101] <= 0:
                        revert with 0, 'there are no shares'
                    if currentFarm >= shares.length:
                        revert with 'NH{q', 50
                    mem[0] = 1
                    mem[mem[64] + 4] = idx
                    require ext_code.size(address(shares[stor6]))
                    call address(shares[stor6]).shareById(uint256 arg1) with:
                         gas gas_remaining wei
                        args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _129 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _133 = mem[_129]
                    require mem[_129] == mem[_129]
                    if mem[_129] and currentPortion > -1 / mem[_129]:
                        revert with 'NH{q', 17
                    if not totalBalance:
                        revert with 'NH{q', 18
                    mem[mem[64]] = 0x771602f700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = _133 * currentPortion / totalBalance
                    require ext_code.size(balanceKeeperAddress)
                    call balanceKeeperAddress.add(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args idx, _133 * currentPortion / totalBalance
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if lastUser + arg1 != totalUsers:
                    lastUser += arg1
                else:
                    lastUser = 0
                    if currentFarm >= lastPortions.length:
                        revert with 'NH{q', 50
                    lastPortions[stor6] = totalUnlocked
                    stor12[stor6] = 0
                    if farms.length < 1:
                        revert with 'NH{q', 17
                    if currentFarm == farms.length - 1:
                        currentFarm = 0
                    else:
                        if currentFarm == -1:
                            revert with 'NH{q', 17
                        currentFarm++
            else:
                idx = lastUser
                while idx < totalUsers:
                    if currentFarm >= shares.length:
                        revert with 'NH{q', 50
                    mem[0] = 1
                    require ext_code.size(address(shares[stor6]))
                    call address(shares[stor6]).0x3a98ef39 with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _102 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_102] == mem[_102]
                    if mem[_102] <= 0:
                        revert with 0, 'there are no shares'
                    if currentFarm >= shares.length:
                        revert with 'NH{q', 50
                    mem[0] = 1
                    mem[mem[64] + 4] = idx
                    require ext_code.size(address(shares[stor6]))
                    call address(shares[stor6]).shareById(uint256 arg1) with:
                         gas gas_remaining wei
                        args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _130 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _134 = mem[_130]
                    require mem[_130] == mem[_130]
                    if mem[_130] and currentPortion > -1 / mem[_130]:
                        revert with 'NH{q', 17
                    if not totalBalance:
                        revert with 'NH{q', 18
                    mem[mem[64]] = 0x771602f700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = _134 * currentPortion / totalBalance
                    require ext_code.size(balanceKeeperAddress)
                    call balanceKeeperAddress.add(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args idx, _134 * currentPortion / totalBalance
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if totalUsers != totalUsers:
                    lastUser = totalUsers
                else:
                    lastUser = 0
                    if currentFarm >= lastPortions.length:
                        revert with 'NH{q', 50
                    lastPortions[stor6] = totalUnlocked
                    stor12[stor6] = 0
                    if farms.length < 1:
                        revert with 'NH{q', 17
                    if currentFarm == farms.length - 1:
                        currentFarm = 0
                    else:
                        if currentFarm == -1:
                            revert with 'NH{q', 17
                        currentFarm++
        else:
            mem[32] = 12
            stor12[stor6] = 1
            require ext_code.size(balanceKeeperAddress)
            call balanceKeeperAddress.0xbff1f9e1 with:
                 gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            totalUsers = ext_call.return_data[0]
            if currentFarm >= shares.length:
                revert with 'NH{q', 50
            require ext_code.size(address(shares[stor6]))
            call address(shares[stor6]).0x3a98ef39 with:
                 gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            totalBalance = ext_call.return_data[0]
            if currentFarm >= farms.length:
                revert with 'NH{q', 50
            require ext_code.size(address(farms[stor6]))
            staticcall address(farms[stor6]).0xa779d080 with:
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
            mem[0] = 3
            if totalUnlocked < lastPortions[stor6]:
                revert with 'NH{q', 17
            currentPortion = totalUnlocked - lastPortions[stor6]
            if lastUser > -arg1 - 1:
                revert with 'NH{q', 17
            if lastUser + arg1 <= totalUsers:
                idx = lastUser
                while idx < lastUser + arg1:
                    if currentFarm >= shares.length:
                        revert with 'NH{q', 50
                    mem[0] = 1
                    require ext_code.size(address(shares[stor6]))
                    call address(shares[stor6]).0x3a98ef39 with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _103 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_103] == mem[_103]
                    if mem[_103] <= 0:
                        revert with 0, 'there are no shares'
                    if currentFarm >= shares.length:
                        revert with 'NH{q', 50
                    mem[0] = 1
                    mem[mem[64] + 4] = idx
                    require ext_code.size(address(shares[stor6]))
                    call address(shares[stor6]).shareById(uint256 arg1) with:
                         gas gas_remaining wei
                        args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _131 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _135 = mem[_131]
                    require mem[_131] == mem[_131]
                    if mem[_131] and currentPortion > -1 / mem[_131]:
                        revert with 'NH{q', 17
                    if not totalBalance:
                        revert with 'NH{q', 18
                    mem[mem[64]] = 0x771602f700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = _135 * currentPortion / totalBalance
                    require ext_code.size(balanceKeeperAddress)
                    call balanceKeeperAddress.add(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args idx, _135 * currentPortion / totalBalance
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if lastUser + arg1 != totalUsers:
                    lastUser += arg1
                else:
                    lastUser = 0
                    if currentFarm >= lastPortions.length:
                        revert with 'NH{q', 50
                    lastPortions[stor6] = totalUnlocked
                    stor12[stor6] = 0
                    if farms.length < 1:
                        revert with 'NH{q', 17
                    if currentFarm == farms.length - 1:
                        currentFarm = 0
                    else:
                        if currentFarm == -1:
                            revert with 'NH{q', 17
                        currentFarm++
            else:
                idx = lastUser
                while idx < totalUsers:
                    if currentFarm >= shares.length:
                        revert with 'NH{q', 50
                    mem[0] = 1
                    require ext_code.size(address(shares[stor6]))
                    call address(shares[stor6]).0x3a98ef39 with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _104 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_104] == mem[_104]
                    if mem[_104] <= 0:
                        revert with 0, 'there are no shares'
                    if currentFarm >= shares.length:
                        revert with 'NH{q', 50
                    mem[0] = 1
                    mem[mem[64] + 4] = idx
                    require ext_code.size(address(shares[stor6]))
                    call address(shares[stor6]).shareById(uint256 arg1) with:
                         gas gas_remaining wei
                        args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _132 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _136 = mem[_132]
                    require mem[_132] == mem[_132]
                    if mem[_132] and currentPortion > -1 / mem[_132]:
                        revert with 'NH{q', 17
                    if not totalBalance:
                        revert with 'NH{q', 18
                    mem[mem[64]] = 0x771602f700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = _136 * currentPortion / totalBalance
                    require ext_code.size(balanceKeeperAddress)
                    call balanceKeeperAddress.add(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args idx, _136 * currentPortion / totalBalance
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if totalUsers != totalUsers:
                    lastUser = totalUsers
                else:
                    lastUser = 0
                    if currentFarm >= lastPortions.length:
                        revert with 'NH{q', 50
                    lastPortions[stor6] = totalUnlocked
                    stor12[stor6] = 0
                    if farms.length < 1:
                        revert with 'NH{q', 17
                    if currentFarm == farms.length - 1:
                        currentFarm = 0
                    else:
                        if currentFarm == -1:
                            revert with 'NH{q', 17
                        currentFarm++
}



}
