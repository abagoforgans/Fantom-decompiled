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
            _37 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _39 = mem[_37]
            require mem[_37] == mem[_37 + 12 len 20]
            require ext_code.size(sub_09fd925aAddress)
            call sub_09fd925aAddress.0x18160ddd with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _45 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _47 = mem[_45]
            require mem[_45] == mem[_45]
            mem[mem[64] + 4] = address(_39)
            require ext_code.size(sub_09fd925aAddress)
            call sub_09fd925aAddress.impact(address rg1) with:
                 gas gas_remaining wei
                args address(_39)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _53 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _55 = mem[_53]
            require mem[_53] == mem[_53]
            require ext_code.size(sub_e12e8736Address)
            call sub_e12e8736Address.totalUnlocked() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _61 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_61] == mem[_61]
            if mem[_61] and _55 > -1 / mem[_61]:
                revert with 'NH{q', 17
            if not _47:
                revert with 'NH{q', 18
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
            _38 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _40 = mem[_38]
            require mem[_38] == mem[_38 + 12 len 20]
            require ext_code.size(sub_09fd925aAddress)
            call sub_09fd925aAddress.0x18160ddd with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _46 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _48 = mem[_46]
            require mem[_46] == mem[_46]
            mem[mem[64] + 4] = address(_40)
            require ext_code.size(sub_09fd925aAddress)
            call sub_09fd925aAddress.impact(address rg1) with:
                 gas gas_remaining wei
                args address(_40)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _54 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _56 = mem[_54]
            require mem[_54] == mem[_54]
            require ext_code.size(sub_e12e8736Address)
            call sub_e12e8736Address.totalUnlocked() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _62 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_62] == mem[_62]
            if mem[_62] and _56 > -1 / mem[_62]:
                revert with 'NH{q', 17
            if not _48:
                revert with 'NH{q', 18
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
