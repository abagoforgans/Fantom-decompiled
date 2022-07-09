contract main {




// =====================  Runtime code  =====================


mapping of uint256 stor1;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
uint256 stor6;
uint256 countdown;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor10;
array of address stor11;

function name() payable {
    return name[0 len name.length]
}

function decimals() payable {
    return decimals
}

function isExcludedFromFee(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor10[address(arg1)])
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
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

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
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

function excludeAccountFromFee(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor10[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x734163636f756e7420697320616c7265616479206578636c756465642066726f6d206665,
                    mem[200 len 28]
    stor10[address(arg1)] = 1
    stor11.length++
    stor11[stor11.length] = arg1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > stor1[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7745524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    stor1[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((stor1[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function includeAccountToFee(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor10[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x734163636f756e7420697320616c726561647920696e636c7564656420746f206665,
                    mem[198 len 30]
    idx = 0
    while idx < stor11.length:
        mem[0] = 11
        if stor11[idx] != arg1:
            idx = idx + 1
            continue 
        require stor11.length - 1 < stor11.length
        require idx < stor11.length
        stor11[idx] = stor11[stor11.length]
        stor10[address(arg1)] = 0
        require stor11.length
        stor11[stor11.length] = 0
        stor11.length--
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
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
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
    idx = 0
    s = 0
    while idx < stor11.length:
        mem[0] = 11
        if stor11[idx] != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if s:
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if not arg2:
            if arg2:
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
        else:
            require arg2
            if arg2 * countdown / arg2 != countdown:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not arg2 * countdown / 100:
                if arg2 - (arg2 * countdown / 100):
                    if balanceOf[address(arg1)] + arg2 - (arg2 * countdown / 100) < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * countdown / 100)
                    emit Transfer((arg2 - (arg2 * countdown / 100)), msg.sender, arg1);
                if arg2 * countdown / 100:
                    if balanceOf[0xde8947c2abd59c201e5ece142bfcd22253bfc0d] + (arg2 * countdown / 100) < balanceOf[0xde8947c2abd59c201e5ece142bfcd22253bfc0d]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[0xde8947c2abd59c201e5ece142bfcd22253bfc0d] += arg2 * countdown / 100
                    emit Transfer((arg2 * countdown / 100), msg.sender, 0xde8947c2abd59c201e5ece142bfcd22253bfc0d);
            else:
                require arg2 * countdown / 100
                if 85 * arg2 * countdown / 100 / arg2 * countdown / 100 != 85:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if arg2 - (arg2 * countdown / 100):
                    if balanceOf[address(arg1)] + arg2 - (arg2 * countdown / 100) < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * countdown / 100)
                    emit Transfer((arg2 - (arg2 * countdown / 100)), msg.sender, arg1);
                if 85 * arg2 * countdown / 100 / 100:
                    if balanceOf[0] + (85 * arg2 * countdown / 100 / 100) < balanceOf[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[0] += 85 * arg2 * countdown / 100 / 100
                    emit Transfer((85 * arg2 * countdown / 100 / 100), msg.sender, 0);
                if (arg2 * countdown / 100) - (85 * arg2 * countdown / 100 / 100):
                    if balanceOf[0xde8947c2abd59c201e5ece142bfcd22253bfc0d] + (arg2 * countdown / 100) - (85 * arg2 * countdown / 100 / 100) < balanceOf[0xde8947c2abd59c201e5ece142bfcd22253bfc0d]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[0xde8947c2abd59c201e5ece142bfcd22253bfc0d] = balanceOf[0xde8947c2abd59c201e5ece142bfcd22253bfc0d] + (arg2 * countdown / 100) - (85 * arg2 * countdown / 100 / 100)
                    emit Transfer(((arg2 * countdown / 100) - (85 * arg2 * countdown / 100 / 100)), msg.sender, 0xde8947c2abd59c201e5ece142bfcd22253bfc0d);
    if not countdown:
        countdown = 39
    else:
        if countdown > 0:
            countdown--
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)] -= arg3
    idx = 0
    s = 0
    while idx < stor11.length:
        mem[0] = 11
        if stor11[idx] != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if s:
        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if not arg3:
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            allowance[address(arg1)][address(msg.sender)] -= arg3
            if arg3:
                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
        else:
            require arg3
            if arg3 * countdown / arg3 != countdown:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not arg3 * countdown / 100:
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                allowance[address(arg1)][address(msg.sender)] -= arg3
                if arg3 - (arg3 * countdown / 100):
                    if balanceOf[address(arg2)] + arg3 - (arg3 * countdown / 100) < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * countdown / 100)
                    emit Transfer((arg3 - (arg3 * countdown / 100)), arg1, arg2);
                if arg3 * countdown / 100:
                    if balanceOf[0xde8947c2abd59c201e5ece142bfcd22253bfc0d] + (arg3 * countdown / 100) < balanceOf[0xde8947c2abd59c201e5ece142bfcd22253bfc0d]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[0xde8947c2abd59c201e5ece142bfcd22253bfc0d] += arg3 * countdown / 100
                    emit Transfer((arg3 * countdown / 100), msg.sender, 0xde8947c2abd59c201e5ece142bfcd22253bfc0d);
            else:
                require arg3 * countdown / 100
                if 85 * arg3 * countdown / 100 / arg3 * countdown / 100 != 85:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                allowance[address(arg1)][address(msg.sender)] -= arg3
                if arg3 - (arg3 * countdown / 100):
                    if balanceOf[address(arg2)] + arg3 - (arg3 * countdown / 100) < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * countdown / 100)
                    emit Transfer((arg3 - (arg3 * countdown / 100)), arg1, arg2);
                if 85 * arg3 * countdown / 100 / 100:
                    if balanceOf[0] + (85 * arg3 * countdown / 100 / 100) < balanceOf[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[0] += 85 * arg3 * countdown / 100 / 100
                    emit Transfer((85 * arg3 * countdown / 100 / 100), msg.sender, 0);
                if (arg3 * countdown / 100) - (85 * arg3 * countdown / 100 / 100):
                    if balanceOf[0xde8947c2abd59c201e5ece142bfcd22253bfc0d] + (arg3 * countdown / 100) - (85 * arg3 * countdown / 100 / 100) < balanceOf[0xde8947c2abd59c201e5ece142bfcd22253bfc0d]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[0xde8947c2abd59c201e5ece142bfcd22253bfc0d] = balanceOf[0xde8947c2abd59c201e5ece142bfcd22253bfc0d] + (arg3 * countdown / 100) - (85 * arg3 * countdown / 100 / 100)
                    emit Transfer(((arg3 * countdown / 100) - (85 * arg3 * countdown / 100 / 100)), msg.sender, 0xde8947c2abd59c201e5ece142bfcd22253bfc0d);
    if not countdown:
        countdown = 39
    else:
        if countdown > 0:
            countdown--
    return 1
}



}
