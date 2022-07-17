contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
uint256 stor6;
uint256 stor8;
uint256 stor9;
uint32 stor10;
address strategyAddress;
uint256 stor10;
address sub_e5916054Address;

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

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function strategy() payable {
    return address(strategyAddress)
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_e5916054(?) payable {
    return sub_e5916054Address
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

function setWithdrawFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = arg1
}

function sub_f912c64b(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e5916054Address = arg1
}

function setStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(strategyAddress) = arg1
}

function sub_ffa222fe(?) payable {
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0xffa222fe with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x794f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function compound(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    require ext_code.size(address(strategyAddress))
    call address(strategyAddress).0x4641257d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(strategyAddress))
    call address(strategyAddress).0xf81c418b with:
         gas gas_remaining wei
        args 1, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor6 = 1
}

function getPoolBalance() payable {
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0x69e527da with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(strategyAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function sub_a7b6e0e3(?) payable {
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0x69e527da with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(strategyAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    return (ext_call.return_data[0] / totalSupply)
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
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
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                    0x7445524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_4c7198f4(?) payable {
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0x69e527da with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0x6f307dc3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_e5916054Address)
    staticcall sub_e5916054Address.0xf29d0040 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^10 / ext_call.return_data[0] != ext_call.return_data[0] / 10^10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^10 / 10^6)
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                    0x7445524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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

function getTotalValueLocked() payable {
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0x69e527da with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0x6f307dc3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_e5916054Address)
    staticcall sub_e5916054Address.0xf29d0040 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).0x69e527da with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(strategyAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_call.return_data[0]
            if 10^10 * ext_call.return_data[0] / ext_call.return_data[0] != 10^10:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 10^10 * ext_call.return_data[0]:
                require 10^10 * ext_call.return_data[0]
                if 0 / 10^10 * ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).0x76d5de85 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_e5916054Address)
        staticcall sub_e5916054Address.0xf29d0040 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).0xffa222fe with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return 0
        require ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] * ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
    require ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^10 / ext_call.return_data[0] != ext_call.return_data[0] / 10^10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0x69e527da with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(strategyAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).0x76d5de85 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_e5916054Address)
        staticcall sub_e5916054Address.0xf29d0040 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).0xffa222fe with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return 0
        require ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] * ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
    require ext_call.return_data[0]
    if 10^10 * ext_call.return_data[0] / ext_call.return_data[0] != 10^10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not 10^10 * ext_call.return_data[0]:
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).0x76d5de85 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_e5916054Address)
        staticcall sub_e5916054Address.0xf29d0040 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).0xffa222fe with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return 0
        require ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] * ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
    require 10^10 * ext_call.return_data[0]
    if 10^10 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 10^10 / 10^6 / 10^10 * ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[0] / 10^10 / 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0x76d5de85 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_e5916054Address)
    staticcall sub_e5916054Address.0xf29d0040 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0xffa222fe with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 10^10 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 10^10 / 10^6 < 10^10 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 10^10 / 10^6:
            revert with 0, 'SafeMath: addition overflow'
        return (10^10 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 10^10 / 10^6 / 10^18)
    require ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (10^10 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 10^10 / 10^6) + (ext_call.return_data[0] * ext_call.return_data[0]) < 10^10 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 10^10 / 10^6:
        revert with 0, 'SafeMath: addition overflow'
    return ((10^10 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 10^10 / 10^6) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18)
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0, 'User balance too small'
    require ext_code.size(address(strategyAddress))
    call address(strategyAddress).0xffb2c479 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0x69e527da with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(strategyAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x736e6f2063546f6b656e2062616c616e636520696e20737472617465677920636f6e74726163,
                    mem[202 len 26]
    if not ext_call.return_data[0]:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if 0 / totalSupply <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x736572726f723a20707265636973696f6e2c20616d6f756e74576974686472617720697320,
                        mem[201 len 27]
        if stor8 <= 0:
            require ext_code.size(address(strategyAddress))
            call address(strategyAddress).0x2e1a7d4d with:
                 gas gas_remaining wei
                args (0 / totalSupply)
        else:
            if stor8 > stor9:
                if not 0 / totalSupply:
                    if 1 > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(strategyAddress))
                    call address(strategyAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ((0 / totalSupply) - 1)
                else:
                    require 0 / totalSupply
                    if 0 / totalSupply * stor9 / 0 / totalSupply != stor9:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 0 / totalSupply * stor9 / 1000 >= 1:
                        if 0 / totalSupply * stor9 / 1000 > 0 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ((0 / totalSupply) - (0 / totalSupply * stor9 / 1000))
                    else:
                        if 1 > 0 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ((0 / totalSupply) - 1)
            else:
                if not 0 / totalSupply:
                    if 1 > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(strategyAddress))
                    call address(strategyAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ((0 / totalSupply) - 1)
                else:
                    require 0 / totalSupply
                    if 0 / totalSupply * stor8 / 0 / totalSupply != stor8:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 0 / totalSupply * stor8 / 1000 >= 1:
                        if 0 / totalSupply * stor8 / 1000 > 0 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ((0 / totalSupply) - (0 / totalSupply * stor8 / 1000))
                    else:
                        if 1 > 0 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ((0 / totalSupply) - 1)
    else:
        require ext_call.return_data[0]
        if ext_call.return_data[0] * arg1 / ext_call.return_data[0] != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if ext_call.return_data[0] * arg1 / totalSupply <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x736572726f723a20707265636973696f6e2c20616d6f756e74576974686472617720697320,
                        mem[201 len 27]
        if stor8 <= 0:
            require ext_code.size(address(strategyAddress))
            call address(strategyAddress).0x2e1a7d4d with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * arg1 / totalSupply)
        else:
            if stor8 > stor9:
                if not ext_call.return_data[0] * arg1 / totalSupply:
                    if 1 > ext_call.return_data[0] * arg1 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(strategyAddress))
                    call address(strategyAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ((ext_call.return_data[0] * arg1 / totalSupply) - 1)
                else:
                    require ext_call.return_data[0] * arg1 / totalSupply
                    if ext_call.return_data[0] * arg1 / totalSupply * stor9 / ext_call.return_data[0] * arg1 / totalSupply != stor9:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] * arg1 / totalSupply * stor9 / 1000 >= 1:
                        if ext_call.return_data[0] * arg1 / totalSupply * stor9 / 1000 > ext_call.return_data[0] * arg1 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ((ext_call.return_data[0] * arg1 / totalSupply) - (ext_call.return_data[0] * arg1 / totalSupply * stor9 / 1000))
                    else:
                        if 1 > ext_call.return_data[0] * arg1 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ((ext_call.return_data[0] * arg1 / totalSupply) - 1)
            else:
                if not ext_call.return_data[0] * arg1 / totalSupply:
                    if 1 > ext_call.return_data[0] * arg1 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(strategyAddress))
                    call address(strategyAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ((ext_call.return_data[0] * arg1 / totalSupply) - 1)
                else:
                    require ext_call.return_data[0] * arg1 / totalSupply
                    if ext_call.return_data[0] * arg1 / totalSupply * stor8 / ext_call.return_data[0] * arg1 / totalSupply != stor8:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] * arg1 / totalSupply * stor8 / 1000 >= 1:
                        if ext_call.return_data[0] * arg1 / totalSupply * stor8 / 1000 > ext_call.return_data[0] * arg1 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ((ext_call.return_data[0] * arg1 / totalSupply) - (ext_call.return_data[0] * arg1 / totalSupply * stor8 / 1000))
                    else:
                        if 1 > ext_call.return_data[0] * arg1 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ((ext_call.return_data[0] * arg1 / totalSupply) - 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x656e6f20746f6b656e732077697468647261776e2066726f6d2073747261746567,
                    mem[197 len 31]
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
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0x6f307dc3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
    if ext_code.size(address(ext_call.return_data[0])) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    call address(ext_call.return_data[0]) with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[420 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
    else:
        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[388]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 467 len 22]
    require ext_code.size(address(strategyAddress))
    call address(strategyAddress).0xf81c418b with:
         gas gas_remaining wei
        args 0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x788a47fb 
    stor6 = 1
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0x41b3d185 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 <= ext_call.return_data[0]:
        revert with 0, 'amount too small'
    require ext_code.size(address(strategyAddress))
    call address(strategyAddress).0xffb2c479 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(strategyAddress))
    call address(strategyAddress).0xf81c418b with:
         gas gas_remaining wei
        args 0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0x69e527da with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(strategyAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0x6f307dc3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if ext_code.size(address(ext_call.return_data[0])) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    call address(ext_call.return_data[0]) with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).0x6f307dc3 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).0x6f307dc3 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
        if ext_code.size(address(ext_call.return_data[0])) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[456 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
        call address(ext_call.return_data[0]) with:
           funct uint32(stor10)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[520 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
        else:
            mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[488]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
        require ext_code.size(address(strategyAddress))
        call address(strategyAddress).0xd0e30db0 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(strategyAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalSupply <= 0:
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply + (0 / 100) < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += 0 / 100
            if balanceOf[address(msg.sender)] + (0 / 100) < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += 0 / 100
            emit Transfer(0, 0, msg.sender);
        else:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply + (0 / ext_call.return_data[0]) < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += 0 / ext_call.return_data[0]
            if balanceOf[address(msg.sender)] + (0 / ext_call.return_data[0]) < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
            emit Transfer((0 / ext_call.return_data[0]), 0, msg.sender);
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).0x6f307dc3 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).0x6f307dc3 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 563 len 26]
        if ext_code.size(address(ext_call.return_data[0])) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 457 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
        mem[ceil32(return_data.size) + 549 len 4] = 0
        call address(ext_call.return_data[0]) with:
           funct uint32(stor10)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 521 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 567 len 22]
            require ext_code.size(address(strategyAddress))
            call address(strategyAddress).0xd0e30db0 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(strategyAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if totalSupply <= 0:
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply + (0 / 100) < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / 100
                if balanceOf[address(msg.sender)] + (0 / 100) < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 0 / 100
                emit Transfer(0, 0, msg.sender);
            else:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply + (0 / ext_call.return_data[0]) < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / ext_call.return_data[0]
                if balanceOf[address(msg.sender)] + (0 / ext_call.return_data[0]) < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
                emit Transfer((0 / ext_call.return_data[0]), 0, msg.sender);
        else:
            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 489]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            require ext_code.size(address(strategyAddress))
            call address(strategyAddress).0xd0e30db0 with:
                 gas gas_remaining wei
                args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0xd0e30db000000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(strategyAddress), mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 
                            'SafeMath: subtraction overflow',
                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if totalSupply <= 0:
                if not msg.sender:
                    revert with 0, 
                                'ERC20: mint to the zero address',
                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if totalSupply + (0 / 100) < totalSupply:
                    revert with 0, 
                                'SafeMath: addition overflow',
                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                totalSupply += 0 / 100
                if balanceOf[address(msg.sender)] + (0 / 100) < balanceOf[address(msg.sender)]:
                    revert with 0, 
                                'SafeMath: addition overflow',
                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                balanceOf[address(msg.sender)] += 0 / 100
                emit Transfer(address arg1, address arg2, uint256 arg3):
                              0,
                              mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                              0,
                              msg.sender,
            else:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 
                                'SafeMath: division by zero',
                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                require ext_call.return_data[0]
                if not msg.sender:
                    revert with 0, 
                                'ERC20: mint to the zero address',
                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if totalSupply + (0 / ext_call.return_data[0]) < totalSupply:
                    revert with 0, 
                                'SafeMath: addition overflow',
                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                totalSupply += 0 / ext_call.return_data[0]
                if balanceOf[address(msg.sender)] + (0 / ext_call.return_data[0]) < balanceOf[address(msg.sender)]:
                    revert with 0, 
                                'SafeMath: addition overflow',
                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
                emit Transfer(address arg1, address arg2, uint256 arg3):
                              0 / ext_call.return_data[0],
                              mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                              0,
                              msg.sender,
    emit 0x788a47fb 
    stor6 = 1
}

