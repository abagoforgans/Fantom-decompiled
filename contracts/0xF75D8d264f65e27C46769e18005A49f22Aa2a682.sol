contract main {




// =====================  Runtime code  =====================


const INITIAL_ALLOTMENT = 1337 * 10^18

const PRE_REVEAL_MULTIPLIER = 3


uint256 SECONDS_IN_A_DAY;
uint256 emissionStart;
uint256 emissionEnd;
uint256 emissionPerDay;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 stor6;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor10; offset 8

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function emissionStart() payable {
    return emissionStart
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function emissionEnd() payable {
    return emissionEnd
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function emissionPerDay() payable {
    return emissionPerDay
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

function setRocketsAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor10:
        revert with 0, 'Already set'
    stor10 = arg1
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
                    0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573,
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
        revert with 0, 32, 34, 0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
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
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function lastClaim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor10)
    staticcall stor10.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Owner cannot be 0 address'
    require ext_code.size(stor10)
    staticcall stor10.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x654e465420617420696e64657820686173206e6f74206265656e206d696e746564207965,
                    mem[200 len 28]
    if stor6[arg1]:
        return stor6[arg1]
    return emissionStart
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
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
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
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if stor10 != msg.sender:
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
            revert with 0, 32, 34, 0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function accumulated(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp <= emissionStart:
        revert with 0, 'Emission has not started yet'
    require ext_code.size(stor10)
    staticcall stor10.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Owner cannot be 0 address'
    require ext_code.size(stor10)
    staticcall stor10.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x654e465420617420696e64657820686173206e6f74206265656e206d696e746564207965,
                    mem[200 len 28]
    require ext_code.size(stor10)
    staticcall stor10.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Owner cannot be 0 address'
    require ext_code.size(stor10)
    staticcall stor10.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x654e465420617420696e64657820686173206e6f74206265656e206d696e746564207965,
                    mem[200 len 28]
    if stor6[arg1]:
        if stor6[arg1] >= emissionEnd:
            return 0
        if block.timestamp < emissionEnd:
            if stor6[arg1] > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - stor6[arg1]:
                if SECONDS_IN_A_DAY <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require SECONDS_IN_A_DAY
                if stor6[arg1] != emissionStart:
                    return (0 / SECONDS_IN_A_DAY)
                require ext_code.size(stor10)
                staticcall stor10.0xbc28d702 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if bool(ext_call.return_data[0]) == 1:
                    if (0 / SECONDS_IN_A_DAY) + 4011 * 10^18 < 0 / SECONDS_IN_A_DAY:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / SECONDS_IN_A_DAY) + 4011 * 10^18)
                if (0 / SECONDS_IN_A_DAY) + 1337 * 10^18 < 0 / SECONDS_IN_A_DAY:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / SECONDS_IN_A_DAY) + 1337 * 10^18)
            require block.timestamp - stor6[arg1]
            if (block.timestamp * emissionPerDay) - (stor6[arg1] * emissionPerDay) / block.timestamp - stor6[arg1] != emissionPerDay:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if SECONDS_IN_A_DAY <= 0:
                revert with 0, 'SafeMath: division by zero'
            require SECONDS_IN_A_DAY
            if stor6[arg1] != emissionStart:
                return ((block.timestamp * emissionPerDay) - (stor6[arg1] * emissionPerDay) / SECONDS_IN_A_DAY)
            require ext_code.size(stor10)
            staticcall stor10.0xbc28d702 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if bool(ext_call.return_data[0]) == 1:
                if ((block.timestamp * emissionPerDay) - (stor6[arg1] * emissionPerDay) / SECONDS_IN_A_DAY) + 4011 * 10^18 < (block.timestamp * emissionPerDay) - (stor6[arg1] * emissionPerDay) / SECONDS_IN_A_DAY:
                    revert with 0, 'SafeMath: addition overflow'
                return (((block.timestamp * emissionPerDay) - (stor6[arg1] * emissionPerDay) / SECONDS_IN_A_DAY) + 4011 * 10^18)
            if ((block.timestamp * emissionPerDay) - (stor6[arg1] * emissionPerDay) / SECONDS_IN_A_DAY) + 1337 * 10^18 < (block.timestamp * emissionPerDay) - (stor6[arg1] * emissionPerDay) / SECONDS_IN_A_DAY:
                revert with 0, 'SafeMath: addition overflow'
            return (((block.timestamp * emissionPerDay) - (stor6[arg1] * emissionPerDay) / SECONDS_IN_A_DAY) + 1337 * 10^18)
        if stor6[arg1] > emissionEnd:
            revert with 0, 'SafeMath: subtraction overflow'
        if not emissionEnd - stor6[arg1]:
            if SECONDS_IN_A_DAY <= 0:
                revert with 0, 'SafeMath: division by zero'
            require SECONDS_IN_A_DAY
            if stor6[arg1] != emissionStart:
                return (0 / SECONDS_IN_A_DAY)
            require ext_code.size(stor10)
            staticcall stor10.0xbc28d702 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if bool(ext_call.return_data[0]) == 1:
                if (0 / SECONDS_IN_A_DAY) + 4011 * 10^18 < 0 / SECONDS_IN_A_DAY:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / SECONDS_IN_A_DAY) + 4011 * 10^18)
            if (0 / SECONDS_IN_A_DAY) + 1337 * 10^18 < 0 / SECONDS_IN_A_DAY:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / SECONDS_IN_A_DAY) + 1337 * 10^18)
        require emissionEnd - stor6[arg1]
        if (emissionEnd * emissionPerDay) - (stor6[arg1] * emissionPerDay) / emissionEnd - stor6[arg1] != emissionPerDay:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if SECONDS_IN_A_DAY <= 0:
            revert with 0, 'SafeMath: division by zero'
        require SECONDS_IN_A_DAY
        if stor6[arg1] != emissionStart:
            return ((emissionEnd * emissionPerDay) - (stor6[arg1] * emissionPerDay) / SECONDS_IN_A_DAY)
        require ext_code.size(stor10)
        staticcall stor10.0xbc28d702 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if bool(ext_call.return_data[0]) == 1:
            if ((emissionEnd * emissionPerDay) - (stor6[arg1] * emissionPerDay) / SECONDS_IN_A_DAY) + 4011 * 10^18 < (emissionEnd * emissionPerDay) - (stor6[arg1] * emissionPerDay) / SECONDS_IN_A_DAY:
                revert with 0, 'SafeMath: addition overflow'
            return (((emissionEnd * emissionPerDay) - (stor6[arg1] * emissionPerDay) / SECONDS_IN_A_DAY) + 4011 * 10^18)
        if ((emissionEnd * emissionPerDay) - (stor6[arg1] * emissionPerDay) / SECONDS_IN_A_DAY) + 1337 * 10^18 < (emissionEnd * emissionPerDay) - (stor6[arg1] * emissionPerDay) / SECONDS_IN_A_DAY:
            revert with 0, 'SafeMath: addition overflow'
        return (((emissionEnd * emissionPerDay) - (stor6[arg1] * emissionPerDay) / SECONDS_IN_A_DAY) + 1337 * 10^18)
    if emissionStart >= emissionEnd:
        return 0
    if block.timestamp < emissionEnd:
        if emissionStart > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - emissionStart:
            if SECONDS_IN_A_DAY <= 0:
                revert with 0, 'SafeMath: division by zero'
            require SECONDS_IN_A_DAY
            if emissionStart != emissionStart:
                return (0 / SECONDS_IN_A_DAY)
            require ext_code.size(stor10)
            staticcall stor10.0xbc28d702 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if bool(ext_call.return_data[0]) == 1:
                if (0 / SECONDS_IN_A_DAY) + 4011 * 10^18 < 0 / SECONDS_IN_A_DAY:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / SECONDS_IN_A_DAY) + 4011 * 10^18)
            if (0 / SECONDS_IN_A_DAY) + 1337 * 10^18 < 0 / SECONDS_IN_A_DAY:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / SECONDS_IN_A_DAY) + 1337 * 10^18)
        require block.timestamp - emissionStart
        if (block.timestamp * emissionPerDay) - (emissionStart * emissionPerDay) / block.timestamp - emissionStart != emissionPerDay:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if SECONDS_IN_A_DAY <= 0:
            revert with 0, 'SafeMath: division by zero'
        require SECONDS_IN_A_DAY
        if emissionStart != emissionStart:
            return ((block.timestamp * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY)
        require ext_code.size(stor10)
        staticcall stor10.0xbc28d702 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if bool(ext_call.return_data[0]) == 1:
            if ((block.timestamp * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY) + 4011 * 10^18 < (block.timestamp * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY:
                revert with 0, 'SafeMath: addition overflow'
            return (((block.timestamp * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY) + 4011 * 10^18)
        if ((block.timestamp * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY) + 1337 * 10^18 < (block.timestamp * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY:
            revert with 0, 'SafeMath: addition overflow'
        return (((block.timestamp * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY) + 1337 * 10^18)
    if emissionStart > emissionEnd:
        revert with 0, 'SafeMath: subtraction overflow'
    if not emissionEnd - emissionStart:
        if SECONDS_IN_A_DAY <= 0:
            revert with 0, 'SafeMath: division by zero'
        require SECONDS_IN_A_DAY
        if emissionStart != emissionStart:
            return (0 / SECONDS_IN_A_DAY)
        require ext_code.size(stor10)
        staticcall stor10.0xbc28d702 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if bool(ext_call.return_data[0]) == 1:
            if (0 / SECONDS_IN_A_DAY) + 4011 * 10^18 < 0 / SECONDS_IN_A_DAY:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / SECONDS_IN_A_DAY) + 4011 * 10^18)
        if (0 / SECONDS_IN_A_DAY) + 1337 * 10^18 < 0 / SECONDS_IN_A_DAY:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / SECONDS_IN_A_DAY) + 1337 * 10^18)
    require emissionEnd - emissionStart
    if (emissionEnd * emissionPerDay) - (emissionStart * emissionPerDay) / emissionEnd - emissionStart != emissionPerDay:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if SECONDS_IN_A_DAY <= 0:
        revert with 0, 'SafeMath: division by zero'
    require SECONDS_IN_A_DAY
    if emissionStart != emissionStart:
        return ((emissionEnd * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY)
    require ext_code.size(stor10)
    staticcall stor10.0xbc28d702 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) == 1:
        if ((emissionEnd * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY) + 4011 * 10^18 < (emissionEnd * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY:
            revert with 0, 'SafeMath: addition overflow'
        return (((emissionEnd * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY) + 4011 * 10^18)
    if ((emissionEnd * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY) + 1337 * 10^18 < (emissionEnd * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY:
        revert with 0, 'SafeMath: addition overflow'
    return (((emissionEnd * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY) + 1337 * 10^18)
}

function claim(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if block.timestamp <= emissionStart:
        revert with 0, 'Emission has not started yet'
    idx = 0
    while idx < arg1.length:
        require ext_code.size(stor10)
        staticcall stor10.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[96]
        if mem[(32 * idx) + 128] >= ext_call.return_data[0]:
            revert with 0, 32, 36, 0x654e465420617420696e64657820686173206e6f74206265656e206d696e746564207965, mem[mem[64] + 104 len 28]
        s = idx + 1
        while s < mem[96]:
            require s < mem[96]
            require idx < mem[96]
            if mem[(32 * idx) + 128] == mem[(32 * s) + 128]:
                revert with 0, 'Duplicate token index'
            s = s + 1
            continue 
        require idx < mem[96]
        _595 = mem[(32 * idx) + 128]
        require ext_code.size(stor10)
        staticcall stor10.0x6352211e with:
                gas gas_remaining wei
               args mem[(32 * idx) + 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) != msg.sender:
            revert with 0, 'Sender is not the owner'
        if block.timestamp <= emissionStart:
            revert with 0, 'Emission has not started yet'
        require ext_code.size(stor10)
        staticcall stor10.0x6352211e with:
                gas gas_remaining wei
               args mem[(32 * idx) + 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            revert with 0, 'Owner cannot be 0 address'
        require ext_code.size(stor10)
        staticcall stor10.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[(32 * idx) + 128] >= ext_call.return_data[0]:
            revert with 0, 32, 36, 0x654e465420617420696e64657820686173206e6f74206265656e206d696e746564207965, mem[mem[64] + 104 len 28]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(stor10)
        staticcall stor10.0x6352211e with:
                gas gas_remaining wei
               args _595
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            revert with 0, 'Owner cannot be 0 address'
        require ext_code.size(stor10)
        staticcall stor10.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if _595 >= ext_call.return_data[0]:
            revert with 0, 32, 36, 0x654e465420617420696e64657820686173206e6f74206265656e206d696e746564207965, mem[mem[64] + 104 len 28]
        mem[0] = _595
        mem[32] = 6
        if not stor6[_595]:
            if emissionStart < emissionEnd:
                if block.timestamp < emissionEnd:
                    _637 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_637] = 30
                    mem[_637 + 32] = 'SafeMath: subtraction overflow'
                    if emissionStart > block.timestamp:
                        _645 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_645 + idx + 68] = mem[_637 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_645 + 68] = mem[_645 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _645 + -mem[64] + 100
                    if not block.timestamp - emissionStart:
                        _677 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_677] = 26
                        mem[_677 + 32] = 'SafeMath: division by zero'
                        if SECONDS_IN_A_DAY <= 0:
                            _688 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_688 + idx + 68] = mem[_677 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_688 + 68] = mem[_688 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _688 + -mem[64] + 100
                        require SECONDS_IN_A_DAY
                        if emissionStart != emissionStart:
                            if 0 / SECONDS_IN_A_DAY:
                                if 0 / SECONDS_IN_A_DAY < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = _595
                                mem[32] = 6
                                stor6[_595] = block.timestamp
                        else:
                            mem[mem[64] + 4] = _595
                            require ext_code.size(stor10)
                            staticcall stor10.0xbc28d702 with:
                                    gas gas_remaining wei
                                   args _595
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if bool(ext_call.return_data[0]) == 1:
                                if (0 / SECONDS_IN_A_DAY) + 4011 * 10^18 < 0 / SECONDS_IN_A_DAY:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (0 / SECONDS_IN_A_DAY) + 4011 * 10^18:
                                    if (0 / SECONDS_IN_A_DAY) + 4011 * 10^18 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = _595
                                    mem[32] = 6
                                    stor6[_595] = block.timestamp
                            else:
                                if (0 / SECONDS_IN_A_DAY) + 1337 * 10^18 < 0 / SECONDS_IN_A_DAY:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (0 / SECONDS_IN_A_DAY) + 1337 * 10^18:
                                    if (0 / SECONDS_IN_A_DAY) + 1337 * 10^18 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = _595
                                    mem[32] = 6
                                    stor6[_595] = block.timestamp
                    else:
                        require block.timestamp - emissionStart
                        if (block.timestamp * emissionPerDay) - (emissionStart * emissionPerDay) / block.timestamp - emissionStart != emissionPerDay:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _687 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_687] = 26
                        mem[_687 + 32] = 'SafeMath: division by zero'
                        if SECONDS_IN_A_DAY <= 0:
                            _703 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_703 + idx + 68] = mem[_687 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_703 + 68] = mem[_703 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _703 + -mem[64] + 100
                        require SECONDS_IN_A_DAY
                        if emissionStart != emissionStart:
                            if (block.timestamp * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY:
                                if (block.timestamp * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = _595
                                mem[32] = 6
                                stor6[_595] = block.timestamp
                        else:
                            mem[mem[64] + 4] = _595
                            require ext_code.size(stor10)
                            staticcall stor10.0xbc28d702 with:
                                    gas gas_remaining wei
                                   args _595
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if bool(ext_call.return_data[0]) == 1:
                                if ((block.timestamp * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY) + 4011 * 10^18 < (block.timestamp * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ((block.timestamp * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY) + 4011 * 10^18:
                                    if ((block.timestamp * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY) + 4011 * 10^18 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = _595
                                    mem[32] = 6
                                    stor6[_595] = block.timestamp
                            else:
                                if ((block.timestamp * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY) + 1337 * 10^18 < (block.timestamp * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ((block.timestamp * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY) + 1337 * 10^18:
                                    if ((block.timestamp * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY) + 1337 * 10^18 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = _595
                                    mem[32] = 6
                                    stor6[_595] = block.timestamp
                else:
                    _638 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_638] = 30
                    mem[_638 + 32] = 'SafeMath: subtraction overflow'
                    if emissionStart > emissionEnd:
                        _648 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_648 + idx + 68] = mem[_638 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_648 + 68] = mem[_648 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _648 + -mem[64] + 100
                    if not emissionEnd - emissionStart:
                        _678 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_678] = 26
                        mem[_678 + 32] = 'SafeMath: division by zero'
                        if SECONDS_IN_A_DAY <= 0:
                            _692 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_692 + idx + 68] = mem[_678 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_692 + 68] = mem[_692 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _692 + -mem[64] + 100
                        require SECONDS_IN_A_DAY
                        if emissionStart != emissionStart:
                            if 0 / SECONDS_IN_A_DAY:
                                if 0 / SECONDS_IN_A_DAY < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = _595
                                mem[32] = 6
                                stor6[_595] = block.timestamp
                        else:
                            mem[mem[64] + 4] = _595
                            require ext_code.size(stor10)
                            staticcall stor10.0xbc28d702 with:
                                    gas gas_remaining wei
                                   args _595
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if bool(ext_call.return_data[0]) == 1:
                                if (0 / SECONDS_IN_A_DAY) + 4011 * 10^18 < 0 / SECONDS_IN_A_DAY:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (0 / SECONDS_IN_A_DAY) + 4011 * 10^18:
                                    if (0 / SECONDS_IN_A_DAY) + 4011 * 10^18 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = _595
                                    mem[32] = 6
                                    stor6[_595] = block.timestamp
                            else:
                                if (0 / SECONDS_IN_A_DAY) + 1337 * 10^18 < 0 / SECONDS_IN_A_DAY:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (0 / SECONDS_IN_A_DAY) + 1337 * 10^18:
                                    if (0 / SECONDS_IN_A_DAY) + 1337 * 10^18 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = _595
                                    mem[32] = 6
                                    stor6[_595] = block.timestamp
                    else:
                        require emissionEnd - emissionStart
                        if (emissionEnd * emissionPerDay) - (emissionStart * emissionPerDay) / emissionEnd - emissionStart != emissionPerDay:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _691 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_691] = 26
                        mem[_691 + 32] = 'SafeMath: division by zero'
                        if SECONDS_IN_A_DAY <= 0:
                            _707 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_707 + idx + 68] = mem[_691 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_707 + 68] = mem[_707 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _707 + -mem[64] + 100
                        require SECONDS_IN_A_DAY
                        if emissionStart != emissionStart:
                            if (emissionEnd * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY:
                                if (emissionEnd * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = _595
                                mem[32] = 6
                                stor6[_595] = block.timestamp
                        else:
                            mem[mem[64] + 4] = _595
                            require ext_code.size(stor10)
                            staticcall stor10.0xbc28d702 with:
                                    gas gas_remaining wei
                                   args _595
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if bool(ext_call.return_data[0]) == 1:
                                if ((emissionEnd * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY) + 4011 * 10^18 < (emissionEnd * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ((emissionEnd * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY) + 4011 * 10^18:
                                    if ((emissionEnd * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY) + 4011 * 10^18 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = _595
                                    mem[32] = 6
                                    stor6[_595] = block.timestamp
                            else:
                                if ((emissionEnd * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY) + 1337 * 10^18 < (emissionEnd * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ((emissionEnd * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY) + 1337 * 10^18:
                                    if ((emissionEnd * emissionPerDay) - (emissionStart * emissionPerDay) / SECONDS_IN_A_DAY) + 1337 * 10^18 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = _595
                                    mem[32] = 6
                                    stor6[_595] = block.timestamp
        else:
            mem[0] = _595
            mem[32] = 6
            if stor6[_595] < emissionEnd:
                if block.timestamp < emissionEnd:
                    _635 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_635] = 30
                    mem[_635 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[_595] > block.timestamp:
                        _639 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_639 + idx + 68] = mem[_635 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_639 + 68] = mem[_639 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _639 + -mem[64] + 100
                    if not block.timestamp - stor6[_595]:
                        _675 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_675] = 26
                        mem[_675 + 32] = 'SafeMath: division by zero'
                        if SECONDS_IN_A_DAY <= 0:
                            _680 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_680 + idx + 68] = mem[_675 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_680 + 68] = mem[_680 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _680 + -mem[64] + 100
                        require SECONDS_IN_A_DAY
                        if stor6[_595] != emissionStart:
                            if 0 / SECONDS_IN_A_DAY:
                                if 0 / SECONDS_IN_A_DAY < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = _595
                                mem[32] = 6
                                stor6[_595] = block.timestamp
                        else:
                            mem[mem[64] + 4] = _595
                            require ext_code.size(stor10)
                            staticcall stor10.0xbc28d702 with:
                                    gas gas_remaining wei
                                   args _595
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if bool(ext_call.return_data[0]) == 1:
                                if (0 / SECONDS_IN_A_DAY) + 4011 * 10^18 < 0 / SECONDS_IN_A_DAY:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (0 / SECONDS_IN_A_DAY) + 4011 * 10^18:
                                    if (0 / SECONDS_IN_A_DAY) + 4011 * 10^18 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = _595
                                    mem[32] = 6
                                    stor6[_595] = block.timestamp
                            else:
                                if (0 / SECONDS_IN_A_DAY) + 1337 * 10^18 < 0 / SECONDS_IN_A_DAY:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (0 / SECONDS_IN_A_DAY) + 1337 * 10^18:
                                    if (0 / SECONDS_IN_A_DAY) + 1337 * 10^18 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = _595
                                    mem[32] = 6
                                    stor6[_595] = block.timestamp
                    else:
                        require block.timestamp - stor6[_595]
                        if (block.timestamp * emissionPerDay) - (stor6[_595] * emissionPerDay) / block.timestamp - stor6[_595] != emissionPerDay:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _679 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_679] = 26
                        mem[_679 + 32] = 'SafeMath: division by zero'
                        if SECONDS_IN_A_DAY <= 0:
                            _695 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_695 + idx + 68] = mem[_679 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_695 + 68] = mem[_695 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _695 + -mem[64] + 100
                        require SECONDS_IN_A_DAY
                        if stor6[_595] != emissionStart:
                            if (block.timestamp * emissionPerDay) - (stor6[_595] * emissionPerDay) / SECONDS_IN_A_DAY:
                                if (block.timestamp * emissionPerDay) - (stor6[_595] * emissionPerDay) / SECONDS_IN_A_DAY < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = _595
                                mem[32] = 6
                                stor6[_595] = block.timestamp
                        else:
                            mem[mem[64] + 4] = _595
                            require ext_code.size(stor10)
                            staticcall stor10.0xbc28d702 with:
                                    gas gas_remaining wei
                                   args _595
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if bool(ext_call.return_data[0]) == 1:
                                if ((block.timestamp * emissionPerDay) - (stor6[_595] * emissionPerDay) / SECONDS_IN_A_DAY) + 4011 * 10^18 < (block.timestamp * emissionPerDay) - (stor6[_595] * emissionPerDay) / SECONDS_IN_A_DAY:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ((block.timestamp * emissionPerDay) - (stor6[_595] * emissionPerDay) / SECONDS_IN_A_DAY) + 4011 * 10^18:
                                    if ((block.timestamp * emissionPerDay) - (stor6[_595] * emissionPerDay) / SECONDS_IN_A_DAY) + 4011 * 10^18 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = _595
                                    mem[32] = 6
                                    stor6[_595] = block.timestamp
                            else:
                                if ((block.timestamp * emissionPerDay) - (stor6[_595] * emissionPerDay) / SECONDS_IN_A_DAY) + 1337 * 10^18 < (block.timestamp * emissionPerDay) - (stor6[_595] * emissionPerDay) / SECONDS_IN_A_DAY:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ((block.timestamp * emissionPerDay) - (stor6[_595] * emissionPerDay) / SECONDS_IN_A_DAY) + 1337 * 10^18:
                                    if ((block.timestamp * emissionPerDay) - (stor6[_595] * emissionPerDay) / SECONDS_IN_A_DAY) + 1337 * 10^18 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = _595
                                    mem[32] = 6
                                    stor6[_595] = block.timestamp
                else:
                    _636 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_636] = 30
                    mem[_636 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[_595] > emissionEnd:
                        _642 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_642 + idx + 68] = mem[_636 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_642 + 68] = mem[_642 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _642 + -mem[64] + 100
                    if not emissionEnd - stor6[_595]:
                        _676 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_676] = 26
                        mem[_676 + 32] = 'SafeMath: division by zero'
                        if SECONDS_IN_A_DAY <= 0:
                            _684 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_684 + idx + 68] = mem[_676 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_684 + 68] = mem[_684 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _684 + -mem[64] + 100
                        require SECONDS_IN_A_DAY
                        if stor6[_595] != emissionStart:
                            if 0 / SECONDS_IN_A_DAY:
                                if 0 / SECONDS_IN_A_DAY < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = _595
                                mem[32] = 6
                                stor6[_595] = block.timestamp
                        else:
                            mem[mem[64] + 4] = _595
                            require ext_code.size(stor10)
                            staticcall stor10.0xbc28d702 with:
                                    gas gas_remaining wei
                                   args _595
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if bool(ext_call.return_data[0]) == 1:
                                if (0 / SECONDS_IN_A_DAY) + 4011 * 10^18 < 0 / SECONDS_IN_A_DAY:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (0 / SECONDS_IN_A_DAY) + 4011 * 10^18:
                                    if (0 / SECONDS_IN_A_DAY) + 4011 * 10^18 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = _595
                                    mem[32] = 6
                                    stor6[_595] = block.timestamp
                            else:
                                if (0 / SECONDS_IN_A_DAY) + 1337 * 10^18 < 0 / SECONDS_IN_A_DAY:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (0 / SECONDS_IN_A_DAY) + 1337 * 10^18:
                                    if (0 / SECONDS_IN_A_DAY) + 1337 * 10^18 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = _595
                                    mem[32] = 6
                                    stor6[_595] = block.timestamp
                    else:
                        require emissionEnd - stor6[_595]
                        if (emissionEnd * emissionPerDay) - (stor6[_595] * emissionPerDay) / emissionEnd - stor6[_595] != emissionPerDay:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _683 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_683] = 26
                        mem[_683 + 32] = 'SafeMath: division by zero'
                        if SECONDS_IN_A_DAY <= 0:
                            _699 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_699 + idx + 68] = mem[_683 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_699 + 68] = mem[_699 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _699 + -mem[64] + 100
                        require SECONDS_IN_A_DAY
                        if stor6[_595] != emissionStart:
                            if (emissionEnd * emissionPerDay) - (stor6[_595] * emissionPerDay) / SECONDS_IN_A_DAY:
                                if (emissionEnd * emissionPerDay) - (stor6[_595] * emissionPerDay) / SECONDS_IN_A_DAY < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = _595
                                mem[32] = 6
                                stor6[_595] = block.timestamp
                        else:
                            mem[mem[64] + 4] = _595
                            require ext_code.size(stor10)
                            staticcall stor10.0xbc28d702 with:
                                    gas gas_remaining wei
                                   args _595
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if bool(ext_call.return_data[0]) == 1:
                                if ((emissionEnd * emissionPerDay) - (stor6[_595] * emissionPerDay) / SECONDS_IN_A_DAY) + 4011 * 10^18 < (emissionEnd * emissionPerDay) - (stor6[_595] * emissionPerDay) / SECONDS_IN_A_DAY:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ((emissionEnd * emissionPerDay) - (stor6[_595] * emissionPerDay) / SECONDS_IN_A_DAY) + 4011 * 10^18:
                                    if ((emissionEnd * emissionPerDay) - (stor6[_595] * emissionPerDay) / SECONDS_IN_A_DAY) + 4011 * 10^18 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = _595
                                    mem[32] = 6
                                    stor6[_595] = block.timestamp
                            else:
                                if ((emissionEnd * emissionPerDay) - (stor6[_595] * emissionPerDay) / SECONDS_IN_A_DAY) + 1337 * 10^18 < (emissionEnd * emissionPerDay) - (stor6[_595] * emissionPerDay) / SECONDS_IN_A_DAY:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ((emissionEnd * emissionPerDay) - (stor6[_595] * emissionPerDay) / SECONDS_IN_A_DAY) + 1337 * 10^18:
                                    if ((emissionEnd * emissionPerDay) - (stor6[_595] * emissionPerDay) / SECONDS_IN_A_DAY) + 1337 * 10^18 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = _595
                                    mem[32] = 6
                                    stor6[_595] = block.timestamp
        idx = idx + 1
        continue 
    revert with 0, 'No accumulated NYR'
}



}
