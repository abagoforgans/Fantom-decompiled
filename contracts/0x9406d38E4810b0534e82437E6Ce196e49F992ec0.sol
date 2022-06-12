contract main {




// =====================  Runtime code  =====================


#
#  - sub_4a7cb95e(?)
#  - fight(uint256 arg1)
#
const name = 'Rarity Battle', 0

const decimals = 18

const sub_91b7c312(?) = 1000

const symbol = '', 0


address owner;
uint256 totalSupply;
uint256 ticketPrice;
uint256 sub_026a8f01;
mapping of struct sub_274ff91a;
uint256 stor6;
uint256 sub_bc5894ba;
uint256 executor;
uint256 bet;
mapping of uint256 allowance;
mapping of uint256 balanceOf;
array of uint256 sub_ef5b0e6e;
uint256 bonusPool;
mapping of uint256 sub_b298b771;

function sub_026a8f01(?) {
    return sub_026a8f01
}

function bet() {
    return bet
}

function ticketPrice() {
    return ticketPrice
}

function totalSupply() {
    return totalSupply
}

function bonusPool() {
    return bonusPool
}

function sub_274ff91a(?) {
    require calldata.size - 4 >= 32
    return sub_274ff91a[arg1].field_0, 
           sub_274ff91a[arg1].field_256,
           sub_274ff91a[arg1].field_512,
           sub_274ff91a[arg1].field_768,
           sub_274ff91a[arg1].field_1024
}

function owner() {
    return owner
}

function balanceOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function sub_b298b771(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b298b771[arg1]
}

function sub_bc5894ba(?) {
    return sub_bc5894ba
}

function executor() {
    return executor
}

function allowance(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function sub_ef5b0e6e(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_ef5b0e6e.length
    return sub_ef5b0e6e[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function modifier_for_attribute(uint256 arg1) {
    require calldata.size - 4 >= 32
    if 9 == arg1:
        return -1
    if arg1 < 0x800000000000000000000000000000000000000000000000000000000000000a:
        revert with 0, 17
    return (arg1 - 10 / 2)
}

function damage(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 != 9:
        if arg1 < 0x800000000000000000000000000000000000000000000000000000000000000a:
            revert with 0, 17
        if arg1 - 10 / 2 > 1:
            return (arg1 - 10 / 2)
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function health_by_class(uint256 arg1) {
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

function base_attack_bonus_by_class(uint256 arg1) {
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

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.value and sub_bc5894ba > -1 / msg.value:
        revert with 0, 17
    if totalSupply > !(msg.value * sub_bc5894ba):
        revert with 0, 17
    totalSupply += msg.value * sub_bc5894ba
    if balanceOf[arg1] > !(msg.value * sub_bc5894ba):
        revert with 0, 17
    balanceOf[arg1] += msg.value * sub_bc5894ba
    if stor6 > !msg.value:
        revert with 0, 17
    stor6 += msg.value
    emit Transfer((msg.value * sub_bc5894ba), arg1, arg1);
    emit 0xdc14a281: msg.value * sub_bc5894ba, 0, arg1
}

function withdraw() {
    if sub_b298b771[msg.sender]:
        sub_b298b771[msg.sender] = 0
        if eth.balance(this.address) < sub_b298b771[msg.sender]:
            revert with 0, 'Address: insufficient balance'
        call msg.sender with:
           value sub_b298b771[msg.sender] wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Address: unable to send value, recipient may have reverted'
        else:
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
        ('bool', 'ext_call.success')
}

function payOwner(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > stor6:
        revert with 0, 'amount too high'
    if stor6 < arg2:
        revert with 0, 17
    stor6 -= arg2
    if eth.balance(this.address) < arg2:
        revert with 0, 'Address: insufficient balance'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
}

function approve(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
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

function transfer(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
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

function base_attack_bonus_by_class_and_level(uint256 arg1, uint256 arg2) {
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

function transferFrom(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
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

function exchange(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 != executor
    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
    staticcall 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.0x9cc7f708 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Gold not enough'
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
    if ext_call.return_data[12 len 20] != this.address:
        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.0x8856f779 with:
             gas gas_remaining wei
            args executor, arg1, executor, arg2
    else:
        call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.0x90dd2627 with:
             gas gas_remaining wei
            args arg1, executor, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit Transfer(arg2, arg1, arg1);
    emit 0xdc14a281: arg2, 1, arg1
}

function health_by_class_and_level(uint256 arg1, uint256 arg2, uint32 arg3) {
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

function attack_bonus(uint256 arg1, uint256 arg2, uint256 arg3) {
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