function getShareValue() payable {
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0x69e527da with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0x6f307dc3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_e5916054Address)
    staticcall sub_e5916054Address.0xf29d0040 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).0x69e527da with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(strategyAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(address(strategyAddress))
            staticcall address(strategyAddress).0x76d5de85 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_e5916054Address)
            staticcall sub_e5916054Address.0xf29d0040 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(strategyAddress))
            staticcall address(strategyAddress).0xffa222fe with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply:
                    return (0 / totalSupply)
            else:
                if ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] * ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if totalSupply:
                        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / totalSupply)
        else:
            if ext_call.return_data[0]:
                if 10^10 * ext_call.return_data[0] / ext_call.return_data[0] != 10^10:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not 10^10 * ext_call.return_data[0]:
                    require ext_code.size(address(strategyAddress))
                    staticcall address(strategyAddress).0x76d5de85 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_e5916054Address)
                    staticcall sub_e5916054Address.0xf29d0040 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(strategyAddress))
                    staticcall address(strategyAddress).0xffa222fe with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if totalSupply:
                            return (0 / totalSupply)
                    else:
                        if ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] * ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if totalSupply:
                                return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / totalSupply)
                else:
                    if 10^10 * ext_call.return_data[0]:
                        if 0 / 10^10 * ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(address(strategyAddress))
                        staticcall address(strategyAddress).0x76d5de85 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_e5916054Address)
                        staticcall sub_e5916054Address.0xf29d0040 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(strategyAddress))
                        staticcall address(strategyAddress).0xffa222fe with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if totalSupply:
                                return (0 / totalSupply)
                        else:
                            if ext_call.return_data[0]:
                                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] * ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if totalSupply:
                                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / totalSupply)
    else:
        if ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^10 / ext_call.return_data[0] != ext_call.return_data[0] / 10^10:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(address(strategyAddress))
            staticcall address(strategyAddress).0x69e527da with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(strategyAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(address(strategyAddress))
                staticcall address(strategyAddress).0x76d5de85 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_e5916054Address)
                staticcall sub_e5916054Address.0xf29d0040 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(strategyAddress))
                staticcall address(strategyAddress).0xffa222fe with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if totalSupply:
                        return (0 / totalSupply)
                else:
                    if ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] * ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if totalSupply:
                            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / totalSupply)
            else:
                if ext_call.return_data[0]:
                    if 10^10 * ext_call.return_data[0] / ext_call.return_data[0] != 10^10:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not 10^10 * ext_call.return_data[0]:
                        require ext_code.size(address(strategyAddress))
                        staticcall address(strategyAddress).0x76d5de85 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_e5916054Address)
                        staticcall sub_e5916054Address.0xf29d0040 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(strategyAddress))
                        staticcall address(strategyAddress).0xffa222fe with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if totalSupply:
                                return (0 / totalSupply)
                        else:
                            if ext_call.return_data[0]:
                                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] * ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if totalSupply:
                                    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / totalSupply)
                    else:
                        if 10^10 * ext_call.return_data[0]:
                            if 10^10 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 10^10 / 10^6 / 10^10 * ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[0] / 10^10 / 10^6:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(address(strategyAddress))
                            staticcall address(strategyAddress).0x76d5de85 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_e5916054Address)
                            staticcall sub_e5916054Address.0xf29d0040 with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(strategyAddress))
                            staticcall address(strategyAddress).0xffa222fe with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if 10^10 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 10^10 / 10^6 < 10^10 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 10^10 / 10^6:
                                    revert with 0, 'SafeMath: addition overflow'
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if totalSupply:
                                    return (10^10 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 10^10 / 10^6 / 10^18 / totalSupply)
                            else:
                                if ext_call.return_data[0]:
                                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (10^10 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 10^10 / 10^6) + (ext_call.return_data[0] * ext_call.return_data[0]) < 10^10 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 10^10 / 10^6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if totalSupply:
                                        return ((10^10 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 10^10 / 10^6) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / totalSupply)
    revert
}

