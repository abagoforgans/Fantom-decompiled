contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
uint256 totalUsers;
mapping of uint8 stor4;
mapping of address user;
mapping of struct userBalance;
address sub_e12e8736Address;
address sub_09fd925aAddress;
address sub_02ddf758Address;
uint256 sub_c2bf857e;
uint256 currentPortion;
uint256 totalBalances;
uint256 finalValue;

function userBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userBalance[arg1].field_0, userBalance[arg1].field_256
}

function sub_02ddf758(?) payable {
    return sub_02ddf758Address
}

function sub_09fd925a(?) payable {
    return sub_09fd925aAddress
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

function totalBalances() payable {
    return totalBalances
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

function sub_e12e8736(?) payable {
    return sub_e12e8736Address
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
        revert with 0, 'not allowed'
    if userBalance[address(arg1)].field_0 < arg2:
        revert with 'NH{q', 17
    userBalance[address(arg1)].field_0 -= arg2
}

function addValue(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(stor1[address(msg.sender)]):
        revert with 0, 'not allowed'
    if not stor4[address(arg1)]:
        stor4[address(arg1)] = 1
        user[stor3] = arg1
        if totalUsers == -1:
            revert with 'NH{q', 17
        totalUsers++
    if userBalance[address(arg1)].field_0 > -arg2 - 1:
        revert with 'NH{q', 17
    userBalance[address(arg1)].field_0 += arg2
}

function sub_79dd2fb5(?) payable {
    mem[64] = 96
    if finalValue > -2001:
        revert with 'NH{q', 17
    if finalValue:
        if finalValue + 2000 <= totalUsers:
            idx = finalValue
            while idx < finalValue + 2000:
                mem[0] = user[idx]
                mem[32] = 6
                require ext_code.size(sub_09fd925aAddress)
                call sub_09fd925aAddress.totalSupply() with:
                     gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _81 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _85 = mem[_81]
                require mem[_81] == mem[_81]
                mem[mem[64] + 4] = user[idx]
                require ext_code.size(sub_09fd925aAddress)
                call sub_09fd925aAddress.impact(address rg1) with:
                     gas gas_remaining wei
                    args user[idx]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _97 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _101 = mem[_97]
                require mem[_97] == mem[_97]
                require ext_code.size(sub_e12e8736Address)
                call sub_e12e8736Address.0xa779d080 with:
                     gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _113 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_113] == mem[_113]
                if mem[_113] and _101 > -1 / mem[_113]:
                    revert with 'NH{q', 17
                if not _85:
                    revert with 'NH{q', 18
                if mem[_113] * _101 / _85 < userBalance[stor5[idx]].field_256:
                    revert with 'NH{q', 17
                userBalance[stor5[idx]].field_256 = mem[_113] * _101 / _85
                if totalBalances > -(mem[_113] * _101 / _85) + userBalance[stor5[idx]].field_256 - 1:
                    revert with 'NH{q', 17
                totalBalances = totalBalances + (mem[_113] * _101 / _85) - userBalance[stor5[idx]].field_256
                if userBalance[stor5[idx]].field_0 > -(mem[_113] * _101 / _85) + userBalance[stor5[idx]].field_256 - 1:
                    revert with 'NH{q', 17
                userBalance[stor5[idx]].field_0 = userBalance[stor5[idx]].field_0 + (mem[_113] * _101 / _85) - userBalance[stor5[idx]].field_256
                mem[0] = user[idx]
                mem[32] = 6
                if userBalance[stor5[idx]].field_0 and currentPortion > -1 / userBalance[stor5[idx]].field_0:
                    revert with 'NH{q', 17
                if not totalBalances:
                    revert with 'NH{q', 18
                if userBalance[stor5[idx]].field_0 > -(userBalance[stor5[idx]].field_0 * currentPortion / totalBalances) - 1:
                    revert with 'NH{q', 17
                userBalance[stor5[idx]].field_0 += userBalance[stor5[idx]].field_0 * currentPortion / totalBalances
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if finalValue + 2000 != totalUsers:
                finalValue += 2000
            else:
                finalValue = 0
                if totalBalances > -currentPortion - 1:
                    revert with 'NH{q', 17
                totalBalances += currentPortion
                if sub_c2bf857e > -currentPortion - 1:
                    revert with 'NH{q', 17
                sub_c2bf857e += currentPortion
        else:
            idx = finalValue
            while idx < totalUsers:
                mem[0] = user[idx]
                mem[32] = 6
                require ext_code.size(sub_09fd925aAddress)
                call sub_09fd925aAddress.totalSupply() with:
                     gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _82 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _86 = mem[_82]
                require mem[_82] == mem[_82]
                mem[mem[64] + 4] = user[idx]
                require ext_code.size(sub_09fd925aAddress)
                call sub_09fd925aAddress.impact(address rg1) with:
                     gas gas_remaining wei
                    args user[idx]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _98 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _102 = mem[_98]
                require mem[_98] == mem[_98]
                require ext_code.size(sub_e12e8736Address)
                call sub_e12e8736Address.0xa779d080 with:
                     gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _114 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_114] == mem[_114]
                if mem[_114] and _102 > -1 / mem[_114]:
                    revert with 'NH{q', 17
                if not _86:
                    revert with 'NH{q', 18
                if mem[_114] * _102 / _86 < userBalance[stor5[idx]].field_256:
                    revert with 'NH{q', 17
                userBalance[stor5[idx]].field_256 = mem[_114] * _102 / _86
                if totalBalances > -(mem[_114] * _102 / _86) + userBalance[stor5[idx]].field_256 - 1:
                    revert with 'NH{q', 17
                totalBalances = totalBalances + (mem[_114] * _102 / _86) - userBalance[stor5[idx]].field_256
                if userBalance[stor5[idx]].field_0 > -(mem[_114] * _102 / _86) + userBalance[stor5[idx]].field_256 - 1:
                    revert with 'NH{q', 17
                userBalance[stor5[idx]].field_0 = userBalance[stor5[idx]].field_0 + (mem[_114] * _102 / _86) - userBalance[stor5[idx]].field_256
                mem[0] = user[idx]
                mem[32] = 6
                if userBalance[stor5[idx]].field_0 and currentPortion > -1 / userBalance[stor5[idx]].field_0:
                    revert with 'NH{q', 17
                if not totalBalances:
                    revert with 'NH{q', 18
                if userBalance[stor5[idx]].field_0 > -(userBalance[stor5[idx]].field_0 * currentPortion / totalBalances) - 1:
                    revert with 'NH{q', 17
                userBalance[stor5[idx]].field_0 += userBalance[stor5[idx]].field_0 * currentPortion / totalBalances
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if totalUsers != totalUsers:
                finalValue = totalUsers
            else:
                finalValue = 0
                if totalBalances > -currentPortion - 1:
                    revert with 'NH{q', 17
                totalBalances += currentPortion
                if sub_c2bf857e > -currentPortion - 1:
                    revert with 'NH{q', 17
                sub_c2bf857e += currentPortion
    else:
        require ext_code.size(sub_02ddf758Address)
        call sub_02ddf758Address.0xa779d080 with:
             gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < sub_c2bf857e:
            revert with 'NH{q', 17
        currentPortion = ext_call.return_data[0] - sub_c2bf857e
        if finalValue + 2000 <= totalUsers:
            idx = finalValue
            while idx < finalValue + 2000:
                mem[0] = user[idx]
                mem[32] = 6
                require ext_code.size(sub_09fd925aAddress)
                call sub_09fd925aAddress.totalSupply() with:
                     gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _83 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _87 = mem[_83]
                require mem[_83] == mem[_83]
                mem[mem[64] + 4] = user[idx]
                require ext_code.size(sub_09fd925aAddress)
                call sub_09fd925aAddress.impact(address rg1) with:
                     gas gas_remaining wei
                    args user[idx]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _99 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _103 = mem[_99]
                require mem[_99] == mem[_99]
                require ext_code.size(sub_e12e8736Address)
                call sub_e12e8736Address.0xa779d080 with:
                     gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _115 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_115] == mem[_115]
                if mem[_115] and _103 > -1 / mem[_115]:
                    revert with 'NH{q', 17
                if not _87:
                    revert with 'NH{q', 18
                if mem[_115] * _103 / _87 < userBalance[stor5[idx]].field_256:
                    revert with 'NH{q', 17
                userBalance[stor5[idx]].field_256 = mem[_115] * _103 / _87
                if totalBalances > -(mem[_115] * _103 / _87) + userBalance[stor5[idx]].field_256 - 1:
                    revert with 'NH{q', 17
                totalBalances = totalBalances + (mem[_115] * _103 / _87) - userBalance[stor5[idx]].field_256
                if userBalance[stor5[idx]].field_0 > -(mem[_115] * _103 / _87) + userBalance[stor5[idx]].field_256 - 1:
                    revert with 'NH{q', 17
                userBalance[stor5[idx]].field_0 = userBalance[stor5[idx]].field_0 + (mem[_115] * _103 / _87) - userBalance[stor5[idx]].field_256
                mem[0] = user[idx]
                mem[32] = 6
                if userBalance[stor5[idx]].field_0 and currentPortion > -1 / userBalance[stor5[idx]].field_0:
                    revert with 'NH{q', 17
                if not totalBalances:
                    revert with 'NH{q', 18
                if userBalance[stor5[idx]].field_0 > -(userBalance[stor5[idx]].field_0 * currentPortion / totalBalances) - 1:
                    revert with 'NH{q', 17
                userBalance[stor5[idx]].field_0 += userBalance[stor5[idx]].field_0 * currentPortion / totalBalances
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if finalValue + 2000 != totalUsers:
                finalValue += 2000
            else:
                finalValue = 0
                if totalBalances > -currentPortion - 1:
                    revert with 'NH{q', 17
                totalBalances += currentPortion
                if sub_c2bf857e > -currentPortion - 1:
                    revert with 'NH{q', 17
                sub_c2bf857e += currentPortion
        else:
            idx = finalValue
            while idx < totalUsers:
                mem[0] = user[idx]
                mem[32] = 6
                require ext_code.size(sub_09fd925aAddress)
                call sub_09fd925aAddress.totalSupply() with:
                     gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _84 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _88 = mem[_84]
                require mem[_84] == mem[_84]
                mem[mem[64] + 4] = user[idx]
                require ext_code.size(sub_09fd925aAddress)
                call sub_09fd925aAddress.impact(address rg1) with:
                     gas gas_remaining wei
                    args user[idx]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _100 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _104 = mem[_100]
                require mem[_100] == mem[_100]
                require ext_code.size(sub_e12e8736Address)
                call sub_e12e8736Address.0xa779d080 with:
                     gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _116 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_116] == mem[_116]
                if mem[_116] and _104 > -1 / mem[_116]:
                    revert with 'NH{q', 17
                if not _88:
                    revert with 'NH{q', 18
                if mem[_116] * _104 / _88 < userBalance[stor5[idx]].field_256:
                    revert with 'NH{q', 17
                userBalance[stor5[idx]].field_256 = mem[_116] * _104 / _88
                if totalBalances > -(mem[_116] * _104 / _88) + userBalance[stor5[idx]].field_256 - 1:
                    revert with 'NH{q', 17
                totalBalances = totalBalances + (mem[_116] * _104 / _88) - userBalance[stor5[idx]].field_256
                if userBalance[stor5[idx]].field_0 > -(mem[_116] * _104 / _88) + userBalance[stor5[idx]].field_256 - 1:
                    revert with 'NH{q', 17
                userBalance[stor5[idx]].field_0 = userBalance[stor5[idx]].field_0 + (mem[_116] * _104 / _88) - userBalance[stor5[idx]].field_256
                mem[0] = user[idx]
                mem[32] = 6
                if userBalance[stor5[idx]].field_0 and currentPortion > -1 / userBalance[stor5[idx]].field_0:
                    revert with 'NH{q', 17
                if not totalBalances:
                    revert with 'NH{q', 18
                if userBalance[stor5[idx]].field_0 > -(userBalance[stor5[idx]].field_0 * currentPortion / totalBalances) - 1:
                    revert with 'NH{q', 17
                userBalance[stor5[idx]].field_0 += userBalance[stor5[idx]].field_0 * currentPortion / totalBalances
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if totalUsers != totalUsers:
                finalValue = totalUsers
            else:
                finalValue = 0
                if totalBalances > -currentPortion - 1:
                    revert with 'NH{q', 17
                totalBalances += currentPortion
                if sub_c2bf857e > -currentPortion - 1:
                    revert with 'NH{q', 17
                sub_c2bf857e += currentPortion
}



}
