contract main {




// =====================  Runtime code  =====================


#
#  - scout(uint256 arg1)
#  - adventure(uint256 arg1)
#
const sub_052922e2(?) = 2

const name = 32, 38, 0xfe5368616e6720486169204368696e67204372616674696e67204d6174657269616c73202849, mem[166 len 26] >> 48, 0

const decimals = 18

const sub_4a87f992(?) = 3

const sub_5a76e14e(?) = 2

const sub_5d0f1d77(?) = 10

const symbol = 'Craft (I)', 0


uint256 totalSupply;
mapping of uint256 allowance;
mapping of uint256 balanceOf;
mapping of uint256 adventurers_log;

function totalSupply() payable {
    return totalSupply
}

function balanceOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function allowance(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function adventurers_log(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return adventurers_log[arg1]
}

function _fallback() payable {
    revert
}

function to_hit_ac(int256 arg1) payable {
    require calldata.size - 4 >= 32
    return (2 < arg1)
}

function armor_class(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 9 == arg1:
        return -1
    if arg1 < 0x800000000000000000000000000000000000000000000000000000000000000a:
        revert with 0, 17
    return (arg1 - 10 / 2)
}

function modifier_for_attribute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 9 == arg1:
        return -1
    if arg1 < 0x800000000000000000000000000000000000000000000000000000000000000a:
        revert with 0, 17
    return (arg1 - 10 / 2)
}

function damage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 != 9:
        if arg1 < 0x800000000000000000000000000000000000000000000000000000000000000a:
            revert with 0, 17
        if arg1 - 10 / 2 > 1:
            return (arg1 - 10 / 2)
    return 1
}

function health_by_class(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 1 == arg1:
        return 12
    if 2 == arg1:
        return 6
    if 3 == arg1:
        return 8
    if 4 == arg1:
        return 8
    if 5 == arg1:
        return 10
    if 6 == arg1:
        return 8
    if 7 == arg1:
        return 10
    if 8 == arg1:
        return 8
    if 9 == arg1:
        return 6
    if arg1 != 10:
        if arg1 != 11:
            return 0
    return 4
}

function base_attack_bonus_by_class(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 1 == arg1:
        return 4
    if 2 == arg1:
        return 3
    if 3 == arg1:
        return 3
    if 4 == arg1:
        return 3
    if 5 == arg1:
        return 4
    if 6 == arg1:
        return 3
    if 7 == arg1:
        return 4
    if 8 == arg1:
        return 4
    if 9 == arg1:
        return 3
    if arg1 != 10:
        if arg1 != 11:
            return 0
    return 2
}

function approve(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(0xc4b6c3e745313384072cc0ccac56ad2a40459855)
    staticcall 0xc4b6c3e745313384072cc0ccac56ad2a40459855.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xc4b6c3e745313384072cc0ccac56ad2a40459855)
        staticcall 0xc4b6c3e745313384072cc0ccac56ad2a40459855.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == msg.sender
    allowance[arg1][arg2] = arg3
    emit Approval(arg3, arg1, arg2);
    return 1
}

function transfer(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(0xc4b6c3e745313384072cc0ccac56ad2a40459855)
    staticcall 0xc4b6c3e745313384072cc0ccac56ad2a40459855.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xc4b6c3e745313384072cc0ccac56ad2a40459855)
        staticcall 0xc4b6c3e745313384072cc0ccac56ad2a40459855.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == msg.sender
    if balanceOf[arg1] < arg3:
        revert with 0, 17
    balanceOf[arg1] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function base_attack_bonus_by_class_and_level(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if 1 == arg1:
        if arg2 and 4 > -1 / arg2:
            revert with 0, 17
        return Mask(254, 0, arg2)
    if 2 == arg1:
        if arg2 and 3 > -1 / arg2:
            revert with 0, 17
        return (3 * arg2 / 4)
    if 3 == arg1:
        if arg2 and 3 > -1 / arg2:
            revert with 0, 17
        return (3 * arg2 / 4)
    if 4 == arg1:
        if arg2 and 3 > -1 / arg2:
            revert with 0, 17
        return (3 * arg2 / 4)
    if 5 == arg1:
        if arg2 and 4 > -1 / arg2:
            revert with 0, 17
        return Mask(254, 0, arg2)
    if 6 == arg1:
        if arg2 and 3 > -1 / arg2:
            revert with 0, 17
        return (3 * arg2 / 4)
    if 7 == arg1:
        if arg2 and 4 > -1 / arg2:
            revert with 0, 17
        return Mask(254, 0, arg2)
    if 8 == arg1:
        if arg2 and 4 > -1 / arg2:
            revert with 0, 17
        return Mask(254, 0, arg2)
    if 9 == arg1:
        if arg2 and 3 > -1 / arg2:
            revert with 0, 17
        return (3 * arg2 / 4)
    if arg1 != 10:
        if arg1 != 11:
            if arg2 and 0 > -1 / arg2:
                revert with 0, 17
            else:
                return 0
    if arg2 and 2 > -1 / arg2:
        revert with 0, 17
    return (Mask(254, 1, arg2) >> 1)
}

