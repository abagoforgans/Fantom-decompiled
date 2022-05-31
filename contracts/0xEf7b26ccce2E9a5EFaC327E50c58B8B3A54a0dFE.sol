contract main {




// =====================  Runtime code  =====================


#
#  - sub_2dde986c(?)
#  - Withdraw(address arg1, uint256 arg2, address arg3)
#  - sub_cacd40b7(?)
#
address govAddr;
uint256 sub_469eae37;
uint256 sub_5c83a917;
mapping of struct sub_7d825c49;
mapping of struct sub_d6ac0da9;

function sub_469eae37(?) {
    return sub_469eae37
}

function sub_5c83a917(?) {
    return sub_5c83a917
}

function sub_7d825c49(?) {
    require calldata.size - 4 >= 64
    return sub_7d825c49[arg1][arg2].field_0, sub_7d825c49[arg1][arg2].field_256, sub_7d825c49[arg1][arg2].field_512
}

function govAddr() {
    return govAddr
}

function sub_d6ac0da9(?) {
    require calldata.size - 4 >= 64
    return sub_d6ac0da9[arg1][arg2].field_0, 
           sub_d6ac0da9[arg1][arg2].field_0,
           sub_d6ac0da9[arg1][arg2].field_0,
           sub_d6ac0da9[arg1][arg2].field_512
}

function _fallback() payable {
    revert
}

function sub_dd8f024d(?) {
    require calldata.size - 4 >= 32
    if govAddr != msg.sender:
        revert with 0, '!gov'
    if arg1 > 500:
        revert with 0, '!fee'
    sub_5c83a917 = arg1
}

function govTransferAddr(address arg1) {
    require calldata.size - 4 >= 32
    if govAddr != msg.sender:
        revert with 0, '!gov'
    if not arg1:
        revert with 0, '!addr'
    govAddr = arg1
}

function sub_bd290f91(?) {
    require calldata.size - 4 >= 32
    if govAddr != msg.sender:
        revert with 0, '!gov'
    if arg1 <= 480 * 24 * 3600:
        revert with 0, '!factor'
    sub_469eae37 = arg1
}

function sub_7e95dd85(?) {
    require calldata.size - 4 >= 160
    if govAddr != msg.sender:
        revert with 0, '!gov'
    sub_d6ac0da9[address(arg2)][address(arg1)].field_0 = arg3
    sub_d6ac0da9[address(arg2)][address(arg1)].field_16 = arg4
    sub_d6ac0da9[address(arg2)][address(arg1)].field_24 = arg5
}

function sub_50b70439(?) {
    require calldata.size - 4 >= 96
    return sub_d6ac0da9[address(arg2)][address(arg1)][1][1][2][address(arg3)].field_0, 
           sub_d6ac0da9[address(arg2)][address(arg1)][1][0][2][address(arg3)].field_0,
           sub_d6ac0da9[address(arg2)][address(arg1)][1][1].field_256,
           sub_d6ac0da9[address(arg2)][address(arg1)][1][0].field_256,
           sub_7d825c49[address(arg2)][address(arg3)][3][address(arg1)].field_0,
           ('signextend', 13, ('mask_shl', 256, -32, -32, ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_7d825c49', 3))))))))),
           ('signextend', 13, ('mask_shl', 256, -144, -144, ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'sub_7d825c49', 3)))))))))
}

function sub_368f1976(?) {
    require calldata.size - 4 >= 32
    if not sub_d6ac0da9[address(arg1)][0].field_24:
        revert with 0, '!notInExitMode'
    sub_7d825c49[address(arg1)][msg.sender].field_0 = 0
    if not arg1:
        call msg.sender with:
           value sub_7d825c49[address(arg1)][msg.sender].field_0 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if not ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, sub_7d825c49[address(arg1)][msg.sender].field_32
        call arg1 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args sub_7d825c49[address(arg1)][msg.sender].field_0, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
    emit 0x6208b1d2: sub_7d825c49[address(arg1)][msg.sender].field_0, msg.sender, arg1
}

function Deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        if msg.value + sub_7d825c49[address(arg1)][msg.sender].field_0 < sub_7d825c49[address(arg1)][msg.sender].field_0:
            revert with 0, '!!add'
        sub_7d825c49[address(arg1)][msg.sender].field_0 += msg.value
    else:
        if not ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
        mem[352 len 4] = uint32(arg2)
        call arg1 with:
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 480, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[338 len 14],
                            uint32(arg2),
                            mem[356 len 4]
        else:
            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[260]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 339 len 22]
        if arg2 + sub_7d825c49[address(arg1)][msg.sender].field_0 < sub_7d825c49[address(arg1)][msg.sender].field_0:
            revert with 0, '!!add'
        sub_7d825c49[address(arg1)][msg.sender].field_0 += arg2
    emit 0xcb1a4456: arg2, msg.sender, arg1
}

function sub_26a883e2(?) {
    require calldata.size - 4 >= 96
    if not sub_d6ac0da9[address(arg2)][address(arg1)].field_24:
        revert with 0, '!notInExitMode'
    if not sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3][2][msg.sender].field_0:
        require sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3].field_256
        sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3][2][address(msg.sender)].field_0 = 0
        if sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3][2][msg.sender].field_0 > sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3].field_256:
            revert with 0, '!!sub'
        sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3].field_256 -= sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3][2][msg.sender].field_0
        if 0 / sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3].field_256 > sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3].field_0:
            revert with 0, '!!sub'
        sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3].field_0 -= 0 / sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3].field_256
        if (0 / sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3].field_256) + sub_7d825c49[address(arg2)][address(msg.sender)].field_0 < sub_7d825c49[address(arg2)][address(msg.sender)].field_0:
            revert with 0, '!!add'
        sub_7d825c49[address(arg2)][address(msg.sender)].field_0 += 0 / sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3].field_256
        emit 0x721ebd17: arg3 << 248, 0, sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3][2][msg.sender].field_0, 0 / sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3].field_256, msg.sender, arg1, arg2
    else:
        if sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3].field_0 * sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3][2][msg.sender].field_0 / sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3][2][msg.sender].field_0 != sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3].field_0:
            revert with 0, '!!mul'
        require sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3].field_256
        sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3][2][address(msg.sender)].field_0 = 0
        if sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3][2][msg.sender].field_0 > sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3].field_256:
            revert with 0, '!!sub'
        sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3].field_256 -= sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3][2][msg.sender].field_0
        if sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3].field_0 * sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3][2][msg.sender].field_0 / sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3].field_256 > sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3].field_0:
            revert with 0, '!!sub'
        sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3].field_0 -= sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3].field_0 * sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3][2][msg.sender].field_0 / sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3].field_256
        if (sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3].field_0 * sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3][2][msg.sender].field_0 / sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3].field_256) + sub_7d825c49[address(arg2)][address(msg.sender)].field_0 < sub_7d825c49[address(arg2)][address(msg.sender)].field_0:
            revert with 0, '!!add'
        sub_7d825c49[address(arg2)][address(msg.sender)].field_0 += sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3].field_0 * sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3][2][msg.sender].field_0 / sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3].field_256
        emit 0x721ebd17: arg3 << 248, 0, sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3][2][msg.sender].field_0, sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3].field_0 * sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3][2][msg.sender].field_0 / sub_d6ac0da9[address(arg2)][address(arg1)][1][1 == arg3].field_256, msg.sender, arg1, arg2
}



}
