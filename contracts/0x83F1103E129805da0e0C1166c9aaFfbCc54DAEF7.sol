contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - rebalanceCollateral()
#  - deposit(uint256 arg1)
#  - sub_bd0a3b7e(?)
#  - sub_d2b49a92(?)
#
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner;
address stor10;
address stor12;
address stor14;
address stor15;
uint256 stor18;
uint256 sub_eb61c72a;
uint256 stor20;
address stor21;
address stor22;
address stor23;
address stor24;
address stor25;
address stor26;
uint256 pool;

function name() payable {
    return name[0 len name.length]
}

function pool() payable {
    return pool
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

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_eb61c72a(?) payable {
    return sub_eb61c72a
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_10424710(?) payable {
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor24
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_10b27598(?) payable {
    require ext_code.size(stor22)
    staticcall stor22.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_8c8d157a(?) payable {
    require ext_code.size(stor21)
    staticcall stor21.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_94344bef(?) payable {
    require ext_code.size(stor22)
    staticcall stor22.0x70a08231 with:
            gas gas_remaining wei
           args stor24
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_6622e408(?) payable {
    require ext_code.size(stor21)
    staticcall stor21.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_feb6848a(?) payable {
    require ext_code.size(stor22)
    staticcall stor22.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_06637372(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor21)
    call stor21.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
                    0x6445524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
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

function sub_3285dfb4(?) payable {
    require ext_code.size(stor23)
    staticcall stor23.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor23)
    call stor23.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor15, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor15)
    call stor15.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor18, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_eb61c72a += ext_call.return_data[0]
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

function sub_a9c19c66(?) payable {
    require ext_code.size(stor26)
    staticcall stor26.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor10)
    staticcall stor10.exchangeRateStored() with:
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
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
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

function sub_7845790c(?) payable {
    require ext_code.size(stor22)
    staticcall stor22.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor21)
    staticcall stor21.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    staticcall stor22.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
    revert
}

function sub_cad20a29(?) payable {
    require ext_code.size(stor22)
    staticcall stor22.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor21)
    staticcall stor21.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
    revert
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

function sub_ec079f38(?) payable {
    require ext_code.size(stor22)
    staticcall stor22.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor21)
    staticcall stor21.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor23)
    staticcall stor23.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor23)
    staticcall stor23.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_eb61c72a + ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if not 0 / ext_call.return_data[0]:
            return 0
        require 0 / ext_call.return_data[0]
        if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return (2 * 0 / ext_call.return_data[0])
    require sub_eb61c72a + ext_call.return_data[0]
    if (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / sub_eb61c72a + ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if not (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
        return 0
    require (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]
    if 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return (2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0])
}

function calcPoolValueInToken() payable {
    require ext_code.size(stor22)
    staticcall stor22.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor21)
    staticcall stor21.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor23)
    staticcall stor23.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor23)
    staticcall stor23.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_eb61c72a + ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if not 0 / ext_call.return_data[0]:
                require ext_code.size(stor26)
                staticcall stor26.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor10)
                staticcall stor10.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(stor21)
                    staticcall stor21.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor21)
                    staticcall stor21.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            require ext_code.size(stor22)
                            staticcall stor22.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor23
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor21)
                            staticcall stor21.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor23
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor22)
                            staticcall stor22.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    return ext_call.return_data[0]
                            else:
                                if ext_call.return_data[0]:
                                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return (ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                    else:
                        if ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                require ext_code.size(stor22)
                                staticcall stor22.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor23
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor21)
                                staticcall stor21.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor23
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor22)
                                staticcall stor22.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return (ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
                                else:
                                    if ext_call.return_data[0]:
                                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            return ext_call.return_data[0]
                else:
                    if ext_call.return_data[0]:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        require ext_code.size(stor21)
                        staticcall stor21.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor22)
                        staticcall stor22.0x70a08231 with:
                                gas gas_remaining wei
                               args stor23
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor21)
                        staticcall stor21.0x70a08231 with:
                                gas gas_remaining wei
                               args stor23
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor12)
                        staticcall stor12.borrowBalanceStored(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                require ext_code.size(stor22)
                                staticcall stor22.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor23
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor21)
                                staticcall stor21.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor23
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor22)
                                staticcall stor22.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                                else:
                                    if ext_call.return_data[0]:
                                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                        else:
                            if ext_call.return_data[0]:
                                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    require ext_code.size(stor22)
                                    staticcall stor22.0x70a08231 with:
                                            gas gas_remaining wei
                                           args stor23
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x70a08231 with:
                                            gas gas_remaining wei
                                           args stor23
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor22)
                                    staticcall stor22.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
                                    else:
                                        if ext_call.return_data[0]:
                                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
            else:
                if 0 / ext_call.return_data[0]:
                    if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor10)
                    staticcall stor10.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        require ext_code.size(stor21)
                        staticcall stor21.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor22)
                        staticcall stor22.0x70a08231 with:
                                gas gas_remaining wei
                               args stor23
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor21)
                        staticcall stor21.0x70a08231 with:
                                gas gas_remaining wei
                               args stor23
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor12)
                        staticcall stor12.borrowBalanceStored(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                require ext_code.size(stor22)
                                staticcall stor22.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor23
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor21)
                                staticcall stor21.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor23
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor22)
                                staticcall stor22.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return (ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]))
                                else:
                                    if ext_call.return_data[0]:
                                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            return (ext_call.return_data[0] + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                        else:
                            if ext_call.return_data[0]:
                                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    require ext_code.size(stor22)
                                    staticcall stor22.0x70a08231 with:
                                            gas gas_remaining wei
                                           args stor23
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x70a08231 with:
                                            gas gas_remaining wei
                                           args stor23
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor22)
                                    staticcall stor22.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            return (ext_call.return_data[0] + (4 * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                                    else:
                                        if ext_call.return_data[0]:
                                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                return (ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]))
                    else:
                        if ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            require ext_code.size(stor21)
                            staticcall stor21.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor22)
                            staticcall stor22.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor23
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor21)
                            staticcall stor21.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor23
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor12)
                            staticcall stor12.borrowBalanceStored(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    require ext_code.size(stor22)
                                    staticcall stor22.0x70a08231 with:
                                            gas gas_remaining wei
                                           args stor23
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x70a08231 with:
                                            gas gas_remaining wei
                                           args stor23
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor22)
                                    staticcall stor22.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]))
                                    else:
                                        if ext_call.return_data[0]:
                                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                            else:
                                if ext_call.return_data[0]:
                                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        require ext_code.size(stor22)
                                        staticcall stor22.0x70a08231 with:
                                                gas gas_remaining wei
                                               args stor23
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x70a08231 with:
                                                gas gas_remaining wei
                                               args stor23
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor22)
                                        staticcall stor22.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (4 * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                                        else:
                                            if ext_call.return_data[0]:
                                                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]))
    else:
        if sub_eb61c72a + ext_call.return_data[0]:
            if (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / sub_eb61c72a + ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if not (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                    require ext_code.size(stor26)
                    staticcall stor26.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor10)
                    staticcall stor10.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        require ext_code.size(stor21)
                        staticcall stor21.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor22)
                        staticcall stor22.0x70a08231 with:
                                gas gas_remaining wei
                               args stor23
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor21)
                        staticcall stor21.0x70a08231 with:
                                gas gas_remaining wei
                               args stor23
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor12)
                        staticcall stor12.borrowBalanceStored(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                require ext_code.size(stor22)
                                staticcall stor22.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor23
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor21)
                                staticcall stor21.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor23
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor22)
                                staticcall stor22.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        return ext_call.return_data[0]
                                else:
                                    if ext_call.return_data[0]:
                                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            return (ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                        else:
                            if ext_call.return_data[0]:
                                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    require ext_code.size(stor22)
                                    staticcall stor22.0x70a08231 with:
                                            gas gas_remaining wei
                                           args stor23
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x70a08231 with:
                                            gas gas_remaining wei
                                           args stor23
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor22)
                                    staticcall stor22.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            return (ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
                                    else:
                                        if ext_call.return_data[0]:
                                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                return ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0]:
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            require ext_code.size(stor21)
                            staticcall stor21.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor22)
                            staticcall stor22.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor23
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor21)
                            staticcall stor21.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor23
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor12)
                            staticcall stor12.borrowBalanceStored(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    require ext_code.size(stor22)
                                    staticcall stor22.0x70a08231 with:
                                            gas gas_remaining wei
                                           args stor23
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x70a08231 with:
                                            gas gas_remaining wei
                                           args stor23
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor22)
                                    staticcall stor22.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                                    else:
                                        if ext_call.return_data[0]:
                                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                            else:
                                if ext_call.return_data[0]:
                                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        require ext_code.size(stor22)
                                        staticcall stor22.0x70a08231 with:
                                                gas gas_remaining wei
                                               args stor23
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x70a08231 with:
                                                gas gas_remaining wei
                                               args stor23
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor22)
                                        staticcall stor22.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
                                        else:
                                            if ext_call.return_data[0]:
                                                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                else:
                    if (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                        if 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        require ext_code.size(stor26)
                        staticcall stor26.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor10)
                        staticcall stor10.exchangeRateStored() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require ext_code.size(stor21)
                            staticcall stor21.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor22)
                            staticcall stor22.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor23
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor21)
                            staticcall stor21.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor23
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor12)
                            staticcall stor12.borrowBalanceStored(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    require ext_code.size(stor22)
                                    staticcall stor22.0x70a08231 with:
                                            gas gas_remaining wei
                                           args stor23
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x70a08231 with:
                                            gas gas_remaining wei
                                           args stor23
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor22)
                                    staticcall stor22.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            return (ext_call.return_data[0] + (2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
                                    else:
                                        if ext_call.return_data[0]:
                                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                return (ext_call.return_data[0] + (2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                            else:
                                if ext_call.return_data[0]:
                                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        require ext_code.size(stor22)
                                        staticcall stor22.0x70a08231 with:
                                                gas gas_remaining wei
                                               args stor23
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x70a08231 with:
                                                gas gas_remaining wei
                                               args stor23
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor22)
                                        staticcall stor22.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                return (ext_call.return_data[0] + (2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
                                        else:
                                            if ext_call.return_data[0]:
                                                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    return (ext_call.return_data[0] + (2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
                        else:
                            if ext_call.return_data[0]:
                                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                require ext_code.size(stor21)
                                staticcall stor21.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor22)
                                staticcall stor22.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor23
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor21)
                                staticcall stor21.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor23
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor12)
                                staticcall stor12.borrowBalanceStored(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        require ext_code.size(stor22)
                                        staticcall stor22.0x70a08231 with:
                                                gas gas_remaining wei
                                               args stor23
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x70a08231 with:
                                                gas gas_remaining wei
                                               args stor23
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor22)
                                        staticcall stor22.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
                                        else:
                                            if ext_call.return_data[0]:
                                                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                                else:
                                    if ext_call.return_data[0]:
                                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            require ext_code.size(stor22)
                                            staticcall stor22.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args stor23
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(stor21)
                                            staticcall stor21.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args stor23
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(stor22)
                                            staticcall stor22.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
                                            else:
                                                if ext_call.return_data[0]:
                                                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if ext_call.return_data[0]:
                                                        return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
    revert
}

function sub_2c65271a(?) payable {
    require ext_code.size(stor15)
    call stor15.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor18, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor22)
    staticcall stor22.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor21)
    staticcall stor21.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require ext_code.size(stor22)
        staticcall stor22.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor21)
        staticcall stor21.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor23)
        staticcall stor23.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor23)
        staticcall stor23.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not sub_eb61c72a + ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not 0 / ext_call.return_data[0]:
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                call stor25.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor14, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor22)
                staticcall stor22.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 <= 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require 0 / ext_call.return_data[0]
                            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    call stor12.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor20 -= ext_call.return_data[0]
                else:
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor21)
                    staticcall stor21.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require 0 / ext_call.return_data[0]
                            if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require 0 / ext_call.return_data[0]
                if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                call stor25.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor14, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor22)
                staticcall stor22.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint255(0 / ext_call.return_data[0]) <= 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require 0 / ext_call.return_data[0]
                            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    call stor12.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor20 -= ext_call.return_data[0]
                else:
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor21)
                    staticcall stor21.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require 0 / ext_call.return_data[0]
                            if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            require sub_eb61c72a + ext_call.return_data[0]
            if (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / sub_eb61c72a + ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                call stor25.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor14, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor22)
                staticcall stor22.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 <= 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require 0 / ext_call.return_data[0]
                            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    call stor12.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor20 -= ext_call.return_data[0]
                else:
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor21)
                    staticcall stor21.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require 0 / ext_call.return_data[0]
                            if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]
                if 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                call stor25.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor14, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor22)
                staticcall stor22.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint255((sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) <= 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require 0 / ext_call.return_data[0]
                            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    call stor12.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor20 -= ext_call.return_data[0]
                else:
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor21)
                    staticcall stor21.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require 0 / ext_call.return_data[0]
                            if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require ext_code.size(stor22)
        staticcall stor22.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor21)
        staticcall stor21.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor23)
        staticcall stor23.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor23)
        staticcall stor23.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not sub_eb61c72a + ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not 0 / ext_call.return_data[0]:
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                call stor25.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor14, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor22)
                staticcall stor22.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 <= ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require 0 / ext_call.return_data[0]
                            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    call stor12.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor20 -= ext_call.return_data[0]
                else:
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor21)
                    staticcall stor21.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require 0 / ext_call.return_data[0]
                            if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require 0 / ext_call.return_data[0]
                if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                call stor25.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor14, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor22)
                staticcall stor22.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint255(0 / ext_call.return_data[0]) <= ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require 0 / ext_call.return_data[0]
                            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    call stor12.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor20 -= ext_call.return_data[0]
                else:
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor21)
                    staticcall stor21.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require 0 / ext_call.return_data[0]
                            if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            require sub_eb61c72a + ext_call.return_data[0]
            if (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / sub_eb61c72a + ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                call stor25.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor14, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor22)
                staticcall stor22.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 <= ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require 0 / ext_call.return_data[0]
                            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    call stor12.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor20 -= ext_call.return_data[0]
                else:
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor21)
                    staticcall stor21.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require 0 / ext_call.return_data[0]
                            if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]
                if 2 * (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / (sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                call stor25.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor14, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor22)
                staticcall stor22.0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint255((sub_eb61c72a * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) <= ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require 0 / ext_call.return_data[0]
                            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[485 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 2, mem[708 len 64]
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[549 len 31]
                            mem[708 len 0] = None
                            require ext_code.size(stor14)
                            call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=2, data=mem[708 len 64]), address(this.address), block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    call stor12.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor20 -= ext_call.return_data[0]
                else:
                    require ext_code.size(stor22)
                    staticcall stor22.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor21)
                    staticcall stor21.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not 0 / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require 0 / ext_call.return_data[0]
                            if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not 0 / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require 0 / ext_call.return_data[0]
                                if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * 0 / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * 0 / ext_call.return_data[0] / 100)
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[804 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                            else:
                                require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                mem[804 len 0] = None
                                require ext_code.size(stor14)
                                call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[804 len 96]), address(this.address), block.timestamp + 120
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor21)
                                call stor21.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor10, 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor10)
                                call stor10.mint(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