function sub_1e93facb(?) payable {
    require calldata.size - 4 >= 32
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
        revert with 0, 'User balance too small'
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0x69e527da with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(strategyAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x736e6f2063546f6b656e2062616c616e636520696e20737472617465677920636f6e74726163,
                    mem[202 len 26]
    if not ext_call.return_data[0]:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if 0 / totalSupply <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x736572726f723a20707265636973696f6e2c20616d6f756e74576974686472617720697320,
                        mem[201 len 27]
        if stor8 <= 0:
            require ext_code.size(address(strategyAddress))
            call address(strategyAddress).0x2e1a7d4d with:
                 gas gas_remaining wei
                args (0 / totalSupply)
        else:
            if stor8 > stor9:
                if not 0 / totalSupply:
                    if 1 > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(strategyAddress))
                    call address(strategyAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ((0 / totalSupply) - 1)
                else:
                    require 0 / totalSupply
                    if 0 / totalSupply * stor9 / 0 / totalSupply != stor9:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 0 / totalSupply * stor9 / 1000 >= 1:
                        if 0 / totalSupply * stor9 / 1000 > 0 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ((0 / totalSupply) - (0 / totalSupply * stor9 / 1000))
                    else:
                        if 1 > 0 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ((0 / totalSupply) - 1)
            else:
                if not 0 / totalSupply:
                    if 1 > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(strategyAddress))
                    call address(strategyAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ((0 / totalSupply) - 1)
                else:
                    require 0 / totalSupply
                    if 0 / totalSupply * stor8 / 0 / totalSupply != stor8:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 0 / totalSupply * stor8 / 1000 >= 1:
                        if 0 / totalSupply * stor8 / 1000 > 0 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ((0 / totalSupply) - (0 / totalSupply * stor8 / 1000))
                    else:
                        if 1 > 0 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ((0 / totalSupply) - 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x656e6f20746f6b656e732077697468647261776e2066726f6d2073747261746567,
                        mem[197 len 31]
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[197 len 31]
        if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
        balanceOf[address(msg.sender)] = 0
        if balanceOf[address(msg.sender)] > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= balanceOf[address(msg.sender)]
        emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).0x6f307dc3 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
        if ext_code.size(address(ext_call.return_data[0])) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    else:
        require ext_call.return_data[0]
        if ext_call.return_data[0] * balanceOf[address(msg.sender)] / ext_call.return_data[0] != balanceOf[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x736572726f723a20707265636973696f6e2c20616d6f756e74576974686472617720697320,
                        mem[201 len 27]
        if stor8 <= 0:
            require ext_code.size(address(strategyAddress))
            call address(strategyAddress).0x2e1a7d4d with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x656e6f20746f6b656e732077697468647261776e2066726f6d2073747261746567,
                            mem[197 len 31]
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            balanceOf[address(msg.sender)] = 0
            if balanceOf[address(msg.sender)] > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= balanceOf[address(msg.sender)]
            emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
            require ext_code.size(address(strategyAddress))
            staticcall address(strategyAddress).0x6f307dc3 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
            if ext_code.size(address(ext_call.return_data[0])) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        else:
            if stor8 > stor9:
                if not ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply:
                    if 1 > ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(strategyAddress))
                    call address(strategyAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ((ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply) - 1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x656e6f20746f6b656e732077697468647261776e2066726f6d2073747261746567,
                                    mem[197 len 31]
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[197 len 31]
                    if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                    balanceOf[address(msg.sender)] = 0
                    if balanceOf[address(msg.sender)] > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= balanceOf[address(msg.sender)]
                    emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
                    require ext_code.size(address(strategyAddress))
                    staticcall address(strategyAddress).0x6f307dc3 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if ext_code.size(address(ext_call.return_data[0])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    mem[420 len 0] = 0
                else:
                    require ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply
                    if ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply * stor9 / ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply != stor9:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply * stor9 / 1000 >= 1:
                        if ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply * stor9 / 1000 > ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ((ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply) - (ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply * stor9 / 1000))
                    else:
                        if 1 > ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ((ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply) - 1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x656e6f20746f6b656e732077697468647261776e2066726f6d2073747261746567,
                                    mem[197 len 31]
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[197 len 31]
                    if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                    balanceOf[address(msg.sender)] = 0
                    if balanceOf[address(msg.sender)] > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= balanceOf[address(msg.sender)]
                    emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
                    require ext_code.size(address(strategyAddress))
                    staticcall address(strategyAddress).0x6f307dc3 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if ext_code.size(address(ext_call.return_data[0])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
            else:
                if not ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply:
                    if 1 > ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(strategyAddress))
                    call address(strategyAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ((ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply) - 1)
                else:
                    require ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply
                    if ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply * stor8 / ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply != stor8:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply * stor8 / 1000 >= 1:
                        if ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply * stor8 / 1000 > ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ((ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply) - (ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply * stor8 / 1000))
                    else:
                        if 1 > ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ((ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply) - 1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x656e6f20746f6b656e732077697468647261776e2066726f6d2073747261746567,
                                mem[197 len 31]
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                balanceOf[address(msg.sender)] = 0
                if balanceOf[address(msg.sender)] > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= balanceOf[address(msg.sender)]
                emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
                require ext_code.size(address(strategyAddress))
                staticcall address(strategyAddress).0x6f307dc3 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if ext_code.size(address(ext_call.return_data[0])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    call address(ext_call.return_data[0]) with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[420 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
    else:
        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[388]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 467 len 22]
    emit 0x788a47fb 
    stor6 = 1
}

function withdrawAll(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
        revert with 0, 'User balance too small'
    require ext_code.size(address(strategyAddress))
    call address(strategyAddress).0xffb2c479 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(strategyAddress))
    staticcall address(strategyAddress).0x69e527da with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(strategyAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x736e6f2063546f6b656e2062616c616e636520696e20737472617465677920636f6e74726163,
                    mem[202 len 26]
    if not ext_call.return_data[0]:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if 0 / totalSupply <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x736572726f723a20707265636973696f6e2c20616d6f756e74576974686472617720697320,
                        mem[201 len 27]
        if stor8 <= 0:
            require ext_code.size(address(strategyAddress))
            call address(strategyAddress).0x2e1a7d4d with:
                 gas gas_remaining wei
                args (0 / totalSupply)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x656e6f20746f6b656e732077697468647261776e2066726f6d2073747261746567,
                            mem[197 len 31]
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            balanceOf[address(msg.sender)] = 0
            if balanceOf[address(msg.sender)] > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= balanceOf[address(msg.sender)]
            emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
            require ext_code.size(address(strategyAddress))
            staticcall address(strategyAddress).0x6f307dc3 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
            if ext_code.size(address(ext_call.return_data[0])) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        else:
            if stor8 > stor9:
                if not 0 / totalSupply:
                    if 1 > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(strategyAddress))
                    call address(strategyAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ((0 / totalSupply) - 1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x656e6f20746f6b656e732077697468647261776e2066726f6d2073747261746567,
                                    mem[197 len 31]
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[197 len 31]
                    if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                    balanceOf[address(msg.sender)] = 0
                    if balanceOf[address(msg.sender)] > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= balanceOf[address(msg.sender)]
                    emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
                    require ext_code.size(address(strategyAddress))
                    staticcall address(strategyAddress).0x6f307dc3 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if ext_code.size(address(ext_call.return_data[0])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    mem[420 len 0] = 0
                else:
                    require 0 / totalSupply
                    if 0 / totalSupply * stor9 / 0 / totalSupply != stor9:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 0 / totalSupply * stor9 / 1000 >= 1:
                        if 0 / totalSupply * stor9 / 1000 > 0 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ((0 / totalSupply) - (0 / totalSupply * stor9 / 1000))
                    else:
                        if 1 > 0 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ((0 / totalSupply) - 1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x656e6f20746f6b656e732077697468647261776e2066726f6d2073747261746567,
                                    mem[197 len 31]
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[197 len 31]
                    if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                    balanceOf[address(msg.sender)] = 0
                    if balanceOf[address(msg.sender)] > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= balanceOf[address(msg.sender)]
                    emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
                    require ext_code.size(address(strategyAddress))
                    staticcall address(strategyAddress).0x6f307dc3 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if ext_code.size(address(ext_call.return_data[0])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
            else:
                if not 0 / totalSupply:
                    if 1 > 0 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(strategyAddress))
                    call address(strategyAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ((0 / totalSupply) - 1)
                else:
                    require 0 / totalSupply
                    if 0 / totalSupply * stor8 / 0 / totalSupply != stor8:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 0 / totalSupply * stor8 / 1000 >= 1:
                        if 0 / totalSupply * stor8 / 1000 > 0 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ((0 / totalSupply) - (0 / totalSupply * stor8 / 1000))
                    else:
                        if 1 > 0 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ((0 / totalSupply) - 1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x656e6f20746f6b656e732077697468647261776e2066726f6d2073747261746567,
                                mem[197 len 31]
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                balanceOf[address(msg.sender)] = 0
                if balanceOf[address(msg.sender)] > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= balanceOf[address(msg.sender)]
                emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
                require ext_code.size(address(strategyAddress))
                staticcall address(strategyAddress).0x6f307dc3 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if ext_code.size(address(ext_call.return_data[0])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    else:
        require ext_call.return_data[0]
        if ext_call.return_data[0] * balanceOf[address(msg.sender)] / ext_call.return_data[0] != balanceOf[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x736572726f723a20707265636973696f6e2c20616d6f756e74576974686472617720697320,
                        mem[201 len 27]
        if stor8 <= 0:
            require ext_code.size(address(strategyAddress))
            call address(strategyAddress).0x2e1a7d4d with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply)
        else:
            if stor8 > stor9:
                if not ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply:
                    if 1 > ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(strategyAddress))
                    call address(strategyAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ((ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply) - 1)
                else:
                    require ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply
                    if ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply * stor9 / ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply != stor9:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply * stor9 / 1000 >= 1:
                        if ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply * stor9 / 1000 > ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ((ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply) - (ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply * stor9 / 1000))
                    else:
                        if 1 > ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ((ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply) - 1)
            else:
                if not ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply:
                    if 1 > ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(strategyAddress))
                    call address(strategyAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ((ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply) - 1)
                else:
                    require ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply
                    if ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply * stor8 / ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply != stor8:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply * stor8 / 1000 >= 1:
                        if ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply * stor8 / 1000 > ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ((ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply) - (ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply * stor8 / 1000))
                    else:
                        if 1 > ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(strategyAddress))
                        call address(strategyAddress).0x2e1a7d4d with:
                             gas gas_remaining wei
                            args ((ext_call.return_data[0] * balanceOf[address(msg.sender)] / totalSupply) - 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x656e6f20746f6b656e732077697468647261776e2066726f6d2073747261746567,
                        mem[197 len 31]
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[197 len 31]
        if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
        balanceOf[address(msg.sender)] = 0
        if balanceOf[address(msg.sender)] > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= balanceOf[address(msg.sender)]
        emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
        require ext_code.size(address(strategyAddress))
        staticcall address(strategyAddress).0x6f307dc3 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
        if ext_code.size(address(ext_call.return_data[0])) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    call address(ext_call.return_data[0]) with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[420 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
    else:
        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[388]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 467 len 22]
    require ext_code.size(address(strategyAddress))
    call address(strategyAddress).0xf81c418b with:
         gas gas_remaining wei
        args 0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x788a47fb 
    stor6 = 1
}



}
