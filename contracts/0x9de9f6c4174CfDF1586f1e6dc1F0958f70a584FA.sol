contract main {




// =====================  Runtime code  =====================


address owner;
address farmAddress;
address balanceKeeperAddress;
uint256 sub_0d8d186d;
mapping of uint8 stor4;
mapping of address sub_b4506c48;
mapping of uint256 supply;
mapping of uint256 sub_a3480569;
mapping of address sub_4a9a7acc;
mapping of uint8 stor9;
mapping of uint256 userBalance;
mapping of uint256 sub_9c13c7cb;
mapping of uint256 sub_c9d99844;
mapping of uint256 sub_45827eaf;
mapping of uint8 stor14;
mapping of uint8 stor15;

function sub_0d8d186d(?) payable {
    return sub_0d8d186d
}

function sub_13b19c58(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[arg1])
}

function supply(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return supply[arg1]
}

function allowedSubtractors(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor15[arg1]))
}

function farm() payable {
    return farmAddress
}

function sub_45827eaf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_45827eaf[arg1]
}

function sub_4a9a7acc(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return sub_4a9a7acc[arg1][arg2]
}

function userBalance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return userBalance[arg1][arg2]
}

function sub_75ce7824(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return bool(stor9[arg1][arg2])
}

function owner() payable {
    return owner
}

function sub_9c13c7cb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_9c13c7cb[arg1]
}

function sub_a3480569(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_a3480569[arg1]
}

function sub_b4506c48(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_b4506c48[arg1]
}

function allowedAdders(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor14[arg1]))
}

function sub_c9d99844(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c9d99844[arg1]
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

function toggleAdder(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    uint256(stor14[address(arg1)]) = not bool(uint8(stor14[address(arg1)])) or Mask(248, 8, uint256(stor14[address(arg1)]))
    emit ToggleAdderEvent(msg.sender, arg1, bool(uint8(stor14[address(arg1)])));
}

function toggleSubtractor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    uint256(stor15[address(arg1)]) = not bool(uint8(stor15[address(arg1)])) or Mask(248, 8, uint256(stor15[address(arg1)]))
    emit ToggleSubtractorEvent(msg.sender, arg1, bool(uint8(stor15[address(arg1)])));
}

function sub_cc1c62bb(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if not uint8(stor15[address(msg.sender)]):
        revert with 0, 'not allowed to subtract'
    if userBalance[address(arg1)][address(arg2)] < arg3:
        revert with 'NH{q', 17
    userBalance[address(arg1)][address(arg2)] -= arg3
    if supply[address(arg1)] < arg3:
        revert with 'NH{q', 17
    supply[address(arg1)] -= arg3
    emit 0x17a20109: arg3, msg.sender, address(arg1), address(arg2)
}

