contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor6;
address projectVestingContractAddress; offset 8
address teamVestingAddr;
uint256 maxTotalSupply;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function projectVestingContract() payable {
    return projectVestingContractAddress
}

function getMaxTotalSupply() payable {
    return maxTotalSupply
}

function teamVestingAddr() payable {
    return teamVestingAddr
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

function setTeamVestingAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x734675636b546f6b656e3a205465616d2056657374696e67207a65726f20616464726573,
                    mem[200 len 28]
    teamVestingAddr = arg1
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

function setProjectVestingContractAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x654675636b546f6b656e3a2050726f6a6563742056657374696e6720636f6e7472616374207a65726f20616464726573,
                    mem[212 len 16]
    projectVestingContractAddress = arg1
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

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
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

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    if totalSupply + arg2 > maxTotalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x7345524332303a206d696e74696e67206d6f7265207468656e204d6178546f74616c537570706c,
                    mem[203 len 25]
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
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
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
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

function mintForVesting(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not projectVestingContractAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x654675636b546f6b656e3a2050726f6a6563742056657374696e6720636f6e7472616374207a65726f20616464726573,
                    mem[212 len 16]
    if not teamVestingAddr:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x734675636b546f6b656e3a205465616d2056657374696e6720636f6e7472616374207a65726f20616464726573,
                    mem[209 len 19]
    if not arg1 / 100:
        if not arg1 / 100:
            if not owner:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if totalSupply > maxTotalSupply:
                revert with 0, 32, 39, 0x7345524332303a206d696e74696e67206d6f7265207468656e204d6178546f74616c537570706c, mem[395 len 25]
            if totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if balanceOf[stor0] < balanceOf[stor0]:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer(0, 0, owner);
            if not projectVestingContractAddress:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if totalSupply > maxTotalSupply:
                revert with 0, 32, 39, 0x7345524332303a206d696e74696e67206d6f7265207468656e204d6178546f74616c537570706c, mem[395 len 25]
            if totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if balanceOf[stor6] < balanceOf[stor6]:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer(0, 0, projectVestingContractAddress);
        else:
            require arg1 / 100
            if 60 * arg1 / 100 / arg1 / 100 != 60:
                revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not owner:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if totalSupply > maxTotalSupply:
                revert with 0, 32, 39, 0x7345524332303a206d696e74696e67206d6f7265207468656e204d6178546f74616c537570706c, mem[395 len 25]
            if totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if balanceOf[stor0] < balanceOf[stor0]:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer(0, 0, owner);
            if not projectVestingContractAddress:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply + (60 * arg1 / 100) < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if totalSupply + (60 * arg1 / 100) > maxTotalSupply:
                revert with 0, 32, 39, 0x7345524332303a206d696e74696e67206d6f7265207468656e204d6178546f74616c537570706c, mem[395 len 25]
            if totalSupply + (60 * arg1 / 100) < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += 60 * arg1 / 100
            if balanceOf[stor6] + (60 * arg1 / 100) < balanceOf[stor6]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor6] += 60 * arg1 / 100
            emit Transfer((60 * arg1 / 100), 0, projectVestingContractAddress);
    else:
        require arg1 / 100
        if 30 * arg1 / 100 / arg1 / 100 != 30:
            revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not arg1 / 100:
            if not owner:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply + (30 * arg1 / 100) < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if totalSupply + (30 * arg1 / 100) > maxTotalSupply:
                revert with 0, 32, 39, 0x7345524332303a206d696e74696e67206d6f7265207468656e204d6178546f74616c537570706c, mem[395 len 25]
            if totalSupply + (30 * arg1 / 100) < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += 30 * arg1 / 100
            if balanceOf[stor0] + (30 * arg1 / 100) < balanceOf[stor0]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor0] += 30 * arg1 / 100
            emit Transfer((30 * arg1 / 100), 0, owner);
            if not projectVestingContractAddress:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if totalSupply > maxTotalSupply:
                revert with 0, 32, 39, 0x7345524332303a206d696e74696e67206d6f7265207468656e204d6178546f74616c537570706c, mem[395 len 25]
            if totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if balanceOf[stor6] < balanceOf[stor6]:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer(0, 0, projectVestingContractAddress);
        else:
            require arg1 / 100
            if 60 * arg1 / 100 / arg1 / 100 != 60:
                revert with 0, 32, 33, 0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not owner:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply + (30 * arg1 / 100) < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if totalSupply + (30 * arg1 / 100) > maxTotalSupply:
                revert with 0, 32, 39, 0x7345524332303a206d696e74696e67206d6f7265207468656e204d6178546f74616c537570706c, mem[395 len 25]
            if totalSupply + (30 * arg1 / 100) < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += 30 * arg1 / 100
            if balanceOf[stor0] + (30 * arg1 / 100) < balanceOf[stor0]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor0] += 30 * arg1 / 100
            emit Transfer((30 * arg1 / 100), 0, owner);
            if not projectVestingContractAddress:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply + (60 * arg1 / 100) < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if totalSupply + (60 * arg1 / 100) > maxTotalSupply:
                revert with 0, 32, 39, 0x7345524332303a206d696e74696e67206d6f7265207468656e204d6178546f74616c537570706c, mem[395 len 25]
            if totalSupply + (60 * arg1 / 100) < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += 60 * arg1 / 100
            if balanceOf[stor6] + (60 * arg1 / 100) < balanceOf[stor6]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor6] += 60 * arg1 / 100
            emit Transfer((60 * arg1 / 100), 0, projectVestingContractAddress);
    if not teamVestingAddr:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply + (arg1 / 10) < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    if totalSupply + (arg1 / 10) > maxTotalSupply:
        revert with 0, 32, 39, 0x7345524332303a206d696e74696e67206d6f7265207468656e204d6178546f74616c537570706c, mem[395 len 25]
    if totalSupply + (arg1 / 10) < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1 / 10
    if balanceOf[stor7] + (arg1 / 10) < balanceOf[stor7]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor7] += arg1 / 10
    emit Transfer((arg1 / 10), 0, teamVestingAddr);
}



}
