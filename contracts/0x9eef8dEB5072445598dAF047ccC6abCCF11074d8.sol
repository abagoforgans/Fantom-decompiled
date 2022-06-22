contract main {




// =====================  Runtime code  =====================


const sub_96282706(?) = eth.balance(this.address)


address stor1;
address stor2;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor9;
uint256 stor10;

function _fallback() payable {
    revert
}

function sub_6137f0d9(?) payable {
    if stor9 != msg.sender:
        revert with 0, 'No Permisssion'
    if stor10 > -msg.value - 1:
        revert with 'NH{q', 17
    if stor10 + msg.value < stor10:
        revert with 0, 'SafeMath: addition overflow'
    stor10 += msg.value
    return 1
}

function sub_179c840f(?) {
    require ext_code.size(stor2)
    staticcall stor2.balanceOf(uint256 arg1) with:
            gas gas_remaining wei
           args stor4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_9c50edf4(?) {
    require ext_code.size(stor1)
    staticcall stor1.balanceOf(uint256 arg1) with:
            gas gas_remaining wei
           args stor4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_e8594752(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor9 != msg.sender:
        revert with 0, 'No Permisssion'
    if eth.balance(this.address) < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not enough FTM in vault for this transaction'
    call stor9 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_a4486bc0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor6:
        revert with 'NH{q', 18
    if eth.balance(this.address) < arg1 / stor6:
        revert with 0, 'Not enough FTM in vault for this transaction'
    if not arg1 / stor6:
        if 0 > arg1 / stor6:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 / stor6 < 0:
            revert with 'NH{q', 17
        call msg.sender with:
           value arg1 / stor6 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor9 with:
             gas 2300 wei
    else:
        if arg1 / stor6 and stor7 > -1 / arg1 / stor6:
            revert with 'NH{q', 17
        if not arg1 / stor6:
            revert with 'NH{q', 18
        if arg1 / stor6 * stor7 / arg1 / stor6 != stor7:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 / stor6 * stor7 / 100 > arg1 / stor6:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 / stor6 < arg1 / stor6 * stor7 / 100:
            revert with 'NH{q', 17
        call msg.sender with:
           value (arg1 / stor6) - (arg1 / stor6 * stor7 / 100) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor9 with:
           value arg1 / stor6 * stor7 / 100 wei
             gas 2300 * is_zero(value) wei
    return 1
}

function sub_ce59d864(?) payable {
    if stor6:
        if stor6 and msg.value > -1 / stor6:
            revert with 'NH{q', 17
        if not stor6:
            revert with 'NH{q', 18
        if stor6 * msg.value / stor6 != msg.value:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not msg.value:
        if 0 > msg.value:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if msg.value < 0:
            revert with 'NH{q', 17
        if stor10 > -msg.value - 1:
            revert with 'NH{q', 17
        if stor10 + msg.value < stor10:
            revert with 0, 'SafeMath: addition overflow'
        stor10 += msg.value
        call stor9 with:
             gas 2300 wei
    else:
        if msg.value and stor7 > -1 / msg.value:
            revert with 'NH{q', 17
        if not msg.value:
            revert with 'NH{q', 18
        if msg.value * stor7 / msg.value != stor7:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if msg.value * stor7 / 100 > msg.value:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if msg.value < msg.value * stor7 / 100:
            revert with 'NH{q', 17
        if stor10 > -msg.value + (msg.value * stor7 / 100) - 1:
            revert with 'NH{q', 17
        if stor10 + msg.value - (msg.value * stor7 / 100) < stor10:
            revert with 0, 'SafeMath: addition overflow'
        stor10 = stor10 + msg.value - (msg.value * stor7 / 100)
        call stor9 with:
           value msg.value * stor7 / 100 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_4db2c9f1(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor5 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor5:
        revert with 'NH{q', 18
    if eth.balance(this.address) < arg2 / stor5:
        revert with 0, 'Not enough FTM in vault for this transaction'
    require ext_code.size(stor1)
    staticcall stor1.balanceOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Not enough GOLD on your summoner'
    if not arg2 / stor5:
        if 0 > arg2 / stor5:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg2 / stor5 < 0:
            revert with 'NH{q', 17
        if arg2 / stor5 > stor10:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor10 < arg2 / stor5:
            revert with 'NH{q', 17
        stor10 -= arg2 / stor5
        if 0 > stor10:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor10 < 0:
            revert with 'NH{q', 17
        require ext_code.size(stor1)
        call stor1.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args arg1, stor4, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call msg.sender with:
           value arg2 / stor5 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor9 with:
             gas 2300 wei
    else:
        if arg2 / stor5 and stor7 > -1 / arg2 / stor5:
            revert with 'NH{q', 17
        if not arg2 / stor5:
            revert with 'NH{q', 18
        if arg2 / stor5 * stor7 / arg2 / stor5 != stor7:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg2 / stor5 * stor7 / 100 > arg2 / stor5:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg2 / stor5 < arg2 / stor5 * stor7 / 100:
            revert with 'NH{q', 17
        if (arg2 / stor5) - (arg2 / stor5 * stor7 / 100) > stor10:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor10 < (arg2 / stor5) - (arg2 / stor5 * stor7 / 100):
            revert with 'NH{q', 17
        stor10 = stor10 - (arg2 / stor5) + (arg2 / stor5 * stor7 / 100)
        if arg2 / stor5 * stor7 / 100 > stor10:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor10 < arg2 / stor5 * stor7 / 100:
            revert with 'NH{q', 17
        stor10 -= arg2 / stor5 * stor7 / 100
        require ext_code.size(stor1)
        call stor1.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args arg1, stor4, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call msg.sender with:
           value (arg2 / stor5) - (arg2 / stor5 * stor7 / 100) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor9 with:
           value arg2 / stor5 * stor7 / 100 wei
             gas 2300 * is_zero(value) wei
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
        if stor10 > -msg.value - 1:
            revert with 'NH{q', 17
        if stor10 + msg.value < stor10:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(stor1)
        staticcall stor1.balanceOf(uint256 arg1) with:
                gas gas_remaining wei
               args stor4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < 0:
            revert with 0, 'Not enough gold in vault'
        require ext_code.size(stor1)
        call stor1.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args stor4, arg1, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call stor9 with:
             gas 2300 wei
    else:
        if msg.value and stor5 > -1 / msg.value:
            revert with 'NH{q', 17
        if not msg.value:
            revert with 'NH{q', 18
        if msg.value * stor5 / msg.value != stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not msg.value:
            if 0 > msg.value:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if msg.value < 0:
                revert with 'NH{q', 17
            if stor10 > -msg.value - 1:
                revert with 'NH{q', 17
            if stor10 + msg.value < stor10:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(stor1)
            staticcall stor1.balanceOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args stor4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < msg.value * stor5:
                revert with 0, 'Not enough gold in vault'
            require ext_code.size(stor1)
            call stor1.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args stor4, arg1, msg.value * stor5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            call stor9 with:
                 gas 2300 wei
        else:
            if msg.value and stor7 > -1 / msg.value:
                revert with 'NH{q', 17
            if not msg.value:
                revert with 'NH{q', 18
            if msg.value * stor7 / msg.value != stor7:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if msg.value * stor7 / 100 > msg.value:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if msg.value < msg.value * stor7 / 100:
                revert with 'NH{q', 17
            if stor10 > -msg.value + (msg.value * stor7 / 100) - 1:
                revert with 'NH{q', 17
            if stor10 + msg.value - (msg.value * stor7 / 100) < stor10:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(stor1)
            staticcall stor1.balanceOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args stor4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < msg.value * stor5:
                revert with 0, 'Not enough gold in vault'
            require ext_code.size(stor1)
            call stor1.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args stor4, arg1, msg.value * stor5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            call stor9 with:
               value msg.value * stor7 / 100 wei
                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
