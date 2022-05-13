contract main {




// =====================  Runtime code  =====================


#
#  - getUserAmount(uint256 arg1, address arg2)
#  - sub_3b4b701f(?)
#  - sub_a00caf27(?)
#  - sub_a3ac81ff(?)
#  - sub_a9ba3bcf(?)
#  - withdraw(uint256 arg1, uint256 arg2, address arg3, uint256 arg4)
#  - deposit(uint256 arg1, uint256 arg2, address arg3, uint256 arg4)
#
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 cap;
uint256 totalSupply;
uint8 stor8; offset 160
address owner;
uint256 stor9;
array of struct poolInfo;
array of uint256 stor17;
address stor19;
array of uint256 stor12396694973890998440467380340983585058878106250672390494374587083972727727731;
array of uint256 stor12396694973890998440467380340983585058878106250672390494374587083972727727732;
array of uint256 stor12396694973890998440467380340983585058878106250672390494374587083972727727733;
array of uint256 stor12396694973890998440467380340983585058878106250672390494374587083972727727734;
array of uint256 stor12396694973890998440467380340983585058878106250672390494374587083972727727735;
array of uint8 stor12396694973890998440467380340983585058878106250672390494374587083972727727736;

function name() payable {
    return name[0 len name.length]
}

function poolLength() payable {
    return poolInfo.length
}

function totalSupply() payable {
    return totalSupply
}

function getPoolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280
}

function decimals() payable {
    return decimals
}

