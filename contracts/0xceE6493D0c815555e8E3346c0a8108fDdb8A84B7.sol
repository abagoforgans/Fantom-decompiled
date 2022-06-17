contract main {




// =====================  Runtime code  =====================


#
#  - sub_a47c7002(?)
#  - sub_fd51c649(?)
#
const name = 'Metaverse Football Chapter I', 0

const decimals = 18

const sub_69ceec35(?) = 3

const sub_8962c297(?) = 2

const symbol = 'MVFBChapterI', 0

const sub_c92f5c43(?) = 2

const sub_cf28af76(?) = 10


uint256 totalSupply;
mapping of uint256 allowance;
mapping of uint256 balanceOf;
mapping of uint256 adventurers_log;

function totalSupply() payable {
    return totalSupply
}

function balanceOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[arg1]
}

function allowance(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[arg1][arg2]
}

function adventurers_log(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return adventurers_log[arg1]
}

function _fallback() payable {
    revert
}

function to_hit_ac(int256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 > 2)
}

function sub_8aacd79c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 == 9:
        return -1
    if arg1 < 0x800000000000000000000000000000000000000000000000000000000000000a:
        revert with 'NH{q', 17
    return (arg1 - 10 / 2)
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

function sub_8b3171e1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 == 1:
        return 4
    if arg1 == 2:
        return 3
    if arg1 == 3:
        return 3
    if arg1 == 4:
        return 4
    if arg1 == 5:
        return 4
    if arg1 == 6:
        return 4
    if arg1 == 7:
        return 3
    if arg1 == 8:
        return 3
    if arg1 != 9:
        if arg1 != 10:
            if arg1 != 11:
                return 0
    return 2
}

function sub_5785d85d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 == 1:
        return 12
    if arg1 == 2:
        return 8
    if arg1 == 3:
        return 8
    if arg1 == 4:
        return 10
    if arg1 == 5:
        return 10
    if arg1 == 6:
        return 8
    if arg1 != 7:
        if arg1 != 8:
            if arg1 != 9:
                if arg1 == 10:
                    return 4
                if arg1 != 11:
                    return 0
    return 6
}

function approve(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
    staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
        staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.0x6352211e with:
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
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
    staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
        staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == msg.sender
    if balanceOf[arg1] < arg3:
        revert with 'NH{q', 17
    balanceOf[arg1] -= arg3
    if balanceOf[arg2] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_2bb560db(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == 1:
        if arg2 and 4 > -1 / arg2:
            revert with 'NH{q', 17
        return Mask(254, 0, arg2)
    if arg1 == 2:
        if arg2 and 3 > -1 / arg2:
            revert with 'NH{q', 17
        return (3 * arg2 / 4)
    if arg1 == 3:
        if arg2 and 3 > -1 / arg2:
            revert with 'NH{q', 17
        return (3 * arg2 / 4)
    if arg1 == 4:
        if arg2 and 4 > -1 / arg2:
            revert with 'NH{q', 17
        return Mask(254, 0, arg2)
    if arg1 == 5:
        if arg2 and 4 > -1 / arg2:
            revert with 'NH{q', 17
        return Mask(254, 0, arg2)
    if arg1 == 6:
        if arg2 and 4 > -1 / arg2:
            revert with 'NH{q', 17
        return Mask(254, 0, arg2)
    if arg1 == 7:
        if arg2 and 3 > -1 / arg2:
            revert with 'NH{q', 17
        return (3 * arg2 / 4)
    if arg1 == 8:
        if arg2 and 3 > -1 / arg2:
            revert with 'NH{q', 17
        return (3 * arg2 / 4)
    if arg1 != 9:
        if arg1 != 10:
            if arg1 != 11:
                if arg2 and 0 > -1 / arg2:
                    revert with 'NH{q', 17
                else:
                    return 0
    if arg2 and 2 > -1 / arg2:
        revert with 'NH{q', 17
    return (Mask(254, 1, arg2) >> 1)
}

function transferFrom(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
    staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0x38f7831c6c5efe1945bf26f2feb8f11d93c24230)
        staticcall 0x38f7831c6c5efe1945bf26f2feb8f11d93c24230.0x6352211e with:
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
                revert with 'NH{q', 17
            allowance[arg2][arg1] -= arg4
            emit Approval((allowance[arg2][arg1] - arg4), arg2, arg1);
    if balanceOf[arg2] < arg4:
        revert with 'NH{q', 17
    balanceOf[arg2] -= arg4
    if balanceOf[arg3] > -arg4 - 1:
        revert with 'NH{q', 17
    balanceOf[arg3] += arg4
    emit Transfer(arg4, arg2, arg3);
    return 1
}

