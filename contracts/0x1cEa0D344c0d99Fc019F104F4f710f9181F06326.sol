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

function sub_79dd2fb5(?) payable {
    mem[64] = 96
    if finalValue > -2001:
        revert with 'NH{q', 17
    if finalValue + 2000 <= totalUsers:
        idx = finalValue
        while idx < finalValue + 2000:
            mem[mem[64] + 4] = idx
            require ext_code.size(sub_09fd925aAddress)
            call sub_09fd925aAddress.users(uint256 rg1) with:
                 gas gas_remaining wei
                args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _41 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _43 = mem[_41]
            require mem[_41] == mem[_41 + 12 len 20]
            require ext_code.size(sub_09fd925aAddress)
            call sub_09fd925aAddress.0x18160ddd with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _49 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _51 = mem[_49]
            require mem[_49] == mem[_49]
            mem[mem[64] + 4] = address(_43)
            require ext_code.size(sub_09fd925aAddress)
            call sub_09fd925aAddress.impact(address rg1) with:
                 gas gas_remaining wei
                args address(_43)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _57 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _59 = mem[_57]
            require mem[_57] == mem[_57]
            require ext_code.size(sub_e12e8736Address)
            call sub_e12e8736Address.totalUnlocked() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _65 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _67 = mem[_65]
            require mem[_65] == mem[_65]
            if mem[_65] and _59 > -1 / mem[_65]:
                revert with 'NH{q', 17
            if not _51:
                revert with 'NH{q', 18
            if mem[_65] * _59 / _51 < sendBalance[address(_43)]:
                revert with 'NH{q', 17
            mem[0] = address(_43)
            mem[32] = 6
            sendBalance[address(_43)] = _67 * _59 / _51
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if finalValue + 2000 != totalUsers:
            finalValue += 2000
        else:
            finalValue = 0
    else:
        idx = finalValue
        while idx < totalUsers:
            mem[mem[64] + 4] = idx
            require ext_code.size(sub_09fd925aAddress)
            call sub_09fd925aAddress.users(uint256 rg1) with:
                 gas gas_remaining wei
                args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _42 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _44 = mem[_42]
            require mem[_42] == mem[_42 + 12 len 20]
            require ext_code.size(sub_09fd925aAddress)
            call sub_09fd925aAddress.0x18160ddd with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _50 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _52 = mem[_50]
            require mem[_50] == mem[_50]
            mem[mem[64] + 4] = address(_44)
            require ext_code.size(sub_09fd925aAddress)
            call sub_09fd925aAddress.impact(address rg1) with:
                 gas gas_remaining wei
                args address(_44)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _58 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _60 = mem[_58]
            require mem[_58] == mem[_58]
            require ext_code.size(sub_e12e8736Address)
            call sub_e12e8736Address.totalUnlocked() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _66 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _68 = mem[_66]
            require mem[_66] == mem[_66]
            if mem[_66] and _60 > -1 / mem[_66]:
                revert with 'NH{q', 17
            if not _52:
                revert with 'NH{q', 18
            if mem[_66] * _60 / _52 < sendBalance[address(_44)]:
                revert with 'NH{q', 17
            mem[0] = address(_44)
            mem[32] = 6
            sendBalance[address(_44)] = _68 * _60 / _52
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
