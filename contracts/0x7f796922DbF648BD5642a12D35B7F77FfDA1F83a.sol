contract main {




// =====================  Runtime code  =====================


address owner;
address sub_7309943cAddress;
address balanceKeeperAddress;
uint256 finalValue;
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
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if finalValue > -arg1 - 1:
        revert with 'NH{q', 17
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
    if finalValue + arg1 <= totalUsers:
        idx = finalValue
        while idx < finalValue + arg1:
            mem[mem[64] + 4] = idx
            require ext_code.size(balanceKeeperAddress)
            call balanceKeeperAddress.0x502c9bd5 with:
                 gas gas_remaining wei
                args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _45 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _47 = mem[_45]
            require mem[_45] == mem[_45 + 12 len 20]
            mem[mem[64] + 4] = mem[_45 + 12 len 20]
            require ext_code.size(balanceKeeperAddress)
            call balanceKeeperAddress.userBalance(address rg1) with:
                 gas gas_remaining wei
                args address(_47)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _53 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _55 = mem[_53]
            require mem[_53] == mem[_53]
            require ext_code.size(balanceKeeperAddress)
            call balanceKeeperAddress.0xad7a672f with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _61 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _63 = mem[_61]
            require mem[_61] == mem[_61]
            require ext_code.size(sub_7309943cAddress)
            call sub_7309943cAddress.totalUnlocked() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _69 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _71 = mem[_69]
            require mem[_69] == mem[_69]
            if mem[_69] and _55 > -1 / mem[_69]:
                revert with 'NH{q', 17
            if not _63:
                revert with 'NH{q', 18
            if mem[_69] * _55 / _63 < _55:
                revert with 'NH{q', 17
            mem[mem[64]] = 0xca0b187800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_47)
            mem[mem[64] + 36] = (_71 * _55 / _63) - _55
            require ext_code.size(balanceKeeperAddress)
            call balanceKeeperAddress.0xca0b1878 with:
                 gas gas_remaining wei
                args address(_47), (_71 * _55 / _63) - _55
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
        idx = finalValue
        while idx < totalUsers:
            mem[mem[64] + 4] = idx
            require ext_code.size(balanceKeeperAddress)
            call balanceKeeperAddress.0x502c9bd5 with:
                 gas gas_remaining wei
                args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _46 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _48 = mem[_46]
            require mem[_46] == mem[_46 + 12 len 20]
            mem[mem[64] + 4] = mem[_46 + 12 len 20]
            require ext_code.size(balanceKeeperAddress)
            call balanceKeeperAddress.userBalance(address rg1) with:
                 gas gas_remaining wei
                args address(_48)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _54 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _56 = mem[_54]
            require mem[_54] == mem[_54]
            require ext_code.size(balanceKeeperAddress)
            call balanceKeeperAddress.0xad7a672f with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _62 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _64 = mem[_62]
            require mem[_62] == mem[_62]
            require ext_code.size(sub_7309943cAddress)
            call sub_7309943cAddress.totalUnlocked() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _70 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _72 = mem[_70]
            require mem[_70] == mem[_70]
            if mem[_70] and _56 > -1 / mem[_70]:
                revert with 'NH{q', 17
            if not _64:
                revert with 'NH{q', 18
            if mem[_70] * _56 / _64 < _56:
                revert with 'NH{q', 17
            mem[mem[64]] = 0xca0b187800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_48)
            mem[mem[64] + 36] = (_72 * _56 / _64) - _56
            require ext_code.size(balanceKeeperAddress)
            call balanceKeeperAddress.0xca0b1878 with:
                 gas gas_remaining wei
                args address(_48), (_72 * _56 / _64) - _56
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
