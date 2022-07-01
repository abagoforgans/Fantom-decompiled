contract main {




// =====================  Runtime code  =====================


const sub_988144e8(?) = 1000


address owner;
uint256 sub_ae7eac87;
uint256 sub_79aa3657;
mapping of struct rules;

function rules(address arg1) payable {
    require calldata.size - 4 >= 32
    return rules[arg1].field_0, rules[arg1].field_256, rules[arg1].field_512, bool(rules[arg1].field_768)
}

function sub_79aa3657(?) payable {
    return sub_79aa3657
}

function owner() payable {
    return owner
}

function sub_ae7eac87(?) payable {
    return sub_ae7eac87
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setDefFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= 1000
    sub_79aa3657 = arg1
    emit SetDefFee(arg1);
}

function setEoaFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= 1000
    sub_ae7eac87 = arg1
    emit SetEoaFee(arg1);
}

function setRuleStatus(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rules[address(arg1)].field_768 = uint8(arg2)
    emit SetRuleStatus(arg2, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setRule(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg2 <= 1000
    require arg3 <= 1000
    require arg4 <= 1000
    rules[address(arg1)].field_0 = arg2
    rules[address(arg1)].field_256 = arg3
    rules[address(arg1)].field_512 = arg4
    rules[address(arg1)].field_768 = uint8(arg5)
    emit SetRule(arg2, arg3, arg4, arg1);
    emit SetRuleStatus(arg5, arg1);
}

function checkDeflation(address arg1, address arg2, address arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if not rules[address(arg2)].field_768:
        if not rules[address(arg4)].field_768:
            if not rules[address(arg3)].field_768:
                if arg1 == arg2:
                    if sub_ae7eac87 > 0:
                        if not rules[address(arg2)].field_768:
                            if not rules[address(arg4)].field_768:
                                if not rules[address(arg3)].field_768:
                                    if not arg5:
                                        return 0
                                    if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                                    if sub_ae7eac87 * arg5 / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (sub_ae7eac87 * arg5 / 10000)
                if arg1 == arg2:
                    return 0
                if sub_79aa3657 <= 0:
                    return 0
                if rules[address(arg2)].field_768:
                    return 0
                if rules[address(arg4)].field_768:
                    return 0
                if rules[address(arg3)].field_768:
                    return 0
                if not arg5:
                    return 0
                if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                if sub_79aa3657 * arg5 / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_79aa3657 * arg5 / 10000)
            if not rules[address(arg3)].field_0:
                if arg1 == arg2:
                    if sub_ae7eac87 > 0:
                        if not rules[address(arg2)].field_768:
                            if not rules[address(arg4)].field_768:
                                if not rules[address(arg3)].field_768:
                                    if not arg5:
                                        return 0
                                    if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                                    if sub_ae7eac87 * arg5 / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (sub_ae7eac87 * arg5 / 10000)
                if arg1 == arg2:
                    return 0
                if sub_79aa3657 <= 0:
                    return 0
                if rules[address(arg2)].field_768:
                    return 0
                if rules[address(arg4)].field_768:
                    return 0
                if rules[address(arg3)].field_768:
                    return 0
                if not arg5:
                    return 0
                if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                if sub_79aa3657 * arg5 / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_79aa3657 * arg5 / 10000)
            if not arg5:
                if arg1 == arg2:
                    if sub_ae7eac87 > 0:
                        if not rules[address(arg2)].field_768:
                            if not rules[address(arg4)].field_768:
                                if not rules[address(arg3)].field_768:
                                    if not arg5:
                                        return 0
                                    if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                                    if sub_ae7eac87 * arg5 / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (sub_ae7eac87 * arg5 / 10000)
                if arg1 == arg2:
                    return 0
                if sub_79aa3657 <= 0:
                    return 0
                if rules[address(arg2)].field_768:
                    return 0
                if rules[address(arg4)].field_768:
                    return 0
                if rules[address(arg3)].field_768:
                    return 0
                if not arg5:
                    return 0
                if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                if sub_79aa3657 * arg5 / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_79aa3657 * arg5 / 10000)
            if rules[address(arg3)].field_0 * arg5 / arg5 != rules[address(arg3)].field_0:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
            if rules[address(arg3)].field_0 * arg5 / 10000 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if rules[address(arg3)].field_0 * arg5 / 10000:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if arg1 == arg2:
                if sub_ae7eac87 > 0:
                    if not rules[address(arg2)].field_768:
                        if not rules[address(arg4)].field_768:
                            if not rules[address(arg3)].field_768:
                                if not arg5:
                                    if rules[address(arg3)].field_0 * arg5 / 10000 < rules[address(arg3)].field_0 * arg5 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (rules[address(arg3)].field_0 * arg5 / 10000)
                                if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                                if (sub_ae7eac87 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) < rules[address(arg3)].field_0 * arg5 / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000))
            if rules[address(arg3)].field_0 * arg5 / 10000:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if arg1 == arg2:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if sub_79aa3657 <= 0:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if rules[address(arg2)].field_768:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if rules[address(arg4)].field_768:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if rules[address(arg3)].field_768:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if not arg5:
                if rules[address(arg3)].field_0 * arg5 / 10000 < rules[address(arg3)].field_0 * arg5 / 10000:
                    revert with 0, 'SafeMath: addition overflow'
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
            if (sub_79aa3657 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) < rules[address(arg3)].field_0 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000))
        if rules[address(arg4)].field_512 <= 0:
            if not rules[address(arg3)].field_768:
                if arg1 == arg2:
                    if sub_ae7eac87 > 0:
                        if not rules[address(arg2)].field_768:
                            if not rules[address(arg4)].field_768:
                                if not rules[address(arg3)].field_768:
                                    if not arg5:
                                        return 0
                                    if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                                    if sub_ae7eac87 * arg5 / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (sub_ae7eac87 * arg5 / 10000)
                if arg1 == arg2:
                    return 0
                if sub_79aa3657 <= 0:
                    return 0
                if rules[address(arg2)].field_768:
                    return 0
                if rules[address(arg4)].field_768:
                    return 0
                if rules[address(arg3)].field_768:
                    return 0
                if not arg5:
                    return 0
                if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                if sub_79aa3657 * arg5 / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_79aa3657 * arg5 / 10000)
            if not rules[address(arg3)].field_0:
                if arg1 == arg2:
                    if sub_ae7eac87 > 0:
                        if not rules[address(arg2)].field_768:
                            if not rules[address(arg4)].field_768:
                                if not rules[address(arg3)].field_768:
                                    if not arg5:
                                        return 0
                                    if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                                    if sub_ae7eac87 * arg5 / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (sub_ae7eac87 * arg5 / 10000)
                if arg1 == arg2:
                    return 0
                if sub_79aa3657 <= 0:
                    return 0
                if rules[address(arg2)].field_768:
                    return 0
                if rules[address(arg4)].field_768:
                    return 0
                if rules[address(arg3)].field_768:
                    return 0
                if not arg5:
                    return 0
                if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                if sub_79aa3657 * arg5 / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_79aa3657 * arg5 / 10000)
            if not arg5:
                if arg1 == arg2:
                    if sub_ae7eac87 > 0:
                        if not rules[address(arg2)].field_768:
                            if not rules[address(arg4)].field_768:
                                if not rules[address(arg3)].field_768:
                                    if not arg5:
                                        return 0
                                    if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                                    if sub_ae7eac87 * arg5 / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (sub_ae7eac87 * arg5 / 10000)
                if arg1 == arg2:
                    return 0
                if sub_79aa3657 <= 0:
                    return 0
                if rules[address(arg2)].field_768:
                    return 0
                if rules[address(arg4)].field_768:
                    return 0
                if rules[address(arg3)].field_768:
                    return 0
                if not arg5:
                    return 0
                if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                if sub_79aa3657 * arg5 / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_79aa3657 * arg5 / 10000)
            if rules[address(arg3)].field_0 * arg5 / arg5 != rules[address(arg3)].field_0:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
            if rules[address(arg3)].field_0 * arg5 / 10000 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if rules[address(arg3)].field_0 * arg5 / 10000:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if arg1 == arg2:
                if sub_ae7eac87 > 0:
                    if not rules[address(arg2)].field_768:
                        if not rules[address(arg4)].field_768:
                            if not rules[address(arg3)].field_768:
                                if not arg5:
                                    if rules[address(arg3)].field_0 * arg5 / 10000 < rules[address(arg3)].field_0 * arg5 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (rules[address(arg3)].field_0 * arg5 / 10000)
                                if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                                if (sub_ae7eac87 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) < rules[address(arg3)].field_0 * arg5 / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000))
            if rules[address(arg3)].field_0 * arg5 / 10000:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if arg1 == arg2:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if sub_79aa3657 <= 0:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if rules[address(arg2)].field_768:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if rules[address(arg4)].field_768:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if rules[address(arg3)].field_768:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if not arg5:
                if rules[address(arg3)].field_0 * arg5 / 10000 < rules[address(arg3)].field_0 * arg5 / 10000:
                    revert with 0, 'SafeMath: addition overflow'
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
            if (sub_79aa3657 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) < rules[address(arg3)].field_0 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000))
        if not arg5:
            if not rules[address(arg3)].field_768:
                if arg1 == arg2:
                    if sub_ae7eac87 > 0:
                        if not rules[address(arg2)].field_768:
                            if not rules[address(arg4)].field_768:
                                if not rules[address(arg3)].field_768:
                                    if not arg5:
                                        return 0
                                    if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                                    if sub_ae7eac87 * arg5 / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (sub_ae7eac87 * arg5 / 10000)
                if arg1 == arg2:
                    return 0
                if sub_79aa3657 <= 0:
                    return 0
                if rules[address(arg2)].field_768:
                    return 0
                if rules[address(arg4)].field_768:
                    return 0
                if rules[address(arg3)].field_768:
                    return 0
                if not arg5:
                    return 0
                if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                if sub_79aa3657 * arg5 / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_79aa3657 * arg5 / 10000)
            if not rules[address(arg3)].field_0:
                if arg1 == arg2:
                    if sub_ae7eac87 > 0:
                        if not rules[address(arg2)].field_768:
                            if not rules[address(arg4)].field_768:
                                if not rules[address(arg3)].field_768:
                                    if not arg5:
                                        return 0
                                    if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                                    if sub_ae7eac87 * arg5 / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (sub_ae7eac87 * arg5 / 10000)
                if arg1 == arg2:
                    return 0
                if sub_79aa3657 <= 0:
                    return 0
                if rules[address(arg2)].field_768:
                    return 0
                if rules[address(arg4)].field_768:
                    return 0
                if rules[address(arg3)].field_768:
                    return 0
                if not arg5:
                    return 0
                if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                if sub_79aa3657 * arg5 / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_79aa3657 * arg5 / 10000)
            if not arg5:
                if arg1 == arg2:
                    if sub_ae7eac87 > 0:
                        if not rules[address(arg2)].field_768:
                            if not rules[address(arg4)].field_768:
                                if not rules[address(arg3)].field_768:
                                    if not arg5:
                                        return 0
                                    if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                                    if sub_ae7eac87 * arg5 / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (sub_ae7eac87 * arg5 / 10000)
                if arg1 == arg2:
                    return 0
                if sub_79aa3657 <= 0:
                    return 0
                if rules[address(arg2)].field_768:
                    return 0
                if rules[address(arg4)].field_768:
                    return 0
                if rules[address(arg3)].field_768:
                    return 0
                if not arg5:
                    return 0
                if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                if sub_79aa3657 * arg5 / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_79aa3657 * arg5 / 10000)
            if rules[address(arg3)].field_0 * arg5 / arg5 != rules[address(arg3)].field_0:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
            if rules[address(arg3)].field_0 * arg5 / 10000 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if rules[address(arg3)].field_0 * arg5 / 10000:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if arg1 == arg2:
                if sub_ae7eac87 > 0:
                    if not rules[address(arg2)].field_768:
                        if not rules[address(arg4)].field_768:
                            if not rules[address(arg3)].field_768:
                                if not arg5:
                                    if rules[address(arg3)].field_0 * arg5 / 10000 < rules[address(arg3)].field_0 * arg5 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (rules[address(arg3)].field_0 * arg5 / 10000)
                                if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                                if (sub_ae7eac87 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) < rules[address(arg3)].field_0 * arg5 / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000))
            if rules[address(arg3)].field_0 * arg5 / 10000:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if arg1 == arg2:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if sub_79aa3657 <= 0:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if rules[address(arg2)].field_768:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if rules[address(arg4)].field_768:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if rules[address(arg3)].field_768:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if not arg5:
                if rules[address(arg3)].field_0 * arg5 / 10000 < rules[address(arg3)].field_0 * arg5 / 10000:
                    revert with 0, 'SafeMath: addition overflow'
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
            if (sub_79aa3657 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) < rules[address(arg3)].field_0 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000))
        if rules[address(arg4)].field_512 * arg5 / arg5 != rules[address(arg4)].field_512:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
        if rules[address(arg4)].field_512 * arg5 / 10000 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not rules[address(arg3)].field_768:
            if rules[address(arg4)].field_512 * arg5 / 10000:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if arg1 == arg2:
                if sub_ae7eac87 > 0:
                    if not rules[address(arg2)].field_768:
                        if not rules[address(arg4)].field_768:
                            if not rules[address(arg3)].field_768:
                                if not arg5:
                                    if rules[address(arg4)].field_512 * arg5 / 10000 < rules[address(arg4)].field_512 * arg5 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (rules[address(arg4)].field_512 * arg5 / 10000)
                                if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                                if (sub_ae7eac87 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) < rules[address(arg4)].field_512 * arg5 / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
            if rules[address(arg4)].field_512 * arg5 / 10000:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if arg1 == arg2:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if sub_79aa3657 <= 0:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if rules[address(arg2)].field_768:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if rules[address(arg4)].field_768:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if rules[address(arg3)].field_768:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if not arg5:
                if rules[address(arg4)].field_512 * arg5 / 10000 < rules[address(arg4)].field_512 * arg5 / 10000:
                    revert with 0, 'SafeMath: addition overflow'
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
            if (sub_79aa3657 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) < rules[address(arg4)].field_512 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if not rules[address(arg3)].field_0:
            if rules[address(arg4)].field_512 * arg5 / 10000:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if arg1 == arg2:
                if sub_ae7eac87 > 0:
                    if not rules[address(arg2)].field_768:
                        if not rules[address(arg4)].field_768:
                            if not rules[address(arg3)].field_768:
                                if not arg5:
                                    if rules[address(arg4)].field_512 * arg5 / 10000 < rules[address(arg4)].field_512 * arg5 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (rules[address(arg4)].field_512 * arg5 / 10000)
                                if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                                if (sub_ae7eac87 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) < rules[address(arg4)].field_512 * arg5 / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
            if rules[address(arg4)].field_512 * arg5 / 10000:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if arg1 == arg2:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if sub_79aa3657 <= 0:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if rules[address(arg2)].field_768:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if rules[address(arg4)].field_768:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if rules[address(arg3)].field_768:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if not arg5:
                if rules[address(arg4)].field_512 * arg5 / 10000 < rules[address(arg4)].field_512 * arg5 / 10000:
                    revert with 0, 'SafeMath: addition overflow'
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
            if (sub_79aa3657 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) < rules[address(arg4)].field_512 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if not arg5:
            if rules[address(arg4)].field_512 * arg5 / 10000 < rules[address(arg4)].field_512 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            if rules[address(arg4)].field_512 * arg5 / 10000:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if arg1 == arg2:
                if sub_ae7eac87 > 0:
                    if not rules[address(arg2)].field_768:
                        if not rules[address(arg4)].field_768:
                            if not rules[address(arg3)].field_768:
                                if not arg5:
                                    if rules[address(arg4)].field_512 * arg5 / 10000 < rules[address(arg4)].field_512 * arg5 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (rules[address(arg4)].field_512 * arg5 / 10000)
                                if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                                if (sub_ae7eac87 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) < rules[address(arg4)].field_512 * arg5 / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
            if rules[address(arg4)].field_512 * arg5 / 10000:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if arg1 == arg2:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if sub_79aa3657 <= 0:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if rules[address(arg2)].field_768:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if rules[address(arg4)].field_768:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if rules[address(arg3)].field_768:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if not arg5:
                if rules[address(arg4)].field_512 * arg5 / 10000 < rules[address(arg4)].field_512 * arg5 / 10000:
                    revert with 0, 'SafeMath: addition overflow'
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
            if (sub_79aa3657 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) < rules[address(arg4)].field_512 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if rules[address(arg3)].field_0 * arg5 / arg5 != rules[address(arg3)].field_0:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
        if (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) < rules[address(arg4)].field_512 * arg5 / 10000:
            revert with 0, 'SafeMath: addition overflow'
        if (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000):
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if arg1 == arg2:
            if sub_ae7eac87 > 0:
                if not rules[address(arg2)].field_768:
                    if not rules[address(arg4)].field_768:
                        if not rules[address(arg3)].field_768:
                            if not arg5:
                                return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
                            if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                            if sub_ae7eac87 * arg5 / 10000 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000):
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if arg1 == arg2:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if sub_79aa3657 <= 0:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if rules[address(arg2)].field_768:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if rules[address(arg4)].field_768:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if rules[address(arg3)].field_768:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if not arg5:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
        if sub_79aa3657 * arg5 / 10000 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
    if rules[address(arg2)].field_256 <= 0:
        if not rules[address(arg4)].field_768:
            if not rules[address(arg3)].field_768:
                if arg1 == arg2:
                    if sub_ae7eac87 > 0:
                        if not rules[address(arg2)].field_768:
                            if not rules[address(arg4)].field_768:
                                if not rules[address(arg3)].field_768:
                                    if not arg5:
                                        return 0
                                    if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                                    if sub_ae7eac87 * arg5 / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (sub_ae7eac87 * arg5 / 10000)
                if arg1 == arg2:
                    return 0
                if sub_79aa3657 <= 0:
                    return 0
                if rules[address(arg2)].field_768:
                    return 0
                if rules[address(arg4)].field_768:
                    return 0
                if rules[address(arg3)].field_768:
                    return 0
                if not arg5:
                    return 0
                if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                if sub_79aa3657 * arg5 / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_79aa3657 * arg5 / 10000)
            if not rules[address(arg3)].field_0:
                if arg1 == arg2:
                    if sub_ae7eac87 > 0:
                        if not rules[address(arg2)].field_768:
                            if not rules[address(arg4)].field_768:
                                if not rules[address(arg3)].field_768:
                                    if not arg5:
                                        return 0
                                    if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                                    if sub_ae7eac87 * arg5 / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (sub_ae7eac87 * arg5 / 10000)
                if arg1 == arg2:
                    return 0
                if sub_79aa3657 <= 0:
                    return 0
                if rules[address(arg2)].field_768:
                    return 0
                if rules[address(arg4)].field_768:
                    return 0
                if rules[address(arg3)].field_768:
                    return 0
                if not arg5:
                    return 0
                if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                if sub_79aa3657 * arg5 / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_79aa3657 * arg5 / 10000)
            if not arg5:
                if arg1 == arg2:
                    if sub_ae7eac87 > 0:
                        if not rules[address(arg2)].field_768:
                            if not rules[address(arg4)].field_768:
                                if not rules[address(arg3)].field_768:
                                    if not arg5:
                                        return 0
                                    if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                                    if sub_ae7eac87 * arg5 / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (sub_ae7eac87 * arg5 / 10000)
                if arg1 == arg2:
                    return 0
                if sub_79aa3657 <= 0:
                    return 0
                if rules[address(arg2)].field_768:
                    return 0
                if rules[address(arg4)].field_768:
                    return 0
                if rules[address(arg3)].field_768:
                    return 0
                if not arg5:
                    return 0
                if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                if sub_79aa3657 * arg5 / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_79aa3657 * arg5 / 10000)
            if rules[address(arg3)].field_0 * arg5 / arg5 != rules[address(arg3)].field_0:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
            if rules[address(arg3)].field_0 * arg5 / 10000 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if rules[address(arg3)].field_0 * arg5 / 10000:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if arg1 == arg2:
                if sub_ae7eac87 > 0:
                    if not rules[address(arg2)].field_768:
                        if not rules[address(arg4)].field_768:
                            if not rules[address(arg3)].field_768:
                                if not arg5:
                                    if rules[address(arg3)].field_0 * arg5 / 10000 < rules[address(arg3)].field_0 * arg5 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (rules[address(arg3)].field_0 * arg5 / 10000)
                                if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                                if (sub_ae7eac87 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) < rules[address(arg3)].field_0 * arg5 / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000))
            if rules[address(arg3)].field_0 * arg5 / 10000:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if arg1 == arg2:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if sub_79aa3657 <= 0:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if rules[address(arg2)].field_768:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if rules[address(arg4)].field_768:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if rules[address(arg3)].field_768:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if not arg5:
                if rules[address(arg3)].field_0 * arg5 / 10000 < rules[address(arg3)].field_0 * arg5 / 10000:
                    revert with 0, 'SafeMath: addition overflow'
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
            if (sub_79aa3657 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) < rules[address(arg3)].field_0 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000))
        if rules[address(arg4)].field_512 <= 0:
            if not rules[address(arg3)].field_768:
                if arg1 == arg2:
                    if sub_ae7eac87 > 0:
                        if not rules[address(arg2)].field_768:
                            if not rules[address(arg4)].field_768:
                                if not rules[address(arg3)].field_768:
                                    if not arg5:
                                        return 0
                                    if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                                    if sub_ae7eac87 * arg5 / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (sub_ae7eac87 * arg5 / 10000)
                if arg1 == arg2:
                    return 0
                if sub_79aa3657 <= 0:
                    return 0
                if rules[address(arg2)].field_768:
                    return 0
                if rules[address(arg4)].field_768:
                    return 0
                if rules[address(arg3)].field_768:
                    return 0
                if not arg5:
                    return 0
                if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                if sub_79aa3657 * arg5 / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_79aa3657 * arg5 / 10000)
            if not rules[address(arg3)].field_0:
                if arg1 == arg2:
                    if sub_ae7eac87 > 0:
                        if not rules[address(arg2)].field_768:
                            if not rules[address(arg4)].field_768:
                                if not rules[address(arg3)].field_768:
                                    if not arg5:
                                        return 0
                                    if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                                    if sub_ae7eac87 * arg5 / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (sub_ae7eac87 * arg5 / 10000)
                if arg1 == arg2:
                    return 0
                if sub_79aa3657 <= 0:
                    return 0
                if rules[address(arg2)].field_768:
                    return 0
                if rules[address(arg4)].field_768:
                    return 0
                if rules[address(arg3)].field_768:
                    return 0
                if not arg5:
                    return 0
                if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                if sub_79aa3657 * arg5 / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_79aa3657 * arg5 / 10000)
            if not arg5:
                if arg1 == arg2:
                    if sub_ae7eac87 > 0:
                        if not rules[address(arg2)].field_768:
                            if not rules[address(arg4)].field_768:
                                if not rules[address(arg3)].field_768:
                                    if not arg5:
                                        return 0
                                    if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                                    if sub_ae7eac87 * arg5 / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (sub_ae7eac87 * arg5 / 10000)
                if arg1 == arg2:
                    return 0
                if sub_79aa3657 <= 0:
                    return 0
                if rules[address(arg2)].field_768:
                    return 0
                if rules[address(arg4)].field_768:
                    return 0
                if rules[address(arg3)].field_768:
                    return 0
                if not arg5:
                    return 0
                if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                if sub_79aa3657 * arg5 / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_79aa3657 * arg5 / 10000)
            if rules[address(arg3)].field_0 * arg5 / arg5 != rules[address(arg3)].field_0:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
            if rules[address(arg3)].field_0 * arg5 / 10000 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if rules[address(arg3)].field_0 * arg5 / 10000:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if arg1 == arg2:
                if sub_ae7eac87 > 0:
                    if not rules[address(arg2)].field_768:
                        if not rules[address(arg4)].field_768:
                            if not rules[address(arg3)].field_768:
                                if not arg5:
                                    if rules[address(arg3)].field_0 * arg5 / 10000 < rules[address(arg3)].field_0 * arg5 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (rules[address(arg3)].field_0 * arg5 / 10000)
                                if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                                if (sub_ae7eac87 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) < rules[address(arg3)].field_0 * arg5 / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000))
            if rules[address(arg3)].field_0 * arg5 / 10000:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if arg1 == arg2:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if sub_79aa3657 <= 0:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if rules[address(arg2)].field_768:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if rules[address(arg4)].field_768:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if rules[address(arg3)].field_768:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if not arg5:
                if rules[address(arg3)].field_0 * arg5 / 10000 < rules[address(arg3)].field_0 * arg5 / 10000:
                    revert with 0, 'SafeMath: addition overflow'
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
            if (sub_79aa3657 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) < rules[address(arg3)].field_0 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000))
        if not arg5:
            if not rules[address(arg3)].field_768:
                if arg1 == arg2:
                    if sub_ae7eac87 > 0:
                        if not rules[address(arg2)].field_768:
                            if not rules[address(arg4)].field_768:
                                if not rules[address(arg3)].field_768:
                                    if not arg5:
                                        return 0
                                    if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                                    if sub_ae7eac87 * arg5 / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (sub_ae7eac87 * arg5 / 10000)
                if arg1 == arg2:
                    return 0
                if sub_79aa3657 <= 0:
                    return 0
                if rules[address(arg2)].field_768:
                    return 0
                if rules[address(arg4)].field_768:
                    return 0
                if rules[address(arg3)].field_768:
                    return 0
                if not arg5:
                    return 0
                if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                if sub_79aa3657 * arg5 / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_79aa3657 * arg5 / 10000)
            if not rules[address(arg3)].field_0:
                if arg1 == arg2:
                    if sub_ae7eac87 > 0:
                        if not rules[address(arg2)].field_768:
                            if not rules[address(arg4)].field_768:
                                if not rules[address(arg3)].field_768:
                                    if not arg5:
                                        return 0
                                    if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                                    if sub_ae7eac87 * arg5 / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (sub_ae7eac87 * arg5 / 10000)
                if arg1 == arg2:
                    return 0
                if sub_79aa3657 <= 0:
                    return 0
                if rules[address(arg2)].field_768:
                    return 0
                if rules[address(arg4)].field_768:
                    return 0
                if rules[address(arg3)].field_768:
                    return 0
                if not arg5:
                    return 0
                if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                if sub_79aa3657 * arg5 / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_79aa3657 * arg5 / 10000)
            if not arg5:
                if arg1 == arg2:
                    if sub_ae7eac87 > 0:
                        if not rules[address(arg2)].field_768:
                            if not rules[address(arg4)].field_768:
                                if not rules[address(arg3)].field_768:
                                    if not arg5:
                                        return 0
                                    if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                                    if sub_ae7eac87 * arg5 / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (sub_ae7eac87 * arg5 / 10000)
                if arg1 == arg2:
                    return 0
                if sub_79aa3657 <= 0:
                    return 0
                if rules[address(arg2)].field_768:
                    return 0
                if rules[address(arg4)].field_768:
                    return 0
                if rules[address(arg3)].field_768:
                    return 0
                if not arg5:
                    return 0
                if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                if sub_79aa3657 * arg5 / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_79aa3657 * arg5 / 10000)
            if rules[address(arg3)].field_0 * arg5 / arg5 != rules[address(arg3)].field_0:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
            if rules[address(arg3)].field_0 * arg5 / 10000 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if rules[address(arg3)].field_0 * arg5 / 10000:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if arg1 == arg2:
                if sub_ae7eac87 > 0:
                    if not rules[address(arg2)].field_768:
                        if not rules[address(arg4)].field_768:
                            if not rules[address(arg3)].field_768:
                                if not arg5:
                                    if rules[address(arg3)].field_0 * arg5 / 10000 < rules[address(arg3)].field_0 * arg5 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (rules[address(arg3)].field_0 * arg5 / 10000)
                                if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                                if (sub_ae7eac87 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) < rules[address(arg3)].field_0 * arg5 / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000))
            if rules[address(arg3)].field_0 * arg5 / 10000:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if arg1 == arg2:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if sub_79aa3657 <= 0:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if rules[address(arg2)].field_768:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if rules[address(arg4)].field_768:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if rules[address(arg3)].field_768:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if not arg5:
                if rules[address(arg3)].field_0 * arg5 / 10000 < rules[address(arg3)].field_0 * arg5 / 10000:
                    revert with 0, 'SafeMath: addition overflow'
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
            if (sub_79aa3657 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) < rules[address(arg3)].field_0 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000))
        if rules[address(arg4)].field_512 * arg5 / arg5 != rules[address(arg4)].field_512:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
        if rules[address(arg4)].field_512 * arg5 / 10000 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not rules[address(arg3)].field_768:
            if rules[address(arg4)].field_512 * arg5 / 10000:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if arg1 == arg2:
                if sub_ae7eac87 > 0:
                    if not rules[address(arg2)].field_768:
                        if not rules[address(arg4)].field_768:
                            if not rules[address(arg3)].field_768:
                                if not arg5:
                                    if rules[address(arg4)].field_512 * arg5 / 10000 < rules[address(arg4)].field_512 * arg5 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (rules[address(arg4)].field_512 * arg5 / 10000)
                                if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                                if (sub_ae7eac87 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) < rules[address(arg4)].field_512 * arg5 / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
            if rules[address(arg4)].field_512 * arg5 / 10000:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if arg1 == arg2:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if sub_79aa3657 <= 0:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if rules[address(arg2)].field_768:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if rules[address(arg4)].field_768:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if rules[address(arg3)].field_768:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if not arg5:
                if rules[address(arg4)].field_512 * arg5 / 10000 < rules[address(arg4)].field_512 * arg5 / 10000:
                    revert with 0, 'SafeMath: addition overflow'
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
            if (sub_79aa3657 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) < rules[address(arg4)].field_512 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if not rules[address(arg3)].field_0:
            if rules[address(arg4)].field_512 * arg5 / 10000:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if arg1 == arg2:
                if sub_ae7eac87 > 0:
                    if not rules[address(arg2)].field_768:
                        if not rules[address(arg4)].field_768:
                            if not rules[address(arg3)].field_768:
                                if not arg5:
                                    if rules[address(arg4)].field_512 * arg5 / 10000 < rules[address(arg4)].field_512 * arg5 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (rules[address(arg4)].field_512 * arg5 / 10000)
                                if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                                if (sub_ae7eac87 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) < rules[address(arg4)].field_512 * arg5 / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
            if rules[address(arg4)].field_512 * arg5 / 10000:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if arg1 == arg2:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if sub_79aa3657 <= 0:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if rules[address(arg2)].field_768:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if rules[address(arg4)].field_768:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if rules[address(arg3)].field_768:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if not arg5:
                if rules[address(arg4)].field_512 * arg5 / 10000 < rules[address(arg4)].field_512 * arg5 / 10000:
                    revert with 0, 'SafeMath: addition overflow'
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
            if (sub_79aa3657 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) < rules[address(arg4)].field_512 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if not arg5:
            if rules[address(arg4)].field_512 * arg5 / 10000 < rules[address(arg4)].field_512 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            if rules[address(arg4)].field_512 * arg5 / 10000:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if arg1 == arg2:
                if sub_ae7eac87 > 0:
                    if not rules[address(arg2)].field_768:
                        if not rules[address(arg4)].field_768:
                            if not rules[address(arg3)].field_768:
                                if not arg5:
                                    if rules[address(arg4)].field_512 * arg5 / 10000 < rules[address(arg4)].field_512 * arg5 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (rules[address(arg4)].field_512 * arg5 / 10000)
                                if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                                if (sub_ae7eac87 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) < rules[address(arg4)].field_512 * arg5 / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
            if rules[address(arg4)].field_512 * arg5 / 10000:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if arg1 == arg2:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if sub_79aa3657 <= 0:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if rules[address(arg2)].field_768:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if rules[address(arg4)].field_768:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if rules[address(arg3)].field_768:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if not arg5:
                if rules[address(arg4)].field_512 * arg5 / 10000 < rules[address(arg4)].field_512 * arg5 / 10000:
                    revert with 0, 'SafeMath: addition overflow'
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
            if (sub_79aa3657 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) < rules[address(arg4)].field_512 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if rules[address(arg3)].field_0 * arg5 / arg5 != rules[address(arg3)].field_0:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
        if (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) < rules[address(arg4)].field_512 * arg5 / 10000:
            revert with 0, 'SafeMath: addition overflow'
        if (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000):
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if arg1 == arg2:
            if sub_ae7eac87 > 0:
                if not rules[address(arg2)].field_768:
                    if not rules[address(arg4)].field_768:
                        if not rules[address(arg3)].field_768:
                            if not arg5:
                                return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
                            if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                            if sub_ae7eac87 * arg5 / 10000 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000):
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if arg1 == arg2:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if sub_79aa3657 <= 0:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if rules[address(arg2)].field_768:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if rules[address(arg4)].field_768:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if rules[address(arg3)].field_768:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if not arg5:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
        if sub_79aa3657 * arg5 / 10000 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
    if not arg5:
        if not rules[address(arg4)].field_768:
            if not rules[address(arg3)].field_768:
                if arg1 == arg2:
                    if sub_ae7eac87 > 0:
                        if not rules[address(arg2)].field_768:
                            if not rules[address(arg4)].field_768:
                                if not rules[address(arg3)].field_768:
                                    if not arg5:
                                        return 0
                                    if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                                    if sub_ae7eac87 * arg5 / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (sub_ae7eac87 * arg5 / 10000)
                if arg1 == arg2:
                    return 0
                if sub_79aa3657 <= 0:
                    return 0
                if rules[address(arg2)].field_768:
                    return 0
                if rules[address(arg4)].field_768:
                    return 0
                if rules[address(arg3)].field_768:
                    return 0
                if not arg5:
                    return 0
                if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                if sub_79aa3657 * arg5 / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_79aa3657 * arg5 / 10000)
            if not rules[address(arg3)].field_0:
                if arg1 == arg2:
                    if sub_ae7eac87 > 0:
                        if not rules[address(arg2)].field_768:
                            if not rules[address(arg4)].field_768:
                                if not rules[address(arg3)].field_768:
                                    if not arg5:
                                        return 0
                                    if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                                    if sub_ae7eac87 * arg5 / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (sub_ae7eac87 * arg5 / 10000)
                if arg1 == arg2:
                    return 0
                if sub_79aa3657 <= 0:
                    return 0
                if rules[address(arg2)].field_768:
                    return 0
                if rules[address(arg4)].field_768:
                    return 0
                if rules[address(arg3)].field_768:
                    return 0
                if not arg5:
                    return 0
                if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                if sub_79aa3657 * arg5 / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_79aa3657 * arg5 / 10000)
            if not arg5:
                if arg1 == arg2:
                    if sub_ae7eac87 > 0:
                        if not rules[address(arg2)].field_768:
                            if not rules[address(arg4)].field_768:
                                if not rules[address(arg3)].field_768:
                                    if not arg5:
                                        return 0
                                    if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                                    if sub_ae7eac87 * arg5 / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (sub_ae7eac87 * arg5 / 10000)
                if arg1 == arg2:
                    return 0
                if sub_79aa3657 <= 0:
                    return 0
                if rules[address(arg2)].field_768:
                    return 0
                if rules[address(arg4)].field_768:
                    return 0
                if rules[address(arg3)].field_768:
                    return 0
                if not arg5:
                    return 0
                if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                if sub_79aa3657 * arg5 / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_79aa3657 * arg5 / 10000)
            if rules[address(arg3)].field_0 * arg5 / arg5 != rules[address(arg3)].field_0:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
            if rules[address(arg3)].field_0 * arg5 / 10000 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if rules[address(arg3)].field_0 * arg5 / 10000:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if arg1 == arg2:
                if sub_ae7eac87 > 0:
                    if not rules[address(arg2)].field_768:
                        if not rules[address(arg4)].field_768:
                            if not rules[address(arg3)].field_768:
                                if not arg5:
                                    if rules[address(arg3)].field_0 * arg5 / 10000 < rules[address(arg3)].field_0 * arg5 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (rules[address(arg3)].field_0 * arg5 / 10000)
                                if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                                if (sub_ae7eac87 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) < rules[address(arg3)].field_0 * arg5 / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000))
            if rules[address(arg3)].field_0 * arg5 / 10000:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if arg1 == arg2:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if sub_79aa3657 <= 0:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if rules[address(arg2)].field_768:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if rules[address(arg4)].field_768:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if rules[address(arg3)].field_768:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if not arg5:
                if rules[address(arg3)].field_0 * arg5 / 10000 < rules[address(arg3)].field_0 * arg5 / 10000:
                    revert with 0, 'SafeMath: addition overflow'
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
            if (sub_79aa3657 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) < rules[address(arg3)].field_0 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000))
        if rules[address(arg4)].field_512 <= 0:
            if not rules[address(arg3)].field_768:
                if arg1 == arg2:
                    if sub_ae7eac87 > 0:
                        if not rules[address(arg2)].field_768:
                            if not rules[address(arg4)].field_768:
                                if not rules[address(arg3)].field_768:
                                    if not arg5:
                                        return 0
                                    if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                                    if sub_ae7eac87 * arg5 / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (sub_ae7eac87 * arg5 / 10000)
                if arg1 == arg2:
                    return 0
                if sub_79aa3657 <= 0:
                    return 0
                if rules[address(arg2)].field_768:
                    return 0
                if rules[address(arg4)].field_768:
                    return 0
                if rules[address(arg3)].field_768:
                    return 0
                if not arg5:
                    return 0
                if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                if sub_79aa3657 * arg5 / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_79aa3657 * arg5 / 10000)
            if not rules[address(arg3)].field_0:
                if arg1 == arg2:
                    if sub_ae7eac87 > 0:
                        if not rules[address(arg2)].field_768:
                            if not rules[address(arg4)].field_768:
                                if not rules[address(arg3)].field_768:
                                    if not arg5:
                                        return 0
                                    if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                                    if sub_ae7eac87 * arg5 / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (sub_ae7eac87 * arg5 / 10000)
                if arg1 == arg2:
                    return 0
                if sub_79aa3657 <= 0:
                    return 0
                if rules[address(arg2)].field_768:
                    return 0
                if rules[address(arg4)].field_768:
                    return 0
                if rules[address(arg3)].field_768:
                    return 0
                if not arg5:
                    return 0
                if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                if sub_79aa3657 * arg5 / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_79aa3657 * arg5 / 10000)
            if not arg5:
                if arg1 == arg2:
                    if sub_ae7eac87 > 0:
                        if not rules[address(arg2)].field_768:
                            if not rules[address(arg4)].field_768:
                                if not rules[address(arg3)].field_768:
                                    if not arg5:
                                        return 0
                                    if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                                    if sub_ae7eac87 * arg5 / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (sub_ae7eac87 * arg5 / 10000)
                if arg1 == arg2:
                    return 0
                if sub_79aa3657 <= 0:
                    return 0
                if rules[address(arg2)].field_768:
                    return 0
                if rules[address(arg4)].field_768:
                    return 0
                if rules[address(arg3)].field_768:
                    return 0
                if not arg5:
                    return 0
                if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                if sub_79aa3657 * arg5 / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_79aa3657 * arg5 / 10000)
            if rules[address(arg3)].field_0 * arg5 / arg5 != rules[address(arg3)].field_0:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
            if rules[address(arg3)].field_0 * arg5 / 10000 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if rules[address(arg3)].field_0 * arg5 / 10000:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if arg1 == arg2:
                if sub_ae7eac87 > 0:
                    if not rules[address(arg2)].field_768:
                        if not rules[address(arg4)].field_768:
                            if not rules[address(arg3)].field_768:
                                if not arg5:
                                    if rules[address(arg3)].field_0 * arg5 / 10000 < rules[address(arg3)].field_0 * arg5 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (rules[address(arg3)].field_0 * arg5 / 10000)
                                if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                                if (sub_ae7eac87 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) < rules[address(arg3)].field_0 * arg5 / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000))
            if rules[address(arg3)].field_0 * arg5 / 10000:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if arg1 == arg2:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if sub_79aa3657 <= 0:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if rules[address(arg2)].field_768:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if rules[address(arg4)].field_768:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if rules[address(arg3)].field_768:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if not arg5:
                if rules[address(arg3)].field_0 * arg5 / 10000 < rules[address(arg3)].field_0 * arg5 / 10000:
                    revert with 0, 'SafeMath: addition overflow'
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
            if (sub_79aa3657 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) < rules[address(arg3)].field_0 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000))
        if not arg5:
            if not rules[address(arg3)].field_768:
                if arg1 == arg2:
                    if sub_ae7eac87 > 0:
                        if not rules[address(arg2)].field_768:
                            if not rules[address(arg4)].field_768:
                                if not rules[address(arg3)].field_768:
                                    if not arg5:
                                        return 0
                                    if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                                    if sub_ae7eac87 * arg5 / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (sub_ae7eac87 * arg5 / 10000)
                if arg1 == arg2:
                    return 0
                if sub_79aa3657 <= 0:
                    return 0
                if rules[address(arg2)].field_768:
                    return 0
                if rules[address(arg4)].field_768:
                    return 0
                if rules[address(arg3)].field_768:
                    return 0
                if not arg5:
                    return 0
                if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                if sub_79aa3657 * arg5 / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_79aa3657 * arg5 / 10000)
            if not rules[address(arg3)].field_0:
                if arg1 == arg2:
                    if sub_ae7eac87 > 0:
                        if not rules[address(arg2)].field_768:
                            if not rules[address(arg4)].field_768:
                                if not rules[address(arg3)].field_768:
                                    if not arg5:
                                        return 0
                                    if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                                    if sub_ae7eac87 * arg5 / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (sub_ae7eac87 * arg5 / 10000)
                if arg1 == arg2:
                    return 0
                if sub_79aa3657 <= 0:
                    return 0
                if rules[address(arg2)].field_768:
                    return 0
                if rules[address(arg4)].field_768:
                    return 0
                if rules[address(arg3)].field_768:
                    return 0
                if not arg5:
                    return 0
                if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                if sub_79aa3657 * arg5 / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_79aa3657 * arg5 / 10000)
            if not arg5:
                if arg1 == arg2:
                    if sub_ae7eac87 > 0:
                        if not rules[address(arg2)].field_768:
                            if not rules[address(arg4)].field_768:
                                if not rules[address(arg3)].field_768:
                                    if not arg5:
                                        return 0
                                    if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1157 len 31]
                                    if sub_ae7eac87 * arg5 / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (sub_ae7eac87 * arg5 / 10000)
                if arg1 == arg2:
                    return 0
                if sub_79aa3657 <= 0:
                    return 0
                if rules[address(arg2)].field_768:
                    return 0
                if rules[address(arg4)].field_768:
                    return 0
                if rules[address(arg3)].field_768:
                    return 0
                if not arg5:
                    return 0
                if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1157 len 31]
                if sub_79aa3657 * arg5 / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_79aa3657 * arg5 / 10000)
            if rules[address(arg3)].field_0 * arg5 / arg5 != rules[address(arg3)].field_0:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
            if rules[address(arg3)].field_0 * arg5 / 10000 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if rules[address(arg3)].field_0 * arg5 / 10000:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if arg1 == arg2:
                if sub_ae7eac87 > 0:
                    if not rules[address(arg2)].field_768:
                        if not rules[address(arg4)].field_768:
                            if not rules[address(arg3)].field_768:
                                if not arg5:
                                    if rules[address(arg3)].field_0 * arg5 / 10000 < rules[address(arg3)].field_0 * arg5 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (rules[address(arg3)].field_0 * arg5 / 10000)
                                if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1157 len 31]
                                if (sub_ae7eac87 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) < rules[address(arg3)].field_0 * arg5 / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000))
            if rules[address(arg3)].field_0 * arg5 / 10000:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if arg1 == arg2:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if sub_79aa3657 <= 0:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if rules[address(arg2)].field_768:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if rules[address(arg4)].field_768:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if rules[address(arg3)].field_768:
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if not arg5:
                if rules[address(arg3)].field_0 * arg5 / 10000 < rules[address(arg3)].field_0 * arg5 / 10000:
                    revert with 0, 'SafeMath: addition overflow'
                return (rules[address(arg3)].field_0 * arg5 / 10000)
            if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1157 len 31]
            if (sub_79aa3657 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) < rules[address(arg3)].field_0 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000))
        if rules[address(arg4)].field_512 * arg5 / arg5 != rules[address(arg4)].field_512:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
        if rules[address(arg4)].field_512 * arg5 / 10000 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not rules[address(arg3)].field_768:
            if rules[address(arg4)].field_512 * arg5 / 10000:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if arg1 == arg2:
                if sub_ae7eac87 > 0:
                    if not rules[address(arg2)].field_768:
                        if not rules[address(arg4)].field_768:
                            if not rules[address(arg3)].field_768:
                                if not arg5:
                                    if rules[address(arg4)].field_512 * arg5 / 10000 < rules[address(arg4)].field_512 * arg5 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (rules[address(arg4)].field_512 * arg5 / 10000)
                                if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                                if (sub_ae7eac87 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) < rules[address(arg4)].field_512 * arg5 / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
            if rules[address(arg4)].field_512 * arg5 / 10000:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if arg1 == arg2:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if sub_79aa3657 <= 0:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if rules[address(arg2)].field_768:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if rules[address(arg4)].field_768:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if rules[address(arg3)].field_768:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if not arg5:
                if rules[address(arg4)].field_512 * arg5 / 10000 < rules[address(arg4)].field_512 * arg5 / 10000:
                    revert with 0, 'SafeMath: addition overflow'
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
            if (sub_79aa3657 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) < rules[address(arg4)].field_512 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if not rules[address(arg3)].field_0:
            if rules[address(arg4)].field_512 * arg5 / 10000:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if arg1 == arg2:
                if sub_ae7eac87 > 0:
                    if not rules[address(arg2)].field_768:
                        if not rules[address(arg4)].field_768:
                            if not rules[address(arg3)].field_768:
                                if not arg5:
                                    if rules[address(arg4)].field_512 * arg5 / 10000 < rules[address(arg4)].field_512 * arg5 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (rules[address(arg4)].field_512 * arg5 / 10000)
                                if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                                if (sub_ae7eac87 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) < rules[address(arg4)].field_512 * arg5 / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
            if rules[address(arg4)].field_512 * arg5 / 10000:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if arg1 == arg2:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if sub_79aa3657 <= 0:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if rules[address(arg2)].field_768:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if rules[address(arg4)].field_768:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if rules[address(arg3)].field_768:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if not arg5:
                if rules[address(arg4)].field_512 * arg5 / 10000 < rules[address(arg4)].field_512 * arg5 / 10000:
                    revert with 0, 'SafeMath: addition overflow'
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
            if (sub_79aa3657 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) < rules[address(arg4)].field_512 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if not arg5:
            if rules[address(arg4)].field_512 * arg5 / 10000 < rules[address(arg4)].field_512 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            if rules[address(arg4)].field_512 * arg5 / 10000:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if arg1 == arg2:
                if sub_ae7eac87 > 0:
                    if not rules[address(arg2)].field_768:
                        if not rules[address(arg4)].field_768:
                            if not rules[address(arg3)].field_768:
                                if not arg5:
                                    if rules[address(arg4)].field_512 * arg5 / 10000 < rules[address(arg4)].field_512 * arg5 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (rules[address(arg4)].field_512 * arg5 / 10000)
                                if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1157 len 31]
                                if (sub_ae7eac87 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) < rules[address(arg4)].field_512 * arg5 / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
            if rules[address(arg4)].field_512 * arg5 / 10000:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if arg1 == arg2:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if sub_79aa3657 <= 0:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if rules[address(arg2)].field_768:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if rules[address(arg4)].field_768:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if rules[address(arg3)].field_768:
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if not arg5:
                if rules[address(arg4)].field_512 * arg5 / 10000 < rules[address(arg4)].field_512 * arg5 / 10000:
                    revert with 0, 'SafeMath: addition overflow'
                return (rules[address(arg4)].field_512 * arg5 / 10000)
            if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1157 len 31]
            if (sub_79aa3657 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) < rules[address(arg4)].field_512 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if rules[address(arg3)].field_0 * arg5 / arg5 != rules[address(arg3)].field_0:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
        if (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) < rules[address(arg4)].field_512 * arg5 / 10000:
            revert with 0, 'SafeMath: addition overflow'
        if (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000):
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if arg1 == arg2:
            if sub_ae7eac87 > 0:
                if not rules[address(arg2)].field_768:
                    if not rules[address(arg4)].field_768:
                        if not rules[address(arg3)].field_768:
                            if not arg5:
                                return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
                            if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1157 len 31]
                            if sub_ae7eac87 * arg5 / 10000 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000):
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if arg1 == arg2:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if sub_79aa3657 <= 0:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if rules[address(arg2)].field_768:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if rules[address(arg4)].field_768:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if rules[address(arg3)].field_768:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if not arg5:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
        if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1157 len 31]
        if sub_79aa3657 * arg5 / 10000 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000))
    if rules[address(arg2)].field_256 * arg5 / arg5 != rules[address(arg2)].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
    if rules[address(arg2)].field_256 * arg5 / 10000 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if not rules[address(arg4)].field_768:
        if not rules[address(arg3)].field_768:
            if rules[address(arg2)].field_256 * arg5 / 10000:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if arg1 == arg2:
                if sub_ae7eac87 > 0:
                    if not rules[address(arg2)].field_768:
                        if not rules[address(arg4)].field_768:
                            if not rules[address(arg3)].field_768:
                                if not arg5:
                                    if rules[address(arg2)].field_256 * arg5 / 10000 < rules[address(arg2)].field_256 * arg5 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (rules[address(arg2)].field_256 * arg5 / 10000)
                                if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                                if (sub_ae7eac87 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000) < rules[address(arg2)].field_256 * arg5 / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
            if rules[address(arg2)].field_256 * arg5 / 10000:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if arg1 == arg2:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if sub_79aa3657 <= 0:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if rules[address(arg2)].field_768:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if rules[address(arg4)].field_768:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if rules[address(arg3)].field_768:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if not arg5:
                if rules[address(arg2)].field_256 * arg5 / 10000 < rules[address(arg2)].field_256 * arg5 / 10000:
                    revert with 0, 'SafeMath: addition overflow'
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
            if (sub_79aa3657 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000) < rules[address(arg2)].field_256 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if not rules[address(arg3)].field_0:
            if rules[address(arg2)].field_256 * arg5 / 10000:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if arg1 == arg2:
                if sub_ae7eac87 > 0:
                    if not rules[address(arg2)].field_768:
                        if not rules[address(arg4)].field_768:
                            if not rules[address(arg3)].field_768:
                                if not arg5:
                                    if rules[address(arg2)].field_256 * arg5 / 10000 < rules[address(arg2)].field_256 * arg5 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (rules[address(arg2)].field_256 * arg5 / 10000)
                                if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                                if (sub_ae7eac87 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000) < rules[address(arg2)].field_256 * arg5 / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
            if rules[address(arg2)].field_256 * arg5 / 10000:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if arg1 == arg2:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if sub_79aa3657 <= 0:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if rules[address(arg2)].field_768:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if rules[address(arg4)].field_768:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if rules[address(arg3)].field_768:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if not arg5:
                if rules[address(arg2)].field_256 * arg5 / 10000 < rules[address(arg2)].field_256 * arg5 / 10000:
                    revert with 0, 'SafeMath: addition overflow'
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
            if (sub_79aa3657 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000) < rules[address(arg2)].field_256 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if not arg5:
            if rules[address(arg2)].field_256 * arg5 / 10000 < rules[address(arg2)].field_256 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            if rules[address(arg2)].field_256 * arg5 / 10000:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if arg1 == arg2:
                if sub_ae7eac87 > 0:
                    if not rules[address(arg2)].field_768:
                        if not rules[address(arg4)].field_768:
                            if not rules[address(arg3)].field_768:
                                if not arg5:
                                    if rules[address(arg2)].field_256 * arg5 / 10000 < rules[address(arg2)].field_256 * arg5 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (rules[address(arg2)].field_256 * arg5 / 10000)
                                if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                                if (sub_ae7eac87 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000) < rules[address(arg2)].field_256 * arg5 / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
            if rules[address(arg2)].field_256 * arg5 / 10000:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if arg1 == arg2:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if sub_79aa3657 <= 0:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if rules[address(arg2)].field_768:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if rules[address(arg4)].field_768:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if rules[address(arg3)].field_768:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if not arg5:
                if rules[address(arg2)].field_256 * arg5 / 10000 < rules[address(arg2)].field_256 * arg5 / 10000:
                    revert with 0, 'SafeMath: addition overflow'
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
            if (sub_79aa3657 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000) < rules[address(arg2)].field_256 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if rules[address(arg3)].field_0 * arg5 / arg5 != rules[address(arg3)].field_0:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
        if (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000) < rules[address(arg2)].field_256 * arg5 / 10000:
            revert with 0, 'SafeMath: addition overflow'
        if (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000):
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if arg1 == arg2:
            if sub_ae7eac87 > 0:
                if not rules[address(arg2)].field_768:
                    if not rules[address(arg4)].field_768:
                        if not rules[address(arg3)].field_768:
                            if not arg5:
                                return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
                            if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                            if sub_ae7eac87 * arg5 / 10000 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000):
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if arg1 == arg2:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if sub_79aa3657 <= 0:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if rules[address(arg2)].field_768:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if rules[address(arg4)].field_768:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if rules[address(arg3)].field_768:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if not arg5:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
        if sub_79aa3657 * arg5 / 10000 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
    if rules[address(arg4)].field_512 <= 0:
        if not rules[address(arg3)].field_768:
            if rules[address(arg2)].field_256 * arg5 / 10000:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if arg1 == arg2:
                if sub_ae7eac87 > 0:
                    if not rules[address(arg2)].field_768:
                        if not rules[address(arg4)].field_768:
                            if not rules[address(arg3)].field_768:
                                if not arg5:
                                    if rules[address(arg2)].field_256 * arg5 / 10000 < rules[address(arg2)].field_256 * arg5 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (rules[address(arg2)].field_256 * arg5 / 10000)
                                if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                                if (sub_ae7eac87 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000) < rules[address(arg2)].field_256 * arg5 / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
            if rules[address(arg2)].field_256 * arg5 / 10000:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if arg1 == arg2:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if sub_79aa3657 <= 0:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if rules[address(arg2)].field_768:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if rules[address(arg4)].field_768:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if rules[address(arg3)].field_768:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if not arg5:
                if rules[address(arg2)].field_256 * arg5 / 10000 < rules[address(arg2)].field_256 * arg5 / 10000:
                    revert with 0, 'SafeMath: addition overflow'
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
            if (sub_79aa3657 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000) < rules[address(arg2)].field_256 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if not rules[address(arg3)].field_0:
            if rules[address(arg2)].field_256 * arg5 / 10000:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if arg1 == arg2:
                if sub_ae7eac87 > 0:
                    if not rules[address(arg2)].field_768:
                        if not rules[address(arg4)].field_768:
                            if not rules[address(arg3)].field_768:
                                if not arg5:
                                    if rules[address(arg2)].field_256 * arg5 / 10000 < rules[address(arg2)].field_256 * arg5 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (rules[address(arg2)].field_256 * arg5 / 10000)
                                if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                                if (sub_ae7eac87 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000) < rules[address(arg2)].field_256 * arg5 / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
            if rules[address(arg2)].field_256 * arg5 / 10000:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if arg1 == arg2:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if sub_79aa3657 <= 0:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if rules[address(arg2)].field_768:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if rules[address(arg4)].field_768:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if rules[address(arg3)].field_768:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if not arg5:
                if rules[address(arg2)].field_256 * arg5 / 10000 < rules[address(arg2)].field_256 * arg5 / 10000:
                    revert with 0, 'SafeMath: addition overflow'
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
            if (sub_79aa3657 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000) < rules[address(arg2)].field_256 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if not arg5:
            if rules[address(arg2)].field_256 * arg5 / 10000 < rules[address(arg2)].field_256 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            if rules[address(arg2)].field_256 * arg5 / 10000:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if arg1 == arg2:
                if sub_ae7eac87 > 0:
                    if not rules[address(arg2)].field_768:
                        if not rules[address(arg4)].field_768:
                            if not rules[address(arg3)].field_768:
                                if not arg5:
                                    if rules[address(arg2)].field_256 * arg5 / 10000 < rules[address(arg2)].field_256 * arg5 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (rules[address(arg2)].field_256 * arg5 / 10000)
                                if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                                if (sub_ae7eac87 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000) < rules[address(arg2)].field_256 * arg5 / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
            if rules[address(arg2)].field_256 * arg5 / 10000:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if arg1 == arg2:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if sub_79aa3657 <= 0:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if rules[address(arg2)].field_768:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if rules[address(arg4)].field_768:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if rules[address(arg3)].field_768:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if not arg5:
                if rules[address(arg2)].field_256 * arg5 / 10000 < rules[address(arg2)].field_256 * arg5 / 10000:
                    revert with 0, 'SafeMath: addition overflow'
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
            if (sub_79aa3657 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000) < rules[address(arg2)].field_256 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if rules[address(arg3)].field_0 * arg5 / arg5 != rules[address(arg3)].field_0:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
        if (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000) < rules[address(arg2)].field_256 * arg5 / 10000:
            revert with 0, 'SafeMath: addition overflow'
        if (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000):
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if arg1 == arg2:
            if sub_ae7eac87 > 0:
                if not rules[address(arg2)].field_768:
                    if not rules[address(arg4)].field_768:
                        if not rules[address(arg3)].field_768:
                            if not arg5:
                                return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
                            if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                            if sub_ae7eac87 * arg5 / 10000 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000):
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if arg1 == arg2:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if sub_79aa3657 <= 0:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if rules[address(arg2)].field_768:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if rules[address(arg4)].field_768:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if rules[address(arg3)].field_768:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if not arg5:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
        if sub_79aa3657 * arg5 / 10000 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
    if not arg5:
        if rules[address(arg2)].field_256 * arg5 / 10000 < rules[address(arg2)].field_256 * arg5 / 10000:
            revert with 0, 'SafeMath: addition overflow'
        if not rules[address(arg3)].field_768:
            if rules[address(arg2)].field_256 * arg5 / 10000:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if arg1 == arg2:
                if sub_ae7eac87 > 0:
                    if not rules[address(arg2)].field_768:
                        if not rules[address(arg4)].field_768:
                            if not rules[address(arg3)].field_768:
                                if not arg5:
                                    if rules[address(arg2)].field_256 * arg5 / 10000 < rules[address(arg2)].field_256 * arg5 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (rules[address(arg2)].field_256 * arg5 / 10000)
                                if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                                if (sub_ae7eac87 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000) < rules[address(arg2)].field_256 * arg5 / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
            if rules[address(arg2)].field_256 * arg5 / 10000:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if arg1 == arg2:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if sub_79aa3657 <= 0:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if rules[address(arg2)].field_768:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if rules[address(arg4)].field_768:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if rules[address(arg3)].field_768:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if not arg5:
                if rules[address(arg2)].field_256 * arg5 / 10000 < rules[address(arg2)].field_256 * arg5 / 10000:
                    revert with 0, 'SafeMath: addition overflow'
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
            if (sub_79aa3657 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000) < rules[address(arg2)].field_256 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if not rules[address(arg3)].field_0:
            if rules[address(arg2)].field_256 * arg5 / 10000:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if arg1 == arg2:
                if sub_ae7eac87 > 0:
                    if not rules[address(arg2)].field_768:
                        if not rules[address(arg4)].field_768:
                            if not rules[address(arg3)].field_768:
                                if not arg5:
                                    if rules[address(arg2)].field_256 * arg5 / 10000 < rules[address(arg2)].field_256 * arg5 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (rules[address(arg2)].field_256 * arg5 / 10000)
                                if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                                if (sub_ae7eac87 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000) < rules[address(arg2)].field_256 * arg5 / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
            if rules[address(arg2)].field_256 * arg5 / 10000:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if arg1 == arg2:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if sub_79aa3657 <= 0:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if rules[address(arg2)].field_768:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if rules[address(arg4)].field_768:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if rules[address(arg3)].field_768:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if not arg5:
                if rules[address(arg2)].field_256 * arg5 / 10000 < rules[address(arg2)].field_256 * arg5 / 10000:
                    revert with 0, 'SafeMath: addition overflow'
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
            if (sub_79aa3657 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000) < rules[address(arg2)].field_256 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if not arg5:
            if rules[address(arg2)].field_256 * arg5 / 10000 < rules[address(arg2)].field_256 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            if rules[address(arg2)].field_256 * arg5 / 10000:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if arg1 == arg2:
                if sub_ae7eac87 > 0:
                    if not rules[address(arg2)].field_768:
                        if not rules[address(arg4)].field_768:
                            if not rules[address(arg3)].field_768:
                                if not arg5:
                                    if rules[address(arg2)].field_256 * arg5 / 10000 < rules[address(arg2)].field_256 * arg5 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    return (rules[address(arg2)].field_256 * arg5 / 10000)
                                if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1157 len 31]
                                if (sub_ae7eac87 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000) < rules[address(arg2)].field_256 * arg5 / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
            if rules[address(arg2)].field_256 * arg5 / 10000:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if arg1 == arg2:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if sub_79aa3657 <= 0:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if rules[address(arg2)].field_768:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if rules[address(arg4)].field_768:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if rules[address(arg3)].field_768:
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if not arg5:
                if rules[address(arg2)].field_256 * arg5 / 10000 < rules[address(arg2)].field_256 * arg5 / 10000:
                    revert with 0, 'SafeMath: addition overflow'
                return (rules[address(arg2)].field_256 * arg5 / 10000)
            if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1157 len 31]
            if (sub_79aa3657 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000) < rules[address(arg2)].field_256 * arg5 / 10000:
                revert with 0, 'SafeMath: addition overflow'
            return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if rules[address(arg3)].field_0 * arg5 / arg5 != rules[address(arg3)].field_0:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
        if (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000) < rules[address(arg2)].field_256 * arg5 / 10000:
            revert with 0, 'SafeMath: addition overflow'
        if (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000):
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if arg1 == arg2:
            if sub_ae7eac87 > 0:
                if not rules[address(arg2)].field_768:
                    if not rules[address(arg4)].field_768:
                        if not rules[address(arg3)].field_768:
                            if not arg5:
                                return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
                            if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1157 len 31]
                            if sub_ae7eac87 * arg5 / 10000 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000):
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if arg1 == arg2:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if sub_79aa3657 <= 0:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if rules[address(arg2)].field_768:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if rules[address(arg4)].field_768:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if rules[address(arg3)].field_768:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if not arg5:
            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1157 len 31]
        if sub_79aa3657 * arg5 / 10000 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
    if rules[address(arg4)].field_512 * arg5 / arg5 != rules[address(arg4)].field_512:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
    if (rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000) < rules[address(arg2)].field_256 * arg5 / 10000:
        revert with 0, 'SafeMath: addition overflow'
    if not rules[address(arg3)].field_768:
        if (rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000):
            return ((rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if arg1 == arg2:
            if sub_ae7eac87 > 0:
                if not rules[address(arg2)].field_768:
                    if not rules[address(arg4)].field_768:
                        if not rules[address(arg3)].field_768:
                            if not arg5:
                                return ((rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
                            if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                            if sub_ae7eac87 * arg5 / 10000 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if (rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000):
            return ((rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if arg1 == arg2:
            return ((rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if sub_79aa3657 <= 0:
            return ((rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if rules[address(arg2)].field_768:
            return ((rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if rules[address(arg4)].field_768:
            return ((rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if rules[address(arg3)].field_768:
            return ((rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if not arg5:
            return ((rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
        if sub_79aa3657 * arg5 / 10000 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
    if not rules[address(arg3)].field_0:
        if (rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000):
            return ((rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if arg1 == arg2:
            if sub_ae7eac87 > 0:
                if not rules[address(arg2)].field_768:
                    if not rules[address(arg4)].field_768:
                        if not rules[address(arg3)].field_768:
                            if not arg5:
                                return ((rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
                            if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                            if sub_ae7eac87 * arg5 / 10000 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if (rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000):
            return ((rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if arg1 == arg2:
            return ((rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if sub_79aa3657 <= 0:
            return ((rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if rules[address(arg2)].field_768:
            return ((rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if rules[address(arg4)].field_768:
            return ((rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if rules[address(arg3)].field_768:
            return ((rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if not arg5:
            return ((rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
        if sub_79aa3657 * arg5 / 10000 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
    if not arg5:
        if (rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000):
            return ((rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if arg1 == arg2:
            if sub_ae7eac87 > 0:
                if not rules[address(arg2)].field_768:
                    if not rules[address(arg4)].field_768:
                        if not rules[address(arg3)].field_768:
                            if not arg5:
                                return ((rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
                            if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1157 len 31]
                            if sub_ae7eac87 * arg5 / 10000 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if (rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000):
            return ((rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if arg1 == arg2:
            return ((rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if sub_79aa3657 <= 0:
            return ((rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if rules[address(arg2)].field_768:
            return ((rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if rules[address(arg4)].field_768:
            return ((rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if rules[address(arg3)].field_768:
            return ((rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if not arg5:
            return ((rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
        if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1157 len 31]
        if sub_79aa3657 * arg5 / 10000 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
    if rules[address(arg3)].field_0 * arg5 / arg5 != rules[address(arg3)].field_0:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
    if rules[address(arg3)].field_0 * arg5 / 10000 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000):
        return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
    if arg1 == arg2:
        if sub_ae7eac87 > 0:
            if not rules[address(arg2)].field_768:
                if not rules[address(arg4)].field_768:
                    if not rules[address(arg3)].field_768:
                        if not arg5:
                            return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
                        if sub_ae7eac87 * arg5 / arg5 != sub_ae7eac87:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1157 len 31]
                        if sub_ae7eac87 * arg5 / 10000 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((sub_ae7eac87 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
    if (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000):
        return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
    if arg1 == arg2:
        return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
    if sub_79aa3657 <= 0:
        return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
    if rules[address(arg2)].field_768:
        return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
    if rules[address(arg4)].field_768:
        return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
    if rules[address(arg3)].field_768:
        return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
    if not arg5:
        return ((rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
    if sub_79aa3657 * arg5 / arg5 != sub_79aa3657:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1157 len 31]
    if sub_79aa3657 * arg5 / 10000 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return ((sub_79aa3657 * arg5 / 10000) + (rules[address(arg3)].field_0 * arg5 / 10000) + (rules[address(arg4)].field_512 * arg5 / 10000) + (rules[address(arg2)].field_256 * arg5 / 10000))
}



}
