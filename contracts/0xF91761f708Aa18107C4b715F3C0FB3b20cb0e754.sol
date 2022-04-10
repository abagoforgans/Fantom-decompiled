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
            _13 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_13] == mem[_13 + 12 len 20]
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
            _14 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_14] == mem[_14 + 12 len 20]
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