function cap() payable {
    return cap
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

function sub_a0717ff3(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    return stor[('name', 'poolInfo', 16) + (8 * arg1) + 7][arg2].field_0, 
           stor[('name', 'poolInfo', 16) + (8 * arg1) + 7][arg2].field_256,
           stor[('name', 'poolInfo', 16) + (8 * arg1) + 7][arg2].field_512
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit 0x728be007: owner, 0
    owner = 0
}

function setLp(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor8:
        revert with 0, 'Reentrant call.'
    stor8 = 1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor19 = arg1
    stor8 = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit 0x728be007: owner, arg1
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

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6845524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
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

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xef45524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                    0xef45524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function createPool(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if stor8:
        revert with 0, 'Reentrant call.'
    stor8 = 1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 != poolInfo.length:
        revert with 0, 'createPool: _pid fault'
    if block.number >= arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x65637265617465506f6f6c3a20496e7661696c656420626c6f636b20706172616d65746572,
                    mem[201 len 27]
    if arg4 <= arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x65637265617465506f6f6c3a20496e7661696c656420626c6f636b20706172616d65746572,
                    mem[201 len 27]
    if not arg2:
        revert with 0, 'createPool: cap fault'
    if 10^18 * arg2 / arg2 != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00,
                    mem[197 len 31]
    if 10^18 * arg2 <= 0:
        revert with 0, 'createPool: cap fault'
    if (10^18 * arg2) + stor9 < stor9:
        revert with 0, 'SafeMath: addition overflow'
    stor9 += 10^18 * arg2
    if arg3 < block.number:
        if arg4 <= block.number:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x637265617465506f6f6c3a20496e7661696c656420626c6f636b20706172616d65746572732000,
                        mem[203 len 25]
        if block.number > arg4:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg4 - block.number:
            revert with 0, 'SafeMath: division by zero'
        poolInfo.length++
        poolInfo[poolInfo.length].field_0 = 10^18 * arg2
        stor1B68[stor16.length] = 0
        stor1B68[stor16.length] = block.number
        stor1B68[stor16.length] = arg4
        stor1B68[stor16.length] = 10^18 * arg2 / arg4 - block.number
    else:
        if arg4 <= arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x637265617465506f6f6c3a20496e7661696c656420626c6f636b20706172616d65746572732000,
                        mem[203 len 25]
        if arg3 > arg4:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg4 - arg3:
            revert with 0, 'SafeMath: division by zero'
        poolInfo.length++
        poolInfo[poolInfo.length].field_0 = 10^18 * arg2
        stor1B68[stor16.length] = 0
        stor1B68[stor16.length] = arg3
        stor1B68[stor16.length] = arg4
        stor1B68[stor16.length] = 10^18 * arg2 / arg4 - arg3
    stor1B68[stor16.length] = 0
    stor1B68[stor16.length] = 0
    stor8 = 0
}

function sub_bdd5164e(?) payable {
    require calldata.size - 4 >= 96
    if stor8:
        revert with 0, 'Reentrant call.'
    stor8 = 1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 >= poolInfo.length:
        revert with 0, 'setGroup: _pid fault'
    if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
        require arg1 < poolInfo.length
        mem[96] = 30
        mem[128] = 'SafeMath: subtraction overflow'
        if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0 > poolInfo[arg1].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg3 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require arg1 < poolInfo.length
        poolInfo[arg1].field_256 = arg3 + poolInfo[arg1].field_256 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0
        mem[64] = 256
        mem[160] = arg3
        mem[192] = 0
        mem[224] = 0
        stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0 = arg3
        stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256 = 0
        stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 = 0
        mem[32] = 17
        idx = 0
        while idx < stor17[arg1]:
            require idx < stor17[arg1]
            require arg1 < poolInfo.length
            mem[0] = stor17[arg1][idx]
            mem[32] = (8 * arg1) + sha3(16) + 7
            if 10^18 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_256 / 10^18 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_256:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
            _287 = mem[64]
            mem[64] = mem[64] + 64
            mem[_287] = 26
            mem[_287 + 32] = 'SafeMath: division by zero' << 48
            if not poolInfo[arg1].field_0:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _287 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            if (10^18 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_256 / poolInfo[arg1].field_0) + 1 < 10^18 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_256 / poolInfo[arg1].field_0:
                revert with 0, 'SafeMath: addition overflow'
            _315 = mem[64]
            mem[64] = mem[64] + 64
            mem[_315] = 26
            mem[_315 + 32] = 'SafeMath: division by zero' << 48
            s = 10^18 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_256 / poolInfo[arg1].field_0
            t = (10^18 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_256 / poolInfo[arg1].field_0) + 1 / 2
            while t < s:
                _489 = mem[64]
                mem[64] = mem[64] + 64
                mem[_489] = 26
                mem[_489 + 32] = 'SafeMath: division by zero' << 48
                if t:
                    if t + (10^18 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_256 / poolInfo[arg1].field_0 / t) < 10^18 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_256 / poolInfo[arg1].field_0 / t:
                        revert with 0, 'SafeMath: addition overflow'
                    _534 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_534] = 26
                    mem[_534 + 32] = 'SafeMath: division by zero' << 48
                    s = t
                    t = t + (10^18 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_256 / poolInfo[arg1].field_0 / t) / 2
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _489 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            if not s:
                if not poolInfo[arg1].field_1024:
                    _533 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_533] = 26
                    mem[_533 + 32] = 'SafeMath: division by zero' << 48
                    if not poolInfo[arg1].field_256:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _533 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / poolInfo[arg1].field_256:
                        _641 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_641] = 26
                        mem[_641 + 32] = 'SafeMath: division by zero' << 48
                    else:
                        if 0 / 0 / poolInfo[arg1].field_256:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                        _651 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_651] = 26
                        mem[_651 + 32] = 'SafeMath: division by zero' << 48
                else:
                    if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_0 * poolInfo[arg1].field_1024 / poolInfo[arg1].field_1024 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_0:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                    _540 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_540] = 26
                    mem[_540 + 32] = 'SafeMath: division by zero' << 48
                    if not poolInfo[arg1].field_256:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _540 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_0 * poolInfo[arg1].field_1024 / poolInfo[arg1].field_256:
                        _650 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_650] = 26
                        mem[_650 + 32] = 'SafeMath: division by zero' << 48
                    else:
                        if 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_0 * poolInfo[arg1].field_1024 / poolInfo[arg1].field_256:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                        _659 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_659] = 26
                        mem[_659 + 32] = 'SafeMath: division by zero' << 48
                stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_512 = 0
            else:
                if 750 * 10^6 * s / s != 750 * 10^6:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                if not poolInfo[arg1].field_1024:
                    _539 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_539] = 26
                    mem[_539 + 32] = 'SafeMath: division by zero' << 48
                    if not poolInfo[arg1].field_256:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _539 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / poolInfo[arg1].field_256:
                        _649 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_649] = 26
                        mem[_649 + 32] = 'SafeMath: division by zero' << 48
                        stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_512 = 0
                    else:
                        if 750 * 10^6 * s * 0 / poolInfo[arg1].field_256 / 0 / poolInfo[arg1].field_256 != 750 * 10^6 * s:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                        _658 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_658] = 26
                        mem[_658 + 32] = 'SafeMath: division by zero' << 48
                        stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_512 = 750 * 10^6 * s * 0 / poolInfo[arg1].field_256 / 10^18
                else:
                    if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_0 * poolInfo[arg1].field_1024 / poolInfo[arg1].field_1024 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_0:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                    _543 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_543] = 26
                    mem[_543 + 32] = 'SafeMath: division by zero' << 48
                    if not poolInfo[arg1].field_256:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _543 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_0 * poolInfo[arg1].field_1024 / poolInfo[arg1].field_256:
                        _657 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_657] = 26
                        mem[_657 + 32] = 'SafeMath: division by zero' << 48
                        stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_512 = 0
                    else:
                        if 750 * 10^6 * s * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_0 * poolInfo[arg1].field_1024 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_0 * poolInfo[arg1].field_1024 / poolInfo[arg1].field_256 != 750 * 10^6 * s:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                        _663 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_663] = 26
                        mem[_663 + 32] = 'SafeMath: division by zero' << 48
                        stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_512 = 750 * 10^6 * s * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_0 * poolInfo[arg1].field_1024 / poolInfo[arg1].field_256 / 10^18
            idx = idx + 1
            continue 
    else:
        stor17[arg1]++
        stor17[arg1][stor17[arg1]] = arg2
        require arg1 < poolInfo.length
        mem[96] = 30
        mem[128] = 'SafeMath: subtraction overflow'
        if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0 > poolInfo[arg1].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg3 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require arg1 < poolInfo.length
        poolInfo[arg1].field_256 = arg3 + poolInfo[arg1].field_256 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0
        mem[64] = 256
        mem[160] = arg3
        mem[192] = 0
        mem[224] = 0
        stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0 = arg3
        stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256 = 0
        stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 = 0
        mem[32] = 17
        idx = 0
        while idx < stor17[arg1]:
            require idx < stor17[arg1]
            require arg1 < poolInfo.length
            mem[0] = stor17[arg1][idx]
            mem[32] = (8 * arg1) + sha3(16) + 7
            if 10^18 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_256 / 10^18 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_256:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
            _288 = mem[64]
            mem[64] = mem[64] + 64
            mem[_288] = 26
            mem[_288 + 32] = 'SafeMath: division by zero' << 48
            if not poolInfo[arg1].field_0:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _288 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            if (10^18 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_256 / poolInfo[arg1].field_0) + 1 < 10^18 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_256 / poolInfo[arg1].field_0:
                revert with 0, 'SafeMath: addition overflow'
            _316 = mem[64]
            mem[64] = mem[64] + 64
            mem[_316] = 26
            mem[_316 + 32] = 'SafeMath: division by zero' << 48
            s = 10^18 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_256 / poolInfo[arg1].field_0
            t = (10^18 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_256 / poolInfo[arg1].field_0) + 1 / 2
            while t < s:
                _492 = mem[64]
                mem[64] = mem[64] + 64
                mem[_492] = 26
                mem[_492 + 32] = 'SafeMath: division by zero' << 48
                if t:
                    if t + (10^18 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_256 / poolInfo[arg1].field_0 / t) < 10^18 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_256 / poolInfo[arg1].field_0 / t:
                        revert with 0, 'SafeMath: addition overflow'
                    _538 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_538] = 26
                    mem[_538 + 32] = 'SafeMath: division by zero' << 48
                    s = t
                    t = t + (10^18 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_256 / poolInfo[arg1].field_0 / t) / 2
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _492 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            if not s:
                if not poolInfo[arg1].field_1024:
                    _537 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_537] = 26
                    mem[_537 + 32] = 'SafeMath: division by zero' << 48
                    if not poolInfo[arg1].field_256:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _537 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / poolInfo[arg1].field_256:
                        _646 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_646] = 26
                        mem[_646 + 32] = 'SafeMath: division by zero' << 48
                    else:
                        if 0 / 0 / poolInfo[arg1].field_256:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                        _656 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_656] = 26
                        mem[_656 + 32] = 'SafeMath: division by zero' << 48
                else:
                    if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_0 * poolInfo[arg1].field_1024 / poolInfo[arg1].field_1024 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_0:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                    _542 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_542] = 26
                    mem[_542 + 32] = 'SafeMath: division by zero' << 48
                    if not poolInfo[arg1].field_256:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _542 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_0 * poolInfo[arg1].field_1024 / poolInfo[arg1].field_256:
                        _655 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_655] = 26
                        mem[_655 + 32] = 'SafeMath: division by zero' << 48
                    else:
                        if 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_0 * poolInfo[arg1].field_1024 / poolInfo[arg1].field_256:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                        _662 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_662] = 26
                        mem[_662 + 32] = 'SafeMath: division by zero' << 48
                stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_512 = 0
            else:
                if 750 * 10^6 * s / s != 750 * 10^6:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                if not poolInfo[arg1].field_1024:
                    _541 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_541] = 26
                    mem[_541 + 32] = 'SafeMath: division by zero' << 48
                    if not poolInfo[arg1].field_256:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _541 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / poolInfo[arg1].field_256:
                        _654 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_654] = 26
                        mem[_654 + 32] = 'SafeMath: division by zero' << 48
                        stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_512 = 0
                    else:
                        if 750 * 10^6 * s * 0 / poolInfo[arg1].field_256 / 0 / poolInfo[arg1].field_256 != 750 * 10^6 * s:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                        _661 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_661] = 26
                        mem[_661 + 32] = 'SafeMath: division by zero' << 48
                        stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_512 = 750 * 10^6 * s * 0 / poolInfo[arg1].field_256 / 10^18
                else:
                    if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_0 * poolInfo[arg1].field_1024 / poolInfo[arg1].field_1024 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_0:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                    _547 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_547] = 26
                    mem[_547 + 32] = 'SafeMath: division by zero' << 48
                    if not poolInfo[arg1].field_256:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _547 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_0 * poolInfo[arg1].field_1024 / poolInfo[arg1].field_256:
                        _660 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_660] = 26
                        mem[_660 + 32] = 'SafeMath: division by zero' << 48
                        stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_512 = 0
                    else:
                        if 750 * 10^6 * s * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_0 * poolInfo[arg1].field_1024 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_0 * poolInfo[arg1].field_1024 / poolInfo[arg1].field_256 != 750 * 10^6 * s:
                            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[mem[64] + 101 len 31]
                        _664 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_664] = 26
                        mem[_664 + 32] = 'SafeMath: division by zero' << 48
                        stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_512 = 750 * 10^6 * s * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][stor17[arg1][idx]].field_0 * poolInfo[arg1].field_1024 / poolInfo[arg1].field_256 / 10^18
            idx = idx + 1
            continue 
    stor8 = 0
}

