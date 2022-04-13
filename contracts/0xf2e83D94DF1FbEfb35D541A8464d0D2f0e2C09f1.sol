contract main {




// =====================  Runtime code  =====================


address owner;
address sub_7309943cAddress;
address balanceKeeperAddress;
uint256 finalValue;
uint256 totalBalance;
uint256 totalUsers;
mapping of uint256 sendBalance;

function sendBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sendBalance[arg1]
}

function finalValue() payable {
    return finalValue
}

function sub_7309943c(?) payable {
    return sub_7309943cAddress
}

function owner() payable {
    return owner
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

function processBalances(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if finalValue > -arg1 - 1:
        revert with 'NH{q', 17
    if finalValue + arg1 <= totalUsers:
        idx = finalValue
        while idx < finalValue + arg1:
            mem[mem[64] + 4] = idx
            require ext_code.size(balanceKeeperAddress)
            call balanceKeeperAddress.userAddresses(uint256 rg1) with:
                 gas gas_remaining wei
                args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _37 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _39 = mem[_37]
            require mem[_37] == mem[_37 + 12 len 20]
            mem[mem[64] + 4] = mem[_37 + 12 len 20]
            require ext_code.size(balanceKeeperAddress)
            call balanceKeeperAddress.userBalance(address rg1) with:
                 gas gas_remaining wei
                args address(_39)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _45 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _47 = mem[_45]
            require mem[_45] == mem[_45]
            require ext_code.size(sub_7309943cAddress)
            call sub_7309943cAddress.totalUnlocked() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _53 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _55 = mem[_53]
            require mem[_53] == mem[_53]
            if mem[_53] and _47 > -1 / mem[_53]:
                revert with 'NH{q', 17
            if not totalBalance:
                revert with 'NH{q', 18
            if mem[_53] * _47 / totalBalance < _47:
                revert with 'NH{q', 17
            mem[mem[64]] = 0xca0b187800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_39)
            mem[mem[64] + 36] = (_55 * _47 / totalBalance) - _47
            require ext_code.size(balanceKeeperAddress)
            call balanceKeeperAddress.addValue(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(_39), (_55 * _47 / totalBalance) - _47
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if finalValue + arg1 != totalUsers:
            finalValue += arg1
        else:
            finalValue = 0
    else:
        require ext_code.size(balanceKeeperAddress)
        call balanceKeeperAddress.0xbff1f9e1 with:
             gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        totalUsers = ext_call.return_data[0]
        idx = finalValue
        while idx < totalUsers:
            mem[mem[64] + 4] = idx
            require ext_code.size(balanceKeeperAddress)
            call balanceKeeperAddress.userAddresses(uint256 rg1) with:
                 gas gas_remaining wei
                args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _38 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _40 = mem[_38]
            require mem[_38] == mem[_38 + 12 len 20]
            mem[mem[64] + 4] = mem[_38 + 12 len 20]
            require ext_code.size(balanceKeeperAddress)
            call balanceKeeperAddress.userBalance(address rg1) with:
                 gas gas_remaining wei
                args address(_40)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _46 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _48 = mem[_46]
            require mem[_46] == mem[_46]
            require ext_code.size(sub_7309943cAddress)
            call sub_7309943cAddress.totalUnlocked() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _54 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _56 = mem[_54]
            require mem[_54] == mem[_54]
            if mem[_54] and _48 > -1 / mem[_54]:
                revert with 'NH{q', 17
            if not totalBalance:
                revert with 'NH{q', 18
            if mem[_54] * _48 / totalBalance < _48:
                revert with 'NH{q', 17
            mem[mem[64]] = 0xca0b187800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_40)
            mem[mem[64] + 36] = (_56 * _48 / totalBalance) - _48
            require ext_code.size(balanceKeeperAddress)
            call balanceKeeperAddress.addValue(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(_40), (_56 * _48 / totalBalance) - _48
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if totalUsers != totalUsers:
            finalValue = totalUsers
        else:
            finalValue = 0
}



}
