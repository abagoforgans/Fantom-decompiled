contract main {




// =====================  Runtime code  =====================


#
#  - sub_20abe9ef(?)
#  - challenge(uint256 arg1, uint256 arg2)
#
mapping of struct stor0;
array of uint256 stor1;

function _fallback() payable {
    revert
}

function modifier_for_attribute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 == 9:
        return -1
    if arg1 < 0x800000000000000000000000000000000000000000000000000000000000000a:
        revert with 'NH{q', 17
    return (arg1 - 10 / 2)
}

function damage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 != 9:
        if arg1 < 0x800000000000000000000000000000000000000000000000000000000000000a:
            revert with 'NH{q', 17
        if arg1 - 10 / 2 > 1:
            return (arg1 - 10 / 2)
    return 1
}

function status() payable {
    mem[96 len 3200] = call.data[calldata.size len 3200]
    idx = 0
    while idx < 100:
        if idx >= 100:
            revert with 'NH{q', 50
        if stor1[idx] > 0:
            mem[(32 * idx) + 96] = 1
        else:
            mem[(32 * idx) + 96] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return memory
      from 96
       len 3200
}

function health_by_class(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 == 1:
        return 12
    if arg1 == 2:
        return 6
    if arg1 == 3:
        return 8
    if arg1 == 4:
        return 8
    if arg1 == 5:
        return 10
    if arg1 == 6:
        return 8
    if arg1 == 7:
        return 10
    if arg1 == 8:
        return 8
    if arg1 == 9:
        return 6
    if arg1 != 10:
        if arg1 != 11:
            return 0
    return 4
}

function cancel(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 < 0:
        revert with 0, '_index error'
    if arg1 >= 100:
        revert with 0, '_index error'
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args stor1[arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'no permission'
    if arg1 >= 100:
        revert with 'NH{q', 50
    stor1[arg1] = 0
}

function sub_d58a7aa3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not owner'
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'unapprove'
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] != 2:
        revert with 0, 'must level 2'
    require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
    staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_call.return_data[0] == ext_call.return_data[28 len 4]
    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[156 len 4]
    require ext_call.return_data[160] == ext_call.return_data[188 len 4]
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.class(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    stor0[arg1].field_0 = arg1
    stor0[arg1].field_256 = ext_call.return_data[0]
    stor0[arg1].field_512 = uint32(ext_call.return_data[0])
    stor0[arg1].field_544 = 0
    stor0[arg1].field_768 = uint32(ext_call.return_data[32])
    stor0[arg1].field_800 = 0
    stor0[arg1].field_1024 = uint32(ext_call.return_data[64])
    stor0[arg1].field_1056 = 0
    stor0[arg1].field_1280 = uint32(ext_call.return_data[96])
    stor0[arg1].field_1312 = 0
    stor0[arg1].field_1536 = uint32(ext_call.return_data[128])
    stor0[arg1].field_1568 = 0
    stor0[arg1].field_1792 = uint32(ext_call.return_data[160])
    stor0[arg1].field_1824 = 0
}

function sub_f9a98582(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 <= 0:
        revert with 0, 'ban summoner#0'
    if arg1 < 0:
        revert with 0, '_index error'
    if arg1 >= 100:
        revert with 0, '_index error'
    if stor1[arg1]:
        revert with 0, 'exists'
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'no permission'
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'unapprove'
    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
    staticcall 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.balanceOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 60 * 10^18:
        revert with 0, 'Insufficient balance'
    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args arg2, 2451697, 10 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 >= 100:
        revert with 'NH{q', 50
    stor1[arg1] = arg2
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] != 2:
        revert with 0, 'must level 2'
    require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
    staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_call.return_data[0] == ext_call.return_data[28 len 4]
    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[156 len 4]
    require ext_call.return_data[160] == ext_call.return_data[188 len 4]
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.class(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    stor0[arg2].field_0 = arg2
    stor0[arg2].field_256 = ext_call.return_data[0]
    stor0[arg2].field_512 = uint32(ext_call.return_data[0])
    stor0[arg2].field_544 = 0
    stor0[arg2].field_768 = uint32(ext_call.return_data[32])
    stor0[arg2].field_800 = 0
    stor0[arg2].field_1024 = uint32(ext_call.return_data[64])
    stor0[arg2].field_1056 = 0
    stor0[arg2].field_1280 = uint32(ext_call.return_data[96])
    stor0[arg2].field_1312 = 0
    stor0[arg2].field_1536 = uint32(ext_call.return_data[128])
    stor0[arg2].field_1568 = 0
    stor0[arg2].field_1792 = uint32(ext_call.return_data[160])
    stor0[arg2].field_1824 = 0
}

