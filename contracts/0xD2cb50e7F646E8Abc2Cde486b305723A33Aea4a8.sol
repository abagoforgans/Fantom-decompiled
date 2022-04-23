contract main {




// =====================  Runtime code  =====================


address owner;
address sub_fa575bd2Address;
address balanceKeeperAddress;
address lpTokenAddress;
uint256 currentPortion;
uint256 sub_84411d65;
uint256 finalValue;
uint256 totalLocked;
mapping of uint256 impact;
mapping of address users;
mapping of uint8 stor10;
uint256 userCount;

function userCount() payable {
    return userCount
}

function currentPortion() payable {
    return currentPortion
}

function impact(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return impact[arg1]
}

function users(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return users[arg1]
}

function sub_43e1cc9c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor10[arg1])
}

function totalLocked() payable {
    return totalLocked
}

function finalValue() payable {
    return finalValue
}

function lpToken() payable {
    return lpTokenAddress
}

function sub_84411d65(?) payable {
    return sub_84411d65
}

function owner() payable {
    return owner
}

function sub_fa575bd2(?) payable {
    return sub_fa575bd2Address
}

function balanceKeeper() payable {
    return balanceKeeperAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    owner = arg1
}

function sub_3ef2327a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    sub_fa575bd2Address = address(arg1)
}

function sub_7dd674c2(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if impact[address(msg.sender)] < arg1:
        revert with 0, 'not enough amount'
    require ext_code.size(lpTokenAddress)
    call lpTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'can't transfer amount'
    if impact[address(msg.sender)] < arg1:
        revert with 'NH{q', 17
    impact[address(msg.sender)] -= arg1
    if totalLocked < arg1:
        revert with 'NH{q', 17
    totalLocked -= arg1
}

function lockLP(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor10[address(msg.sender)]:
        users[stor11] = msg.sender
        if userCount == -1:
            revert with 'NH{q', 17
        userCount++
        stor10[address(msg.sender)] = 1
    require ext_code.size(lpTokenAddress)
    call lpTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'can't transfer'
    if impact[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    impact[address(msg.sender)] += arg1
    if totalLocked > -arg1 - 1:
        revert with 'NH{q', 17
    totalLocked += arg1
}

function sub_2a6294bc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if finalValue > -arg1 - 1:
        revert with 'NH{q', 17
    if finalValue:
        if finalValue + arg1 <= userCount:
            idx = finalValue
            while idx <= finalValue + arg1:
                mem[0] = users[idx]
                mem[32] = 8
                if currentPortion and impact[stor9[idx]] > -1 / currentPortion:
                    revert with 'NH{q', 17
                if not totalLocked:
                    revert with 'NH{q', 18
                mem[96] = 0xca0b187800000000000000000000000000000000000000000000000000000000
                mem[100] = users[idx]
                mem[132] = currentPortion * impact[stor9[idx]] / totalLocked
                require ext_code.size(balanceKeeperAddress)
                call balanceKeeperAddress.0xca0b1878 with:
                     gas gas_remaining wei
                    args users[idx], currentPortion * impact[stor9[idx]] / totalLocked
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if finalValue + arg1 != userCount:
                finalValue += arg1
            else:
                finalValue = 0
                if sub_84411d65 > -currentPortion - 1:
                    revert with 'NH{q', 17
                sub_84411d65 += currentPortion
        else:
            idx = finalValue
            while idx <= userCount:
                mem[0] = users[idx]
                mem[32] = 8
                if currentPortion and impact[stor9[idx]] > -1 / currentPortion:
                    revert with 'NH{q', 17
                if not totalLocked:
                    revert with 'NH{q', 18
                mem[96] = 0xca0b187800000000000000000000000000000000000000000000000000000000
                mem[100] = users[idx]
                mem[132] = currentPortion * impact[stor9[idx]] / totalLocked
                require ext_code.size(balanceKeeperAddress)
                call balanceKeeperAddress.0xca0b1878 with:
                     gas gas_remaining wei
                    args users[idx], currentPortion * impact[stor9[idx]] / totalLocked
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if userCount != userCount:
                finalValue = userCount
            else:
                finalValue = 0
                if sub_84411d65 > -currentPortion - 1:
                    revert with 'NH{q', 17
                sub_84411d65 += currentPortion
    else:
        require ext_code.size(sub_fa575bd2Address)
        call sub_fa575bd2Address.totalUnlocked() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < sub_84411d65:
            revert with 'NH{q', 17
        currentPortion = ext_call.return_data[0] - sub_84411d65
        if finalValue + arg1 <= userCount:
            idx = finalValue
            while idx <= finalValue + arg1:
                mem[0] = users[idx]
                mem[32] = 8
                if currentPortion and impact[stor9[idx]] > -1 / currentPortion:
                    revert with 'NH{q', 17
                if not totalLocked:
                    revert with 'NH{q', 18
                mem[ceil32(return_data.size) + 96] = 0xca0b187800000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 100] = users[idx]
                mem[ceil32(return_data.size) + 132] = currentPortion * impact[stor9[idx]] / totalLocked
                require ext_code.size(balanceKeeperAddress)
                call balanceKeeperAddress.0xca0b1878 with:
                     gas gas_remaining wei
                    args users[idx], currentPortion * impact[stor9[idx]] / totalLocked
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if finalValue + arg1 != userCount:
                finalValue += arg1
            else:
                finalValue = 0
                if sub_84411d65 > -currentPortion - 1:
                    revert with 'NH{q', 17
                sub_84411d65 += currentPortion
        else:
            idx = finalValue
            while idx <= userCount:
                mem[0] = users[idx]
                mem[32] = 8
                if currentPortion and impact[stor9[idx]] > -1 / currentPortion:
                    revert with 'NH{q', 17
                if not totalLocked:
                    revert with 'NH{q', 18
                mem[ceil32(return_data.size) + 96] = 0xca0b187800000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 100] = users[idx]
                mem[ceil32(return_data.size) + 132] = currentPortion * impact[stor9[idx]] / totalLocked
                require ext_code.size(balanceKeeperAddress)
                call balanceKeeperAddress.0xca0b1878 with:
                     gas gas_remaining wei
                    args users[idx], currentPortion * impact[stor9[idx]] / totalLocked
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if userCount != userCount:
                finalValue = userCount
            else:
                finalValue = 0
                if sub_84411d65 > -currentPortion - 1:
                    revert with 'NH{q', 17
                sub_84411d65 += currentPortion
}



}
