contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
uint8 sub_6e82803b; offset 160
address gasTokenAddress;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function sub_6e82803b(?) payable {
    return sub_6e82803b
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

function gasToken() payable {
    return gasTokenAddress
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
    if not block.gasprice:
        require ext_code.size(gasTokenAddress)
        call gasTokenAddress.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args tx.origin, 0
    else:
        require block.gasprice
        if 10^9 * block.gasprice / block.gasprice != 10^9:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(gasTokenAddress)
        call gasTokenAddress.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args tx.origin, 10^9 * block.gasprice
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_6e82803b <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_6e82803b
    if not msg.sender:
        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
    if arg2 / sub_6e82803b > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
    balanceOf[address(msg.sender)] -= arg2 / sub_6e82803b
    if arg2 / sub_6e82803b > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2 / sub_6e82803b
    emit Transfer((arg2 / sub_6e82803b), msg.sender, 0);
    if arg2 / sub_6e82803b > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if not msg.sender:
        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
    if not arg1:
        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
    if arg2 - (arg2 / sub_6e82803b) > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[454 len 26],
                    mem[506 len 6]
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / sub_6e82803b)
    if balanceOf[address(arg1)] + arg2 - (arg2 / sub_6e82803b) < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / sub_6e82803b)
    emit Transfer((arg2 - (arg2 / sub_6e82803b)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not block.gasprice:
        require ext_code.size(gasTokenAddress)
        call gasTokenAddress.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args tx.origin, 0
    else:
        require block.gasprice
        if 10^9 * block.gasprice / block.gasprice != 10^9:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(gasTokenAddress)
        call gasTokenAddress.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args tx.origin, 10^9 * block.gasprice
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_6e82803b <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_6e82803b
    if not arg1:
        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
    if arg3 / sub_6e82803b > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
    balanceOf[address(arg1)] -= arg3 / sub_6e82803b
    if arg3 / sub_6e82803b > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg3 / sub_6e82803b
    emit Transfer((arg3 / sub_6e82803b), arg1, 0);
    if arg3 / sub_6e82803b > arg3:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg1:
        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
    if not arg2:
        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
    if arg3 - (arg3 / sub_6e82803b) > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[454 len 26],
                    mem[506 len 6]
    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / sub_6e82803b)
    if balanceOf[address(arg2)] + arg3 - (arg3 / sub_6e82803b) < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / sub_6e82803b)
    emit Transfer((arg3 - (arg3 / sub_6e82803b)), arg1, arg2);
    if arg3 - (arg3 / sub_6e82803b) > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[552 len 24],
                    mem[600 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[680 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[678 len 30]
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - arg3 + (arg3 / sub_6e82803b)
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3 + (arg3 / sub_6e82803b)), arg1, msg.sender);
    return 1
}



}