function sub_bfe5d998(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg3 == 9:
        if arg1 == 1:
            if arg2 > 0x1745d1745d1745d1745d1745d1745d1745d1745d1745d1745d1745d1745d1745:
                revert with 'NH{q', 17
            return (11 * arg2)
        if arg1 == 2:
            if arg2 > 0x3333333333333333333333333333333333333333333333333333333333333333:
                revert with 'NH{q', 17
            return (5 * arg2)
        if arg1 == 3:
            if arg2 > 0x2492492492492492492492492492492492492492492492492492492492492492:
                revert with 'NH{q', 17
            return (7 * arg2)
        if arg1 == 4:
            if arg2 > 0x2492492492492492492492492492492492492492492492492492492492492492:
                revert with 'NH{q', 17
            return (7 * arg2)
        if arg1 == 5:
            if arg2 > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
                revert with 'NH{q', 17
            return (9 * arg2)
        if arg1 == 6:
            if arg2 > 0x2492492492492492492492492492492492492492492492492492492492492492:
                revert with 'NH{q', 17
            return (7 * arg2)
        if arg1 == 7:
            if arg2 > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
                revert with 'NH{q', 17
            return (9 * arg2)
        if arg1 == 8:
            if arg2 > 0x2492492492492492492492492492492492492492492492492492492492492492:
                revert with 'NH{q', 17
            return (7 * arg2)
        if arg1 == 9:
            if arg2 > 0x3333333333333333333333333333333333333333333333333333333333333333:
                revert with 'NH{q', 17
            return (5 * arg2)
        if arg1 != 10:
            if arg1 != 11:
                if arg2 > -1:
                    revert with 'NH{q', 17
                return arg2
        if arg2 > 0x5555555555555555555555555555555555555555555555555555555555555555:
            revert with 'NH{q', 17
        return (3 * arg2)
    if arg3 < 0x800000000000000000000000000000000000000000000000000000000000000a:
        revert with 'NH{q', 17
    if arg1 == 1:
        if arg3 - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff3:
            revert with 'NH{q', 17
        if (arg3 - 10 / 2) + 12 > 0:
            if (arg3 - 10 / 2) + 12 and arg2 > -1 / (arg3 - 10 / 2) + 12:
                revert with 'NH{q', 17
            return ((12 * arg2) + (arg3 - 10 / 2 * arg2))
    else:
        if arg1 == 2:
            if arg3 - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff9:
                revert with 'NH{q', 17
            if (arg3 - 10 / 2) + 6 > 0:
                if (arg3 - 10 / 2) + 6 and arg2 > -1 / (arg3 - 10 / 2) + 6:
                    revert with 'NH{q', 17
                return ((6 * arg2) + (arg3 - 10 / 2 * arg2))
        else:
            if arg1 == 3:
                if arg3 - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff7:
                    revert with 'NH{q', 17
                if (arg3 - 10 / 2) + 8 > 0:
                    if (arg3 - 10 / 2) + 8 and arg2 > -1 / (arg3 - 10 / 2) + 8:
                        revert with 'NH{q', 17
                    return ((8 * arg2) + (arg3 - 10 / 2 * arg2))
            else:
                if arg1 == 4:
                    if arg3 - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff7:
                        revert with 'NH{q', 17
                    if (arg3 - 10 / 2) + 8 > 0:
                        if (arg3 - 10 / 2) + 8 and arg2 > -1 / (arg3 - 10 / 2) + 8:
                            revert with 'NH{q', 17
                        return ((8 * arg2) + (arg3 - 10 / 2 * arg2))
                else:
                    if arg1 == 5:
                        if arg3 - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5:
                            revert with 'NH{q', 17
                        if (arg3 - 10 / 2) + 10 > 0:
                            if (arg3 - 10 / 2) + 10 and arg2 > -1 / (arg3 - 10 / 2) + 10:
                                revert with 'NH{q', 17
                            return ((10 * arg2) + (arg3 - 10 / 2 * arg2))
                    else:
                        if arg1 == 6:
                            if arg3 - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff7:
                                revert with 'NH{q', 17
                            if (arg3 - 10 / 2) + 8 > 0:
                                if (arg3 - 10 / 2) + 8 and arg2 > -1 / (arg3 - 10 / 2) + 8:
                                    revert with 'NH{q', 17
                                return ((8 * arg2) + (arg3 - 10 / 2 * arg2))
                        else:
                            if arg1 == 7:
                                if arg3 - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5:
                                    revert with 'NH{q', 17
                                if (arg3 - 10 / 2) + 10 > 0:
                                    if (arg3 - 10 / 2) + 10 and arg2 > -1 / (arg3 - 10 / 2) + 10:
                                        revert with 'NH{q', 17
                                    return ((10 * arg2) + (arg3 - 10 / 2 * arg2))
                            else:
                                if arg1 == 8:
                                    if arg3 - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff7:
                                        revert with 'NH{q', 17
                                    if (arg3 - 10 / 2) + 8 > 0:
                                        if (arg3 - 10 / 2) + 8 and arg2 > -1 / (arg3 - 10 / 2) + 8:
                                            revert with 'NH{q', 17
                                        return ((8 * arg2) + (arg3 - 10 / 2 * arg2))
                                else:
                                    if arg1 == 9:
                                        if arg3 - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff9:
                                            revert with 'NH{q', 17
                                        if (arg3 - 10 / 2) + 6 > 0:
                                            if (arg3 - 10 / 2) + 6 and arg2 > -1 / (arg3 - 10 / 2) + 6:
                                                revert with 'NH{q', 17
                                            return ((6 * arg2) + (arg3 - 10 / 2 * arg2))
                                    else:
                                        if arg1 == 10:
                                            if arg3 - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb:
                                                revert with 'NH{q', 17
                                            if (arg3 - 10 / 2) + 4 > 0:
                                                if (arg3 - 10 / 2) + 4 and arg2 > -1 / (arg3 - 10 / 2) + 4:
                                                    revert with 'NH{q', 17
                                                return ((4 * arg2) + (arg3 - 10 / 2 * arg2))
                                        else:
                                            if arg1 != 11:
                                                if arg3 - 10 / 2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 'NH{q', 17
                                                if arg3 - 10 / 2 > 0:
                                                    if arg3 - 10 / 2 and arg2 > -1 / arg3 - 10 / 2:
                                                        revert with 'NH{q', 17
                                                    return (arg3 - 10 / 2 * arg2)
                                            else:
                                                if arg3 - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb:
                                                    revert with 'NH{q', 17
                                                if (arg3 - 10 / 2) + 4 > 0:
                                                    if (arg3 - 10 / 2) + 4 and arg2 > -1 / (arg3 - 10 / 2) + 4:
                                                        revert with 'NH{q', 17
                                                    return ((4 * arg2) + (arg3 - 10 / 2 * arg2))
    if arg2 > -1:
        revert with 'NH{q', 17
    return arg2
}



}
