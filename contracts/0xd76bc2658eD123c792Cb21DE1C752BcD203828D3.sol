contract main {




// =====================  Runtime code  =====================


const sub_37c5d979(?) = eth.balance(this.address)


address stor0;
address stor1;
uint256 stor3;
uint256 sub_607459f4;
uint256 stor5;
uint256 stor6;
uint256 stor8;
address stor9;

function sub_607459f4(?) {
    return sub_607459f4
}

function _fallback() payable {
    revert
}

function sub_1fe06b5c(?) {
    return (stor5 / 10^18)
}

function sub_36121c1c(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor9
    stor5 = arg1
    return 1
}

function sub_fc7aef8b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor9
    sub_607459f4 = arg1
    return 1
}

function sub_7b76a784(?) payable {
    require msg.sender == stor9
    if stor8 > -msg.value - 1:
        revert with 'NH{q', 17
    if stor8 + msg.value < stor8:
        revert with 0, 'SafeMath: addition overflow'
    stor8 += msg.value
    return 1
}

function sub_20a95daf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor9
    call stor9 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_b503db2f(?) {
    require ext_code.size(stor0)
    staticcall stor0.balanceOf(uint256 arg1) with:
            gas gas_remaining wei
           args stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_d962ce43(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor5 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor5:
        revert with 'NH{q', 18
    if not arg2 / stor5:
        if 0 > arg2 / stor5:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg2 / stor5 < 0:
            revert with 'NH{q', 17
        if not stor5:
            if eth.balance(this.address) < arg2 / stor5:
                revert with 0, 'No FTM Balance in Swapper'
            require ext_code.size(stor1)
            call stor1.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args arg1, stor3, 0
        else:
            if stor5 and arg2 / stor5 > -1 / stor5:
                revert with 'NH{q', 17
            if not stor5:
                revert with 'NH{q', 18
            if stor5 * arg2 / stor5 / stor5 != arg2 / stor5:
                revert with 0, 'SafeMath: multiplication overflow'
            if eth.balance(this.address) < arg2 / stor5:
                revert with 0, 'No FTM Balance in Swapper'
            require ext_code.size(stor1)
            call stor1.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args arg1, stor3, stor5 * arg2 / stor5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call stor9 with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value arg2 / stor5 wei
             gas 2300 * is_zero(value) wei
    else:
        if arg2 / stor5 and stor6 / 10000 > -1 / arg2 / stor5:
            revert with 'NH{q', 17
        if not arg2 / stor5:
            revert with 'NH{q', 18
        if arg2 / stor5 * stor6 / 10000 / arg2 / stor5 != stor6 / 10000:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg2 / stor5 * stor6 / 10000 > arg2 / stor5:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg2 / stor5 < arg2 / stor5 * stor6 / 10000:
            revert with 'NH{q', 17
        if not stor5:
            if eth.balance(this.address) < arg2 / stor5:
                revert with 0, 'No FTM Balance in Swapper'
            require ext_code.size(stor1)
            call stor1.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args arg1, stor3, 0
        else:
            if stor5 and (arg2 / stor5) - (arg2 / stor5 * stor6 / 10000) > -1 / stor5:
                revert with 'NH{q', 17
            if not stor5:
                revert with 'NH{q', 18
            if (arg2 / stor5 * stor5) - (arg2 / stor5 * stor6 / 10000 * stor5) / stor5 != (arg2 / stor5) - (arg2 / stor5 * stor6 / 10000):
                revert with 0, 'SafeMath: multiplication overflow'
            if eth.balance(this.address) < arg2 / stor5:
                revert with 0, 'No FTM Balance in Swapper'
            require ext_code.size(stor1)
            call stor1.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args arg1, stor3, (arg2 / stor5 * stor5) - (arg2 / stor5 * stor6 / 10000 * stor5)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call stor9 with:
           value arg2 / stor5 * stor6 / 10000 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value (arg2 / stor5) - (arg2 / stor5 * stor6 / 10000) wei
             gas 2300 * is_zero(value) wei
    if arg2 / stor5 > stor8:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor8 < arg2 / stor5:
        revert with 'NH{q', 17
    stor8 -= arg2 / stor5
    return 1
}

function sub_4db2c9f1(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if sub_607459f4 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not sub_607459f4:
        revert with 'NH{q', 18
    if not arg2 / sub_607459f4:
        if 0 > arg2 / sub_607459f4:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg2 / sub_607459f4 < 0:
            revert with 'NH{q', 17
        if not sub_607459f4:
            if eth.balance(this.address) < arg2 / sub_607459f4:
                revert with 0, 'No FTM Balance in Swapper'
            require ext_code.size(stor0)
            call stor0.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args arg1, stor3, 0
        else:
            if sub_607459f4 and arg2 / sub_607459f4 > -1 / sub_607459f4:
                revert with 'NH{q', 17
            if not sub_607459f4:
                revert with 'NH{q', 18
            if sub_607459f4 * arg2 / sub_607459f4 / sub_607459f4 != arg2 / sub_607459f4:
                revert with 0, 'SafeMath: multiplication overflow'
            if eth.balance(this.address) < arg2 / sub_607459f4:
                revert with 0, 'No FTM Balance in Swapper'
            require ext_code.size(stor0)
            call stor0.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args arg1, stor3, sub_607459f4 * arg2 / sub_607459f4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call stor9 with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value arg2 / sub_607459f4 wei
             gas 2300 * is_zero(value) wei
    else:
        if arg2 / sub_607459f4 and stor6 > -1 / arg2 / sub_607459f4:
            revert with 'NH{q', 17
        if not arg2 / sub_607459f4:
            revert with 'NH{q', 18
        if arg2 / sub_607459f4 * stor6 / arg2 / sub_607459f4 != stor6:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg2 / sub_607459f4 * stor6 / 100 > arg2 / sub_607459f4:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg2 / sub_607459f4 < arg2 / sub_607459f4 * stor6 / 100:
            revert with 'NH{q', 17
        if not sub_607459f4:
            if eth.balance(this.address) < arg2 / sub_607459f4:
                revert with 0, 'No FTM Balance in Swapper'
            require ext_code.size(stor0)
            call stor0.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args arg1, stor3, 0
        else:
            if sub_607459f4 and (arg2 / sub_607459f4) - (arg2 / sub_607459f4 * stor6 / 100) > -1 / sub_607459f4:
                revert with 'NH{q', 17
            if not sub_607459f4:
                revert with 'NH{q', 18
            if (arg2 / sub_607459f4 * sub_607459f4) - (arg2 / sub_607459f4 * stor6 / 100 * sub_607459f4) / sub_607459f4 != (arg2 / sub_607459f4) - (arg2 / sub_607459f4 * stor6 / 100):
                revert with 0, 'SafeMath: multiplication overflow'
            if eth.balance(this.address) < arg2 / sub_607459f4:
                revert with 0, 'No FTM Balance in Swapper'
            require ext_code.size(stor0)
            call stor0.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args arg1, stor3, (arg2 / sub_607459f4 * sub_607459f4) - (arg2 / sub_607459f4 * stor6 / 100 * sub_607459f4)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call stor9 with:
           value arg2 / sub_607459f4 * stor6 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value (arg2 / sub_607459f4) - (arg2 / sub_607459f4 * stor6 / 100) wei
             gas 2300 * is_zero(value) wei
    if arg2 / sub_607459f4 > stor8:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor8 < arg2 / sub_607459f4:
        revert with 'NH{q', 17
    stor8 -= arg2 / sub_607459f4
    return 1
}

function sub_37f899dd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.value:
        if 0 > msg.value:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if msg.value < 0:
            revert with 'NH{q', 17
        if not stor5:
            require ext_code.size(stor1)
            staticcall stor1.balanceOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args stor3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < 0:
                revert with 0, 'No Crafting Material Balance in Swapper'
            require ext_code.size(stor1)
            call stor1.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args stor3, arg1, 0
        else:
            if stor5 and msg.value > -1 / stor5:
                revert with 'NH{q', 17
            if not stor5:
                revert with 'NH{q', 18
            if stor5 * msg.value / stor5 != msg.value:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(stor1)
            staticcall stor1.balanceOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args stor3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < stor5 * msg.value:
                revert with 0, 'No Crafting Material Balance in Swapper'
            require ext_code.size(stor1)
            call stor1.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args stor3, arg1, stor5 * msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call stor9 with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor8 > -msg.value - 1:
            revert with 'NH{q', 17
        if stor8 + msg.value < stor8:
            revert with 0, 'SafeMath: addition overflow'
        stor8 += msg.value
    else:
        if msg.value and stor6 > -1 / msg.value:
            revert with 'NH{q', 17
        if not msg.value:
            revert with 'NH{q', 18
        if msg.value * stor6 / msg.value != stor6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if msg.value * stor6 / 10000 > msg.value:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if msg.value < msg.value * stor6 / 10000:
            revert with 'NH{q', 17
        if not stor5:
            require ext_code.size(stor1)
            staticcall stor1.balanceOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args stor3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < 0:
                revert with 0, 'No Crafting Material Balance in Swapper'
            require ext_code.size(stor1)
            call stor1.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args stor3, arg1, 0
        else:
            if stor5 and msg.value - (msg.value * stor6 / 10000) > -1 / stor5:
                revert with 'NH{q', 17
            if not stor5:
                revert with 'NH{q', 18
            if (msg.value * stor5) - (msg.value * stor6 / 10000 * stor5) / stor5 != msg.value - (msg.value * stor6 / 10000):
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(stor1)
            staticcall stor1.balanceOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args stor3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < (msg.value * stor5) - (msg.value * stor6 / 10000 * stor5):
                revert with 0, 'No Crafting Material Balance in Swapper'
            require ext_code.size(stor1)
            call stor1.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args stor3, arg1, (msg.value * stor5) - (msg.value * stor6 / 10000 * stor5)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call stor9 with:
           value msg.value * stor6 / 10000 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor8 > -msg.value + (msg.value * stor6 / 10000) - 1:
            revert with 'NH{q', 17
        if stor8 + msg.value - (msg.value * stor6 / 10000) < stor8:
            revert with 0, 'SafeMath: addition overflow'
        stor8 = stor8 + msg.value - (msg.value * stor6 / 10000)
    return 1
}