function sub_efef97f0(?) payable {
    require calldata.size - 4 >= 96
    require arg1 < poolInfo.length
    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
        return 0
    if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 > block.number:
        revert with 0, 'Block counting: '
    if poolInfo[arg1].field_512 > poolInfo[arg1].field_768:
        revert with 0, 'Block counting: '
    if block.number <= poolInfo[arg1].field_768:
        if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 >= poolInfo[arg1].field_512:
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 >= block.number:
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not poolInfo[arg1].field_1280:
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                           poolInfo[arg1].field_1280
                if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                           poolInfo[arg1].field_1280
                if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256:
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256:
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not poolInfo[arg1].field_1280:
                        if not poolInfo[arg1].field_256:
                            revert with 0, 'SafeMath: division by zero'
                        if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                            revert with 0, 'SafeMath: division by zero'
                        return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                               0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                               poolInfo[arg1].field_1280
                    if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                    if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                        if not poolInfo[arg1].field_256:
                            revert with 0, 'SafeMath: division by zero'
                        if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                            revert with 0, 'SafeMath: division by zero'
                        return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                               0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                               poolInfo[arg1].field_1280
                    if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                           poolInfo[arg1].field_1280
                if (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) / block.number - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
                if not (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512):
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not poolInfo[arg1].field_1280:
                        if not poolInfo[arg1].field_256:
                            revert with 0, 'SafeMath: division by zero'
                        if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                            revert with 0, 'SafeMath: division by zero'
                        return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                               0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                               poolInfo[arg1].field_1280
                    if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                    if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                        if not poolInfo[arg1].field_256:
                            revert with 0, 'SafeMath: division by zero'
                        if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                            revert with 0, 'SafeMath: division by zero'
                        return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                               0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                               poolInfo[arg1].field_1280
                    if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                           poolInfo[arg1].field_1280
                if (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not poolInfo[arg1].field_1280:
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                           poolInfo[arg1].field_1280
                if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                           poolInfo[arg1].field_1280
                if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) / block.number - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
            if not (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512):
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256:
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not poolInfo[arg1].field_1280:
                        if not poolInfo[arg1].field_256:
                            revert with 0, 'SafeMath: division by zero'
                        if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                            revert with 0, 'SafeMath: division by zero'
                        return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                               0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                               poolInfo[arg1].field_1280
                    if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                    if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                        if not poolInfo[arg1].field_256:
                            revert with 0, 'SafeMath: division by zero'
                        if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                            revert with 0, 'SafeMath: division by zero'
                        return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                               0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                               poolInfo[arg1].field_1280
                    if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                           poolInfo[arg1].field_1280
                if (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) / block.number - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
                if not (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512):
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not poolInfo[arg1].field_1280:
                        if not poolInfo[arg1].field_256:
                            revert with 0, 'SafeMath: division by zero'
                        if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                            revert with 0, 'SafeMath: division by zero'
                        return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                               0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                               poolInfo[arg1].field_1280
                    if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                    if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                        if not poolInfo[arg1].field_256:
                            revert with 0, 'SafeMath: division by zero'
                        if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                            revert with 0, 'SafeMath: division by zero'
                        return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                               0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                               poolInfo[arg1].field_1280
                    if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                           poolInfo[arg1].field_1280
                if (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not poolInfo[arg1].field_1280:
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                           poolInfo[arg1].field_1280
                if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                           poolInfo[arg1].field_1280
                if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if not block.number - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256:
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not poolInfo[arg1].field_1280:
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                           poolInfo[arg1].field_1280
                if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                           poolInfo[arg1].field_1280
                if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) / block.number - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
            if not (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512):
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not poolInfo[arg1].field_1280:
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                           poolInfo[arg1].field_1280
                if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                           poolInfo[arg1].field_1280
                if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not poolInfo[arg1].field_1280:
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
            if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero'
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                   poolInfo[arg1].field_1280
        if poolInfo[arg1].field_512 >= block.number:
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not poolInfo[arg1].field_1280:
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
            if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero'
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                   poolInfo[arg1].field_1280
        if poolInfo[arg1].field_512 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - poolInfo[arg1].field_512:
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if not block.number - poolInfo[arg1].field_512:
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not poolInfo[arg1].field_1280:
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                           poolInfo[arg1].field_1280
                if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                           poolInfo[arg1].field_1280
                if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) / block.number - poolInfo[arg1].field_512 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
            if not (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512):
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not poolInfo[arg1].field_1280:
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                           poolInfo[arg1].field_1280
                if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                           poolInfo[arg1].field_1280
                if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not poolInfo[arg1].field_1280:
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
            if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero'
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                   poolInfo[arg1].field_1280
        if (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) / block.number - poolInfo[arg1].field_512 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
        if not (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512):
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if not block.number - poolInfo[arg1].field_512:
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not poolInfo[arg1].field_1280:
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                           poolInfo[arg1].field_1280
                if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                           poolInfo[arg1].field_1280
                if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) / block.number - poolInfo[arg1].field_512 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
            if not (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512):
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not poolInfo[arg1].field_1280:
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                           poolInfo[arg1].field_1280
                if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                           poolInfo[arg1].field_1280
                if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not poolInfo[arg1].field_1280:
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
            if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero'
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                   poolInfo[arg1].field_1280
        if (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
        if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: division by zero'
        if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if not block.number - poolInfo[arg1].field_512:
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not poolInfo[arg1].field_1280:
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
            if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero'
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                   poolInfo[arg1].field_1280
        if (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) / block.number - poolInfo[arg1].field_512 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
        if not (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512):
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not poolInfo[arg1].field_1280:
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
            if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero'
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                   poolInfo[arg1].field_1280
        if (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
        if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: division by zero'
        if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < (block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not poolInfo[arg1].field_1280:
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero'
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                   poolInfo[arg1].field_1280
        if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
        if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero'
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                   poolInfo[arg1].field_1280
        if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
        if not poolInfo[arg1].field_256:
            revert with 0, 'SafeMath: division by zero'
        if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: division by zero'
        return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((block.number * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
               (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
               poolInfo[arg1].field_1280
    if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 >= poolInfo[arg1].field_512:
        if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 >= poolInfo[arg1].field_768:
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not poolInfo[arg1].field_1280:
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
            if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero'
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                   poolInfo[arg1].field_1280
        if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 > poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: subtraction overflow'
        if not poolInfo[arg1].field_768 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256:
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if not poolInfo[arg1].field_768 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256:
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not poolInfo[arg1].field_1280:
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                           poolInfo[arg1].field_1280
                if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                           poolInfo[arg1].field_1280
                if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) / poolInfo[arg1].field_768 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
            if not (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512):
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not poolInfo[arg1].field_1280:
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                           poolInfo[arg1].field_1280
                if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                           poolInfo[arg1].field_1280
                if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not poolInfo[arg1].field_1280:
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
            if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero'
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                   poolInfo[arg1].field_1280
        if (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) / poolInfo[arg1].field_768 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
        if not (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512):
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if not poolInfo[arg1].field_768 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256:
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not poolInfo[arg1].field_1280:
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                           poolInfo[arg1].field_1280
                if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                           poolInfo[arg1].field_1280
                if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) / poolInfo[arg1].field_768 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
            if not (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512):
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not poolInfo[arg1].field_1280:
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                           poolInfo[arg1].field_1280
                if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                           0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                           poolInfo[arg1].field_1280
                if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                    revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not poolInfo[arg1].field_1280:
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
            if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero'
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                   poolInfo[arg1].field_1280
        if (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
        if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: division by zero'
        if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if not poolInfo[arg1].field_768 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256:
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not poolInfo[arg1].field_1280:
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
            if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero'
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                   poolInfo[arg1].field_1280
        if (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) / poolInfo[arg1].field_768 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
        if not (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512):
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not poolInfo[arg1].field_1280:
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
            if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero'
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                   poolInfo[arg1].field_1280
        if (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
        if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: division by zero'
        if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not poolInfo[arg1].field_1280:
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero'
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                   poolInfo[arg1].field_1280
        if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
        if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero'
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                   poolInfo[arg1].field_1280
        if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
        if not poolInfo[arg1].field_256:
            revert with 0, 'SafeMath: division by zero'
        if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: division by zero'
        return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_256 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
               (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
               poolInfo[arg1].field_1280
    if poolInfo[arg1].field_512 >= poolInfo[arg1].field_768:
        if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: division by zero'
        if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: division by zero'
        if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not poolInfo[arg1].field_1280:
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero'
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                   poolInfo[arg1].field_1280
        if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
        if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero'
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                   poolInfo[arg1].field_1280
        if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[389 len 31]
        if not poolInfo[arg1].field_256:
            revert with 0, 'SafeMath: division by zero'
        if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: division by zero'
        return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
               (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
               poolInfo[arg1].field_1280
    if poolInfo[arg1].field_512 > poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: subtraction overflow'
    if not poolInfo[arg1].field_768 - poolInfo[arg1].field_512:
        if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: division by zero'
        if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if not poolInfo[arg1].field_768 - poolInfo[arg1].field_512:
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not poolInfo[arg1].field_1280:
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
            if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero'
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                   poolInfo[arg1].field_1280
        if (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) / poolInfo[arg1].field_768 - poolInfo[arg1].field_512 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
        if not (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512):
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not poolInfo[arg1].field_1280:
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
            if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero'
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                   poolInfo[arg1].field_1280
        if (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
        if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: division by zero'
        if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not poolInfo[arg1].field_1280:
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero'
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                   poolInfo[arg1].field_1280
        if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
        if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero'
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                   poolInfo[arg1].field_1280
        if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
        if not poolInfo[arg1].field_256:
            revert with 0, 'SafeMath: division by zero'
        if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: division by zero'
        return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
               (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
               poolInfo[arg1].field_1280
    if (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) / poolInfo[arg1].field_768 - poolInfo[arg1].field_512 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512:
        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
    if not (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512):
        if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: division by zero'
        if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if not poolInfo[arg1].field_768 - poolInfo[arg1].field_512:
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not poolInfo[arg1].field_1280:
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
            if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero'
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                   poolInfo[arg1].field_1280
        if (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) / poolInfo[arg1].field_768 - poolInfo[arg1].field_512 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
        if not (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512):
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not poolInfo[arg1].field_1280:
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
            if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeMath: division by zero'
                if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                    revert with 0, 'SafeMath: division by zero'
                return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                       0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                       poolInfo[arg1].field_1280
            if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
                revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero'
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                   poolInfo[arg1].field_1280
        if (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
        if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: division by zero'
        if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not poolInfo[arg1].field_1280:
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero'
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                   poolInfo[arg1].field_1280
        if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
        if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero'
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                   poolInfo[arg1].field_1280
        if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
        if not poolInfo[arg1].field_256:
            revert with 0, 'SafeMath: division by zero'
        if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: division by zero'
        return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
               (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
               poolInfo[arg1].field_1280
    if (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[261 len 31]
    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
        revert with 0, 'SafeMath: division by zero'
    if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if not poolInfo[arg1].field_768 - poolInfo[arg1].field_512:
        if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: division by zero'
        if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not poolInfo[arg1].field_1280:
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero'
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                   poolInfo[arg1].field_1280
        if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
        if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero'
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                   poolInfo[arg1].field_1280
        if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
        if not poolInfo[arg1].field_256:
            revert with 0, 'SafeMath: division by zero'
        if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: division by zero'
        return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
               (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
               poolInfo[arg1].field_1280
    if (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) / poolInfo[arg1].field_768 - poolInfo[arg1].field_512 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512:
        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
    if not (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512):
        if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: division by zero'
        if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < 0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not poolInfo[arg1].field_1280:
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero'
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                   poolInfo[arg1].field_1280
        if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
        if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
            if not poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: division by zero'
            if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
                revert with 0, 'SafeMath: division by zero'
            return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
                   0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
                   poolInfo[arg1].field_1280
        if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
            revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
        if not poolInfo[arg1].field_256:
            revert with 0, 'SafeMath: division by zero'
        if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: division by zero'
        return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + (0 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
               (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
               poolInfo[arg1].field_1280
    if (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[325 len 31]
    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
        revert with 0, 'SafeMath: division by zero'
    if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256) < (poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 > stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    if not poolInfo[arg1].field_1280:
        if not poolInfo[arg1].field_256:
            revert with 0, 'SafeMath: division by zero'
        if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: division by zero'
        return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
               0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
               poolInfo[arg1].field_1280
    if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1280 != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 - stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768:
        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
    if not (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280):
        if not poolInfo[arg1].field_256:
            revert with 0, 'SafeMath: division by zero'
        if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
            revert with 0, 'SafeMath: division by zero'
        return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
               stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
               0 / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
               poolInfo[arg1].field_1280
    if (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280) != stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0:
        revert with 0, 32, 33, 0x536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f00, mem[453 len 31]
    if not poolInfo[arg1].field_256:
        revert with 0, 'SafeMath: division by zero'
    if not stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256:
        revert with 0, 'SafeMath: division by zero'
    return stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0, 
           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768,
           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_512,
           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1024 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
           stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_1280 + ((poolInfo[arg1].field_768 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) - (poolInfo[arg1].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_512 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768) / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256),
           (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_0 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) - (stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2][3][address(arg3)].field_768 * poolInfo[arg1].field_1280 * stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_0) / poolInfo[arg1].field_256 / stor[(8 * arg1) + ('name', 'poolInfo', 16) + 7][arg2].field_256,
           poolInfo[arg1].field_1280
}



}
