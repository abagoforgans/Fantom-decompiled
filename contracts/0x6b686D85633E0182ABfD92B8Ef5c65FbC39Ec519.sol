contract main {




// =====================  Runtime code  =====================


const BURN_ADDRESS = 57005


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 burnSupply;
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

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function getOwner() payable {
    return owner
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function burnSupply() payable {
    return burnSupply
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
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

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'BEP20: mint to the zero address'
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573,
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
                    0x7342455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= 0:
        revert with 0, 'amount 0'
    if arg1 == 57005:
        if msg.sender == 57005:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[197 len 31]
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
        balanceOf[address(msg.sender)] -= arg2
        if arg2 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg2
        if burnSupply + arg2 < burnSupply:
            revert with 0, 'SafeMath: addition overflow'
        burnSupply += arg2
        emit Transfer(arg2, msg.sender, 57005);
    else:
        if not arg2:
            if 0 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg2 != arg2:
                revert with 0, 32, 35, 0x774d4f5553453a3a7472616e736665723a204275726e2076616c756520696e76616c69, mem[327 len 29]
            if msg.sender == 57005:
                revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
            if 0 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
            if 0 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if burnSupply < burnSupply:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer(0, msg.sender, 57005);
            if not msg.sender:
                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
            if not arg1:
                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x6442455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[454 len 26],
                            mem[506 len 6]
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            require arg2
            if 2 * arg2 / arg2 != 2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 2 * arg2 / 100 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg2 != arg2:
                revert with 0, 32, 35, 0x774d4f5553453a3a7472616e736665723a204275726e2076616c756520696e76616c69, mem[327 len 29]
            if msg.sender == 57005:
                revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
            if 2 * arg2 / 100 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
            balanceOf[address(msg.sender)] -= 2 * arg2 / 100
            if 2 * arg2 / 100 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= 2 * arg2 / 100
            if burnSupply + (2 * arg2 / 100) < burnSupply:
                revert with 0, 'SafeMath: addition overflow'
            burnSupply += 2 * arg2 / 100
            emit Transfer((2 * arg2 / 100), msg.sender, 57005);
            if not msg.sender:
                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
            if not arg1:
                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
            if arg2 - (2 * arg2 / 100) > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x6442455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[454 len 26],
                            mem[506 len 6]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (2 * arg2 / 100)
            if balanceOf[address(arg1)] + arg2 - (2 * arg2 / 100) < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (2 * arg2 / 100)
            emit Transfer((arg2 - (2 * arg2 / 100)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 <= 0:
        revert with 0, 'amount 0'
    if arg2 == 57005:
        if arg1 == 57005:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[197 len 31]
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
        balanceOf[address(arg1)] -= arg3
        if arg3 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg3
        if burnSupply + arg3 < burnSupply:
            revert with 0, 'SafeMath: addition overflow'
        burnSupply += arg3
        emit Transfer(arg3, arg1, 57005);
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        40,
                        0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[328 len 24],
                        mem[376 len 8]
        if not arg1:
            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
    else:
        if not arg3:
            if 0 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg3 != arg3:
                revert with 0, 32, 35, 0x774d4f5553453a3a7472616e736665723a204275726e2076616c756520696e76616c69, mem[327 len 29]
            if arg1 == 57005:
                revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
            if 0 > balanceOf[address(arg1)]:
                revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
            if 0 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if burnSupply < burnSupply:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer(0, arg1, 57005);
            if not arg1:
                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
            if not arg2:
                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x6442455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[454 len 26],
                            mem[506 len 6]
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            require arg3
            if 2 * arg3 / arg3 != 2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 2 * arg3 / 100 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg3 != arg3:
                revert with 0, 32, 35, 0x774d4f5553453a3a7472616e736665723a204275726e2076616c756520696e76616c69, mem[327 len 29]
            if arg1 == 57005:
                revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
            if 2 * arg3 / 100 > balanceOf[address(arg1)]:
                revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
            balanceOf[address(arg1)] -= 2 * arg3 / 100
            if 2 * arg3 / 100 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= 2 * arg3 / 100
            if burnSupply + (2 * arg3 / 100) < burnSupply:
                revert with 0, 'SafeMath: addition overflow'
            burnSupply += 2 * arg3 / 100
            emit Transfer((2 * arg3 / 100), arg1, 57005);
            if not arg1:
                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
            if not arg2:
                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
            if arg3 - (2 * arg3 / 100) > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x6442455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[454 len 26],
                            mem[506 len 6]
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (2 * arg3 / 100)
            if balanceOf[address(arg2)] + arg3 - (2 * arg3 / 100) < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (2 * arg3 / 100)
            emit Transfer((arg3 - (2 * arg3 / 100)), arg1, arg2);
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        40,
                        0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[552 len 24],
                        mem[600 len 8]
        if not arg1:
            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[680 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[678 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