function sub_e6876fc7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.value:
        if 0 > msg.value:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if msg.value < 0:
            revert with 'NH{q', 17
        if not sub_607459f4:
            require ext_code.size(stor0)
            staticcall stor0.balanceOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args stor3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < 0:
                revert with 0, 'No Gold Balance in Swapper'
            require ext_code.size(stor0)
            call stor0.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args stor3, arg1, 0
        else:
            if sub_607459f4 and msg.value > -1 / sub_607459f4:
                revert with 'NH{q', 17
            if not sub_607459f4:
                revert with 'NH{q', 18
            if sub_607459f4 * msg.value / sub_607459f4 != msg.value:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(stor0)
            staticcall stor0.balanceOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args stor3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < sub_607459f4 * msg.value:
                revert with 0, 'No Gold Balance in Swapper'
            require ext_code.size(stor0)
            call stor0.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args stor3, arg1, sub_607459f4 * msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call stor9 with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor8 > -msg.value - 1:
            revert with 'NH{q', 17
        if stor8 + msg.value < stor8:
            revert with 0, 'SafeMath: addition overflow'
        stor8 += msg.value
    else:
        if msg.value and stor6 > -1 / msg.value:
            revert with 'NH{q', 17
        if not msg.value:
            revert with 'NH{q', 18
        if msg.value * stor6 / msg.value != stor6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if msg.value * stor6 / 100 > msg.value:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if msg.value < msg.value * stor6 / 100:
            revert with 'NH{q', 17
        if not sub_607459f4:
            require ext_code.size(stor0)
            staticcall stor0.balanceOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args stor3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < 0:
                revert with 0, 'No Gold Balance in Swapper'
            require ext_code.size(stor0)
            call stor0.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args stor3, arg1, 0
        else:
            if sub_607459f4 and msg.value - (msg.value * stor6 / 100) > -1 / sub_607459f4:
                revert with 'NH{q', 17
            if not sub_607459f4:
                revert with 'NH{q', 18
            if (msg.value * sub_607459f4) - (msg.value * stor6 / 100 * sub_607459f4) / sub_607459f4 != msg.value - (msg.value * stor6 / 100):
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(stor0)
            staticcall stor0.balanceOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args stor3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < (msg.value * sub_607459f4) - (msg.value * stor6 / 100 * sub_607459f4):
                revert with 0, 'No Gold Balance in Swapper'
            require ext_code.size(stor0)
            call stor0.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args stor3, arg1, (msg.value * sub_607459f4) - (msg.value * stor6 / 100 * sub_607459f4)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call stor9 with:
           value msg.value * stor6 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor8 > -msg.value + (msg.value * stor6 / 100) - 1:
            revert with 'NH{q', 17
        if stor8 + msg.value - (msg.value * stor6 / 100) < stor8:
            revert with 0, 'SafeMath: addition overflow'
        stor8 = stor8 + msg.value - (msg.value * stor6 / 100)
    return 1
}



}
