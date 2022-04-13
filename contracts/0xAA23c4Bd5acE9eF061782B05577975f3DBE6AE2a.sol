contract main {




// =====================  Runtime code  =====================


address owner;
address sub_fa575bd2Address;
address balanceKeeperAddress;
address lpTokenAddress;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 totalLocked;
mapping of uint256 impact;
mapping of address users;
mapping of uint8 stor11;
uint256 userCount;

function userCount() payable {
    return userCount
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
    return bool(stor11[arg1])
}

function totalLocked() payable {
    return totalLocked
}

function lpToken() payable {
    return lpTokenAddress
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

function setStep(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor7 = arg1
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

function sub_69edf75e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if impact[address(msg.sender)] < arg1:
        revert with 0, 'not enough amount'
    require ext_code.size(lpTokenAddress)
    call lpTokenAddress.transfer(address rg1, uint256 rg2) with:
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

function lockLp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor11[address(msg.sender)]:
        users[stor12] = msg.sender
        if userCount == -1:
            revert with 'NH{q', 17
        userCount++
        stor11[address(msg.sender)] = 1
    require ext_code.size(lpTokenAddress)
    call lpTokenAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
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

function sub_08d55d47(?) payable {
    if stor6 > -stor7 - 1:
        revert with 'NH{q', 17
    if stor6:
        if stor6 + stor7 <= userCount:
            idx = stor6
            while idx < stor6 + stor7:
                mem[0] = users[idx]
                mem[32] = 9
                if stor4 and impact[stor10[idx]] > -1 / stor4:
                    revert with 'NH{q', 17
                if not totalLocked:
                    revert with 'NH{q', 18
                mem[96] = 0xca0b187800000000000000000000000000000000000000000000000000000000
                mem[100] = users[idx]
                mem[132] = stor4 * impact[stor10[idx]] / totalLocked
                require ext_code.size(balanceKeeperAddress)
                call balanceKeeperAddress.addValue(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args users[idx], stor4 * impact[stor10[idx]] / totalLocked
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if stor6 + stor7 != userCount:
                stor6 += stor7
            else:
                stor6 = 0
                if stor5 > -stor4 - 1:
                    revert with 'NH{q', 17
                stor5 += stor4
        else:
            idx = stor6
            while idx < userCount:
                mem[0] = users[idx]
                mem[32] = 9
                if stor4 and impact[stor10[idx]] > -1 / stor4:
                    revert with 'NH{q', 17
                if not totalLocked:
                    revert with 'NH{q', 18
                mem[96] = 0xca0b187800000000000000000000000000000000000000000000000000000000
                mem[100] = users[idx]
                mem[132] = stor4 * impact[stor10[idx]] / totalLocked
                require ext_code.size(balanceKeeperAddress)
                call balanceKeeperAddress.addValue(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args users[idx], stor4 * impact[stor10[idx]] / totalLocked
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if userCount != userCount:
                stor6 = userCount
            else:
                stor6 = 0
                if stor5 > -stor4 - 1:
                    revert with 'NH{q', 17
                stor5 += stor4
    else:
        require ext_code.size(sub_fa575bd2Address)
        call sub_fa575bd2Address.totalUnlocked() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < stor5:
            revert with 'NH{q', 17
        stor4 = ext_call.return_data[0] - stor5
        if stor6 + stor7 <= userCount:
            idx = stor6
            while idx < stor6 + stor7:
                mem[0] = users[idx]
                mem[32] = 9
                if stor4 and impact[stor10[idx]] > -1 / stor4:
                    revert with 'NH{q', 17
                if not totalLocked:
                    revert with 'NH{q', 18
                mem[ceil32(return_data.size) + 96] = 0xca0b187800000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 100] = users[idx]
                mem[ceil32(return_data.size) + 132] = stor4 * impact[stor10[idx]] / totalLocked
                require ext_code.size(balanceKeeperAddress)
                call balanceKeeperAddress.addValue(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args users[idx], stor4 * impact[stor10[idx]] / totalLocked
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if stor6 + stor7 != userCount:
                stor6 += stor7
            else:
                stor6 = 0
                if stor5 > -stor4 - 1:
                    revert with 'NH{q', 17
                stor5 += stor4
        else:
            idx = stor6
            while idx < userCount:
                mem[0] = users[idx]
                mem[32] = 9
                if stor4 and impact[stor10[idx]] > -1 / stor4:
                    revert with 'NH{q', 17
                if not totalLocked:
                    revert with 'NH{q', 18
                mem[ceil32(return_data.size) + 96] = 0xca0b187800000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 100] = users[idx]
                mem[ceil32(return_data.size) + 132] = stor4 * impact[stor10[idx]] / totalLocked
                require ext_code.size(balanceKeeperAddress)
                call balanceKeeperAddress.addValue(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args users[idx], stor4 * impact[stor10[idx]] / totalLocked
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if userCount != userCount:
                stor6 = userCount
            else:
                stor6 = 0
                if stor5 > -stor4 - 1:
                    revert with 'NH{q', 17
                stor5 += stor4
}



}