function sub_a0a2e94d(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == uint32(arg3)
    if uint32(arg3) == 9:
        if arg1 == 1:
            if arg2 > 0x1745d1745d1745d1745d1745d1745d1745d1745d1745d1745d1745d1745d1745:
                revert with 'NH{q', 17
            return (11 * arg2)
        if arg1 == 2:
            if arg2 > 0x2492492492492492492492492492492492492492492492492492492492492492:
                revert with 'NH{q', 17
            return (7 * arg2)
        if arg1 == 3:
            if arg2 > 0x2492492492492492492492492492492492492492492492492492492492492492:
                revert with 'NH{q', 17
            return (7 * arg2)
        if arg1 == 4:
            if arg2 > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
                revert with 'NH{q', 17
            return (9 * arg2)
        if arg1 == 5:
            if arg2 > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
                revert with 'NH{q', 17
            return (9 * arg2)
        if arg1 == 6:
            if arg2 > 0x2492492492492492492492492492492492492492492492492492492492492492:
                revert with 'NH{q', 17
            return (7 * arg2)
        if arg1 != 7:
            if arg1 != 8:
                if arg1 != 9:
                    if arg1 == 10:
                        if arg2 > 0x5555555555555555555555555555555555555555555555555555555555555555:
                            revert with 'NH{q', 17
                        return (3 * arg2)
                    if arg1 != 11:
                        if arg2 > -1:
                            revert with 'NH{q', 17
                        return arg2
        if arg2 > 0x3333333333333333333333333333333333333333333333333333333333333333:
            revert with 'NH{q', 17
        return (5 * arg2)
    if uint32(arg3) < 0x800000000000000000000000000000000000000000000000000000000000000a:
        revert with 'NH{q', 17
    if arg1 == 1:
        if uint32(arg3) - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff3:
            revert with 'NH{q', 17
        if (uint32(arg3) - 10 / 2) + 12 > 0:
            if (uint32(arg3) - 10 / 2) + 12 and arg2 > -1 / (uint32(arg3) - 10 / 2) + 12:
                revert with 'NH{q', 17
            return ((12 * arg2) + (uint32(arg3) - 10 / 2 * arg2))
    else:
        if arg1 == 2:
            if uint32(arg3) - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff7:
                revert with 'NH{q', 17
            if (uint32(arg3) - 10 / 2) + 8 > 0:
                if (uint32(arg3) - 10 / 2) + 8 and arg2 > -1 / (uint32(arg3) - 10 / 2) + 8:
                    revert with 'NH{q', 17
                return ((8 * arg2) + (uint32(arg3) - 10 / 2 * arg2))
        else:
            if arg1 == 3:
                if uint32(arg3) - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff7:
                    revert with 'NH{q', 17
                if (uint32(arg3) - 10 / 2) + 8 > 0:
                    if (uint32(arg3) - 10 / 2) + 8 and arg2 > -1 / (uint32(arg3) - 10 / 2) + 8:
                        revert with 'NH{q', 17
                    return ((8 * arg2) + (uint32(arg3) - 10 / 2 * arg2))
            else:
                if arg1 == 4:
                    if uint32(arg3) - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5:
                        revert with 'NH{q', 17
                    if (uint32(arg3) - 10 / 2) + 10 > 0:
                        if (uint32(arg3) - 10 / 2) + 10 and arg2 > -1 / (uint32(arg3) - 10 / 2) + 10:
                            revert with 'NH{q', 17
                        return ((10 * arg2) + (uint32(arg3) - 10 / 2 * arg2))
                else:
                    if arg1 == 5:
                        if uint32(arg3) - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5:
                            revert with 'NH{q', 17
                        if (uint32(arg3) - 10 / 2) + 10 > 0:
                            if (uint32(arg3) - 10 / 2) + 10 and arg2 > -1 / (uint32(arg3) - 10 / 2) + 10:
                                revert with 'NH{q', 17
                            return ((10 * arg2) + (uint32(arg3) - 10 / 2 * arg2))
                    else:
                        if arg1 == 6:
                            if uint32(arg3) - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff7:
                                revert with 'NH{q', 17
                            if (uint32(arg3) - 10 / 2) + 8 > 0:
                                if (uint32(arg3) - 10 / 2) + 8 and arg2 > -1 / (uint32(arg3) - 10 / 2) + 8:
                                    revert with 'NH{q', 17
                                return ((8 * arg2) + (uint32(arg3) - 10 / 2 * arg2))
                        else:
                            if arg1 == 7:
                                if uint32(arg3) - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff9:
                                    revert with 'NH{q', 17
                                if (uint32(arg3) - 10 / 2) + 6 > 0:
                                    if (uint32(arg3) - 10 / 2) + 6 and arg2 > -1 / (uint32(arg3) - 10 / 2) + 6:
                                        revert with 'NH{q', 17
                                    return ((6 * arg2) + (uint32(arg3) - 10 / 2 * arg2))
                            else:
                                if arg1 == 8:
                                    if uint32(arg3) - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff9:
                                        revert with 'NH{q', 17
                                    if (uint32(arg3) - 10 / 2) + 6 > 0:
                                        if (uint32(arg3) - 10 / 2) + 6 and arg2 > -1 / (uint32(arg3) - 10 / 2) + 6:
                                            revert with 'NH{q', 17
                                        return ((6 * arg2) + (uint32(arg3) - 10 / 2 * arg2))
                                else:
                                    if arg1 == 9:
                                        if uint32(arg3) - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff9:
                                            revert with 'NH{q', 17
                                        if (uint32(arg3) - 10 / 2) + 6 > 0:
                                            if (uint32(arg3) - 10 / 2) + 6 and arg2 > -1 / (uint32(arg3) - 10 / 2) + 6:
                                                revert with 'NH{q', 17
                                            return ((6 * arg2) + (uint32(arg3) - 10 / 2 * arg2))
                                    else:
                                        if arg1 == 10:
                                            if uint32(arg3) - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb:
                                                revert with 'NH{q', 17
                                            if (uint32(arg3) - 10 / 2) + 4 > 0:
                                                if (uint32(arg3) - 10 / 2) + 4 and arg2 > -1 / (uint32(arg3) - 10 / 2) + 4:
                                                    revert with 'NH{q', 17
                                                return ((4 * arg2) + (uint32(arg3) - 10 / 2 * arg2))
                                        else:
                                            if arg1 != 11:
                                                if uint32(arg3) - 10 / 2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 'NH{q', 17
                                                if uint32(arg3) - 10 / 2 > 0:
                                                    if uint32(arg3) - 10 / 2 and arg2 > -1 / uint32(arg3) - 10 / 2:
                                                        revert with 'NH{q', 17
                                                    return (uint32(arg3) - 10 / 2 * arg2)
                                            else:
                                                if uint32(arg3) - 10 / 2 > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff9:
                                                    revert with 'NH{q', 17
                                                if (uint32(arg3) - 10 / 2) + 6 > 0:
                                                    if (uint32(arg3) - 10 / 2) + 6 and arg2 > -1 / (uint32(arg3) - 10 / 2) + 6:
                                                        revert with 'NH{q', 17
                                                    return ((6 * arg2) + (uint32(arg3) - 10 / 2 * arg2))
    if arg2 > -1:
        revert with 'NH{q', 17
    return arg2
}

