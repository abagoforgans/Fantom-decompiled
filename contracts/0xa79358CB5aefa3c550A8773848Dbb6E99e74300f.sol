contract main {




// =====================  Runtime code  =====================


#
#  - sub_18cca0c5(?)
#  - sub_8eac9146(?)
#  - kill(uint256 arg1)
#
const sub_052922e2(?) = 4

const sub_4a87f992(?) = 5

const sub_5a76e14e(?) = 4

const sub_5d0f1d77(?) = 16


address extendedAddress;
uint256 stor0;
address sub_74ec7cc2Address;
address skillsAddress;
address sub_2f03e688Address;
uint256 sub_b1b71cd9;
uint256 sub_d39d00b5;
uint256 sub_790a1741;
uint256 sub_547aba5b;
uint8 stor8;
mapping of uint256 sub_4eecb7b6;
address rmAddress;
address randomAddress;
address mushroomAddress;
address sub_1fa8f31cAddress;
address woodAddress;
address leatherAddress;
address meatAddress;
address sub_a6c97b44Address;

function meat() payable {
    return meatAddress
}

function leather() payable {
    return leatherAddress
}

function sub_1fa8f31c(?) payable {
    return sub_1fa8f31cAddress
}

function sub_2f03e688(?) payable {
    return sub_2f03e688Address
}

function skills() payable {
    return skillsAddress
}

function sub_4eecb7b6(?) payable {
    require calldata.size - 4 >= 32
    return sub_4eecb7b6[arg1]
}

function rm() payable {
    return rmAddress
}

function sub_547aba5b(?) payable {
    return sub_547aba5b
}

function random() payable {
    return randomAddress
}

function extended() payable {
    return address(extendedAddress)
}

function sub_74ec7cc2(?) payable {
    return sub_74ec7cc2Address
}

function mushroom() payable {
    return mushroomAddress
}

function sub_790a1741(?) payable {
    return sub_790a1741
}

function wood() payable {
    return woodAddress
}

function sub_a6c97b44(?) payable {
    return sub_a6c97b44Address
}

function sub_b1b71cd9(?) payable {
    return sub_b1b71cd9
}

function sub_d39d00b5(?) payable {
    return sub_d39d00b5
}

function _fallback() payable {
    revert
}

function pause() payable {
    if address(extendedAddress) != msg.sender:
        revert with 0, '!owner'
    stor8 = 1
}

function sub_c346f09c(?) payable {
    if sub_74ec7cc2Address != msg.sender:
        revert with 0, '!authorized'
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
}

function sub_8de91bc1(?) payable {
    require calldata.size - 4 >= 32
    if address(extendedAddress) != msg.sender:
        revert with 0, '!owner'
    sub_d39d00b5 = arg1
    emit 0xbd6ca880: sub_d39d00b5, arg1
}

function sub_71dbd0ff(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(extendedAddress) != msg.sender:
        revert with 0, '!owner'
    sub_74ec7cc2Address = address(arg1)
}

function armor_class(uint256 arg1) payable {
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

function sub_b5eb0dd4(?) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        return 0
    if arg2 <= arg3:
        if arg2 >= arg3:
            return arg1
        if arg1 and arg2 > -1 / arg1:
            revert with 0, 17
        if not arg3:
            revert with 0, 18
        return (arg1 * arg2 / arg3)
    if arg2 < arg3:
        revert with 0, 17
    if arg1 and arg2 - arg3 > -1 / arg1:
        revert with 0, 17
    if not arg3:
        revert with 0, 18
    if arg1 > !((arg2 * arg1) - (arg3 * arg1) / arg3):
        revert with 0, 17
    if arg2 >= arg3:
        return (arg1 + ((arg2 * arg1) - (arg3 * arg1) / arg3))
    if arg1 + ((arg2 * arg1) - (arg3 * arg1) / arg3) and arg2 > -1 / arg1 + ((arg2 * arg1) - (arg3 * arg1) / arg3):
        revert with 0, 17
    if not arg3:
        revert with 0, 18
    return ((arg1 * arg2) + ((arg2 * arg1) - (arg3 * arg1) / arg3 * arg2) / arg3)
}

function sub_ed220b3c(?) payable {
    require calldata.size - 4 >= 96
    require arg3 == bool(arg3)
    if arg1 > !gas_remaining:
        revert with 0, 17
    if arg3:
        require ext_code.size(randomAddress)
        staticcall randomAddress.dn(uint256 arg1, uint256 arg2) with:
                gas gas_remaining wei
               args arg1 + gas_remaining, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0]
    if 1 == arg2:
        return 1
    require ext_code.size(randomAddress)
    staticcall randomAddress.dn(uint256 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args arg1 + gas_remaining, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > -2:
        revert with 0, 17
    return (ext_call.return_data[0] + 1)
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

function sub_e05cf762(?) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        return 0
    if arg2 <= arg3:
        if arg2 >= arg3:
            return arg1
        if arg3 < arg2:
            revert with 0, 17
        if arg1 and arg3 - arg2 > -1 / arg1:
            revert with 0, 17
        if not arg2:
            revert with 0, 18
        if arg1 > !((arg3 * arg1) - (arg2 * arg1) / arg2):
            revert with 0, 17
        return (arg1 + ((arg3 * arg1) - (arg2 * arg1) / arg2))
    if arg2 >= 20000:
        if arg2 >= arg3:
            return 0
        if arg3 < arg2:
            revert with 0, 17
        if False and arg3 - arg2 > 0:
            revert with 0, 17
        if not arg2:
            revert with 0, 18
        if 0 > !(0 / arg2):
            revert with 0, 17
        return (0 / arg2)
    if arg1 and arg2 > -1 / arg1:
        revert with 0, 17
    if arg1 < arg1 * arg2 / 20000:
        revert with 0, 17
    if arg2 >= arg3:
        return (arg1 - (arg1 * arg2 / 20000))
    if arg3 < arg2:
        revert with 0, 17
    if arg1 - (arg1 * arg2 / 20000) and arg3 - arg2 > -1 / arg1 - (arg1 * arg2 / 20000):
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if arg1 - (arg1 * arg2 / 20000) > !((arg3 * arg1) - (arg2 * arg1) - (arg3 * arg1 * arg2 / 20000) + (arg2 * arg1 * arg2 / 20000) / arg2):
        revert with 0, 17
    return (arg1 - (arg1 * arg2 / 20000) + ((arg3 * arg1) - (arg2 * arg1) - (arg3 * arg1 * arg2 / 20000) + (arg2 * arg1 * arg2 / 20000) / arg2))
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

function sub_055fe6d5(?) payable {
    require calldata.size - 4 >= 32
    mem[100] = arg1
    require ext_code.size(rmAddress)
    staticcall rmAddress.class(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1 == ext_call.return_data[0]:
        require ext_code.size(skillsAddress)
        staticcall skillsAddress.get_skills(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[ceil32(return_data.size) + 96 len 1152] = ext_call.return_data[0 len 1152]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 1152
        require ceil32(return_data.size) + 127 < ceil32(return_data.size) + return_data.size + 96
        if not bool((2 * ceil32(return_data.size)) + 1248 <= test266151307()):
            revert with 0, 65
        require return_data.size >= 1152
        s = ceil32(return_data.size) + 96
        t = (2 * ceil32(return_data.size)) + 96
        idx = 0
        while idx < 36:
            require mem[s] == mem[s + 31 len 1]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        if mem[(2 * ceil32(return_data.size)) + 543 len 1] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 1 > !(2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])):
            revert with 0, 17
        require ext_code.size(sub_2f03e688Address)
        staticcall sub_2f03e688Address.ability_scores(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[(2 * ceil32(return_data.size)) + 1248 len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        require ext_call.return_data[0] == ext_call.return_data[28 len 4]
        require ext_call.return_data[32] == ext_call.return_data[60 len 4]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_call.return_data[96] == ext_call.return_data[124 len 4]
        require ext_call.return_data[128] == ext_call.return_data[156 len 4]
        require ext_call.return_data[160] == ext_call.return_data[188 len 4]
        if ext_call.return_data[124 len 4] > -ext_call.return_data[156 len 4] + test266151307():
            revert with 0, 17
        if uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4]) > -ext_call.return_data[188 len 4] + test266151307():
            revert with 0, 17
        if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + 1 > !(uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2):
            revert with 0, 17
        if not (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1:
            return 0
        if sub_b1b71cd9 <= sub_d39d00b5:
            if sub_b1b71cd9 >= sub_d39d00b5:
                mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1
                return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1)
            if sub_d39d00b5 < sub_b1b71cd9:
                revert with 0, 17
            if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1 and sub_d39d00b5 - sub_b1b71cd9 > -1 / (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1:
                revert with 0, 17
            if not sub_b1b71cd9:
                revert with 0, 18
            if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1 > !(sub_d39d00b5 - sub_b1b71cd9 + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) / sub_b1b71cd9):
                revert with 0, 17
            mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + (sub_d39d00b5 - sub_b1b71cd9 + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) / sub_b1b71cd9) + 1
            return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + (sub_d39d00b5 - sub_b1b71cd9 + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) / sub_b1b71cd9) + 1)
        if sub_b1b71cd9 >= 20000:
            if sub_b1b71cd9 >= sub_d39d00b5:
                return 0
            if sub_d39d00b5 < sub_b1b71cd9:
                revert with 0, 17
            if False and sub_d39d00b5 - sub_b1b71cd9 > 0:
                revert with 0, 17
            if not sub_b1b71cd9:
                revert with 0, 18
            if 0 > !(0 / sub_b1b71cd9):
                revert with 0, 17
            return (0 / sub_b1b71cd9)
        if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1 and sub_b1b71cd9 > -1 / (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1:
            revert with 0, 17
        if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1 < sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000:
            revert with 0, 17
        if sub_b1b71cd9 >= sub_d39d00b5:
            mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 1
            return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 1)
        if sub_d39d00b5 < sub_b1b71cd9:
            revert with 0, 17
        if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 1 and sub_d39d00b5 - sub_b1b71cd9 > -1 / (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 1:
            revert with 0, 17
        if not sub_b1b71cd9:
            revert with 0, 18
        if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 1 > !(sub_d39d00b5 - sub_b1b71cd9 + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_d39d00b5 * sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_b1b71cd9 * sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) / sub_b1b71cd9):
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_d39d00b5 - sub_b1b71cd9 + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_d39d00b5 * sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_b1b71cd9 * sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) / sub_b1b71cd9) + 1
        return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_d39d00b5 - sub_b1b71cd9 + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_d39d00b5 * sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_b1b71cd9 * sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) / sub_b1b71cd9) + 1)
    if 2 == ext_call.return_data[0]:
        require ext_code.size(skillsAddress)
        staticcall skillsAddress.get_skills(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[ceil32(return_data.size) + 96 len 1152] = ext_call.return_data[0 len 1152]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 1152
        require ceil32(return_data.size) + 127 < ceil32(return_data.size) + return_data.size + 96
        if not bool((2 * ceil32(return_data.size)) + 1248 <= test266151307()):
            revert with 0, 65
        require return_data.size >= 1152
        s = ceil32(return_data.size) + 96
        t = (2 * ceil32(return_data.size)) + 96
        idx = 0
        while idx < 36:
            require mem[s] == mem[s + 31 len 1]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        if mem[(2 * ceil32(return_data.size)) + 543 len 1] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 4 > !(2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])):
            revert with 0, 17
        require ext_code.size(sub_2f03e688Address)
        staticcall sub_2f03e688Address.ability_scores(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[(2 * ceil32(return_data.size)) + 1248 len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        require ext_call.return_data[0] == ext_call.return_data[28 len 4]
        require ext_call.return_data[32] == ext_call.return_data[60 len 4]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_call.return_data[96] == ext_call.return_data[124 len 4]
        require ext_call.return_data[128] == ext_call.return_data[156 len 4]
        require ext_call.return_data[160] == ext_call.return_data[188 len 4]
        if ext_call.return_data[124 len 4] > -ext_call.return_data[156 len 4] + test266151307():
            revert with 0, 17
        if uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4]) > -ext_call.return_data[188 len 4] + test266151307():
            revert with 0, 17
        if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + 4 > !(uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2):
            revert with 0, 17
        if not (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 4:
            return 0
        if sub_b1b71cd9 <= sub_d39d00b5:
            if sub_b1b71cd9 >= sub_d39d00b5:
                mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 4
                return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 4)
            if sub_d39d00b5 < sub_b1b71cd9:
                revert with 0, 17
            if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 4 and sub_d39d00b5 - sub_b1b71cd9 > -1 / (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 4:
                revert with 0, 17
            if not sub_b1b71cd9:
                revert with 0, 18
            if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 4 > !((4 * sub_d39d00b5 - sub_b1b71cd9) + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) / sub_b1b71cd9):
                revert with 0, 17
            mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + ((4 * sub_d39d00b5 - sub_b1b71cd9) + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) / sub_b1b71cd9) + 4
            return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + ((4 * sub_d39d00b5 - sub_b1b71cd9) + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) / sub_b1b71cd9) + 4)
        if sub_b1b71cd9 >= 20000:
            if sub_b1b71cd9 >= sub_d39d00b5:
                return 0
            if sub_d39d00b5 < sub_b1b71cd9:
                revert with 0, 17
            if False and sub_d39d00b5 - sub_b1b71cd9 > 0:
                revert with 0, 17
            if not sub_b1b71cd9:
                revert with 0, 18
            if 0 > !(0 / sub_b1b71cd9):
                revert with 0, 17
            return (0 / sub_b1b71cd9)
        if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 4 and sub_b1b71cd9 > -1 / (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 4:
            revert with 0, 17
        if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 4 < (4 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000:
            revert with 0, 17
        if sub_b1b71cd9 >= sub_d39d00b5:
            mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -((4 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 4
            return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -((4 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 4)
        if sub_d39d00b5 < sub_b1b71cd9:
            revert with 0, 17
        if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -((4 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 4 and sub_d39d00b5 - sub_b1b71cd9 > -1 / (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -((4 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 4:
            revert with 0, 17
        if not sub_b1b71cd9:
            revert with 0, 18
        if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -((4 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 4 > !((4 * sub_d39d00b5 - sub_b1b71cd9) + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_d39d00b5 * (4 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_b1b71cd9 * (4 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) / sub_b1b71cd9):
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -((4 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + ((4 * sub_d39d00b5 - sub_b1b71cd9) + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_d39d00b5 * (4 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_b1b71cd9 * (4 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) / sub_b1b71cd9) + 4
        return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -((4 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + ((4 * sub_d39d00b5 - sub_b1b71cd9) + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_d39d00b5 * (4 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_b1b71cd9 * (4 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) / sub_b1b71cd9) + 4)
    if ext_call.return_data[0] != 3:
        if 4 == ext_call.return_data[0]:
            require ext_code.size(skillsAddress)
            staticcall skillsAddress.get_skills(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[ceil32(return_data.size) + 96 len 1152] = ext_call.return_data[0 len 1152]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 1152
            require ceil32(return_data.size) + 127 < ceil32(return_data.size) + return_data.size + 96
            if not bool((2 * ceil32(return_data.size)) + 1248 <= test266151307()):
                revert with 0, 65
            require return_data.size >= 1152
            s = ceil32(return_data.size) + 96
            t = (2 * ceil32(return_data.size)) + 96
            idx = 0
            while idx < 36:
                require mem[s] == mem[s + 31 len 1]
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            if mem[(2 * ceil32(return_data.size)) + 543 len 1] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 6 > !(2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])):
                revert with 0, 17
            require ext_code.size(sub_2f03e688Address)
            staticcall sub_2f03e688Address.ability_scores(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(2 * ceil32(return_data.size)) + 1248 len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 192
            require ext_call.return_data[0] == ext_call.return_data[28 len 4]
            require ext_call.return_data[32] == ext_call.return_data[60 len 4]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_call.return_data[96] == ext_call.return_data[124 len 4]
            require ext_call.return_data[128] == ext_call.return_data[156 len 4]
            require ext_call.return_data[160] == ext_call.return_data[188 len 4]
            if ext_call.return_data[124 len 4] > -ext_call.return_data[156 len 4] + test266151307():
                revert with 0, 17
            if uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4]) > -ext_call.return_data[188 len 4] + test266151307():
                revert with 0, 17
            if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + 6 > !(uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2):
                revert with 0, 17
            if not (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 6:
                return 0
            if sub_b1b71cd9 <= sub_d39d00b5:
                if sub_b1b71cd9 >= sub_d39d00b5:
                    mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 6
                    return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 6)
                if sub_d39d00b5 < sub_b1b71cd9:
                    revert with 0, 17
                if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 6 and sub_d39d00b5 - sub_b1b71cd9 > -1 / (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 6:
                    revert with 0, 17
                if not sub_b1b71cd9:
                    revert with 0, 18
                if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 6 > !((6 * sub_d39d00b5) - (6 * sub_b1b71cd9) + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) / sub_b1b71cd9):
                    revert with 0, 17
                mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + ((6 * sub_d39d00b5) - (6 * sub_b1b71cd9) + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) / sub_b1b71cd9) + 6
                return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + ((6 * sub_d39d00b5) - (6 * sub_b1b71cd9) + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) / sub_b1b71cd9) + 6)
            if sub_b1b71cd9 >= 20000:
                if sub_b1b71cd9 >= sub_d39d00b5:
                    return 0
                if sub_d39d00b5 < sub_b1b71cd9:
                    revert with 0, 17
                if False and sub_d39d00b5 - sub_b1b71cd9 > 0:
                    revert with 0, 17
                if not sub_b1b71cd9:
                    revert with 0, 18
                if 0 > !(0 / sub_b1b71cd9):
                    revert with 0, 17
                return (0 / sub_b1b71cd9)
            if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 6 and sub_b1b71cd9 > -1 / (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 6:
                revert with 0, 17
            if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 6 < (6 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000:
                revert with 0, 17
            if sub_b1b71cd9 >= sub_d39d00b5:
                mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -((6 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 6
                return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -((6 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 6)
            if sub_d39d00b5 < sub_b1b71cd9:
                revert with 0, 17
            if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -((6 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 6 and sub_d39d00b5 - sub_b1b71cd9 > -1 / (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -((6 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 6:
                revert with 0, 17
            if not sub_b1b71cd9:
                revert with 0, 18
            if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -((6 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 6 > !((6 * sub_d39d00b5) - (6 * sub_b1b71cd9) + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_d39d00b5 * (6 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_b1b71cd9 * (6 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) / sub_b1b71cd9):
                revert with 0, 17
            mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -((6 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + ((6 * sub_d39d00b5) - (6 * sub_b1b71cd9) + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_d39d00b5 * (6 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_b1b71cd9 * (6 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) / sub_b1b71cd9) + 6
            return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -((6 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + ((6 * sub_d39d00b5) - (6 * sub_b1b71cd9) + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_d39d00b5 * (6 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_b1b71cd9 * (6 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) / sub_b1b71cd9) + 6)
        if 5 == ext_call.return_data[0]:
            require ext_code.size(skillsAddress)
            staticcall skillsAddress.get_skills(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[ceil32(return_data.size) + 96 len 1152] = ext_call.return_data[0 len 1152]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 1152
            require ceil32(return_data.size) + 127 < ceil32(return_data.size) + return_data.size + 96
            if not bool((2 * ceil32(return_data.size)) + 1248 <= test266151307()):
                revert with 0, 65
            require return_data.size >= 1152
            s = ceil32(return_data.size) + 96
            t = (2 * ceil32(return_data.size)) + 96
            idx = 0
            while idx < 36:
                require mem[s] == mem[s + 31 len 1]
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            if mem[(2 * ceil32(return_data.size)) + 543 len 1] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])):
                revert with 0, 17
            require ext_code.size(sub_2f03e688Address)
            staticcall sub_2f03e688Address.ability_scores(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(2 * ceil32(return_data.size)) + 1248 len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 192
            require ext_call.return_data[0] == ext_call.return_data[28 len 4]
            require ext_call.return_data[32] == ext_call.return_data[60 len 4]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_call.return_data[96] == ext_call.return_data[124 len 4]
            require ext_call.return_data[128] == ext_call.return_data[156 len 4]
            require ext_call.return_data[160] == ext_call.return_data[188 len 4]
            if ext_call.return_data[124 len 4] > -ext_call.return_data[156 len 4] + test266151307():
                revert with 0, 17
            if uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4]) > -ext_call.return_data[188 len 4] + test266151307():
                revert with 0, 17
            if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + 1 > !(uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2):
                revert with 0, 17
            if not (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1:
                return 0
            if sub_b1b71cd9 <= sub_d39d00b5:
                if sub_b1b71cd9 >= sub_d39d00b5:
                    mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1
                    return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1)
                if sub_d39d00b5 < sub_b1b71cd9:
                    revert with 0, 17
                if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1 and sub_d39d00b5 - sub_b1b71cd9 > -1 / (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1:
                    revert with 0, 17
                if not sub_b1b71cd9:
                    revert with 0, 18
                if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1 > !(sub_d39d00b5 - sub_b1b71cd9 + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) / sub_b1b71cd9):
                    revert with 0, 17
                mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + (sub_d39d00b5 - sub_b1b71cd9 + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) / sub_b1b71cd9) + 1
                return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + (sub_d39d00b5 - sub_b1b71cd9 + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) / sub_b1b71cd9) + 1)
            if sub_b1b71cd9 >= 20000:
                if sub_b1b71cd9 >= sub_d39d00b5:
                    return 0
                if sub_d39d00b5 < sub_b1b71cd9:
                    revert with 0, 17
                if False and sub_d39d00b5 - sub_b1b71cd9 > 0:
                    revert with 0, 17
                if not sub_b1b71cd9:
                    revert with 0, 18
                if 0 > !(0 / sub_b1b71cd9):
                    revert with 0, 17
                return (0 / sub_b1b71cd9)
            if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1 and sub_b1b71cd9 > -1 / (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1:
                revert with 0, 17
            if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1 < sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000:
                revert with 0, 17
            if sub_b1b71cd9 >= sub_d39d00b5:
                mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 1
                return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 1)
            if sub_d39d00b5 < sub_b1b71cd9:
                revert with 0, 17
            if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 1 and sub_d39d00b5 - sub_b1b71cd9 > -1 / (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 1:
                revert with 0, 17
            if not sub_b1b71cd9:
                revert with 0, 18
            if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 1 > !(sub_d39d00b5 - sub_b1b71cd9 + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_d39d00b5 * sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_b1b71cd9 * sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) / sub_b1b71cd9):
                revert with 0, 17
            mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_d39d00b5 - sub_b1b71cd9 + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_d39d00b5 * sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_b1b71cd9 * sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) / sub_b1b71cd9) + 1
            return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_d39d00b5 - sub_b1b71cd9 + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_d39d00b5 * sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_b1b71cd9 * sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) / sub_b1b71cd9) + 1)
        if ext_call.return_data[0] != 6:
            if 7 == ext_call.return_data[0]:
                require ext_code.size(skillsAddress)
                staticcall skillsAddress.get_skills(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[ceil32(return_data.size) + 96 len 1152] = ext_call.return_data[0 len 1152]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 1152
                require ceil32(return_data.size) + 127 < ceil32(return_data.size) + return_data.size + 96
                if not bool((2 * ceil32(return_data.size)) + 1248 <= test266151307()):
                    revert with 0, 65
                require return_data.size >= 1152
                s = ceil32(return_data.size) + 96
                t = (2 * ceil32(return_data.size)) + 96
                idx = 0
                while idx < 36:
                    require mem[s] == mem[s + 31 len 1]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                if mem[(2 * ceil32(return_data.size)) + 543 len 1] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])):
                    revert with 0, 17
                require ext_code.size(sub_2f03e688Address)
                staticcall sub_2f03e688Address.ability_scores(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[(2 * ceil32(return_data.size)) + 1248 len 192] = ext_call.return_data[0 len 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 192
                require ext_call.return_data[0] == ext_call.return_data[28 len 4]
                require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_call.return_data[96] == ext_call.return_data[124 len 4]
                require ext_call.return_data[128] == ext_call.return_data[156 len 4]
                require ext_call.return_data[160] == ext_call.return_data[188 len 4]
                if ext_call.return_data[124 len 4] > -ext_call.return_data[156 len 4] + test266151307():
                    revert with 0, 17
                if uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4]) > -ext_call.return_data[188 len 4] + test266151307():
                    revert with 0, 17
                if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + 1 > !(uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2):
                    revert with 0, 17
                if not (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1:
                    return 0
                if sub_b1b71cd9 <= sub_d39d00b5:
                    if sub_b1b71cd9 >= sub_d39d00b5:
                        mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1
                        return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1)
                    if sub_d39d00b5 < sub_b1b71cd9:
                        revert with 0, 17
                    if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1 and sub_d39d00b5 - sub_b1b71cd9 > -1 / (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1:
                        revert with 0, 17
                    if not sub_b1b71cd9:
                        revert with 0, 18
                    if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1 > !(sub_d39d00b5 - sub_b1b71cd9 + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) / sub_b1b71cd9):
                        revert with 0, 17
                    mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + (sub_d39d00b5 - sub_b1b71cd9 + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) / sub_b1b71cd9) + 1
                    return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + (sub_d39d00b5 - sub_b1b71cd9 + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) / sub_b1b71cd9) + 1)
                if sub_b1b71cd9 >= 20000:
                    if sub_b1b71cd9 >= sub_d39d00b5:
                        return 0
                    if sub_d39d00b5 < sub_b1b71cd9:
                        revert with 0, 17
                    if False and sub_d39d00b5 - sub_b1b71cd9 > 0:
                        revert with 0, 17
                    if not sub_b1b71cd9:
                        revert with 0, 18
                    if 0 > !(0 / sub_b1b71cd9):
                        revert with 0, 17
                    return (0 / sub_b1b71cd9)
                if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1 and sub_b1b71cd9 > -1 / (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1:
                    revert with 0, 17
                if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1 < sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000:
                    revert with 0, 17
                if sub_b1b71cd9 >= sub_d39d00b5:
                    mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 1
                    return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 1)
                if sub_d39d00b5 < sub_b1b71cd9:
                    revert with 0, 17
                if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 1 and sub_d39d00b5 - sub_b1b71cd9 > -1 / (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 1:
                    revert with 0, 17
                if not sub_b1b71cd9:
                    revert with 0, 18
                if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 1 > !(sub_d39d00b5 - sub_b1b71cd9 + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_d39d00b5 * sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_b1b71cd9 * sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) / sub_b1b71cd9):
                    revert with 0, 17
                mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_d39d00b5 - sub_b1b71cd9 + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_d39d00b5 * sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_b1b71cd9 * sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) / sub_b1b71cd9) + 1
                return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_d39d00b5 - sub_b1b71cd9 + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_d39d00b5 * sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_b1b71cd9 * sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) / sub_b1b71cd9) + 1)
            if 8 == ext_call.return_data[0]:
                require ext_code.size(skillsAddress)
                staticcall skillsAddress.get_skills(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[ceil32(return_data.size) + 96 len 1152] = ext_call.return_data[0 len 1152]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 1152
                require ceil32(return_data.size) + 127 < ceil32(return_data.size) + return_data.size + 96
                if not bool((2 * ceil32(return_data.size)) + 1248 <= test266151307()):
                    revert with 0, 65
                require return_data.size >= 1152
                s = ceil32(return_data.size) + 96
                t = (2 * ceil32(return_data.size)) + 96
                idx = 0
                while idx < 36:
                    require mem[s] == mem[s + 31 len 1]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                if mem[(2 * ceil32(return_data.size)) + 543 len 1] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 4 > !(2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])):
                    revert with 0, 17
                require ext_code.size(sub_2f03e688Address)
                staticcall sub_2f03e688Address.ability_scores(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[(2 * ceil32(return_data.size)) + 1248 len 192] = ext_call.return_data[0 len 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 192
                require ext_call.return_data[0] == ext_call.return_data[28 len 4]
                require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_call.return_data[96] == ext_call.return_data[124 len 4]
                require ext_call.return_data[128] == ext_call.return_data[156 len 4]
                require ext_call.return_data[160] == ext_call.return_data[188 len 4]
                if ext_call.return_data[124 len 4] > -ext_call.return_data[156 len 4] + test266151307():
                    revert with 0, 17
                if uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4]) > -ext_call.return_data[188 len 4] + test266151307():
                    revert with 0, 17
                if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + 4 > !(uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2):
                    revert with 0, 17
                if not (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 4:
                    return 0
                if sub_b1b71cd9 <= sub_d39d00b5:
                    if sub_b1b71cd9 >= sub_d39d00b5:
                        mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 4
                        return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 4)
                    if sub_d39d00b5 < sub_b1b71cd9:
                        revert with 0, 17
                    if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 4 and sub_d39d00b5 - sub_b1b71cd9 > -1 / (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 4:
                        revert with 0, 17
                    if not sub_b1b71cd9:
                        revert with 0, 18
                    if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 4 > !((4 * sub_d39d00b5 - sub_b1b71cd9) + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) / sub_b1b71cd9):
                        revert with 0, 17
                    mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + ((4 * sub_d39d00b5 - sub_b1b71cd9) + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) / sub_b1b71cd9) + 4
                    return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + ((4 * sub_d39d00b5 - sub_b1b71cd9) + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) / sub_b1b71cd9) + 4)
                if sub_b1b71cd9 >= 20000:
                    if sub_b1b71cd9 >= sub_d39d00b5:
                        return 0
                    if sub_d39d00b5 < sub_b1b71cd9:
                        revert with 0, 17
                    if False and sub_d39d00b5 - sub_b1b71cd9 > 0:
                        revert with 0, 17
                    if not sub_b1b71cd9:
                        revert with 0, 18
                    if 0 > !(0 / sub_b1b71cd9):
                        revert with 0, 17
                    return (0 / sub_b1b71cd9)
                if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 4 and sub_b1b71cd9 > -1 / (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 4:
                    revert with 0, 17
                if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 4 < (4 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000:
                    revert with 0, 17
                if sub_b1b71cd9 >= sub_d39d00b5:
                    mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -((4 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 4
                    return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -((4 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 4)
                if sub_d39d00b5 < sub_b1b71cd9:
                    revert with 0, 17
                if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -((4 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 4 and sub_d39d00b5 - sub_b1b71cd9 > -1 / (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -((4 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 4:
                    revert with 0, 17
                if not sub_b1b71cd9:
                    revert with 0, 18
                if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -((4 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 4 > !((4 * sub_d39d00b5 - sub_b1b71cd9) + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_d39d00b5 * (4 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_b1b71cd9 * (4 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) / sub_b1b71cd9):
                    revert with 0, 17
                mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -((4 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + ((4 * sub_d39d00b5 - sub_b1b71cd9) + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_d39d00b5 * (4 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_b1b71cd9 * (4 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) / sub_b1b71cd9) + 4
                return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -((4 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + ((4 * sub_d39d00b5 - sub_b1b71cd9) + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_d39d00b5 * (4 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_b1b71cd9 * (4 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) / sub_b1b71cd9) + 4)
            if 9 == ext_call.return_data[0]:
                require ext_code.size(skillsAddress)
                staticcall skillsAddress.get_skills(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[ceil32(return_data.size) + 96 len 1152] = ext_call.return_data[0 len 1152]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 1152
                require ceil32(return_data.size) + 127 < ceil32(return_data.size) + return_data.size + 96
                if not bool((2 * ceil32(return_data.size)) + 1248 <= test266151307()):
                    revert with 0, 65
                require return_data.size >= 1152
                s = ceil32(return_data.size) + 96
                t = (2 * ceil32(return_data.size)) + 96
                idx = 0
                while idx < 36:
                    require mem[s] == mem[s + 31 len 1]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                if mem[(2 * ceil32(return_data.size)) + 543 len 1] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])):
                    revert with 0, 17
                require ext_code.size(sub_2f03e688Address)
                staticcall sub_2f03e688Address.ability_scores(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[(2 * ceil32(return_data.size)) + 1248 len 192] = ext_call.return_data[0 len 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 192
                require ext_call.return_data[0] == ext_call.return_data[28 len 4]
                require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_call.return_data[96] == ext_call.return_data[124 len 4]
                require ext_call.return_data[128] == ext_call.return_data[156 len 4]
                require ext_call.return_data[160] == ext_call.return_data[188 len 4]
                if ext_call.return_data[124 len 4] > -ext_call.return_data[156 len 4] + test266151307():
                    revert with 0, 17
                if uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4]) > -ext_call.return_data[188 len 4] + test266151307():
                    revert with 0, 17
                if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + 1 > !(uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2):
                    revert with 0, 17
                if not (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1:
                    return 0
                if sub_b1b71cd9 <= sub_d39d00b5:
                    if sub_b1b71cd9 >= sub_d39d00b5:
                        mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1
                        return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1)
                    if sub_d39d00b5 < sub_b1b71cd9:
                        revert with 0, 17
                    if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1 and sub_d39d00b5 - sub_b1b71cd9 > -1 / (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1:
                        revert with 0, 17
                    if not sub_b1b71cd9:
                        revert with 0, 18
                    if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1 > !(sub_d39d00b5 - sub_b1b71cd9 + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) / sub_b1b71cd9):
                        revert with 0, 17
                    mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + (sub_d39d00b5 - sub_b1b71cd9 + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) / sub_b1b71cd9) + 1
                    return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + (sub_d39d00b5 - sub_b1b71cd9 + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) / sub_b1b71cd9) + 1)
                if sub_b1b71cd9 >= 20000:
                    if sub_b1b71cd9 >= sub_d39d00b5:
                        return 0
                    if sub_d39d00b5 < sub_b1b71cd9:
                        revert with 0, 17
                    if False and sub_d39d00b5 - sub_b1b71cd9 > 0:
                        revert with 0, 17
                    if not sub_b1b71cd9:
                        revert with 0, 18
                    if 0 > !(0 / sub_b1b71cd9):
                        revert with 0, 17
                    return (0 / sub_b1b71cd9)
                if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1 and sub_b1b71cd9 > -1 / (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1:
                    revert with 0, 17
                if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1 < sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000:
                    revert with 0, 17
                if sub_b1b71cd9 >= sub_d39d00b5:
                    mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 1
                    return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 1)
                if sub_d39d00b5 < sub_b1b71cd9:
                    revert with 0, 17
                if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 1 and sub_d39d00b5 - sub_b1b71cd9 > -1 / (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 1:
                    revert with 0, 17
                if not sub_b1b71cd9:
                    revert with 0, 18
                if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 1 > !(sub_d39d00b5 - sub_b1b71cd9 + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_d39d00b5 * sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_b1b71cd9 * sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) / sub_b1b71cd9):
                    revert with 0, 17
                mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_d39d00b5 - sub_b1b71cd9 + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_d39d00b5 * sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_b1b71cd9 * sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) / sub_b1b71cd9) + 1
                return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_d39d00b5 - sub_b1b71cd9 + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_d39d00b5 * sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_b1b71cd9 * sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) / sub_b1b71cd9) + 1)
            if 10 == ext_call.return_data[0]:
                require ext_code.size(skillsAddress)
                staticcall skillsAddress.get_skills(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[ceil32(return_data.size) + 96 len 1152] = ext_call.return_data[0 len 1152]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 1152
                require ceil32(return_data.size) + 127 < ceil32(return_data.size) + return_data.size + 96
                if not bool((2 * ceil32(return_data.size)) + 1248 <= test266151307()):
                    revert with 0, 65
                require return_data.size >= 1152
                s = ceil32(return_data.size) + 96
                t = (2 * ceil32(return_data.size)) + 96
                idx = 0
                while idx < 36:
                    require mem[s] == mem[s + 31 len 1]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                if mem[(2 * ceil32(return_data.size)) + 543 len 1] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])):
                    revert with 0, 17
                require ext_code.size(sub_2f03e688Address)
                staticcall sub_2f03e688Address.ability_scores(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[(2 * ceil32(return_data.size)) + 1248 len 192] = ext_call.return_data[0 len 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 192
                require ext_call.return_data[0] == ext_call.return_data[28 len 4]
                require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_call.return_data[96] == ext_call.return_data[124 len 4]
                require ext_call.return_data[128] == ext_call.return_data[156 len 4]
                require ext_call.return_data[160] == ext_call.return_data[188 len 4]
                if ext_call.return_data[124 len 4] > -ext_call.return_data[156 len 4] + test266151307():
                    revert with 0, 17
                if uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4]) > -ext_call.return_data[188 len 4] + test266151307():
                    revert with 0, 17
                if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + 1 > !(uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2):
                    revert with 0, 17
                if not (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1:
                    return 0
                if sub_b1b71cd9 <= sub_d39d00b5:
                    if sub_b1b71cd9 >= sub_d39d00b5:
                        mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1
                        return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1)
                    if sub_d39d00b5 < sub_b1b71cd9:
                        revert with 0, 17
                    if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1 and sub_d39d00b5 - sub_b1b71cd9 > -1 / (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1:
                        revert with 0, 17
                    if not sub_b1b71cd9:
                        revert with 0, 18
                    if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1 > !(sub_d39d00b5 - sub_b1b71cd9 + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) / sub_b1b71cd9):
                        revert with 0, 17
                    mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + (sub_d39d00b5 - sub_b1b71cd9 + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) / sub_b1b71cd9) + 1
                    return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + (sub_d39d00b5 - sub_b1b71cd9 + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) / sub_b1b71cd9) + 1)
                if sub_b1b71cd9 >= 20000:
                    if sub_b1b71cd9 >= sub_d39d00b5:
                        return 0
                    if sub_d39d00b5 < sub_b1b71cd9:
                        revert with 0, 17
                    if False and sub_d39d00b5 - sub_b1b71cd9 > 0:
                        revert with 0, 17
                    if not sub_b1b71cd9:
                        revert with 0, 18
                    if 0 > !(0 / sub_b1b71cd9):
                        revert with 0, 17
                    return (0 / sub_b1b71cd9)
                if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1 and sub_b1b71cd9 > -1 / (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1:
                    revert with 0, 17
                if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 1 < sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000:
                    revert with 0, 17
                if sub_b1b71cd9 >= sub_d39d00b5:
                    mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 1
                    return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 1)
                if sub_d39d00b5 < sub_b1b71cd9:
                    revert with 0, 17
                if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 1 and sub_d39d00b5 - sub_b1b71cd9 > -1 / (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 1:
                    revert with 0, 17
                if not sub_b1b71cd9:
                    revert with 0, 18
                if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 1 > !(sub_d39d00b5 - sub_b1b71cd9 + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_d39d00b5 * sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_b1b71cd9 * sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) / sub_b1b71cd9):
                    revert with 0, 17
                mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_d39d00b5 - sub_b1b71cd9 + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_d39d00b5 * sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_b1b71cd9 * sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) / sub_b1b71cd9) + 1
                return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -(sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_d39d00b5 - sub_b1b71cd9 + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_d39d00b5 * sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_b1b71cd9 * sub_b1b71cd9 + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) / sub_b1b71cd9) + 1)
            if ext_call.return_data[0] != 11:
                require ext_code.size(skillsAddress)
                staticcall skillsAddress.get_skills(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[ceil32(return_data.size) + 96 len 1152] = ext_call.return_data[0 len 1152]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 1152
                require ceil32(return_data.size) + 127 < ceil32(return_data.size) + return_data.size + 96
                if not bool((2 * ceil32(return_data.size)) + 1248 <= test266151307()):
                    revert with 0, 65
                require return_data.size >= 1152
                s = ceil32(return_data.size) + 96
                t = (2 * ceil32(return_data.size)) + 96
                idx = 0
                while idx < 36:
                    require mem[s] == mem[s + 31 len 1]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                if mem[(2 * ceil32(return_data.size)) + 543 len 1] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 0 > !(2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])):
                    revert with 0, 17
                require ext_code.size(sub_2f03e688Address)
                staticcall sub_2f03e688Address.ability_scores(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[(2 * ceil32(return_data.size)) + 1248 len 192] = ext_call.return_data[0 len 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 192
                require ext_call.return_data[0] == ext_call.return_data[28 len 4]
                require ext_call.return_data[32] == ext_call.return_data[60 len 4]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_call.return_data[96] == ext_call.return_data[124 len 4]
                require ext_call.return_data[128] == ext_call.return_data[156 len 4]
                require ext_call.return_data[160] == ext_call.return_data[188 len 4]
                if ext_call.return_data[124 len 4] > -ext_call.return_data[156 len 4] + test266151307():
                    revert with 0, 17
                if uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4]) > -ext_call.return_data[188 len 4] + test266151307():
                    revert with 0, 17
                if 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) > !(uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2):
                    revert with 0, 17
                if not (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2):
                    return 0
                if sub_b1b71cd9 <= sub_d39d00b5:
                    if sub_b1b71cd9 >= sub_d39d00b5:
                        mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2)
                        return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2))
                    if sub_d39d00b5 < sub_b1b71cd9:
                        revert with 0, 17
                    if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) and sub_d39d00b5 - sub_b1b71cd9 > -1 / (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2):
                        revert with 0, 17
                    if not sub_b1b71cd9:
                        revert with 0, 18
                    if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) > !((sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) / sub_b1b71cd9):
                        revert with 0, 17
                    mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + ((sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) / sub_b1b71cd9)
                    return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + ((sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) / sub_b1b71cd9))
                if sub_b1b71cd9 >= 20000:
                    if sub_b1b71cd9 >= sub_d39d00b5:
                        return 0
                    if sub_d39d00b5 < sub_b1b71cd9:
                        revert with 0, 17
                    if False and sub_d39d00b5 - sub_b1b71cd9 > 0:
                        revert with 0, 17
                    if not sub_b1b71cd9:
                        revert with 0, 18
                    if 0 > !(0 / sub_b1b71cd9):
                        revert with 0, 17
                    return (0 / sub_b1b71cd9)
                if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) and sub_b1b71cd9 > -1 / (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2):
                    revert with 0, 17
                if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) < (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000:
                    revert with 0, 17
                if sub_b1b71cd9 >= sub_d39d00b5:
                    mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000)
                    return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000))
                if sub_d39d00b5 < sub_b1b71cd9:
                    revert with 0, 17
                if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) and sub_d39d00b5 - sub_b1b71cd9 > -1 / (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000):
                    revert with 0, 17
                if not sub_b1b71cd9:
                    revert with 0, 18
                if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) > !((sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_d39d00b5 * (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_b1b71cd9 * (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) / sub_b1b71cd9):
                    revert with 0, 17
                mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + ((sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_d39d00b5 * (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_b1b71cd9 * (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) / sub_b1b71cd9)
                return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + ((sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_d39d00b5 * (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_b1b71cd9 * (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) / sub_b1b71cd9))
    require ext_code.size(skillsAddress)
    staticcall skillsAddress.get_skills(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 96 len 1152] = ext_call.return_data[0 len 1152]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 1152
    require ceil32(return_data.size) + 127 < ceil32(return_data.size) + return_data.size + 96
    if not bool((2 * ceil32(return_data.size)) + 1248 <= test266151307()):
        revert with 0, 65
    require return_data.size >= 1152
    s = ceil32(return_data.size) + 96
    t = (2 * ceil32(return_data.size)) + 96
    idx = 0
    while idx < 36:
        require mem[s] == mem[s + 31 len 1]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if mem[(2 * ceil32(return_data.size)) + 543 len 1] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 2 > !(2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])):
        revert with 0, 17
    require ext_code.size(sub_2f03e688Address)
    staticcall sub_2f03e688Address.ability_scores(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[(2 * ceil32(return_data.size)) + 1248 len 192] = ext_call.return_data[0 len 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_call.return_data[0] == ext_call.return_data[28 len 4]
    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[156 len 4]
    require ext_call.return_data[160] == ext_call.return_data[188 len 4]
    if ext_call.return_data[124 len 4] > -ext_call.return_data[156 len 4] + test266151307():
        revert with 0, 17
    if uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4]) > -ext_call.return_data[188 len 4] + test266151307():
        revert with 0, 17
    if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + 2 > !(uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2):
        revert with 0, 17
    if not (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 2:
        return 0
    if sub_b1b71cd9 <= sub_d39d00b5:
        if sub_b1b71cd9 >= sub_d39d00b5:
            mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 2
            return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 2)
        if sub_d39d00b5 < sub_b1b71cd9:
            revert with 0, 17
        if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 2 and sub_d39d00b5 - sub_b1b71cd9 > -1 / (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 2:
            revert with 0, 17
        if not sub_b1b71cd9:
            revert with 0, 18
        if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 2 > !((2 * sub_d39d00b5 - sub_b1b71cd9) + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) / sub_b1b71cd9):
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + ((2 * sub_d39d00b5 - sub_b1b71cd9) + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) / sub_b1b71cd9) + 2
        return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + ((2 * sub_d39d00b5 - sub_b1b71cd9) + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) / sub_b1b71cd9) + 2)
    if sub_b1b71cd9 >= 20000:
        if sub_b1b71cd9 >= sub_d39d00b5:
            return 0
        if sub_d39d00b5 < sub_b1b71cd9:
            revert with 0, 17
        if False and sub_d39d00b5 - sub_b1b71cd9 > 0:
            revert with 0, 17
        if not sub_b1b71cd9:
            revert with 0, 18
        if 0 > !(0 / sub_b1b71cd9):
            revert with 0, 17
        return (0 / sub_b1b71cd9)
    if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 2 and sub_b1b71cd9 > -1 / (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 2:
        revert with 0, 17
    if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + 2 < (2 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000:
        revert with 0, 17
    if sub_b1b71cd9 >= sub_d39d00b5:
        mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -((2 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 2
        return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -((2 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 2)
    if sub_d39d00b5 < sub_b1b71cd9:
        revert with 0, 17
    if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -((2 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 2 and sub_d39d00b5 - sub_b1b71cd9 > -1 / (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -((2 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 2:
        revert with 0, 17
    if not sub_b1b71cd9:
        revert with 0, 18
    if (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -((2 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + 2 > !((2 * sub_d39d00b5 - sub_b1b71cd9) + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_d39d00b5 * (2 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_b1b71cd9 * (2 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) / sub_b1b71cd9):
        revert with 0, 17
    mem[(4 * ceil32(return_data.size)) + 1248] = (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -((2 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + ((2 * sub_d39d00b5 - sub_b1b71cd9) + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_d39d00b5 * (2 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_b1b71cd9 * (2 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) / sub_b1b71cd9) + 2
    return ((2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) + -((2 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + ((2 * sub_d39d00b5 - sub_b1b71cd9) + (sub_d39d00b5 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) - (sub_b1b71cd9 * 2 * uint8(mem[(2 * ceil32(return_data.size)) + 512])) + (sub_d39d00b5 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_b1b71cd9 * uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2) - (sub_d39d00b5 * (2 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) + (sub_b1b71cd9 * (2 * sub_b1b71cd9) + (2 * uint8(mem[(2 * ceil32(return_data.size)) + 512]) * sub_b1b71cd9) + (uint32(ext_call.return_data[188 len 4] + uint32(ext_call.return_data[156 len 4] + ext_call.return_data[124 len 4])) / 2 * sub_b1b71cd9) / 20000) / sub_b1b71cd9) + 2)
}



}
