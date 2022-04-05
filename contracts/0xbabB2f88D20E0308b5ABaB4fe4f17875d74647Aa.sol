contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
address sub_0940d5e9Address;
address stakingContractAddress;
uint256 PID;
uint256 totalDeposits;
uint256 MIN_TOKENS_TO_REINVEST;
address strategistAddress;
uint256 sub_03f74c2c;
uint256 sub_64a057b4;

function sub_03f74c2c(?) payable {
    return sub_03f74c2c
}

function name() payable {
    return name[0 len name.length]
}

function sub_0940d5e9(?) payable {
    return sub_0940d5e9Address
}

function totalSupply() payable {
    return totalSupply
}

function strategist() payable {
    return strategistAddress
}

function decimals() payable {
    return decimals
}

function PID() payable {
    return PID
}

function sub_64a057b4(?) payable {
    return sub_64a057b4
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function totalDeposits() payable {
    return totalDeposits
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function MIN_TOKENS_TO_REINVEST() payable {
    return MIN_TOKENS_TO_REINVEST
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function stakingContract() payable {
    return stakingContractAddress
}

function _fallback() payable {
    revert
}

function sub_3c134635(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == strategistAddress
    MIN_TOKENS_TO_REINVEST = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_a4206652(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == strategistAddress
    emit 0xaa9a62bb: msg.sender, arg1
    strategistAddress = arg1
}

function updatePerformanceFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= sub_64a057b4
    if arg1 > 10000:
        revert with 0, 'performance fee too high'
    emit 0x17519bd6: sub_03f74c2c, arg1
    sub_03f74c2c = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function checkReward() payable {
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.pendingIce(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args PID, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_0940d5e9Address)
    staticcall sub_0940d5e9Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
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
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
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
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function sub_7fdce5fd(?) payable {
    require calldata.size - 4 >= 32
    if not totalSupply:
        return 0
    if totalDeposits * totalSupply / totalSupply != totalDeposits:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not totalDeposits * totalSupply:
        return 0
    if not arg1:
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply)
    if totalDeposits * arg1 / arg1 != totalDeposits:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    return (totalDeposits * arg1 / totalSupply)
}

function sub_bd3a5cdc(?) payable {
    require calldata.size - 4 >= 32
    if not totalSupply:
        return arg1
    if totalDeposits * totalSupply / totalSupply != totalDeposits:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not totalDeposits * totalSupply:
        return arg1
    if not arg1:
        if not totalDeposits:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalDeposits)
    if totalSupply * arg1 / arg1 != totalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not totalDeposits:
        revert with 0, 'SafeMath: division by zero'
    return (totalSupply * arg1 / totalDeposits)
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
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function reinvest() payable {
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.pendingIce(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args PID, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_0940d5e9Address)
    staticcall sub_0940d5e9Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args PID, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not 2 * ext_call.return_data[0]:
        if 0 > 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if 2 * ext_call.return_data[0] <= 0:
            revert with 0, 'amount too low'
        require ext_code.size(stakingContractAddress)
        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args PID, 2 * ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if (2 * ext_call.return_data[0]) + totalDeposits < totalDeposits:
            revert with 0, 'SafeMath: addition overflow'
        totalDeposits += 2 * ext_call.return_data[0]
        emit Reinvest((2 * ext_call.return_data[0]) + totalDeposits, totalSupply);
    else:
        if (ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 2 * ext_call.return_data[0] != sub_03f74c2c:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000:
            require ext_code.size(sub_0940d5e9Address)
            call sub_0940d5e9Address.0xa9059cbb with:
                 gas gas_remaining wei
                args strategistAddress, (ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'performance fee transfer failed'
        if (ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000 > 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000) <= 0:
            revert with 0, 'amount too low'
        require ext_code.size(stakingContractAddress)
        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args PID, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000) + totalDeposits < totalDeposits:
            revert with 0, 'SafeMath: addition overflow'
        totalDeposits = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000) + totalDeposits
        emit Reinvest((2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000) + totalDeposits, totalSupply);
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.pendingIce(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args PID, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalSupply:
        if totalDeposits * totalSupply / totalSupply != totalDeposits:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalDeposits * totalSupply:
            if not arg1:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / totalSupply:
                    if 0 / totalSupply <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.withdraw(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args PID, 0 / totalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_0940d5e9Address)
                    call sub_0940d5e9Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / totalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'transfer failed'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    34,
                                    0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                    uint16(0 / totalSupply),
                                    mem[228 len 28],
                                    mem[286 len 2]
                    balanceOf[address(msg.sender)] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    if 0 / totalSupply > totalDeposits:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalDeposits -= 0 / totalSupply
                    if ext_call.return_data[0] >= MIN_TOKENS_TO_REINVEST:
                        require ext_code.size(stakingContractAddress)
                        staticcall stakingContractAddress.pendingIce(uint256 rg1, address rg2) with:
                                gas gas_remaining wei
                               args PID, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_0940d5e9Address)
                        staticcall sub_0940d5e9Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 2 * ext_call.return_data[0]:
                            if 0 > 2 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 2 * ext_call.return_data[0] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, 2 * ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (2 * ext_call.return_data[0]) + totalDeposits < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += 2 * ext_call.return_data[0]
                            emit Reinvest((2 * ext_call.return_data[0]) + totalDeposits, totalSupply);
                        else:
                            if (ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 2 * ext_call.return_data[0] != sub_03f74c2c:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                            if (ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000:
                                require ext_code.size(sub_0940d5e9Address)
                                call sub_0940d5e9Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args strategistAddress, (ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'performance fee transfer failed'
                            if (ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000 > 2 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000) <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000) + totalDeposits < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000) + totalDeposits
                            emit Reinvest((2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000) + totalDeposits, totalSupply);
                    emit Withdraw(msg.sender, 0 / totalSupply);
            else:
                if totalDeposits * arg1 / arg1 != totalDeposits:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if totalDeposits * arg1 / totalSupply:
                    if totalDeposits * arg1 / totalSupply <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.withdraw(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args PID, totalDeposits * arg1 / totalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_0940d5e9Address)
                    call sub_0940d5e9Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, totalDeposits * arg1 / totalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'transfer failed'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    34,
                                    0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                    uint16(totalDeposits * arg1 / totalSupply),
                                    mem[228 len 28],
                                    mem[286 len 2]
                    balanceOf[address(msg.sender)] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    if totalDeposits * arg1 / totalSupply > totalDeposits:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalDeposits -= totalDeposits * arg1 / totalSupply
                    if ext_call.return_data[0] >= MIN_TOKENS_TO_REINVEST:
                        require ext_code.size(stakingContractAddress)
                        staticcall stakingContractAddress.pendingIce(uint256 rg1, address rg2) with:
                                gas gas_remaining wei
                               args PID, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_0940d5e9Address)
                        staticcall sub_0940d5e9Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 2 * ext_call.return_data[0]:
                            if 0 > 2 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 2 * ext_call.return_data[0] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, 2 * ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (2 * ext_call.return_data[0]) + totalDeposits < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += 2 * ext_call.return_data[0]
                            emit Reinvest((2 * ext_call.return_data[0]) + totalDeposits, totalSupply);
                        else:
                            if (ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 2 * ext_call.return_data[0] != sub_03f74c2c:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                            if (ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000:
                                require ext_code.size(sub_0940d5e9Address)
                                call sub_0940d5e9Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args strategistAddress, (ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'performance fee transfer failed'
                            if (ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000 > 2 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000) <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000) + totalDeposits < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000) + totalDeposits
                            emit Reinvest((2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000) + totalDeposits, totalSupply);
                    emit Withdraw(msg.sender, totalDeposits * arg1 / totalSupply);
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.pendingIce(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args PID, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalDeposits < totalSupply:
        revert with 0, 'deposit failed'
    require ext_code.size(sub_0940d5e9Address)
    call sub_0940d5e9Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transferFrom failed'
    if arg1 <= 0:
        revert with 0, 'amount too low'
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args PID, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not totalSupply:
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if arg1 + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg1
        if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += arg1
        emit Transfer(arg1, 0, msg.sender);
        if arg1 + totalDeposits < totalDeposits:
            revert with 0, 'SafeMath: addition overflow'
        totalDeposits += arg1
        if ext_call.return_data[0] >= MIN_TOKENS_TO_REINVEST:
            require ext_code.size(stakingContractAddress)
            staticcall stakingContractAddress.pendingIce(uint256 rg1, address rg2) with:
                    gas gas_remaining wei
                   args PID, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_0940d5e9Address)
            staticcall sub_0940d5e9Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(stakingContractAddress)
            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args PID, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 2 * ext_call.return_data[0]:
                if 0 > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 2 * ext_call.return_data[0] <= 0:
                    revert with 0, 'amount too low'
                require ext_code.size(stakingContractAddress)
                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args PID, 2 * ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (2 * ext_call.return_data[0]) + totalDeposits < totalDeposits:
                    revert with 0, 'SafeMath: addition overflow'
                totalDeposits += 2 * ext_call.return_data[0]
                emit Reinvest((2 * ext_call.return_data[0]) + totalDeposits, totalSupply);
            else:
                if (ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 2 * ext_call.return_data[0] != sub_03f74c2c:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000:
                    require ext_code.size(sub_0940d5e9Address)
                    call sub_0940d5e9Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args strategistAddress, (ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'performance fee transfer failed'
                if (ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000 > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000) <= 0:
                    revert with 0, 'amount too low'
                require ext_code.size(stakingContractAddress)
                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args PID, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000) + totalDeposits < totalDeposits:
                    revert with 0, 'SafeMath: addition overflow'
                totalDeposits = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000) + totalDeposits
                emit Reinvest((2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000) + totalDeposits, totalSupply);
    else:
        if totalDeposits * totalSupply / totalSupply != totalDeposits:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not totalDeposits * totalSupply:
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if arg1 + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += arg1
            emit Transfer(arg1, 0, msg.sender);
            if arg1 + totalDeposits < totalDeposits:
                revert with 0, 'SafeMath: addition overflow'
            totalDeposits += arg1
            if ext_call.return_data[0] >= MIN_TOKENS_TO_REINVEST:
                require ext_code.size(stakingContractAddress)
                staticcall stakingContractAddress.pendingIce(uint256 rg1, address rg2) with:
                        gas gas_remaining wei
                       args PID, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_0940d5e9Address)
                staticcall sub_0940d5e9Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(stakingContractAddress)
                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args PID, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 2 * ext_call.return_data[0]:
                    if 0 > 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 2 * ext_call.return_data[0] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args PID, 2 * ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (2 * ext_call.return_data[0]) + totalDeposits < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits += 2 * ext_call.return_data[0]
                    emit Reinvest((2 * ext_call.return_data[0]) + totalDeposits, totalSupply);
                else:
                    if (ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 2 * ext_call.return_data[0] != sub_03f74c2c:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000:
                        require ext_code.size(sub_0940d5e9Address)
                        call sub_0940d5e9Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args strategistAddress, (ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'performance fee transfer failed'
                    if (ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000 > 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000) <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args PID, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000) + totalDeposits < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000) + totalDeposits
                    emit Reinvest((2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000) + totalDeposits, totalSupply);
        else:
            if not arg1:
                if not totalDeposits:
                    revert with 0, 'SafeMath: division by zero'
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if (0 / totalDeposits) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / totalDeposits
                if (0 / totalDeposits) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 0 / totalDeposits
                emit Transfer((0 / totalDeposits), 0, msg.sender);
            else:
                if totalSupply * arg1 / arg1 != totalSupply:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not totalDeposits:
                    revert with 0, 'SafeMath: division by zero'
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if (totalSupply * arg1 / totalDeposits) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += totalSupply * arg1 / totalDeposits
                if (totalSupply * arg1 / totalDeposits) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += totalSupply * arg1 / totalDeposits
                emit Transfer((totalSupply * arg1 / totalDeposits), 0, msg.sender);
            if arg1 + totalDeposits < totalDeposits:
                revert with 0, 'SafeMath: addition overflow'
            totalDeposits += arg1
            if ext_call.return_data[0] >= MIN_TOKENS_TO_REINVEST:
                require ext_code.size(stakingContractAddress)
                staticcall stakingContractAddress.pendingIce(uint256 rg1, address rg2) with:
                        gas gas_remaining wei
                       args PID, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_0940d5e9Address)
                staticcall sub_0940d5e9Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(stakingContractAddress)
                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args PID, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 2 * ext_call.return_data[0]:
                    if 0 > 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 2 * ext_call.return_data[0] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args PID, 2 * ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (2 * ext_call.return_data[0]) + totalDeposits < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits += 2 * ext_call.return_data[0]
                    emit Reinvest((2 * ext_call.return_data[0]) + totalDeposits, totalSupply);
                else:
                    if (ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 2 * ext_call.return_data[0] != sub_03f74c2c:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if (ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000:
                        require ext_code.size(sub_0940d5e9Address)
                        call sub_0940d5e9Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args strategistAddress, (ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'performance fee transfer failed'
                    if (ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000 > 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000) <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args PID, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000) + totalDeposits < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000) + totalDeposits
                    emit Reinvest((2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * sub_03f74c2c) + (ext_call.return_data[0] * sub_03f74c2c) / 10000) + totalDeposits, totalSupply);
    emit Deposit(msg.sender, arg1);
}



}
