contract main {




// =====================  Runtime code  =====================


address owner;
address sub_7309943cAddress;
address balanceKeeperAddress;
uint256 finalValue;
uint256 totalUsers;
uint256 sub_0047ea0c;
uint256 currentPortion;
uint256 totalBalance;
uint256 totalUnlocked;

function sub_0047ea0c(?) payable {
    return sub_0047ea0c
}

function currentPortion() payable {
    return currentPortion
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

function processBalances(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if finalValue:
        if finalValue > -arg1 - 1:
            revert with 'NH{q', 17
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
                _61 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _65 = mem[_61]
                require mem[_61] == mem[_61 + 12 len 20]
                mem[mem[64] + 4] = mem[_61 + 12 len 20]
                require ext_code.size(balanceKeeperAddress)
                call balanceKeeperAddress.userBalance(address arg1) with:
                     gas gas_remaining wei
                    args address(_65)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _77 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _81 = mem[_77]
                require mem[_77] == mem[_77]
                if currentPortion and mem[_77] > -1 / currentPortion:
                    revert with 'NH{q', 17
                if not totalBalance:
                    revert with 'NH{q', 18
                mem[mem[64]] = 0xca0b187800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_65)
                mem[mem[64] + 36] = currentPortion * _81 / totalBalance
                require ext_code.size(balanceKeeperAddress)
                call balanceKeeperAddress.0xca0b1878 with:
                     gas gas_remaining wei
                    args address(_65), currentPortion * _81 / totalBalance
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
                sub_0047ea0c = totalUnlocked
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
                _62 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _66 = mem[_62]
                require mem[_62] == mem[_62 + 12 len 20]
                mem[mem[64] + 4] = mem[_62 + 12 len 20]
                require ext_code.size(balanceKeeperAddress)
                call balanceKeeperAddress.userBalance(address arg1) with:
                     gas gas_remaining wei
                    args address(_66)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _78 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _82 = mem[_78]
                require mem[_78] == mem[_78]
                if currentPortion and mem[_78] > -1 / currentPortion:
                    revert with 'NH{q', 17
                if not totalBalance:
                    revert with 'NH{q', 18
                mem[mem[64]] = 0xca0b187800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_66)
                mem[mem[64] + 36] = currentPortion * _82 / totalBalance
                require ext_code.size(balanceKeeperAddress)
                call balanceKeeperAddress.0xca0b1878 with:
                     gas gas_remaining wei
                    args address(_66), currentPortion * _82 / totalBalance
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
                sub_0047ea0c = totalUnlocked
    else:
        require ext_code.size(balanceKeeperAddress)
        call balanceKeeperAddress.0xbff1f9e1 with:
             gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        totalUsers = ext_call.return_data[0]
        require ext_code.size(sub_7309943cAddress)
        call sub_7309943cAddress.0xa779d080 with:
             gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        totalUnlocked = ext_call.return_data[0]
        if totalUnlocked < sub_0047ea0c:
            revert with 'NH{q', 17
        currentPortion = totalUnlocked - sub_0047ea0c
        require ext_code.size(balanceKeeperAddress)
        call balanceKeeperAddress.0xad7a672f with:
             gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        totalBalance = ext_call.return_data[0]
        if finalValue > -arg1 - 1:
            revert with 'NH{q', 17
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
                _63 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _67 = mem[_63]
                require mem[_63] == mem[_63 + 12 len 20]
                mem[mem[64] + 4] = mem[_63 + 12 len 20]
                require ext_code.size(balanceKeeperAddress)
                call balanceKeeperAddress.userBalance(address arg1) with:
                     gas gas_remaining wei
                    args address(_67)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _79 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _83 = mem[_79]
                require mem[_79] == mem[_79]
                if currentPortion and mem[_79] > -1 / currentPortion:
                    revert with 'NH{q', 17
                if not totalBalance:
                    revert with 'NH{q', 18
                mem[mem[64]] = 0xca0b187800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_67)
                mem[mem[64] + 36] = currentPortion * _83 / totalBalance
                require ext_code.size(balanceKeeperAddress)
                call balanceKeeperAddress.0xca0b1878 with:
                     gas gas_remaining wei
                    args address(_67), currentPortion * _83 / totalBalance
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
                sub_0047ea0c = totalUnlocked
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
                _64 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _68 = mem[_64]
                require mem[_64] == mem[_64 + 12 len 20]
                mem[mem[64] + 4] = mem[_64 + 12 len 20]
                require ext_code.size(balanceKeeperAddress)
                call balanceKeeperAddress.userBalance(address arg1) with:
                     gas gas_remaining wei
                    args address(_68)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _80 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _84 = mem[_80]
                require mem[_80] == mem[_80]
                if currentPortion and mem[_80] > -1 / currentPortion:
                    revert with 'NH{q', 17
                if not totalBalance:
                    revert with 'NH{q', 18
                mem[mem[64]] = 0xca0b187800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_68)
                mem[mem[64] + 36] = currentPortion * _84 / totalBalance
                require ext_code.size(balanceKeeperAddress)
                call balanceKeeperAddress.0xca0b1878 with:
                     gas gas_remaining wei
                    args address(_68), currentPortion * _84 / totalBalance
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
                sub_0047ea0c = totalUnlocked
}



}