function attack_bonus(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg2 == 9:
        if arg1 == 1:
            if arg3 and 4 > -1 / arg3:
                revert with 'NH{q', 17
            if Mask(254, 0, arg3) >= 0 and -1 > -Mask(254, 0, arg3) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if Mask(254, 0, arg3) < 0 and -1 < -Mask(254, 0, arg3) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            return (Mask(254, 0, arg3) - 1)
        if arg1 == 2:
            if arg3 and 3 > -1 / arg3:
                revert with 'NH{q', 17
            if 3 * arg3 / 4 >= 0 and -1 > -(3 * arg3 / 4) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 3 * arg3 / 4 < 0 and -1 < -(3 * arg3 / 4) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            return ((3 * arg3 / 4) - 1)
        if arg1 == 3:
            if arg3 and 3 > -1 / arg3:
                revert with 'NH{q', 17
            if 3 * arg3 / 4 >= 0 and -1 > -(3 * arg3 / 4) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 3 * arg3 / 4 < 0 and -1 < -(3 * arg3 / 4) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            return ((3 * arg3 / 4) - 1)
        if arg1 == 4:
            if arg3 and 4 > -1 / arg3:
                revert with 'NH{q', 17
            if Mask(254, 0, arg3) >= 0 and -1 > -Mask(254, 0, arg3) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if Mask(254, 0, arg3) < 0 and -1 < -Mask(254, 0, arg3) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            return (Mask(254, 0, arg3) - 1)
        if arg1 == 5:
            if arg3 and 4 > -1 / arg3:
                revert with 'NH{q', 17
            if Mask(254, 0, arg3) >= 0 and -1 > -Mask(254, 0, arg3) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if Mask(254, 0, arg3) < 0 and -1 < -Mask(254, 0, arg3) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            return (Mask(254, 0, arg3) - 1)
        if arg1 == 6:
            if arg3 and 4 > -1 / arg3:
                revert with 'NH{q', 17
            if Mask(254, 0, arg3) >= 0 and -1 > -Mask(254, 0, arg3) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if Mask(254, 0, arg3) < 0 and -1 < -Mask(254, 0, arg3) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            return (Mask(254, 0, arg3) - 1)
        if arg1 == 7:
            if arg3 and 3 > -1 / arg3:
                revert with 'NH{q', 17
            if 3 * arg3 / 4 >= 0 and -1 > -(3 * arg3 / 4) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 3 * arg3 / 4 < 0 and -1 < -(3 * arg3 / 4) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            return ((3 * arg3 / 4) - 1)
        if arg1 == 8:
            if arg3 and 3 > -1 / arg3:
                revert with 'NH{q', 17
            if 3 * arg3 / 4 >= 0 and -1 > -(3 * arg3 / 4) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 3 * arg3 / 4 < 0 and -1 < -(3 * arg3 / 4) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            return ((3 * arg3 / 4) - 1)
        if arg1 != 9:
            if arg1 != 10:
                if arg1 != 11:
                    if arg3 and 0 > -1 / arg3:
                        revert with 'NH{q', 17
                    return -1
        if arg3 and 2 > -1 / arg3:
            revert with 'NH{q', 17
        if Mask(254, 1, arg3) >> 1 >= 0 and -1 > -(Mask(254, 1, arg3) >> 1) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if Mask(254, 1, arg3) >> 1 < 0 and -1 < -(Mask(254, 1, arg3) >> 1) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        return ((Mask(254, 1, arg3) >> 1) - 1)
    if arg2 < 0x800000000000000000000000000000000000000000000000000000000000000a:
        revert with 'NH{q', 17
    if arg1 == 1:
        if arg3 and 4 > -1 / arg3:
            revert with 'NH{q', 17
        if Mask(254, 0, arg3) >= 0 and arg2 - 10 / 2 > -Mask(254, 0, arg3) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if Mask(254, 0, arg3) < 0 and arg2 - 10 / 2 < -Mask(254, 0, arg3) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        return (Mask(254, 0, arg3) + (arg2 - 10 / 2))
    if arg1 == 2:
        if arg3 and 3 > -1 / arg3:
            revert with 'NH{q', 17
        if 3 * arg3 / 4 >= 0 and arg2 - 10 / 2 > -(3 * arg3 / 4) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 3 * arg3 / 4 < 0 and arg2 - 10 / 2 < -(3 * arg3 / 4) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        return ((3 * arg3 / 4) + (arg2 - 10 / 2))
    if arg1 == 3:
        if arg3 and 3 > -1 / arg3:
            revert with 'NH{q', 17
        if 3 * arg3 / 4 >= 0 and arg2 - 10 / 2 > -(3 * arg3 / 4) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 3 * arg3 / 4 < 0 and arg2 - 10 / 2 < -(3 * arg3 / 4) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        return ((3 * arg3 / 4) + (arg2 - 10 / 2))
    if arg1 == 4:
        if arg3 and 4 > -1 / arg3:
            revert with 'NH{q', 17
        if Mask(254, 0, arg3) >= 0 and arg2 - 10 / 2 > -Mask(254, 0, arg3) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if Mask(254, 0, arg3) < 0 and arg2 - 10 / 2 < -Mask(254, 0, arg3) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        return (Mask(254, 0, arg3) + (arg2 - 10 / 2))
    if arg1 == 5:
        if arg3 and 4 > -1 / arg3:
            revert with 'NH{q', 17
        if Mask(254, 0, arg3) >= 0 and arg2 - 10 / 2 > -Mask(254, 0, arg3) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if Mask(254, 0, arg3) < 0 and arg2 - 10 / 2 < -Mask(254, 0, arg3) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        return (Mask(254, 0, arg3) + (arg2 - 10 / 2))
    if arg1 == 6:
        if arg3 and 4 > -1 / arg3:
            revert with 'NH{q', 17
        if Mask(254, 0, arg3) >= 0 and arg2 - 10 / 2 > -Mask(254, 0, arg3) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if Mask(254, 0, arg3) < 0 and arg2 - 10 / 2 < -Mask(254, 0, arg3) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        return (Mask(254, 0, arg3) + (arg2 - 10 / 2))
    if arg1 == 7:
        if arg3 and 3 > -1 / arg3:
            revert with 'NH{q', 17
        if 3 * arg3 / 4 >= 0 and arg2 - 10 / 2 > -(3 * arg3 / 4) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 3 * arg3 / 4 < 0 and arg2 - 10 / 2 < -(3 * arg3 / 4) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        return ((3 * arg3 / 4) + (arg2 - 10 / 2))
    if arg1 == 8:
        if arg3 and 3 > -1 / arg3:
            revert with 'NH{q', 17
        if 3 * arg3 / 4 >= 0 and arg2 - 10 / 2 > -(3 * arg3 / 4) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 3 * arg3 / 4 < 0 and arg2 - 10 / 2 < -(3 * arg3 / 4) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        return ((3 * arg3 / 4) + (arg2 - 10 / 2))
    if arg1 != 9:
        if arg1 != 10:
            if arg1 != 11:
                if arg3 and 0 > -1 / arg3:
                    revert with 'NH{q', 17
                if arg2 - 10 / 2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                return (arg2 - 10 / 2)
    if arg3 and 2 > -1 / arg3:
        revert with 'NH{q', 17
    if Mask(254, 1, arg3) >> 1 >= 0 and arg2 - 10 / 2 > -(Mask(254, 1, arg3) >> 1) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if Mask(254, 1, arg3) >> 1 < 0 and arg2 - 10 / 2 < -(Mask(254, 1, arg3) >> 1) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    return ((Mask(254, 1, arg3) >> 1) + (arg2 - 10 / 2))
}



}