function transferFrom(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(0xc4b6c3e745313384072cc0ccac56ad2a40459855)
    staticcall 0xc4b6c3e745313384072cc0ccac56ad2a40459855.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xc4b6c3e745313384072cc0ccac56ad2a40459855)
        staticcall 0xc4b6c3e745313384072cc0ccac56ad2a40459855.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == msg.sender
    if arg1 != arg2:
        if allowance[arg2][arg1] != -1:
            if allowance[arg2][arg1] < arg4:
                revert with 0, 17
            allowance[arg2][arg1] -= arg4
            emit Approval((allowance[arg2][arg1] - arg4), arg2, arg1);
    if balanceOf[arg2] < arg4:
        revert with 0, 17
    balanceOf[arg2] -= arg4
    if balanceOf[arg3] > !arg4:
        revert with 0, 17
    balanceOf[arg3] += arg4
    emit Transfer(arg4, arg2, arg3);
    return 1
}

function health_by_class_and_level(uint256 arg1, uint256 arg2, uint32 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if 9 == arg3:
        if 1 == arg1:
            if arg2 > 0x1745d1745d1745d1745d1745d1745d1745d1745d1745d1745d1745d1745d1745:
                revert with 0, 17
            return (11 * arg2)
        if 2 == arg1:
            if arg2 > 0x3333333333333333333333333333333333333333333333333333333333333333:
                revert with 0, 17
            return (5 * arg2)
        if 3 == arg1:
            if arg2 > 0x2492492492492492492492492492492492492492492492492492492492492492:
                revert with 0, 17
            return (7 * arg2)
        if 4 == arg1:
            if arg2 > 0x2492492492492492492492492492492492492492492492492492492492492492:
                revert with 0, 17
            return (7 * arg2)
        if 5 == arg1:
            if arg2 > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
                revert with 0, 17
            return (9 * arg2)
        if 6 == arg1:
            if arg2 > 0x2492492492492492492492492492492492492492492492492492492492492492:
                revert with 0, 17
            return (7 * arg2)
        if 7 == arg1:
            if arg2 > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
                revert with 0, 17
            return (9 * arg2)
        if 8 == arg1:
            if arg2 > 0x2492492492492492492492492492492492492492492492492492492492492492:
                revert with 0, 17
            return (7 * arg2)
        if 9 == arg1:
            if arg2 > 0x3333333333333333333333333333333333333333333333333333333333333333:
                revert with 0, 17
            return (5 * arg2)
        if arg1 != 10:
            if arg1 != 11:
                if arg2 > -1:
                    revert with 0, 17
                return arg2
        if arg2 > 0x5555555555555555555555555555555555555555555555555555555555555555:
            revert with 0, 17
        return (3 * arg2)
    if arg3 < 0x800000000000000000000000000000000000000000000000000000000000000a:
        revert with 0, 17
    if 1 == arg1:
        if arg3 - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff3:
            revert with 0, 17
        if (arg3 - 10 / 2) + 12 > 0:
            if (arg3 - 10 / 2) + 12 and arg2 > -1 / (arg3 - 10 / 2) + 12:
                revert with 0, 17
            return ((12 * arg2) + (arg3 - 10 / 2 * arg2))
    else:
        if 2 == arg1:
            if arg3 - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff9:
                revert with 0, 17
            if (arg3 - 10 / 2) + 6 > 0:
                if (arg3 - 10 / 2) + 6 and arg2 > -1 / (arg3 - 10 / 2) + 6:
                    revert with 0, 17
                return ((6 * arg2) + (arg3 - 10 / 2 * arg2))
        else:
            if 3 == arg1:
                if arg3 - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff7:
                    revert with 0, 17
                if (arg3 - 10 / 2) + 8 > 0:
                    if (arg3 - 10 / 2) + 8 and arg2 > -1 / (arg3 - 10 / 2) + 8:
                        revert with 0, 17
                    return ((8 * arg2) + (arg3 - 10 / 2 * arg2))
            else:
                if 4 == arg1:
                    if arg3 - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff7:
                        revert with 0, 17
                    if (arg3 - 10 / 2) + 8 > 0:
                        if (arg3 - 10 / 2) + 8 and arg2 > -1 / (arg3 - 10 / 2) + 8:
                            revert with 0, 17
                        return ((8 * arg2) + (arg3 - 10 / 2 * arg2))
                else:
                    if 5 == arg1:
                        if arg3 - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5:
                            revert with 0, 17
                        if (arg3 - 10 / 2) + 10 > 0:
                            if (arg3 - 10 / 2) + 10 and arg2 > -1 / (arg3 - 10 / 2) + 10:
                                revert with 0, 17
                            return ((10 * arg2) + (arg3 - 10 / 2 * arg2))
                    else:
                        if 6 == arg1:
                            if arg3 - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff7:
                                revert with 0, 17
                            if (arg3 - 10 / 2) + 8 > 0:
                                if (arg3 - 10 / 2) + 8 and arg2 > -1 / (arg3 - 10 / 2) + 8:
                                    revert with 0, 17
                                return ((8 * arg2) + (arg3 - 10 / 2 * arg2))
                        else:
                            if 7 == arg1:
                                if arg3 - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5:
                                    revert with 0, 17
                                if (arg3 - 10 / 2) + 10 > 0:
                                    if (arg3 - 10 / 2) + 10 and arg2 > -1 / (arg3 - 10 / 2) + 10:
                                        revert with 0, 17
                                    return ((10 * arg2) + (arg3 - 10 / 2 * arg2))
                            else:
                                if 8 == arg1:
                                    if arg3 - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff7:
                                        revert with 0, 17
                                    if (arg3 - 10 / 2) + 8 > 0:
                                        if (arg3 - 10 / 2) + 8 and arg2 > -1 / (arg3 - 10 / 2) + 8:
                                            revert with 0, 17
                                        return ((8 * arg2) + (arg3 - 10 / 2 * arg2))
                                else:
                                    if 9 == arg1:
                                        if arg3 - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff9:
                                            revert with 0, 17
                                        if (arg3 - 10 / 2) + 6 > 0:
                                            if (arg3 - 10 / 2) + 6 and arg2 > -1 / (arg3 - 10 / 2) + 6:
                                                revert with 0, 17
                                            return ((6 * arg2) + (arg3 - 10 / 2 * arg2))
                                    else:
                                        if 10 == arg1:
                                            if arg3 - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb:
                                                revert with 0, 17
                                            if (arg3 - 10 / 2) + 4 > 0:
                                                if (arg3 - 10 / 2) + 4 and arg2 > -1 / (arg3 - 10 / 2) + 4:
                                                    revert with 0, 17
                                                return ((4 * arg2) + (arg3 - 10 / 2 * arg2))
                                        else:
                                            if arg1 != 11:
                                                if arg3 - 10 / 2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 17
                                                if arg3 - 10 / 2 > 0:
                                                    if arg3 - 10 / 2 and arg2 > -1 / arg3 - 10 / 2:
                                                        revert with 0, 17
                                                    return (arg3 - 10 / 2 * arg2)
                                            else:
                                                if arg3 - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb:
                                                    revert with 0, 17
                                                if (arg3 - 10 / 2) + 4 > 0:
                                                    if (arg3 - 10 / 2) + 4 and arg2 > -1 / (arg3 - 10 / 2) + 4:
                                                        revert with 0, 17
                                                    return ((4 * arg2) + (arg3 - 10 / 2 * arg2))
    if arg2 > -1:
        revert with 0, 17
    return arg2
}

