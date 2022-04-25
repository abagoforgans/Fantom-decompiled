contract main {




// =====================  Runtime code  =====================


uint256 SECONDS_IN_A_DAY;
uint256 sub_5954c6a1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 stor4;
mapping of uint256 stor5;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function sub_5954c6a1(?) payable {
    return sub_5954c6a1
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function SECONDS_IN_A_DAY() payable {
    return SECONDS_IN_A_DAY
}

function _fallback() payable {
    revert
}

function sub_758c1354(?) payable {
    if not stor5[msg.sender]:
        stor5[msg.sender] = block.timestamp
    return block.timestamp
}

function lastClaim(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor4[address(arg1)]:
        return stor4[address(arg1)]
    return stor5[address(arg1)]
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function accumulated(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'Owner cannot be 0 address'
    if not stor5[address(arg1)]:
        revert with 0, 'Owner is not mining'
    if stor4[address(arg1)]:
        if stor4[address(arg1)] > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - stor4[address(arg1)]:
            if not SECONDS_IN_A_DAY:
                revert with 0, 'SafeMath: division by zero'
            return (0 / SECONDS_IN_A_DAY)
        if (block.timestamp * sub_5954c6a1) - (stor4[address(arg1)] * sub_5954c6a1) / block.timestamp - stor4[address(arg1)] != sub_5954c6a1:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not SECONDS_IN_A_DAY:
            revert with 0, 'SafeMath: division by zero'
        return ((block.timestamp * sub_5954c6a1) - (stor4[address(arg1)] * sub_5954c6a1) / SECONDS_IN_A_DAY)
    if stor5[address(arg1)] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.timestamp - stor5[address(arg1)]:
        if not SECONDS_IN_A_DAY:
            revert with 0, 'SafeMath: division by zero'
        return (0 / SECONDS_IN_A_DAY)
    if (block.timestamp * sub_5954c6a1) - (stor5[address(arg1)] * sub_5954c6a1) / block.timestamp - stor5[address(arg1)] != sub_5954c6a1:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not SECONDS_IN_A_DAY:
        revert with 0, 'SafeMath: division by zero'
    return ((block.timestamp * sub_5954c6a1) - (stor5[address(arg1)] * sub_5954c6a1) / SECONDS_IN_A_DAY)
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function claim() payable {
    if not msg.sender:
        revert with 0, 'Owner cannot be 0 address'
    if not stor5[address(msg.sender)]:
        revert with 0, 'Owner is not mining'
    if stor4[address(msg.sender)]:
        if stor4[address(msg.sender)] > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - stor4[address(msg.sender)]:
            if not SECONDS_IN_A_DAY:
                revert with 0, 'SafeMath: division by zero'
            stor4[msg.sender] = block.timestamp
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if (0 / SECONDS_IN_A_DAY) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += 0 / SECONDS_IN_A_DAY
            if (0 / SECONDS_IN_A_DAY) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += 0 / SECONDS_IN_A_DAY
            emit Transfer((0 / SECONDS_IN_A_DAY), 0, msg.sender);
            return (0 / SECONDS_IN_A_DAY)
        if (block.timestamp * sub_5954c6a1) - (stor4[address(msg.sender)] * sub_5954c6a1) / block.timestamp - stor4[address(msg.sender)] != sub_5954c6a1:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not SECONDS_IN_A_DAY:
            revert with 0, 'SafeMath: division by zero'
        stor4[msg.sender] = block.timestamp
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if ((block.timestamp * sub_5954c6a1) - (stor4[address(msg.sender)] * sub_5954c6a1) / SECONDS_IN_A_DAY) + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += (block.timestamp * sub_5954c6a1) - (stor4[address(msg.sender)] * sub_5954c6a1) / SECONDS_IN_A_DAY
        if ((block.timestamp * sub_5954c6a1) - (stor4[address(msg.sender)] * sub_5954c6a1) / SECONDS_IN_A_DAY) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += (block.timestamp * sub_5954c6a1) - (stor4[address(msg.sender)] * sub_5954c6a1) / SECONDS_IN_A_DAY
        emit Transfer(((block.timestamp * sub_5954c6a1) - (stor4[address(msg.sender)] * sub_5954c6a1) / SECONDS_IN_A_DAY), 0, msg.sender);
        return ((block.timestamp * sub_5954c6a1) - (stor4[address(msg.sender)] * sub_5954c6a1) / SECONDS_IN_A_DAY)
    if stor5[address(msg.sender)] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.timestamp - stor5[address(msg.sender)]:
        if not SECONDS_IN_A_DAY:
            revert with 0, 'SafeMath: division by zero'
        stor4[msg.sender] = block.timestamp
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if (0 / SECONDS_IN_A_DAY) + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += 0 / SECONDS_IN_A_DAY
        if (0 / SECONDS_IN_A_DAY) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += 0 / SECONDS_IN_A_DAY
        emit Transfer((0 / SECONDS_IN_A_DAY), 0, msg.sender);
        return (0 / SECONDS_IN_A_DAY)
    if (block.timestamp * sub_5954c6a1) - (stor5[address(msg.sender)] * sub_5954c6a1) / block.timestamp - stor5[address(msg.sender)] != sub_5954c6a1:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not SECONDS_IN_A_DAY:
        revert with 0, 'SafeMath: division by zero'
    stor4[msg.sender] = block.timestamp
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if ((block.timestamp * sub_5954c6a1) - (stor5[address(msg.sender)] * sub_5954c6a1) / SECONDS_IN_A_DAY) + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += (block.timestamp * sub_5954c6a1) - (stor5[address(msg.sender)] * sub_5954c6a1) / SECONDS_IN_A_DAY
    if ((block.timestamp * sub_5954c6a1) - (stor5[address(msg.sender)] * sub_5954c6a1) / SECONDS_IN_A_DAY) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += (block.timestamp * sub_5954c6a1) - (stor5[address(msg.sender)] * sub_5954c6a1) / SECONDS_IN_A_DAY
    emit Transfer(((block.timestamp * sub_5954c6a1) - (stor5[address(msg.sender)] * sub_5954c6a1) / SECONDS_IN_A_DAY), 0, msg.sender);
    return ((block.timestamp * sub_5954c6a1) - (stor5[address(msg.sender)] * sub_5954c6a1) / SECONDS_IN_A_DAY)
}



}
