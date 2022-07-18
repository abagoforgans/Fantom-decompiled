contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
address meowAddress;
uint256 sub_aacf23b9;
uint256 startWithdraw;
uint256 depositTime;
uint256 lockTime;
uint8 isStart;

function name() payable {
    return name[0 len name.length]
}

function lockTime() payable {
    return lockTime
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function depositTime() payable {
    return depositTime
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function isStart() payable {
    return bool(isStart)
}

function owner() payable {
    return owner
}

function startWithdraw() payable {
    return startWithdraw
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_aacf23b9(?) payable {
    return sub_aacf23b9
}

function meow() payable {
    return meowAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_7197e6a2(?) payable {
    if block.timestamp <= startWithdraw:
        return (block.timestamp > startWithdraw)
    return bool(isStart)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit 0x728be007: owner, 0
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit 0x728be007: owner, arg1
    owner = arg1
}

function start() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if isStart:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x736d4d656f77546f6b656e3a3a73746172743a3a20697427732073746172746564,
                    mem[197 len 31]
    if depositTime + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    sub_aacf23b9 = depositTime + block.timestamp
    if lockTime + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    startWithdraw = lockTime + block.timestamp
    isStart = 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6445524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit 0xe0ddf252: arg1, msg.sender, 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
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

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7245524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
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
                    0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
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

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e45524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
    emit 0xe0ddf252: arg2, msg.sender, arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e45524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
    emit 0xe0ddf252: arg3, arg1, arg2
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp <= startWithdraw:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x746d4d656f77546f6b656e3a3a77697468647261773a3a206e6f742077697468696e207468652073706563696669656420706572696f,
                    mem[218 len 10]
    if not isStart:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x746d4d656f77546f6b656e3a3a77697468647261773a3a206e6f742077697468696e207468652073706563696669656420706572696f,
                    mem[218 len 10]
    require ext_code.size(meowAddress)
    staticcall meowAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6445524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[197 len 31]
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
        balanceOf[address(msg.sender)] -= arg1
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg1
        emit 0xe0ddf252: arg1, msg.sender, 0
        require ext_code.size(meowAddress)
        call meowAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0 / totalSupply
    else:
        if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6445524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[197 len 31]
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
        balanceOf[address(msg.sender)] -= arg1
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg1
        emit 0xe0ddf252: arg1, msg.sender, 0
        require ext_code.size(meowAddress)
        call meowAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] * arg1 / totalSupply
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Withdraw(arg1, msg.sender);
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not isStart:
        if block.timestamp <= startWithdraw:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0xef6d4d656f77546f6b656e3a3a6465706f7369743a3a206e6f742077697468696e207468652073706563696669656420706572696f,
                        mem[217 len 11]
        if not isStart:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0xef6d4d656f77546f6b656e3a3a6465706f7369743a3a206e6f742077697468696e207468652073706563696669656420706572696f,
                        mem[217 len 11]
    else:
        if block.timestamp >= sub_aacf23b9:
            if block.timestamp <= startWithdraw:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            53,
                            0xef6d4d656f77546f6b656e3a3a6465706f7369743a3a206e6f742077697468696e207468652073706563696669656420706572696f,
                            mem[217 len 11]
            if not isStart:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            53,
                            0xef6d4d656f77546f6b656e3a3a6465706f7369743a3a206e6f742077697468696e207468652073706563696669656420706572696f,
                            mem[217 len 11]
    require ext_code.size(meowAddress)
    staticcall meowAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(meowAddress)
    staticcall meowAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x736d4d656f77546f6b656e3a3a6465706f7369743a3a20696e73756666696369656e7420616d6f756e,
                    mem[205 len 23]
    require ext_code.size(meowAddress)
    call meowAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x736d4d656f77546f6b656e3a3a6465706f7369743a3a207472616e73666572206572726f,
                    mem[200 len 28]
    if not totalSupply:
        if not arg1:
            revert with 0, 'ERC20: mint to the zero address'
        if arg2 + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg2
        if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit 0xe0ddf252: arg2, 0, arg1
    else:
        if not ext_call.return_data[0]:
            if not arg1:
                revert with 0, 'ERC20: mint to the zero address'
            if arg2 + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg2
            if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit 0xe0ddf252: arg2, 0, arg1
        else:
            if not arg2:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if not arg1:
                    revert with 0, 'ERC20: mint to the zero address'
                if (0 / ext_call.return_data[0]) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += 0 / ext_call.return_data[0]
                emit 0xe0ddf252: (0 / ext_call.return_data[0]), 0, arg1
            else:
                if totalSupply * arg2 / arg2 != totalSupply:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if not arg1:
                    revert with 0, 'ERC20: mint to the zero address'
                if (totalSupply * arg2 / ext_call.return_data[0]) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += totalSupply * arg2 / ext_call.return_data[0]
                if (totalSupply * arg2 / ext_call.return_data[0]) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += totalSupply * arg2 / ext_call.return_data[0]
                emit 0xe0ddf252: (totalSupply * arg2 / ext_call.return_data[0]), 0, arg1
    emit Deposit(arg2, msg.sender);
}



}
