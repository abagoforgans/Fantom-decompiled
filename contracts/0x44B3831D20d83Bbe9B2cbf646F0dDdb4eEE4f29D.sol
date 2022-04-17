contract main {




// =====================  Runtime code  =====================


#
#  - sub_2ae8a8c0(?)
#  - sub_76fcca0d(?)
#
uint256 sub_8793f2c7;
uint256 SECONDS_IN_A_DAY;
uint256 sub_ddb4c5fd;
uint256 sub_ae1e2d53;
uint256 epochLength;
uint256 sub_fa3b46c0;
uint256 sub_7c1d1ffa;
uint256 sub_db1d818a;
uint256 sub_4eb4c8d3;
uint256 stor9;
uint256 stor10;
uint256 stor11;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 stor16;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_4eb4c8d3(?) {
    return sub_4eb4c8d3
}

function epochLength() {
    return epochLength
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_7c1d1ffa(?) {
    return sub_7c1d1ffa
}

function sub_8793f2c7(?) {
    return sub_8793f2c7
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_ae1e2d53(?) {
    return sub_ae1e2d53
}

function sub_db1d818a(?) {
    return sub_db1d818a
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_ddb4c5fd(?) {
    return sub_ddb4c5fd
}

function SECONDS_IN_A_DAY() {
    return SECONDS_IN_A_DAY
}

function sub_fa3b46c0(?) {
    return sub_fa3b46c0
}

function _fallback() payable {
    revert
}

function sub_34949b7d(?) {
    if stor11 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((10^18 * block.timestamp) - (10^18 * stor11))
}

function sub_a275ff19(?) {
    require calldata.size - 4 >= 32
    if stor11 > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((10^18 * arg1) - (10^18 * stor11))
}

function sub_8f71dffc(?) {
    if stor11 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not epochLength:
        revert with 0, 'SafeMath: modulo by zero'
    require epochLength
    return ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength)
}

function sub_9ef522d8(?) {
    require calldata.size - 4 >= 32
    if stor11 > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_8793f2c7 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_8793f2c7
    return ((10^18 * arg1) - (10^18 * stor11) / sub_8793f2c7)
}

function sub_8e5c74da(?) {
    if stor11 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not epochLength:
        revert with 0, 'SafeMath: modulo by zero'
    require epochLength
    if (10^18 * block.timestamp) - (10^18 * stor11) % epochLength <= sub_ddb4c5fd:
        return 1
    else:
        return 0
}

function sub_76005633(?) {
    if stor11 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if epochLength < 0:
        revert with 0, 'SafeMath: addition overflow'
    if epochLength <= 0:
        revert with 0, 'SafeMath: division by zero'
    require epochLength
    return (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength)
}

function getEpoch(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor11 > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    if epochLength < 0:
        revert with 0, 'SafeMath: addition overflow'
    if epochLength <= 0:
        revert with 0, 'SafeMath: division by zero'
    require epochLength
    return (10^18 * (10^18 * arg1) - (10^18 * stor11) + epochLength / epochLength)
}

function sub_2675b71b(?) {
    if stor11 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not epochLength:
        revert with 0, 'SafeMath: modulo by zero'
    require epochLength
    if (10^18 * block.timestamp) - (10^18 * stor11) % epochLength > epochLength:
        revert with 0, 'SafeMath: subtraction overflow'
    return (epochLength - ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength))
}

function sub_c81cd5e9(?) {
    if stor11 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not epochLength:
        revert with 0, 'SafeMath: modulo by zero'
    require epochLength
    if (10^18 * block.timestamp) - (10^18 * stor11) % epochLength <= sub_ddb4c5fd:
        revert with 0, 32, 43, 0x73557365722063616e6e6f7420706c61636520636f6c6c6563746f7220647572696e6720612073746f726d, mem[335 len 21]
    if stor16[address(msg.sender)]:
        revert with 0, 32, 36, 0x735573657220616c726561647920686173206120706c6163656420636f6c6c6563746f72, mem[328 len 28]
    stor16[address(msg.sender)] = block.timestamp
    return 1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e45524332303a206275726e2066726f6d20746865207a65726f20616464726573,
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

function approve(address arg1, uint256 arg2) {
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
                    0x2145524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x2e45524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x2145524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_e6f3b4c9(?) {
    if stor11 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_4eb4c8d3:
        if SECONDS_IN_A_DAY <= 0:
            revert with 0, 'SafeMath: division by zero'
        if SECONDS_IN_A_DAY:
            return (0 / SECONDS_IN_A_DAY)
    else:
        if sub_4eb4c8d3:
            if (10^18 * block.timestamp * sub_4eb4c8d3) - (10^18 * stor11 * sub_4eb4c8d3) / sub_4eb4c8d3 != (10^18 * block.timestamp) - (10^18 * stor11):
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if SECONDS_IN_A_DAY <= 0:
                revert with 0, 'SafeMath: division by zero'
            if SECONDS_IN_A_DAY:
                return ((10^18 * block.timestamp * sub_4eb4c8d3) - (10^18 * stor11 * sub_4eb4c8d3) / SECONDS_IN_A_DAY)
    revert
}

function increaseAllowance(address arg1, uint256 arg2) {
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
                    0x2145524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
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
                    0x2e45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
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
                    0x2e45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
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
        revert with 0, 32, 34, 0x2145524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_5d5d09cb(?) {
    if stor11 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if epochLength < 0:
        revert with 0, 'SafeMath: addition overflow'
    if epochLength <= 0:
        revert with 0, 'SafeMath: division by zero'
    require epochLength
    if not 10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength:
        if sub_db1d818a > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor11 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not epochLength:
            revert with 0, 'SafeMath: modulo by zero'
        require epochLength
        if (10^18 * block.timestamp) - (10^18 * stor11) % epochLength >= sub_ddb4c5fd:
            if 0 < -sub_db1d818a:
                revert with 0, 'SafeMath: addition overflow'
            else:
                return 0
        if not (10^18 * block.timestamp) - (10^18 * stor11) % epochLength:
            if sub_ddb4c5fd <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_ddb4c5fd
            if -sub_db1d818a + (0 / sub_ddb4c5fd) < -sub_db1d818a:
                revert with 0, 'SafeMath: addition overflow'
            return (-sub_db1d818a + (0 / sub_ddb4c5fd))
        require (10^18 * block.timestamp) - (10^18 * stor11) % epochLength
        if (10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_db1d818a / (10^18 * block.timestamp) - (10^18 * stor11) % epochLength != sub_db1d818a:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if sub_ddb4c5fd <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_ddb4c5fd
        if -sub_db1d818a + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_db1d818a / sub_ddb4c5fd) < -sub_db1d818a:
            revert with 0, 'SafeMath: addition overflow'
        return (-sub_db1d818a + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_db1d818a / sub_ddb4c5fd))
    require 10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength
    if 10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength != sub_db1d818a:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if sub_db1d818a > 10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor11 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not epochLength:
        revert with 0, 'SafeMath: modulo by zero'
    require epochLength
    if (10^18 * block.timestamp) - (10^18 * stor11) % epochLength >= sub_ddb4c5fd:
        if 10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18 < (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18) - sub_db1d818a:
            revert with 0, 'SafeMath: addition overflow'
        return (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18)
    if not (10^18 * block.timestamp) - (10^18 * stor11) % epochLength:
        if sub_ddb4c5fd <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_ddb4c5fd
        if 0 / sub_ddb4c5fd < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18) - sub_db1d818a + (0 / sub_ddb4c5fd))
    require (10^18 * block.timestamp) - (10^18 * stor11) % epochLength
    if (10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_db1d818a / (10^18 * block.timestamp) - (10^18 * stor11) % epochLength != sub_db1d818a:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
    if sub_ddb4c5fd <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_ddb4c5fd
    if (10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_db1d818a / sub_ddb4c5fd < 0:
        revert with 0, 'SafeMath: addition overflow'
    return ((10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18) - sub_db1d818a + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_db1d818a / sub_ddb4c5fd))
}

function sub_c84578a6(?) {
    if stor16[address(msg.sender)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x655573657220646f6573206e6f742068617665206120706c6163656420636f6c6c6563746f72,
                    mem[202 len 26]
    if stor11 > stor16[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if epochLength < 0:
        revert with 0, 'SafeMath: addition overflow'
    if epochLength <= 0:
        revert with 0, 'SafeMath: division by zero'
    require epochLength
    if stor11 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if epochLength < 0:
        revert with 0, 'SafeMath: addition overflow'
    if epochLength <= 0:
        revert with 0, 'SafeMath: division by zero'
    require epochLength
    if 10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength > 10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor11 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not epochLength:
        revert with 0, 'SafeMath: modulo by zero'
    require epochLength
    if not 10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength:
        if sub_7c1d1ffa > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if (10^18 * block.timestamp) - (10^18 * stor11) % epochLength >= sub_ddb4c5fd:
            if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) == 10^18:
                return sub_7c1d1ffa
            if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) == 2 * 10^18:
                if 2 * sub_7c1d1ffa < sub_7c1d1ffa:
                    revert with 0, 'SafeMath: addition overflow'
                return (2 * sub_7c1d1ffa)
        else:
            if not (10^18 * block.timestamp) - (10^18 * stor11) % epochLength:
                if sub_ddb4c5fd <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_ddb4c5fd
                if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) == 10^18:
                    if (10^18 * block.timestamp) - (10^18 * stor11) % epochLength < sub_ddb4c5fd:
                        return (0 / sub_ddb4c5fd)
                    return sub_7c1d1ffa
                if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) == 2 * 10^18:
                    if (0 / sub_ddb4c5fd) + sub_7c1d1ffa < 0 / sub_ddb4c5fd:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / sub_ddb4c5fd) + sub_7c1d1ffa)
            else:
                require (10^18 * block.timestamp) - (10^18 * stor11) % epochLength
                if (10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / (10^18 * block.timestamp) - (10^18 * stor11) % epochLength != sub_7c1d1ffa:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                if sub_ddb4c5fd <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_ddb4c5fd
                if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) == 10^18:
                    if (10^18 * block.timestamp) - (10^18 * stor11) % epochLength < sub_ddb4c5fd:
                        return ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd)
                    return sub_7c1d1ffa
                if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) == 2 * 10^18:
                    if ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd) + sub_7c1d1ffa < (10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd:
                        revert with 0, 'SafeMath: addition overflow'
                    return (((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd) + sub_7c1d1ffa)
        ('iszero', ('eq', ('add', ('mul', 1000000000000000000, ('div', ('add', ('mul', 1000000000000000000, 'timestamp'), ('mul', -1000000000000000000, ('stor', ('name', 'stor11', 11))), ('stor', ('name', 'epochLength', 4))), ('stor', ('name', 'epochLength', 4)))), ('mul', -1000000000000000000, ('div', ('add', ('mul', 1000000000000000000, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor16', 16)))), ('mul', -1000000000000000000, ('stor', ('name', 'stor11', 11))), ('stor', ('name', 'epochLength', 4))), ('stor', ('name', 'epochLength', 4))))), 2000000000000000000))
        if not (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength):
            return 0
        if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) <= 2 * 10^18:
            return -sub_7c1d1ffa
    else:
        require 10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength
        if 10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_7c1d1ffa / 10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength != sub_7c1d1ffa:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
        if sub_7c1d1ffa > 10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_7c1d1ffa / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if (10^18 * block.timestamp) - (10^18 * stor11) % epochLength >= sub_ddb4c5fd:
            if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) == 10^18:
                return sub_7c1d1ffa
            if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) == 2 * 10^18:
                if 2 * sub_7c1d1ffa < sub_7c1d1ffa:
                    revert with 0, 'SafeMath: addition overflow'
                return (2 * sub_7c1d1ffa)
        else:
            if not (10^18 * block.timestamp) - (10^18 * stor11) % epochLength:
                if sub_ddb4c5fd <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_ddb4c5fd
                if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) == 10^18:
                    if (10^18 * block.timestamp) - (10^18 * stor11) % epochLength < sub_ddb4c5fd:
                        return (0 / sub_ddb4c5fd)
                    return sub_7c1d1ffa
                if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) == 2 * 10^18:
                    if (0 / sub_ddb4c5fd) + sub_7c1d1ffa < 0 / sub_ddb4c5fd:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / sub_ddb4c5fd) + sub_7c1d1ffa)
            else:
                require (10^18 * block.timestamp) - (10^18 * stor11) % epochLength
                if (10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / (10^18 * block.timestamp) - (10^18 * stor11) % epochLength != sub_7c1d1ffa:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                if sub_ddb4c5fd <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_ddb4c5fd
                if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) == 10^18:
                    if (10^18 * block.timestamp) - (10^18 * stor11) % epochLength < sub_ddb4c5fd:
                        return ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd)
                    return sub_7c1d1ffa
                if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) == 2 * 10^18:
                    if ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd) + sub_7c1d1ffa < (10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd:
                        revert with 0, 'SafeMath: addition overflow'
                    return (((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd) + sub_7c1d1ffa)
        ('iszero', ('eq', ('add', ('mul', 1000000000000000000, ('div', ('add', ('mul', 1000000000000000000, 'timestamp'), ('mul', -1000000000000000000, ('stor', ('name', 'stor11', 11))), ('stor', ('name', 'epochLength', 4))), ('stor', ('name', 'epochLength', 4)))), ('mul', -1000000000000000000, ('div', ('add', ('mul', 1000000000000000000, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor16', 16)))), ('mul', -1000000000000000000, ('stor', ('name', 'stor11', 11))), ('stor', ('name', 'epochLength', 4))), ('stor', ('name', 'epochLength', 4))))), 2000000000000000000))
        if not (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength):
            return 0
        if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) <= 2 * 10^18:
            return ((10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_7c1d1ffa / 10^18) - sub_7c1d1ffa)
    ('gt', ('add', ('mul', 1000000000000000000, ('div', ('add', ('mul', 1000000000000000000, 'timestamp'), ('mul', -1000000000000000000, ('stor', ('name', 'stor11', 11))), ('stor', ('name', 'epochLength', 4))), ('stor', ('name', 'epochLength', 4)))), ('mul', -1000000000000000000, ('div', ('add', ('mul', 1000000000000000000, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor16', 16)))), ('mul', -1000000000000000000, ('stor', ('name', 'stor11', 11))), ('stor', ('name', 'epochLength', 4))), ('stor', ('name', 'epochLength', 4))))), 2000000000000000000)
    return sub_fa3b46c0
}

function sub_c398a0de(?) {
    if stor11 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if epochLength < 0:
        revert with 0, 'SafeMath: addition overflow'
    if epochLength <= 0:
        revert with 0, 'SafeMath: division by zero'
    require epochLength
    if not 10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength:
        if sub_db1d818a > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor11 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not epochLength:
            revert with 0, 'SafeMath: modulo by zero'
        require epochLength
        if (10^18 * block.timestamp) - (10^18 * stor11) % epochLength >= sub_ddb4c5fd:
            if 0 < -sub_db1d818a:
                revert with 0, 'SafeMath: addition overflow'
            if stor11 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_4eb4c8d3:
                if SECONDS_IN_A_DAY <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require SECONDS_IN_A_DAY
                if stor9 < stor9:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / SECONDS_IN_A_DAY > stor9:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor10 > stor9 - (0 / SECONDS_IN_A_DAY):
                    revert with 0, 'SafeMath: subtraction overflow'
                return (stor9 - (0 / SECONDS_IN_A_DAY) - stor10)
            require sub_4eb4c8d3
            if (10^18 * block.timestamp * sub_4eb4c8d3) - (10^18 * stor11 * sub_4eb4c8d3) / sub_4eb4c8d3 != (10^18 * block.timestamp) - (10^18 * stor11):
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            if SECONDS_IN_A_DAY <= 0:
                revert with 0, 'SafeMath: division by zero'
            require SECONDS_IN_A_DAY
            if stor9 < stor9:
                revert with 0, 'SafeMath: addition overflow'
            if (10^18 * block.timestamp * sub_4eb4c8d3) - (10^18 * stor11 * sub_4eb4c8d3) / SECONDS_IN_A_DAY > stor9:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor10 > stor9 - ((10^18 * block.timestamp * sub_4eb4c8d3) - (10^18 * stor11 * sub_4eb4c8d3) / SECONDS_IN_A_DAY):
                revert with 0, 'SafeMath: subtraction overflow'
            return (stor9 - ((10^18 * block.timestamp * sub_4eb4c8d3) - (10^18 * stor11 * sub_4eb4c8d3) / SECONDS_IN_A_DAY) - stor10)
        if not (10^18 * block.timestamp) - (10^18 * stor11) % epochLength:
            if sub_ddb4c5fd <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_ddb4c5fd
            if -sub_db1d818a + (0 / sub_ddb4c5fd) < -sub_db1d818a:
                revert with 0, 'SafeMath: addition overflow'
            if stor11 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_4eb4c8d3:
                if SECONDS_IN_A_DAY <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require SECONDS_IN_A_DAY
                if stor9 - sub_db1d818a + (0 / sub_ddb4c5fd) < stor9:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / SECONDS_IN_A_DAY > stor9 - sub_db1d818a + (0 / sub_ddb4c5fd):
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor10 > stor9 - sub_db1d818a + (0 / sub_ddb4c5fd) - (0 / SECONDS_IN_A_DAY):
                    revert with 0, 'SafeMath: subtraction overflow'
                return (stor9 - sub_db1d818a + (0 / sub_ddb4c5fd) - (0 / SECONDS_IN_A_DAY) - stor10)
            require sub_4eb4c8d3
            if (10^18 * block.timestamp * sub_4eb4c8d3) - (10^18 * stor11 * sub_4eb4c8d3) / sub_4eb4c8d3 != (10^18 * block.timestamp) - (10^18 * stor11):
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if SECONDS_IN_A_DAY <= 0:
                revert with 0, 'SafeMath: division by zero'
            require SECONDS_IN_A_DAY
            if stor9 - sub_db1d818a + (0 / sub_ddb4c5fd) < stor9:
                revert with 0, 'SafeMath: addition overflow'
            if (10^18 * block.timestamp * sub_4eb4c8d3) - (10^18 * stor11 * sub_4eb4c8d3) / SECONDS_IN_A_DAY > stor9 - sub_db1d818a + (0 / sub_ddb4c5fd):
                revert with 0, 'SafeMath: subtraction overflow'
            if stor10 > stor9 - sub_db1d818a + (0 / sub_ddb4c5fd) - ((10^18 * block.timestamp * sub_4eb4c8d3) - (10^18 * stor11 * sub_4eb4c8d3) / SECONDS_IN_A_DAY):
                revert with 0, 'SafeMath: subtraction overflow'
            return (stor9 - sub_db1d818a + (0 / sub_ddb4c5fd) - ((10^18 * block.timestamp * sub_4eb4c8d3) - (10^18 * stor11 * sub_4eb4c8d3) / SECONDS_IN_A_DAY) - stor10)
        require (10^18 * block.timestamp) - (10^18 * stor11) % epochLength
        if (10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_db1d818a / (10^18 * block.timestamp) - (10^18 * stor11) % epochLength != sub_db1d818a:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if sub_ddb4c5fd <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_ddb4c5fd
        if -sub_db1d818a + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_db1d818a / sub_ddb4c5fd) < -sub_db1d818a:
            revert with 0, 'SafeMath: addition overflow'
        if stor11 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_4eb4c8d3:
            if SECONDS_IN_A_DAY <= 0:
                revert with 0, 'SafeMath: division by zero'
            require SECONDS_IN_A_DAY
            if stor9 - sub_db1d818a + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_db1d818a / sub_ddb4c5fd) < stor9:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / SECONDS_IN_A_DAY > stor9 - sub_db1d818a + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_db1d818a / sub_ddb4c5fd):
                revert with 0, 'SafeMath: subtraction overflow'
            if stor10 > stor9 - sub_db1d818a + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_db1d818a / sub_ddb4c5fd) - (0 / SECONDS_IN_A_DAY):
                revert with 0, 'SafeMath: subtraction overflow'
            return (stor9 - sub_db1d818a + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_db1d818a / sub_ddb4c5fd) - (0 / SECONDS_IN_A_DAY) - stor10)
        require sub_4eb4c8d3
        if (10^18 * block.timestamp * sub_4eb4c8d3) - (10^18 * stor11 * sub_4eb4c8d3) / sub_4eb4c8d3 != (10^18 * block.timestamp) - (10^18 * stor11):
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
        if SECONDS_IN_A_DAY <= 0:
            revert with 0, 'SafeMath: division by zero'
        require SECONDS_IN_A_DAY
        if stor9 - sub_db1d818a + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_db1d818a / sub_ddb4c5fd) < stor9:
            revert with 0, 'SafeMath: addition overflow'
        if (10^18 * block.timestamp * sub_4eb4c8d3) - (10^18 * stor11 * sub_4eb4c8d3) / SECONDS_IN_A_DAY > stor9 - sub_db1d818a + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_db1d818a / sub_ddb4c5fd):
            revert with 0, 'SafeMath: subtraction overflow'
        if stor10 > stor9 - sub_db1d818a + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_db1d818a / sub_ddb4c5fd) - ((10^18 * block.timestamp * sub_4eb4c8d3) - (10^18 * stor11 * sub_4eb4c8d3) / SECONDS_IN_A_DAY):
            revert with 0, 'SafeMath: subtraction overflow'
        return (stor9 - sub_db1d818a + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_db1d818a / sub_ddb4c5fd) - ((10^18 * block.timestamp * sub_4eb4c8d3) - (10^18 * stor11 * sub_4eb4c8d3) / SECONDS_IN_A_DAY) - stor10)
    require 10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength
    if 10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength != sub_db1d818a:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if sub_db1d818a > 10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor11 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not epochLength:
        revert with 0, 'SafeMath: modulo by zero'
    require epochLength
    if (10^18 * block.timestamp) - (10^18 * stor11) % epochLength >= sub_ddb4c5fd:
        if 10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18 < (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18) - sub_db1d818a:
            revert with 0, 'SafeMath: addition overflow'
        if stor11 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_4eb4c8d3:
            if SECONDS_IN_A_DAY <= 0:
                revert with 0, 'SafeMath: division by zero'
            require SECONDS_IN_A_DAY
            if stor9 + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18) < stor9:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / SECONDS_IN_A_DAY > stor9 + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18):
                revert with 0, 'SafeMath: subtraction overflow'
            if stor10 > stor9 + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18) - (0 / SECONDS_IN_A_DAY):
                revert with 0, 'SafeMath: subtraction overflow'
            return (stor9 + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18) - (0 / SECONDS_IN_A_DAY) - stor10)
        require sub_4eb4c8d3
        if (10^18 * block.timestamp * sub_4eb4c8d3) - (10^18 * stor11 * sub_4eb4c8d3) / sub_4eb4c8d3 != (10^18 * block.timestamp) - (10^18 * stor11):
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
        if SECONDS_IN_A_DAY <= 0:
            revert with 0, 'SafeMath: division by zero'
        require SECONDS_IN_A_DAY
        if stor9 + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18) < stor9:
            revert with 0, 'SafeMath: addition overflow'
        if (10^18 * block.timestamp * sub_4eb4c8d3) - (10^18 * stor11 * sub_4eb4c8d3) / SECONDS_IN_A_DAY > stor9 + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18):
            revert with 0, 'SafeMath: subtraction overflow'
        if stor10 > stor9 + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18) - ((10^18 * block.timestamp * sub_4eb4c8d3) - (10^18 * stor11 * sub_4eb4c8d3) / SECONDS_IN_A_DAY):
            revert with 0, 'SafeMath: subtraction overflow'
        return (stor9 + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18) - ((10^18 * block.timestamp * sub_4eb4c8d3) - (10^18 * stor11 * sub_4eb4c8d3) / SECONDS_IN_A_DAY) - stor10)
    if not (10^18 * block.timestamp) - (10^18 * stor11) % epochLength:
        if sub_ddb4c5fd <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_ddb4c5fd
        if 0 / sub_ddb4c5fd < 0:
            revert with 0, 'SafeMath: addition overflow'
        if stor11 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_4eb4c8d3:
            if SECONDS_IN_A_DAY <= 0:
                revert with 0, 'SafeMath: division by zero'
            require SECONDS_IN_A_DAY
            if stor9 + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18) - sub_db1d818a + (0 / sub_ddb4c5fd) < stor9:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / SECONDS_IN_A_DAY > stor9 + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18) - sub_db1d818a + (0 / sub_ddb4c5fd):
                revert with 0, 'SafeMath: subtraction overflow'
            if stor10 > stor9 + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18) - sub_db1d818a + (0 / sub_ddb4c5fd) - (0 / SECONDS_IN_A_DAY):
                revert with 0, 'SafeMath: subtraction overflow'
            return (stor9 + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18) - sub_db1d818a + (0 / sub_ddb4c5fd) - (0 / SECONDS_IN_A_DAY) - stor10)
        require sub_4eb4c8d3
        if (10^18 * block.timestamp * sub_4eb4c8d3) - (10^18 * stor11 * sub_4eb4c8d3) / sub_4eb4c8d3 != (10^18 * block.timestamp) - (10^18 * stor11):
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
        if SECONDS_IN_A_DAY <= 0:
            revert with 0, 'SafeMath: division by zero'
        require SECONDS_IN_A_DAY
        if stor9 + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18) - sub_db1d818a + (0 / sub_ddb4c5fd) < stor9:
            revert with 0, 'SafeMath: addition overflow'
        if (10^18 * block.timestamp * sub_4eb4c8d3) - (10^18 * stor11 * sub_4eb4c8d3) / SECONDS_IN_A_DAY > stor9 + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18) - sub_db1d818a + (0 / sub_ddb4c5fd):
            revert with 0, 'SafeMath: subtraction overflow'
        if stor10 > stor9 + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18) - sub_db1d818a + (0 / sub_ddb4c5fd) - ((10^18 * block.timestamp * sub_4eb4c8d3) - (10^18 * stor11 * sub_4eb4c8d3) / SECONDS_IN_A_DAY):
            revert with 0, 'SafeMath: subtraction overflow'
        return (stor9 + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18) - sub_db1d818a + (0 / sub_ddb4c5fd) - ((10^18 * block.timestamp * sub_4eb4c8d3) - (10^18 * stor11 * sub_4eb4c8d3) / SECONDS_IN_A_DAY) - stor10)
    require (10^18 * block.timestamp) - (10^18 * stor11) % epochLength
    if (10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_db1d818a / (10^18 * block.timestamp) - (10^18 * stor11) % epochLength != sub_db1d818a:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
    if sub_ddb4c5fd <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_ddb4c5fd
    if (10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_db1d818a / sub_ddb4c5fd < 0:
        revert with 0, 'SafeMath: addition overflow'
    if stor11 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_4eb4c8d3:
        if SECONDS_IN_A_DAY <= 0:
            revert with 0, 'SafeMath: division by zero'
        require SECONDS_IN_A_DAY
        if stor9 + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18) - sub_db1d818a + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_db1d818a / sub_ddb4c5fd) < stor9:
            revert with 0, 'SafeMath: addition overflow'
        if 0 / SECONDS_IN_A_DAY > stor9 + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18) - sub_db1d818a + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_db1d818a / sub_ddb4c5fd):
            revert with 0, 'SafeMath: subtraction overflow'
        if stor10 > stor9 + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18) - sub_db1d818a + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_db1d818a / sub_ddb4c5fd) - (0 / SECONDS_IN_A_DAY):
            revert with 0, 'SafeMath: subtraction overflow'
        return (stor9 + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18) - sub_db1d818a + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_db1d818a / sub_ddb4c5fd) - (0 / SECONDS_IN_A_DAY) - stor10)
    require sub_4eb4c8d3
    if (10^18 * block.timestamp * sub_4eb4c8d3) - (10^18 * stor11 * sub_4eb4c8d3) / sub_4eb4c8d3 != (10^18 * block.timestamp) - (10^18 * stor11):
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
    if SECONDS_IN_A_DAY <= 0:
        revert with 0, 'SafeMath: division by zero'
    require SECONDS_IN_A_DAY
    if stor9 + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18) - sub_db1d818a + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_db1d818a / sub_ddb4c5fd) < stor9:
        revert with 0, 'SafeMath: addition overflow'
    if (10^18 * block.timestamp * sub_4eb4c8d3) - (10^18 * stor11 * sub_4eb4c8d3) / SECONDS_IN_A_DAY > stor9 + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18) - sub_db1d818a + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_db1d818a / sub_ddb4c5fd):
        revert with 0, 'SafeMath: subtraction overflow'
    if stor10 > stor9 + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18) - sub_db1d818a + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_db1d818a / sub_ddb4c5fd) - ((10^18 * block.timestamp * sub_4eb4c8d3) - (10^18 * stor11 * sub_4eb4c8d3) / SECONDS_IN_A_DAY):
        revert with 0, 'SafeMath: subtraction overflow'
    return (stor9 + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_db1d818a / 10^18) - sub_db1d818a + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_db1d818a / sub_ddb4c5fd) - ((10^18 * block.timestamp * sub_4eb4c8d3) - (10^18 * stor11 * sub_4eb4c8d3) / SECONDS_IN_A_DAY) - stor10)
}

