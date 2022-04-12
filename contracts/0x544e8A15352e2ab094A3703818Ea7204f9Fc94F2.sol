contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
uint256 totalUsers;
mapping of uint8 stor4;
mapping of address user;
mapping of uint256 userBalance;
address sub_02ddf758Address;
uint256 sub_c2bf857e;
uint256 currentPortion;
uint256 totalBalance;
uint256 finalValue;

function userBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userBalance[arg1]
}

function sub_02ddf758(?) payable {
    return sub_02ddf758Address
}

function currentPortion() payable {
    return currentPortion
}

function allowedSubtractors(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor2[arg1]))
}

function userAddresses(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return user[arg1]
}

function finalValue() payable {
    return finalValue
}

function owner() payable {
    return owner
}

function totalBalance() payable {
    return totalBalance
}

function allowedAdders(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor1[arg1]))
}

function totalUsers() payable {
    return totalUsers
}

function sub_c2bf857e(?) payable {
    return sub_c2bf857e
}

function knownUsers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
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

function toggleAdder(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    uint256(stor1[address(arg1)]) = not bool(uint8(stor1[address(arg1)])) or Mask(248, 8, uint256(stor1[address(arg1)]))
}

function toggleSubtractor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    uint256(stor2[address(arg1)]) = not bool(uint8(stor2[address(arg1)])) or Mask(248, 8, uint256(stor2[address(arg1)]))
}

function subtractValue(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(stor2[address(msg.sender)]):
        revert with 0, 'not allowed to subtract'
    if userBalance[address(arg1)] < arg2:
        revert with 'NH{q', 17
    userBalance[address(arg1)] -= arg2
    emit 0x8a2316f0: msg.sender, address(arg1), arg2
}

function addValue(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(stor1[address(msg.sender)]):
        revert with 0, 'not allowed to add value'
    if not stor4[address(arg1)]:
        stor4[address(arg1)] = 1
        user[stor3] = arg1
        if totalUsers == -1:
            revert with 'NH{q', 17
        totalUsers++
    if userBalance[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    userBalance[address(arg1)] += arg2
    emit 0x8b70223c: msg.sender, address(arg1), arg2
}

function processBalances(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if finalValue > -arg1 - 1:
        revert with 'NH{q', 17
    if not finalValue:
        require ext_code.size(sub_02ddf758Address)
        call sub_02ddf758Address.totalUnlocked() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < sub_c2bf857e:
            revert with 'NH{q', 17
        currentPortion = ext_call.return_data[0] - sub_c2bf857e
    if finalValue + arg1 <= totalUsers:
        idx = finalValue
        while idx < finalValue + arg1:
            if totalBalance <= 0:
                revert with 0, 'totalBalance equals 0'
            if userBalance[stor5[idx]] and currentPortion > -1 / userBalance[stor5[idx]]:
                revert with 'NH{q', 17
            if not totalBalance:
                revert with 'NH{q', 18
            mem[0] = user[idx]
            mem[32] = 6
            if userBalance[stor5[idx]] > -(userBalance[stor5[idx]] * currentPortion / totalBalance) - 1:
                revert with 'NH{q', 17
            userBalance[stor5[idx]] += userBalance[stor5[idx]] * currentPortion / totalBalance
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if finalValue + arg1 != totalUsers:
            finalValue += arg1
        else:
            finalValue = 0
            if totalBalance > -currentPortion - 1:
                revert with 'NH{q', 17
            totalBalance += currentPortion
            if sub_c2bf857e > -currentPortion - 1:
                revert with 'NH{q', 17
            sub_c2bf857e += currentPortion
    else:
        idx = finalValue
        while idx < totalUsers:
            if totalBalance <= 0:
                revert with 0, 'totalBalance equals 0'
            if userBalance[stor5[idx]] and currentPortion > -1 / userBalance[stor5[idx]]:
                revert with 'NH{q', 17
            if not totalBalance:
                revert with 'NH{q', 18
            mem[0] = user[idx]
            mem[32] = 6
            if userBalance[stor5[idx]] > -(userBalance[stor5[idx]] * currentPortion / totalBalance) - 1:
                revert with 'NH{q', 17
            userBalance[stor5[idx]] += userBalance[stor5[idx]] * currentPortion / totalBalance
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if totalUsers != totalUsers:
            finalValue = totalUsers
        else:
            finalValue = 0
            if totalBalance > -currentPortion - 1:
                revert with 'NH{q', 17
            totalBalance += currentPortion
            if sub_c2bf857e > -currentPortion - 1:
                revert with 'NH{q', 17
            sub_c2bf857e += currentPortion
}



}
