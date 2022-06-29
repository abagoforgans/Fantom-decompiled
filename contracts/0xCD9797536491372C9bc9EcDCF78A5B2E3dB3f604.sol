contract main {




// =====================  Runtime code  =====================


address sub_dacaa9d1Address;
address sub_4fb3ccc5Address;
mapping of struct userInfo;

function sub_4fb3ccc5(?) payable {
    return sub_4fb3ccc5Address
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_dacaa9d1(?) payable {
    return sub_dacaa9d1Address
}

function _fallback() payable {
    revert
}

function fromWei(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 / 10^18)
}

function toWei(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 and 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    return (10^18 * arg1)
}

function sub_6c222b17(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(arg1) != sub_4fb3ccc5Address:
        revert with 0, 'only accountant may update'
    sub_4fb3ccc5Address = address(arg1)
    emit 0x80af1874: address(arg1)
}

function sub_3714f467(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    if sub_4fb3ccc5Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only the accountant may update ledger'
    if userInfo[arg1][address(arg2)].field_0 > -arg3 - 1:
        revert with 'NH{q', 17
    userInfo[arg1][address(arg2)].field_0 += arg3
    emit 0x191bdd17: arg3, address(arg2), arg1
}

function sub_d7a57472(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    if sub_4fb3ccc5Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only the accountant may update ledger'
    if userInfo[arg1][address(arg2)].field_0 > -arg3 - 1:
        revert with 'NH{q', 17
    userInfo[arg1][address(arg2)].field_0 += arg3
    emit 0xeacabca1: arg3, arg4, address(arg2), arg1
}

function sub_c0b930da(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    if sub_4fb3ccc5Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only the accountant may update ledger'
    if userInfo[arg1][address(arg2)].field_0 > -arg3 - 1:
        revert with 'NH{q', 17
    userInfo[arg1][address(arg2)].field_0 += arg3
    emit DepositAdded(arg3, arg4, address(arg2), arg1);
}

function pendingRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_dacaa9d1Address)
    staticcall sub_dacaa9d1Address.pendingSoul(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0], ext_call.return_data[0] / 10^18
}

function pendingRewards(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(sub_dacaa9d1Address)
    staticcall sub_dacaa9d1Address.pendingSoul(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0], ext_call.return_data[0] / 10^18
}

function sub_5a459ed4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_dacaa9d1Address)
    staticcall sub_dacaa9d1Address.0x93f1a40b with:
            gas gas_remaining wei
           args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    return ext_call.return_data[0], ext_call.return_data[0] / 10^18
}

function sub_f3371e9a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_dacaa9d1Address)
    staticcall sub_dacaa9d1Address.0x93f1a40b with:
            gas gas_remaining wei
           args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    return ext_call.return_data[32], ext_call.return_data[32] / 10^18
}

function sub_b85502a0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    require ext_code.size(sub_dacaa9d1Address)
    staticcall sub_dacaa9d1Address.0x93f1a40b with:
            gas gas_remaining wei
           args arg1, address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    return ext_call.return_data[0], ext_call.return_data[0] / 10^18
}

function sub_b9e2a207(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    require ext_code.size(sub_dacaa9d1Address)
    staticcall sub_dacaa9d1Address.0x93f1a40b with:
            gas gas_remaining wei
           args arg1, address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    return ext_call.return_data[32], ext_call.return_data[32] / 10^18
}

function sub_d49414a0(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == bool(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == arg5
    if sub_4fb3ccc5Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only the accountant may update ledger'
    if sub_4fb3ccc5Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only the accountant may update ledger'
    if not arg1:
        if userInfo[arg2][address(arg3)].field_0 > -arg5 - 1:
            revert with 'NH{q', 17
        userInfo[arg2][address(arg3)].field_0 += arg5
        emit 0x191bdd17: arg5, address(arg3), arg2
    else:
        if arg4 > 0:
            if userInfo[arg2][address(arg3)].field_0 > -arg4 - 1:
                revert with 'NH{q', 17
            userInfo[arg2][address(arg3)].field_0 += arg4
            emit DepositAdded(arg4, arg5, address(arg3), arg2);
        else:
            if userInfo[arg2][address(arg3)].field_0 > -arg5 - 1:
                revert with 'NH{q', 17
            userInfo[arg2][address(arg3)].field_0 += arg5
            emit 0x191bdd17: arg5, address(arg3), arg2
    if sub_4fb3ccc5Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only the accountant may update ledger'
    if arg1:
        if userInfo[arg2][address(arg3)].field_0 > -arg5 - 1:
            revert with 'NH{q', 17
        userInfo[arg2][address(arg3)].field_0 += arg5
        emit 0x191bdd17: arg5, address(arg3), arg2
    else:
        if arg4 > 0:
            if userInfo[arg2][address(arg3)].field_0 > -arg4 - 1:
                revert with 'NH{q', 17
            userInfo[arg2][address(arg3)].field_0 += arg4
            emit 0xeacabca1: arg4, arg5, address(arg3), arg2
        else:
            if userInfo[arg2][address(arg3)].field_0 > -arg5 - 1:
                revert with 'NH{q', 17
            userInfo[arg2][address(arg3)].field_0 += arg5
            emit 0x191bdd17: arg5, address(arg3), arg2
    emit 0x5c43e8c5: arg5, address(arg3), arg2
}



}