function sub_a58e140e(?) {
    if stor11 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not epochLength:
        revert with 0, 'SafeMath: modulo by zero'
    require epochLength
    if (10^18 * block.timestamp) - (10^18 * stor11) % epochLength <= sub_ddb4c5fd:
        revert with 0, 
                    32,
                    46,
                    0x2e557365722063616e6e6f74207069636b7570206120636f6c6c6563746f7220647572696e6720612073746f726d,
                    mem[338 len 18]
    if stor16[address(msg.sender)] <= 0:
        revert with 0, 32, 38, 0x655573657220646f6573206e6f742068617665206120706c6163656420636f6c6c6563746f72, mem[330 len 26]
    if stor16[address(msg.sender)] <= 0:
        revert with 0, 32, 38, 0x655573657220646f6573206e6f742068617665206120706c6163656420636f6c6c6563746f72, mem[330 len 26]
    if stor11 > stor16[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if epochLength < 0:
        revert with 0, 'SafeMath: addition overflow'
    if epochLength <= 0:
        revert with 0, 'SafeMath: division by zero'
    require epochLength
    if stor11 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if epochLength < 0:
        revert with 0, 'SafeMath: addition overflow'
    if epochLength <= 0:
        revert with 0, 'SafeMath: division by zero'
    require epochLength
    if 10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength > 10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor11 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not epochLength:
        revert with 0, 'SafeMath: modulo by zero'
    require epochLength
    if not 10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength:
        if sub_7c1d1ffa > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if (10^18 * block.timestamp) - (10^18 * stor11) % epochLength >= sub_ddb4c5fd:
            if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) == 10^18:
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply + sub_7c1d1ffa < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += sub_7c1d1ffa
                if balanceOf[address(msg.sender)] + sub_7c1d1ffa < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += sub_7c1d1ffa
                emit Transfer(sub_7c1d1ffa, 0, msg.sender);
            else:
                if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) == 2 * 10^18:
                    if 2 * sub_7c1d1ffa < sub_7c1d1ffa:
                        revert with 0, 'SafeMath: addition overflow'
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply + (2 * sub_7c1d1ffa) < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 2 * sub_7c1d1ffa
                    if balanceOf[address(msg.sender)] + (2 * sub_7c1d1ffa) < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += 2 * sub_7c1d1ffa
                    emit Transfer((2 * sub_7c1d1ffa), 0, msg.sender);
                else:
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if not (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength):
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, 0, msg.sender);
                    else:
                        if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) <= 2 * 10^18:
                            if totalSupply - sub_7c1d1ffa < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply -= sub_7c1d1ffa
                            if balanceOf[address(msg.sender)] - sub_7c1d1ffa < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] -= sub_7c1d1ffa
                            emit Transfer(-sub_7c1d1ffa, 0, msg.sender);
                        else:
                            if totalSupply + sub_fa3b46c0 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += sub_fa3b46c0
                            if balanceOf[address(msg.sender)] + sub_fa3b46c0 < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += sub_fa3b46c0
                            emit Transfer(sub_fa3b46c0, 0, msg.sender);
        else:
            if not (10^18 * block.timestamp) - (10^18 * stor11) % epochLength:
                if sub_ddb4c5fd <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_ddb4c5fd
                if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) == 10^18:
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if (10^18 * block.timestamp) - (10^18 * stor11) % epochLength < sub_ddb4c5fd:
                        if totalSupply + (0 / sub_ddb4c5fd) < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / sub_ddb4c5fd
                        if balanceOf[address(msg.sender)] + (0 / sub_ddb4c5fd) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / sub_ddb4c5fd
                        emit Transfer((0 / sub_ddb4c5fd), 0, msg.sender);
                    else:
                        if totalSupply + sub_7c1d1ffa < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += sub_7c1d1ffa
                        if balanceOf[address(msg.sender)] + sub_7c1d1ffa < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += sub_7c1d1ffa
                        emit Transfer(sub_7c1d1ffa, 0, msg.sender);
                else:
                    if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) == 2 * 10^18:
                        if (0 / sub_ddb4c5fd) + sub_7c1d1ffa < 0 / sub_ddb4c5fd:
                            revert with 0, 'SafeMath: addition overflow'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply + (0 / sub_ddb4c5fd) + sub_7c1d1ffa < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply = totalSupply + (0 / sub_ddb4c5fd) + sub_7c1d1ffa
                        if balanceOf[address(msg.sender)] + (0 / sub_ddb4c5fd) + sub_7c1d1ffa < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (0 / sub_ddb4c5fd) + sub_7c1d1ffa
                        emit Transfer(((0 / sub_ddb4c5fd) + sub_7c1d1ffa), 0, msg.sender);
                    else:
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if not (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength):
                            if totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, 0, msg.sender);
                        else:
                            if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) <= 2 * 10^18:
                                if totalSupply - sub_7c1d1ffa < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply -= sub_7c1d1ffa
                                if balanceOf[address(msg.sender)] - sub_7c1d1ffa < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] -= sub_7c1d1ffa
                                emit Transfer(-sub_7c1d1ffa, 0, msg.sender);
                            else:
                                if totalSupply + sub_fa3b46c0 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += sub_fa3b46c0
                                if balanceOf[address(msg.sender)] + sub_fa3b46c0 < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += sub_fa3b46c0
                                emit Transfer(sub_fa3b46c0, 0, msg.sender);
            else:
                require (10^18 * block.timestamp) - (10^18 * stor11) % epochLength
                if (10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / (10^18 * block.timestamp) - (10^18 * stor11) % epochLength != sub_7c1d1ffa:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                if sub_ddb4c5fd <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_ddb4c5fd
                if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) == 10^18:
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if (10^18 * block.timestamp) - (10^18 * stor11) % epochLength < sub_ddb4c5fd:
                        if totalSupply + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd) < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += (10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd
                        if balanceOf[address(msg.sender)] + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += (10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd
                        emit Transfer(((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd), 0, msg.sender);
                    else:
                        if totalSupply + sub_7c1d1ffa < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += sub_7c1d1ffa
                        if balanceOf[address(msg.sender)] + sub_7c1d1ffa < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += sub_7c1d1ffa
                        emit Transfer(sub_7c1d1ffa, 0, msg.sender);
                else:
                    if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) == 2 * 10^18:
                        if ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd) + sub_7c1d1ffa < (10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd:
                            revert with 0, 'SafeMath: addition overflow'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd) + sub_7c1d1ffa < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply = totalSupply + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd) + sub_7c1d1ffa
                        if balanceOf[address(msg.sender)] + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd) + sub_7c1d1ffa < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd) + sub_7c1d1ffa
                        emit Transfer((((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd) + sub_7c1d1ffa), 0, msg.sender);
                    else:
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if not (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength):
                            if totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, 0, msg.sender);
                        else:
                            if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) <= 2 * 10^18:
                                if totalSupply - sub_7c1d1ffa < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply -= sub_7c1d1ffa
                                if balanceOf[address(msg.sender)] - sub_7c1d1ffa < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] -= sub_7c1d1ffa
                                emit Transfer(-sub_7c1d1ffa, 0, msg.sender);
                            else:
                                if totalSupply + sub_fa3b46c0 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += sub_fa3b46c0
                                if balanceOf[address(msg.sender)] + sub_fa3b46c0 < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += sub_fa3b46c0
                                emit Transfer(sub_fa3b46c0, 0, msg.sender);
    else:
        require 10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength
        if 10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_7c1d1ffa / 10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength != sub_7c1d1ffa:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
        if sub_7c1d1ffa > 10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_7c1d1ffa / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if (10^18 * block.timestamp) - (10^18 * stor11) % epochLength >= sub_ddb4c5fd:
            if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) == 10^18:
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply + sub_7c1d1ffa < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += sub_7c1d1ffa
                if balanceOf[address(msg.sender)] + sub_7c1d1ffa < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += sub_7c1d1ffa
                emit Transfer(sub_7c1d1ffa, 0, msg.sender);
            else:
                if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) == 2 * 10^18:
                    if 2 * sub_7c1d1ffa < sub_7c1d1ffa:
                        revert with 0, 'SafeMath: addition overflow'
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply + (2 * sub_7c1d1ffa) < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 2 * sub_7c1d1ffa
                    if balanceOf[address(msg.sender)] + (2 * sub_7c1d1ffa) < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += 2 * sub_7c1d1ffa
                    emit Transfer((2 * sub_7c1d1ffa), 0, msg.sender);
                else:
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if not (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength):
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, 0, msg.sender);
                    else:
                        if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) <= 2 * 10^18:
                            if totalSupply + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_7c1d1ffa / 10^18) - sub_7c1d1ffa < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply = totalSupply + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_7c1d1ffa / 10^18) - sub_7c1d1ffa
                            if balanceOf[address(msg.sender)] + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_7c1d1ffa / 10^18) - sub_7c1d1ffa < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_7c1d1ffa / 10^18) - sub_7c1d1ffa
                            emit Transfer(((10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_7c1d1ffa / 10^18) - sub_7c1d1ffa), 0, msg.sender);
                        else:
                            if totalSupply + sub_fa3b46c0 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += sub_fa3b46c0
                            if balanceOf[address(msg.sender)] + sub_fa3b46c0 < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += sub_fa3b46c0
                            emit Transfer(sub_fa3b46c0, 0, msg.sender);
        else:
            if not (10^18 * block.timestamp) - (10^18 * stor11) % epochLength:
                if sub_ddb4c5fd <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_ddb4c5fd
                if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) == 10^18:
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if (10^18 * block.timestamp) - (10^18 * stor11) % epochLength < sub_ddb4c5fd:
                        if totalSupply + (0 / sub_ddb4c5fd) < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / sub_ddb4c5fd
                        if balanceOf[address(msg.sender)] + (0 / sub_ddb4c5fd) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / sub_ddb4c5fd
                        emit Transfer((0 / sub_ddb4c5fd), 0, msg.sender);
                    else:
                        if totalSupply + sub_7c1d1ffa < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += sub_7c1d1ffa
                        if balanceOf[address(msg.sender)] + sub_7c1d1ffa < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += sub_7c1d1ffa
                        emit Transfer(sub_7c1d1ffa, 0, msg.sender);
                else:
                    if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) == 2 * 10^18:
                        if (0 / sub_ddb4c5fd) + sub_7c1d1ffa < 0 / sub_ddb4c5fd:
                            revert with 0, 'SafeMath: addition overflow'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply + (0 / sub_ddb4c5fd) + sub_7c1d1ffa < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply = totalSupply + (0 / sub_ddb4c5fd) + sub_7c1d1ffa
                        if balanceOf[address(msg.sender)] + (0 / sub_ddb4c5fd) + sub_7c1d1ffa < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (0 / sub_ddb4c5fd) + sub_7c1d1ffa
                        emit Transfer(((0 / sub_ddb4c5fd) + sub_7c1d1ffa), 0, msg.sender);
                    else:
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if not (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength):
                            if totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, 0, msg.sender);
                        else:
                            if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) <= 2 * 10^18:
                                if totalSupply + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_7c1d1ffa / 10^18) - sub_7c1d1ffa < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply = totalSupply + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_7c1d1ffa / 10^18) - sub_7c1d1ffa
                                if balanceOf[address(msg.sender)] + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_7c1d1ffa / 10^18) - sub_7c1d1ffa < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_7c1d1ffa / 10^18) - sub_7c1d1ffa
                                emit Transfer(((10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_7c1d1ffa / 10^18) - sub_7c1d1ffa), 0, msg.sender);
                            else:
                                if totalSupply + sub_fa3b46c0 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += sub_fa3b46c0
                                if balanceOf[address(msg.sender)] + sub_fa3b46c0 < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += sub_fa3b46c0
                                emit Transfer(sub_fa3b46c0, 0, msg.sender);
            else:
                require (10^18 * block.timestamp) - (10^18 * stor11) % epochLength
                if (10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / (10^18 * block.timestamp) - (10^18 * stor11) % epochLength != sub_7c1d1ffa:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                if sub_ddb4c5fd <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_ddb4c5fd
                if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) == 10^18:
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if (10^18 * block.timestamp) - (10^18 * stor11) % epochLength < sub_ddb4c5fd:
                        if totalSupply + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd) < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += (10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd
                        if balanceOf[address(msg.sender)] + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += (10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd
                        emit Transfer(((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd), 0, msg.sender);
                    else:
                        if totalSupply + sub_7c1d1ffa < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += sub_7c1d1ffa
                        if balanceOf[address(msg.sender)] + sub_7c1d1ffa < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += sub_7c1d1ffa
                        emit Transfer(sub_7c1d1ffa, 0, msg.sender);
                else:
                    if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) == 2 * 10^18:
                        if ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd) + sub_7c1d1ffa < (10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd:
                            revert with 0, 'SafeMath: addition overflow'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd) + sub_7c1d1ffa < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply = totalSupply + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd) + sub_7c1d1ffa
                        if balanceOf[address(msg.sender)] + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd) + sub_7c1d1ffa < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + ((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd) + sub_7c1d1ffa
                        emit Transfer((((10^18 * block.timestamp) - (10^18 * stor11) % epochLength * sub_7c1d1ffa / sub_ddb4c5fd) + sub_7c1d1ffa), 0, msg.sender);
                    else:
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if not (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength):
                            if totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, 0, msg.sender);
                        else:
                            if (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength) - (10^18 * (10^18 * stor16[address(msg.sender)]) - (10^18 * stor11) + epochLength / epochLength) <= 2 * 10^18:
                                if totalSupply + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_7c1d1ffa / 10^18) - sub_7c1d1ffa < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply = totalSupply + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_7c1d1ffa / 10^18) - sub_7c1d1ffa
                                if balanceOf[address(msg.sender)] + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_7c1d1ffa / 10^18) - sub_7c1d1ffa < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_7c1d1ffa / 10^18) - sub_7c1d1ffa
                                emit Transfer(((10^18 * (10^18 * block.timestamp) - (10^18 * stor11) + epochLength / epochLength * sub_7c1d1ffa / 10^18) - sub_7c1d1ffa), 0, msg.sender);
                            else:
                                if totalSupply + sub_fa3b46c0 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += sub_fa3b46c0
                                if balanceOf[address(msg.sender)] + sub_fa3b46c0 < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += sub_fa3b46c0
                                emit Transfer(sub_fa3b46c0, 0, msg.sender);
    stor16[address(msg.sender)] = 0
    return 0
}



}