function attack_bonus(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if 9 == arg2:
        if 1 == arg1:
            if arg3 and 4 > -1 / arg3:
                revert with 0, 17
            if -1 > -Mask(254, 0, arg3) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and Mask(254, 0, arg3) >= 0:
                revert with 0, 17
            if Mask(254, 0, arg3) < 0 and -1 < -Mask(254, 0, arg3) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            return (Mask(254, 0, arg3) - 1)
        if 2 == arg1:
            if arg3 and 3 > -1 / arg3:
                revert with 0, 17
            if -1 > -(3 * arg3 / 4) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and 3 * arg3 / 4 >= 0:
                revert with 0, 17
            if 3 * arg3 / 4 < 0 and -1 < -(3 * arg3 / 4) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            return ((3 * arg3 / 4) - 1)
        if 3 == arg1:
            if arg3 and 3 > -1 / arg3:
                revert with 0, 17
            if -1 > -(3 * arg3 / 4) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and 3 * arg3 / 4 >= 0:
                revert with 0, 17
            if 3 * arg3 / 4 < 0 and -1 < -(3 * arg3 / 4) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            return ((3 * arg3 / 4) - 1)
        if 4 == arg1:
            if arg3 and 3 > -1 / arg3:
                revert with 0, 17
            if -1 > -(3 * arg3 / 4) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and 3 * arg3 / 4 >= 0:
                revert with 0, 17
            if 3 * arg3 / 4 < 0 and -1 < -(3 * arg3 / 4) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            return ((3 * arg3 / 4) - 1)
        if 5 == arg1:
            if arg3 and 4 > -1 / arg3:
                revert with 0, 17
            if -1 > -Mask(254, 0, arg3) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and Mask(254, 0, arg3) >= 0:
                revert with 0, 17
            if Mask(254, 0, arg3) < 0 and -1 < -Mask(254, 0, arg3) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            return (Mask(254, 0, arg3) - 1)
        if 6 == arg1:
            if arg3 and 3 > -1 / arg3:
                revert with 0, 17
            if -1 > -(3 * arg3 / 4) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and 3 * arg3 / 4 >= 0:
                revert with 0, 17
            if 3 * arg3 / 4 < 0 and -1 < -(3 * arg3 / 4) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            return ((3 * arg3 / 4) - 1)
        if 7 == arg1:
            if arg3 and 4 > -1 / arg3:
                revert with 0, 17
            if -1 > -Mask(254, 0, arg3) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and Mask(254, 0, arg3) >= 0:
                revert with 0, 17
            if Mask(254, 0, arg3) < 0 and -1 < -Mask(254, 0, arg3) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            return (Mask(254, 0, arg3) - 1)
        if 8 == arg1:
            if arg3 and 4 > -1 / arg3:
                revert with 0, 17
            if -1 > -Mask(254, 0, arg3) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and Mask(254, 0, arg3) >= 0:
                revert with 0, 17
            if Mask(254, 0, arg3) < 0 and -1 < -Mask(254, 0, arg3) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            return (Mask(254, 0, arg3) - 1)
        if 9 == arg1:
            if arg3 and 3 > -1 / arg3:
                revert with 0, 17
            if -1 > -(3 * arg3 / 4) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and 3 * arg3 / 4 >= 0:
                revert with 0, 17
            if 3 * arg3 / 4 < 0 and -1 < -(3 * arg3 / 4) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            return ((3 * arg3 / 4) - 1)
        if arg1 != 10:
            if arg1 != 11:
                if arg3 and 0 > -1 / arg3:
                    revert with 0, 17
                return -1
        if arg3 and 2 > -1 / arg3:
            revert with 0, 17
        if -1 > -(Mask(254, 1, arg3) >> 1) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and Mask(254, 1, arg3) >> 1 >= 0:
            revert with 0, 17
        if Mask(254, 1, arg3) >> 1 < 0 and -1 < -(Mask(254, 1, arg3) >> 1) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        return ((Mask(254, 1, arg3) >> 1) - 1)
    if arg2 < 0x800000000000000000000000000000000000000000000000000000000000000a:
        revert with 0, 17
    if 1 == arg1:
        if arg3 and 4 > -1 / arg3:
            revert with 0, 17
        if arg2 - 10 / 2 > -Mask(254, 0, arg3) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and Mask(254, 0, arg3) >= 0:
            revert with 0, 17
        if Mask(254, 0, arg3) < 0 and arg2 - 10 / 2 < -Mask(254, 0, arg3) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        return (Mask(254, 0, arg3) + (arg2 - 10 / 2))
    if 2 == arg1:
        if arg3 and 3 > -1 / arg3:
            revert with 0, 17
        if arg2 - 10 / 2 > -(3 * arg3 / 4) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and 3 * arg3 / 4 >= 0:
            revert with 0, 17
        if 3 * arg3 / 4 < 0 and arg2 - 10 / 2 < -(3 * arg3 / 4) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        return ((3 * arg3 / 4) + (arg2 - 10 / 2))
    if 3 == arg1:
        if arg3 and 3 > -1 / arg3:
            revert with 0, 17
        if arg2 - 10 / 2 > -(3 * arg3 / 4) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and 3 * arg3 / 4 >= 0:
            revert with 0, 17
        if 3 * arg3 / 4 < 0 and arg2 - 10 / 2 < -(3 * arg3 / 4) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        return ((3 * arg3 / 4) + (arg2 - 10 / 2))
    if 4 == arg1:
        if arg3 and 3 > -1 / arg3:
            revert with 0, 17
        if arg2 - 10 / 2 > -(3 * arg3 / 4) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and 3 * arg3 / 4 >= 0:
            revert with 0, 17
        if 3 * arg3 / 4 < 0 and arg2 - 10 / 2 < -(3 * arg3 / 4) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        return ((3 * arg3 / 4) + (arg2 - 10 / 2))
    if 5 == arg1:
        if arg3 and 4 > -1 / arg3:
            revert with 0, 17
        if arg2 - 10 / 2 > -Mask(254, 0, arg3) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and Mask(254, 0, arg3) >= 0:
            revert with 0, 17
        if Mask(254, 0, arg3) < 0 and arg2 - 10 / 2 < -Mask(254, 0, arg3) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        return (Mask(254, 0, arg3) + (arg2 - 10 / 2))
    if 6 == arg1:
        if arg3 and 3 > -1 / arg3:
            revert with 0, 17
        if arg2 - 10 / 2 > -(3 * arg3 / 4) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and 3 * arg3 / 4 >= 0:
            revert with 0, 17
        if 3 * arg3 / 4 < 0 and arg2 - 10 / 2 < -(3 * arg3 / 4) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        return ((3 * arg3 / 4) + (arg2 - 10 / 2))
    if 7 == arg1:
        if arg3 and 4 > -1 / arg3:
            revert with 0, 17
        if arg2 - 10 / 2 > -Mask(254, 0, arg3) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and Mask(254, 0, arg3) >= 0:
            revert with 0, 17
        if Mask(254, 0, arg3) < 0 and arg2 - 10 / 2 < -Mask(254, 0, arg3) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        return (Mask(254, 0, arg3) + (arg2 - 10 / 2))
    if 8 == arg1:
        if arg3 and 4 > -1 / arg3:
            revert with 0, 17
        if arg2 - 10 / 2 > -Mask(254, 0, arg3) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and Mask(254, 0, arg3) >= 0:
            revert with 0, 17
        if Mask(254, 0, arg3) < 0 and arg2 - 10 / 2 < -Mask(254, 0, arg3) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        return (Mask(254, 0, arg3) + (arg2 - 10 / 2))
    if 9 == arg1:
        if arg3 and 3 > -1 / arg3:
            revert with 0, 17
        if arg2 - 10 / 2 > -(3 * arg3 / 4) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and 3 * arg3 / 4 >= 0:
            revert with 0, 17
        if 3 * arg3 / 4 < 0 and arg2 - 10 / 2 < -(3 * arg3 / 4) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        return ((3 * arg3 / 4) + (arg2 - 10 / 2))
    if arg1 != 10:
        if arg1 != 11:
            if arg3 and 0 > -1 / arg3:
                revert with 0, 17
            if arg2 - 10 / 2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            return (arg2 - 10 / 2)
    if arg3 and 2 > -1 / arg3:
        revert with 0, 17
    if arg2 - 10 / 2 > -(Mask(254, 1, arg3) >> 1) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and Mask(254, 1, arg3) >> 1 >= 0:
        revert with 0, 17
    if Mask(254, 1, arg3) >> 1 < 0 and arg2 - 10 / 2 < -(Mask(254, 1, arg3) >> 1) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    return ((Mask(254, 1, arg3) >> 1) + (arg2 - 10 / 2))
}



}