function addTokens(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not uint8(stor14[address(msg.sender)]):
        revert with 0, 'not allowed to add value'
    if not stor4[address(arg1)]:
        sub_b4506c48[stor3] = arg1
        if sub_0d8d186d == -1:
            revert with 'NH{q', 17
        sub_0d8d186d++
        stor4[address(arg1)] = 1
    if not stor9[address(arg1)][address(arg2)]:
        sub_4a9a7acc[address(arg1)][stor7[address(arg1)]] = arg2
        if sub_a3480569[address(arg1)] == -1:
            revert with 'NH{q', 17
        sub_a3480569[address(arg1)]++
        stor9[address(arg1)][address(arg2)] = 1
    if userBalance[address(arg1)][address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    userBalance[address(arg1)][address(arg2)] += arg3
    if supply[address(arg1)] > -arg3 - 1:
        revert with 'NH{q', 17
    supply[address(arg1)] += arg3
    emit 0x8b5aba8c: arg3, msg.sender, arg1, arg2
}

function sub_9b859564(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if supply[address(arg1)] > 0:
        if sub_45827eaf[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        if sub_45827eaf[address(arg1)]:
            if sub_45827eaf[address(arg1)] + arg2 <= sub_a3480569[address(arg1)]:
                idx = sub_45827eaf[address(arg1)]
                while idx < sub_45827eaf[address(arg1)] + arg2:
                    mem[0] = address(arg1)
                    mem[32] = 11
                    if sub_9c13c7cb[address(arg1)] and userBalance[address(arg1)][stor8[address(arg1)][idx]] > -1 / sub_9c13c7cb[address(arg1)]:
                        revert with 'NH{q', 17
                    if not supply[address(arg1)]:
                        revert with 'NH{q', 18
                    mem[96] = 0xca0b187800000000000000000000000000000000000000000000000000000000
                    mem[100] = sub_4a9a7acc[address(arg1)][idx]
                    mem[132] = sub_9c13c7cb[address(arg1)] * userBalance[address(arg1)][stor8[address(arg1)][idx]] / supply[address(arg1)]
                    require ext_code.size(balanceKeeperAddress)
                    call balanceKeeperAddress.0xca0b1878 with:
                         gas gas_remaining wei
                        args sub_4a9a7acc[address(arg1)][idx], sub_9c13c7cb[address(arg1)] * userBalance[address(arg1)][stor8[address(arg1)][idx]] / supply[address(arg1)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if sub_45827eaf[address(arg1)] + arg2 != sub_a3480569[address(arg1)]:
                    sub_45827eaf[address(arg1)] += arg2
                else:
                    sub_45827eaf[address(arg1)] = 0
                    if sub_c9d99844[address(arg1)] > -sub_9c13c7cb[address(arg1)] - 1:
                        revert with 'NH{q', 17
                    sub_c9d99844[address(arg1)] += sub_9c13c7cb[address(arg1)]
            else:
                idx = sub_45827eaf[address(arg1)]
                while idx < sub_a3480569[address(arg1)]:
                    mem[0] = address(arg1)
                    mem[32] = 11
                    if sub_9c13c7cb[address(arg1)] and userBalance[address(arg1)][stor8[address(arg1)][idx]] > -1 / sub_9c13c7cb[address(arg1)]:
                        revert with 'NH{q', 17
                    if not supply[address(arg1)]:
                        revert with 'NH{q', 18
                    mem[96] = 0xca0b187800000000000000000000000000000000000000000000000000000000
                    mem[100] = sub_4a9a7acc[address(arg1)][idx]
                    mem[132] = sub_9c13c7cb[address(arg1)] * userBalance[address(arg1)][stor8[address(arg1)][idx]] / supply[address(arg1)]
                    require ext_code.size(balanceKeeperAddress)
                    call balanceKeeperAddress.0xca0b1878 with:
                         gas gas_remaining wei
                        args sub_4a9a7acc[address(arg1)][idx], sub_9c13c7cb[address(arg1)] * userBalance[address(arg1)][stor8[address(arg1)][idx]] / supply[address(arg1)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if sub_a3480569[address(arg1)] != sub_a3480569[address(arg1)]:
                    sub_45827eaf[address(arg1)] = sub_a3480569[address(arg1)]
                else:
                    sub_45827eaf[address(arg1)] = 0
                    if sub_c9d99844[address(arg1)] > -sub_9c13c7cb[address(arg1)] - 1:
                        revert with 'NH{q', 17
                    sub_c9d99844[address(arg1)] += sub_9c13c7cb[address(arg1)]
        else:
            require ext_code.size(farmAddress)
            call farmAddress.totalUnlocked() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < sub_c9d99844[address(arg1)]:
                revert with 'NH{q', 17
            sub_9c13c7cb[address(arg1)] = ext_call.return_data[0] - sub_c9d99844[address(arg1)]
            if sub_45827eaf[address(arg1)] + arg2 <= sub_a3480569[address(arg1)]:
                idx = sub_45827eaf[address(arg1)]
                while idx < sub_45827eaf[address(arg1)] + arg2:
                    mem[0] = address(arg1)
                    mem[32] = 11
                    if sub_9c13c7cb[address(arg1)] and userBalance[address(arg1)][stor8[address(arg1)][idx]] > -1 / sub_9c13c7cb[address(arg1)]:
                        revert with 'NH{q', 17
                    if not supply[address(arg1)]:
                        revert with 'NH{q', 18
                    mem[ceil32(return_data.size) + 96] = 0xca0b187800000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = sub_4a9a7acc[address(arg1)][idx]
                    mem[ceil32(return_data.size) + 132] = sub_9c13c7cb[address(arg1)] * userBalance[address(arg1)][stor8[address(arg1)][idx]] / supply[address(arg1)]
                    require ext_code.size(balanceKeeperAddress)
                    call balanceKeeperAddress.0xca0b1878 with:
                         gas gas_remaining wei
                        args sub_4a9a7acc[address(arg1)][idx], sub_9c13c7cb[address(arg1)] * userBalance[address(arg1)][stor8[address(arg1)][idx]] / supply[address(arg1)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if sub_45827eaf[address(arg1)] + arg2 != sub_a3480569[address(arg1)]:
                    sub_45827eaf[address(arg1)] += arg2
                else:
                    sub_45827eaf[address(arg1)] = 0
                    if sub_c9d99844[address(arg1)] > -sub_9c13c7cb[address(arg1)] - 1:
                        revert with 'NH{q', 17
                    sub_c9d99844[address(arg1)] += sub_9c13c7cb[address(arg1)]
            else:
                idx = sub_45827eaf[address(arg1)]
                while idx < sub_a3480569[address(arg1)]:
                    mem[0] = address(arg1)
                    mem[32] = 11
                    if sub_9c13c7cb[address(arg1)] and userBalance[address(arg1)][stor8[address(arg1)][idx]] > -1 / sub_9c13c7cb[address(arg1)]:
                        revert with 'NH{q', 17
                    if not supply[address(arg1)]:
                        revert with 'NH{q', 18
                    mem[ceil32(return_data.size) + 96] = 0xca0b187800000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = sub_4a9a7acc[address(arg1)][idx]
                    mem[ceil32(return_data.size) + 132] = sub_9c13c7cb[address(arg1)] * userBalance[address(arg1)][stor8[address(arg1)][idx]] / supply[address(arg1)]
                    require ext_code.size(balanceKeeperAddress)
                    call balanceKeeperAddress.0xca0b1878 with:
                         gas gas_remaining wei
                        args sub_4a9a7acc[address(arg1)][idx], sub_9c13c7cb[address(arg1)] * userBalance[address(arg1)][stor8[address(arg1)][idx]] / supply[address(arg1)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if sub_a3480569[address(arg1)] != sub_a3480569[address(arg1)]:
                    sub_45827eaf[address(arg1)] = sub_a3480569[address(arg1)]
                else:
                    sub_45827eaf[address(arg1)] = 0
                    if sub_c9d99844[address(arg1)] > -sub_9c13c7cb[address(arg1)] - 1:
                        revert with 'NH{q', 17
                    sub_c9d99844[address(arg1)] += sub_9c13c7cb[address(arg1)]
}

function processBalances(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if var26001 >= sub_0d8d186d:
    if supply[stor5[var26001]] <= 0:
        # nil
    else:
        if sub_45827eaf[stor5[var26001]] > -arg1 - 1:
            revert with 'NH{q', 17
        if sub_45827eaf[stor5[var26001]]:
            if sub_45827eaf[stor5[var26001]] + arg1 <= sub_a3480569[stor5[var26001]]:
                s = sub_45827eaf[stor5[var26001]]
                while s < sub_45827eaf[stor5[var26001]] + arg1:
                    mem[0] = sub_b4506c48[var26001]
                    mem[32] = 11
                    if sub_9c13c7cb[stor5[var26001]] and userBalance[stor5[var26001]][stor8[stor5[var26001]][s]] > -1 / sub_9c13c7cb[stor5[var26001]]:
                        revert with 'NH{q', 17
                    if not supply[stor5[var26001]]:
                        revert with 'NH{q', 18
                    mem[96] = 0xca0b187800000000000000000000000000000000000000000000000000000000
                    mem[100] = sub_4a9a7acc[stor5[var26001]][s]
                    mem[132] = sub_9c13c7cb[stor5[var26001]] * userBalance[stor5[var26001]][stor8[stor5[var26001]][s]] / supply[stor5[var26001]]
                    require ext_code.size(balanceKeeperAddress)
                    call balanceKeeperAddress.0xca0b1878 with:
                         gas gas_remaining wei
                        args sub_4a9a7acc[stor5[var26001]][s], sub_9c13c7cb[stor5[var26001]] * userBalance[stor5[var26001]][stor8[stor5[var26001]][s]] / supply[stor5[var26001]]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
                if sub_45827eaf[stor5[var26001]] + arg1 != sub_a3480569[stor5[var26001]]:
                    sub_45827eaf[stor5[var26001]] += arg1
                    # nil
                else:
                    sub_45827eaf[stor5[var26001]] = 0
                    if sub_c9d99844[stor5[var26001]] > -sub_9c13c7cb[stor5[var26001]] - 1:
                        revert with 'NH{q', 17
                    sub_c9d99844[stor5[var26001]] += sub_9c13c7cb[stor5[var26001]]
                    # nil
            else:
                s = sub_45827eaf[stor5[var26001]]
                while s < sub_a3480569[stor5[var26001]]:
                    mem[0] = sub_b4506c48[var26001]
                    mem[32] = 11
                    if sub_9c13c7cb[stor5[var26001]] and userBalance[stor5[var26001]][stor8[stor5[var26001]][s]] > -1 / sub_9c13c7cb[stor5[var26001]]:
                        revert with 'NH{q', 17
                    if not supply[stor5[var26001]]:
                        revert with 'NH{q', 18
                    mem[96] = 0xca0b187800000000000000000000000000000000000000000000000000000000
                    mem[100] = sub_4a9a7acc[stor5[var26001]][s]
                    mem[132] = sub_9c13c7cb[stor5[var26001]] * userBalance[stor5[var26001]][stor8[stor5[var26001]][s]] / supply[stor5[var26001]]
                    require ext_code.size(balanceKeeperAddress)
                    call balanceKeeperAddress.0xca0b1878 with:
                         gas gas_remaining wei
                        args sub_4a9a7acc[stor5[var26001]][s], sub_9c13c7cb[stor5[var26001]] * userBalance[stor5[var26001]][stor8[stor5[var26001]][s]] / supply[stor5[var26001]]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
                if sub_a3480569[stor5[var26001]] != sub_a3480569[stor5[var26001]]:
                    sub_45827eaf[stor5[var26001]] = sub_a3480569[stor5[var26001]]
                    # nil
                else:
                    sub_45827eaf[stor5[var26001]] = 0
                    if sub_c9d99844[stor5[var26001]] > -sub_9c13c7cb[stor5[var26001]] - 1:
                        revert with 'NH{q', 17
                    sub_c9d99844[stor5[var26001]] += sub_9c13c7cb[stor5[var26001]]
                    # nil
        else:
            require ext_code.size(farmAddress)
            call farmAddress.totalUnlocked() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < sub_c9d99844[stor5[var26001]]:
                revert with 'NH{q', 17
            sub_9c13c7cb[stor5[var26001]] = ext_call.return_data[0] - sub_c9d99844[stor5[var26001]]
            if sub_45827eaf[stor5[var26001]] + arg1 <= sub_a3480569[stor5[var26001]]:
                s = sub_45827eaf[stor5[var26001]]
                while s < sub_45827eaf[stor5[var26001]] + arg1:
                    mem[0] = sub_b4506c48[var26001]
                    mem[32] = 11
                    if sub_9c13c7cb[stor5[var26001]] and userBalance[stor5[var26001]][stor8[stor5[var26001]][s]] > -1 / sub_9c13c7cb[stor5[var26001]]:
                        revert with 'NH{q', 17
                    if not supply[stor5[var26001]]:
                        revert with 'NH{q', 18
                    mem[ceil32(return_data.size) + 96] = 0xca0b187800000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = sub_4a9a7acc[stor5[var26001]][s]
                    mem[ceil32(return_data.size) + 132] = sub_9c13c7cb[stor5[var26001]] * userBalance[stor5[var26001]][stor8[stor5[var26001]][s]] / supply[stor5[var26001]]
                    require ext_code.size(balanceKeeperAddress)
                    call balanceKeeperAddress.0xca0b1878 with:
                         gas gas_remaining wei
                        args sub_4a9a7acc[stor5[var26001]][s], sub_9c13c7cb[stor5[var26001]] * userBalance[stor5[var26001]][stor8[stor5[var26001]][s]] / supply[stor5[var26001]]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
                if sub_45827eaf[stor5[var26001]] + arg1 != sub_a3480569[stor5[var26001]]:
                    sub_45827eaf[stor5[var26001]] += arg1
                    # nil
                else:
                    sub_45827eaf[stor5[var26001]] = 0
                    if sub_c9d99844[stor5[var26001]] > -sub_9c13c7cb[stor5[var26001]] - 1:
                        revert with 'NH{q', 17
                    sub_c9d99844[stor5[var26001]] += sub_9c13c7cb[stor5[var26001]]
                    # nil
            else:
                s = sub_45827eaf[stor5[var26001]]
                while s < sub_a3480569[stor5[var26001]]:
                    mem[0] = sub_b4506c48[var26001]
                    mem[32] = 11
                    if sub_9c13c7cb[stor5[var26001]] and userBalance[stor5[var26001]][stor8[stor5[var26001]][s]] > -1 / sub_9c13c7cb[stor5[var26001]]:
                        revert with 'NH{q', 17
                    if not supply[stor5[var26001]]:
                        revert with 'NH{q', 18
                    mem[ceil32(return_data.size) + 96] = 0xca0b187800000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = sub_4a9a7acc[stor5[var26001]][s]
                    mem[ceil32(return_data.size) + 132] = sub_9c13c7cb[stor5[var26001]] * userBalance[stor5[var26001]][stor8[stor5[var26001]][s]] / supply[stor5[var26001]]
                    require ext_code.size(balanceKeeperAddress)
                    call balanceKeeperAddress.0xca0b1878 with:
                         gas gas_remaining wei
                        args sub_4a9a7acc[stor5[var26001]][s], sub_9c13c7cb[stor5[var26001]] * userBalance[stor5[var26001]][stor8[stor5[var26001]][s]] / supply[stor5[var26001]]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
                if sub_a3480569[stor5[var26001]] != sub_a3480569[stor5[var26001]]:
                    sub_45827eaf[stor5[var26001]] = sub_a3480569[stor5[var26001]]
                    # nil
                else:
                    sub_45827eaf[stor5[var26001]] = 0
                    if sub_c9d99844[stor5[var26001]] > -sub_9c13c7cb[stor5[var26001]] - 1:
                        revert with 'NH{q', 17
                    sub_c9d99844[stor5[var26001]] += sub_9c13c7cb[stor5[var26001]]
                    # nil
}



}
