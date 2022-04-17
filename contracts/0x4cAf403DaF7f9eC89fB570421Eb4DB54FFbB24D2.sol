contract main {




// =====================  Runtime code  =====================


address owner;
address sub_e12e8736Address;
address sub_09fd925aAddress;
address balanceKeeperAddress;
uint256 finalValue;
uint256 totalUsers;
mapping of uint256 sendBalance;

function sub_09fd925a(?) payable {
    return sub_09fd925aAddress
}

function sendBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sendBalance[arg1]
}

function finalValue() payable {
    return finalValue
}

function owner() payable {
    return owner
}

function totalUsers() payable {
    return totalUsers
}

function sub_e12e8736(?) payable {
    return sub_e12e8736Address
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
            require ext_code.size(sub_09fd925aAddress)
            call sub_09fd925aAddress.0x365b98b2 with:
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
            require ext_code.size(sub_09fd925aAddress)
            call sub_09fd925aAddress.0x18160ddd with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _53 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _55 = mem[_53]
            require mem[_53] == mem[_53]
            mem[mem[64] + 4] = address(_47)
            require ext_code.size(sub_09fd925aAddress)
            call sub_09fd925aAddress.0x257d5f86 with:
                 gas gas_remaining wei
                args address(_47)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _61 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _63 = mem[_61]
            require mem[_61] == mem[_61]
            require ext_code.size(sub_e12e8736Address)
            call sub_e12e8736Address.totalUnlocked() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _69 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _71 = mem[_69]
            require mem[_69] == mem[_69]
            if mem[_69] and _63 > -1 / mem[_69]:
                revert with 'NH{q', 17
            if not _55:
                revert with 'NH{q', 18
            if mem[_69] * _63 / _55 < sendBalance[address(_47)]:
                revert with 'NH{q', 17
            mem[0] = address(_47)
            mem[32] = 6
            sendBalance[address(_47)] = _71 * _63 / _55
            mem[mem[64]] = 0xca0b187800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_47)
            mem[mem[64] + 36] = (_71 * _63 / _55) - sendBalance[address(_47)]
            require ext_code.size(balanceKeeperAddress)
            call balanceKeeperAddress.0xca0b1878 with:
                 gas gas_remaining wei
                args address(_47), (_71 * _63 / _55) - sendBalance[address(_47)]
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
            require ext_code.size(sub_09fd925aAddress)
            call sub_09fd925aAddress.0x365b98b2 with:
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
            require ext_code.size(sub_09fd925aAddress)
            call sub_09fd925aAddress.0x18160ddd with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _54 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _56 = mem[_54]
            require mem[_54] == mem[_54]
            mem[mem[64] + 4] = address(_48)
            require ext_code.size(sub_09fd925aAddress)
            call sub_09fd925aAddress.0x257d5f86 with:
                 gas gas_remaining wei
                args address(_48)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _62 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _64 = mem[_62]
            require mem[_62] == mem[_62]
            require ext_code.size(sub_e12e8736Address)
            call sub_e12e8736Address.totalUnlocked() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _70 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _72 = mem[_70]
            require mem[_70] == mem[_70]
            if mem[_70] and _64 > -1 / mem[_70]:
                revert with 'NH{q', 17
            if not _56:
                revert with 'NH{q', 18
            if mem[_70] * _64 / _56 < sendBalance[address(_48)]:
                revert with 'NH{q', 17
            mem[0] = address(_48)
            mem[32] = 6
            sendBalance[address(_48)] = _72 * _64 / _56
            mem[mem[64]] = 0xca0b187800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_48)
            mem[mem[64] + 36] = (_72 * _64 / _56) - sendBalance[address(_48)]
            require ext_code.size(balanceKeeperAddress)
            call balanceKeeperAddress.0xca0b1878 with:
                 gas gas_remaining wei
                args address(_48), (_72 * _64 / _56) - sendBalance[address(_48)]
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
