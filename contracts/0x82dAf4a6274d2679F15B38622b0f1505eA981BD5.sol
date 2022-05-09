contract main {




// =====================  Runtime code  =====================


#
#  - sub_0d02b9cd(?)
#  - sub_2c65271a(?)
#  - withdraw(uint256 arg1)
#  - rebalanceCollateral()
#  - sub_83090786(?)
#  - withdrawAll()
#  - sub_ae263a1d(?)
#  - deposit(uint256 arg1)
#  - sub_d2b49a92(?)
#  - sub_ed4fe5e8(?)
#  - _withdrawSome(uint256 arg1)
#  - sub_ee960d30(?)
#
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner;
address stor9;
uint256 stor11;
address stor12;
address stor14;
address stor18;
address stor19;
uint32 stor22;
address stor22;
address stor23;
address stor24;
address stor25;
address stor26;
address strategistAddress;
address keeperAddress;
uint256 pool;
uint256 stor33;
uint256 stor34;
uint256 stor35;
uint256 stor36;
uint256 stor37;

function name() payable {
    return name[0 len name.length]
}

function pool() payable {
    return pool
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

function keeper() payable {
    return keeperAddress
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
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        require msg.sender == owner
    require arg1
    keeperAddress = arg1
    emit UpdatedKeeper(arg1);
}

function sub_73d121db(?) payable {
    require calldata.size - 4 >= 64
    if strategistAddress != msg.sender:
        require msg.sender == owner
    require arg1 < 100
    require arg2 > 100
    stor36 = arg2
    stor37 = arg1
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        require msg.sender == owner
    require arg1
    strategistAddress = arg1
    emit UpdatedStrategist(arg1);
}

function sub_94c04ced(?) payable {
    require calldata.size - 4 >= 96
    if strategistAddress != msg.sender:
        require msg.sender == owner
    require 75 > arg2
    require arg2 > arg3
    require arg3 > arg1
    stor33 = arg2
    stor34 = arg3
    stor35 = arg1
}

function sub_bdcbff12(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor9)
    call stor9.redeemUnderlying(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5627f7b5(?) payable {
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args stor9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_8ad56bff(?) payable {
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_c7f46d99(?) payable {
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor24
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function _borrow(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor14)
    call stor14.borrow(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_6622e408(?) payable {
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_eb61c72a(?) payable {
    require ext_code.size(stor19)
    staticcall stor19.0x93f1a40b with:
            gas gas_remaining wei
           args stor11, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_ba7c565b(?) payable {
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_c4401a3b(?) payable {
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args stor24
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_feb6848a(?) payable {
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args this.address
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
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_b0729c55(?) payable {
    require ext_code.size(stor19)
    staticcall stor19.0x93f1a40b with:
            gas gas_remaining wei
           args stor11, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor19)
    call stor19.0x441a3e70 with:
         gas gas_remaining wei
        args stor11, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_26eb07b6(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor12)
    call stor12.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor9, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor9)
    call stor9.mint(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a8e9f25f(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor19)
    staticcall stor19.0x93f1a40b with:
            gas gas_remaining wei
           args stor11, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 <= ext_call.return_data[0]
    require ext_code.size(stor19)
    call stor19.0x441a3e70 with:
         gas gas_remaining wei
        args stor11, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_1944ee4c(?) payable {
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
        args stor19, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor19)
    call stor19.0xe2bbb158 with:
         gas gas_remaining wei
        args stor11, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
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

function sub_a9c19c66(?) payable {
    require ext_code.size(stor26)
    staticcall stor26.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor9)
    staticcall stor9.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
}

function sub_7d3795c7(?) payable {
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor22))
    call address(stor22).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor14, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor14)
    staticcall stor14.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor14)
    call stor14.repayBorrow(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_7845790c(?) payable {
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
}

function sub_cad20a29(?) payable {
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor14)
    staticcall stor14.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
}

function sub_3ccbcfdc(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor14)
        call stor14.borrow(uint256 arg1) with:
             gas gas_remaining wei
            args (0 / ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return (0 / ext_call.return_data[0])
    if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(stor14)
    call stor14.borrow(uint256 arg1) with:
         gas gas_remaining wei
        args (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
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

function sub_ec079f38(?) payable {
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
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
    require ext_code.size(stor19)
    staticcall stor19.0x93f1a40b with:
            gas gas_remaining wei
           args stor11, this.address
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
    if not 2 * ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            return 0
        if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return (2 * 0 / ext_call.return_data[0])
    if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
        return 0
    if 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0])
}

function sub_3e4db047(?) payable {
    require ext_code.size(stor19)
    staticcall stor19.0x1778809f with:
            gas gas_remaining wei
           args stor11, this.address
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
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args stor24
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0])
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0])
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0])
}

function sub_4d3660f8(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor12)
    call stor12.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor18, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            mem[516 len 0] = None
            require ext_code.size(stor18)
            call stor18.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 0, 160, this.address, block.timestamp + 120, 2, mem[516 len 64]
        else:
            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
            mem[516 len 0] = None
            require ext_code.size(stor18)
            call stor18.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 99 * 0 / ext_call.return_data[0] / 100, Array(len=2, data=mem[516 len 64]), this.address, block.timestamp + 120
    else:
        if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
            mem[516 len 0] = None
            require ext_code.size(stor18)
            call stor18.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 0, 160, this.address, block.timestamp + 120, 2, mem[516 len 64]
        else:
            if 99 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / ext_call.return_data[0] * arg1 / ext_call.return_data[0] != 99:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
            mem[516 len 0] = None
            require ext_code.size(stor18)
            call stor18.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 99 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 100, Array(len=2, data=mem[516 len 64]), this.address, block.timestamp + 120
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_384197c3(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor22))
    call address(stor22).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor18, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            mem[516 len 0] = None
            require ext_code.size(stor18)
            call stor18.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 0, 160, this.address, block.timestamp + 120, 2, mem[516 len 64]
        else:
            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
            mem[516 len 0] = None
            require ext_code.size(stor18)
            call stor18.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 99 * 0 / ext_call.return_data[0] / 100, Array(len=2, data=mem[516 len 64]), this.address, block.timestamp + 120
    else:
        if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
            mem[516 len 0] = None
            require ext_code.size(stor18)
            call stor18.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 0, 160, this.address, block.timestamp + 120, 2, mem[516 len 64]
        else:
            if 99 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / ext_call.return_data[0] * arg1 / ext_call.return_data[0] != 99:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
            mem[516 len 0] = None
            require ext_code.size(stor18)
            call stor18.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 99 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 100, Array(len=2, data=mem[516 len 64]), this.address, block.timestamp + 120
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c9db0d1f(?) payable {
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
        args stor18, ext_call.return_data[0]
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
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args stor24
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            require ext_code.size(stor18)
            call stor18.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, this.address, block.timestamp + 120, 2, stor25, address(stor22)
        else:
            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
            require ext_code.size(stor18)
            call stor18.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=2, data=stor25, address(stor22)), this.address, block.timestamp + 120
    else:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            require ext_code.size(stor18)
            call stor18.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, this.address, block.timestamp + 120, 2, stor25, address(stor22)
        else:
            if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
            require ext_code.size(stor18)
            call stor18.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=2, data=stor25, address(stor22)), this.address, block.timestamp + 120
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d88701de(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            require ext_code.size(stor12)
            call stor12.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor18, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor18)
            call stor18.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 0, 160, this.address, block.timestamp + 120, 2, stor12, address(stor22)
        else:
            if 101 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 101:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
            require ext_code.size(stor12)
            call stor12.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor18, 101 * 0 / ext_call.return_data[0] / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor18)
            call stor18.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 101 * 0 / ext_call.return_data[0] / 100, Array(len=2, data=stor12, address(stor22)), this.address, block.timestamp + 120
    else:
        if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
            require ext_code.size(stor12)
            call stor12.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor18, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor18)
            call stor18.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 0, 160, this.address, block.timestamp + 120, 2, stor12, address(stor22)
        else:
            if 101 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / ext_call.return_data[0] * arg1 / ext_call.return_data[0] != 101:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
            require ext_code.size(stor12)
            call stor12.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor18, 101 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor18)
            call stor18.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 101 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 100, Array(len=2, data=stor12, address(stor22)), this.address, block.timestamp + 120
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e6e7114b(?) payable {
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor14)
    staticcall stor14.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor26)
        staticcall stor26.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor9)
        staticcall stor9.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 0 / ext_call.return_data[0]:
                if 100 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not 0 / ext_call.return_data[0]:
            if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
        if 100 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 100:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: division by zero'
        return (100 * 0 / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(stor26)
    staticcall stor26.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor9)
    staticcall stor9.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            if 100 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        revert with 0, 'SafeMath: division by zero'
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
    if 100 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 100:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        revert with 0, 'SafeMath: division by zero'
    return (100 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
}

function sub_883dd547(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            require ext_code.size(stor12)
            call stor12.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor18, 0 / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            call address(stor22).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor18, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor18)
            call stor18.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args 0, uint32(stor22), stor12, arg1, 0 / ext_call.return_data[0], arg1, 0, this.address, block.timestamp + 15
        else:
            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            require ext_code.size(stor12)
            call stor12.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor18, 0 / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            call address(stor22).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor18, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor18)
            call stor18.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args 0, uint32(stor22), stor12, arg1, 0 / ext_call.return_data[0], arg1, 99 * 0 / ext_call.return_data[0] / 100, this.address, block.timestamp + 15
    else:
        if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
            require ext_code.size(stor12)
            call stor12.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor18, ext_call.return_data[0] * arg1 / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            call address(stor22).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor18, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor18)
            call stor18.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args 0, uint32(stor22), stor12, arg1, ext_call.return_data[0] * arg1 / ext_call.return_data[0], arg1, 0, this.address, block.timestamp + 15
        else:
            if 99 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / ext_call.return_data[0] * arg1 / ext_call.return_data[0] != 99:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            require ext_code.size(stor12)
            call stor12.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor18, ext_call.return_data[0] * arg1 / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            call address(stor22).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor18, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor18)
            call stor18.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args 0, uint32(stor22), stor12, arg1, ext_call.return_data[0] * arg1 / ext_call.return_data[0], arg1, 99 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 100, this.address, block.timestamp + 15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_250ad965(?) payable {
    require ext_code.size(stor26)
    staticcall stor26.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor9)
    staticcall stor9.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor14)
        staticcall stor14.borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if 0 / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if 100 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (100 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0])
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if 100 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 100:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (100 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor14)
    staticcall stor14.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if not 0 / ext_call.return_data[0]:
            if not (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: division by zero'
            return (0 / (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
        if 100 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 100:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
            revert with 0, 'SafeMath: division by zero'
        return (100 * 0 / ext_call.return_data[0] / (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
            revert with 0, 'SafeMath: division by zero'
        return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
    if 100 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 100:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
        revert with 0, 'SafeMath: division by zero'
    return (100 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
}

function sub_763a1e55(?) payable {
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
        args stor18, ext_call.return_data[0]
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
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args stor24
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0]:
                mem[612 len 0] = None
                require ext_code.size(stor18)
                call stor18.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[612 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    return 0
            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            mem[612 len 0] = None
            require ext_code.size(stor18)
            call stor18.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[612 len 96]), address(this.address), block.timestamp + 120
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            return (99 * 0 / ext_call.return_data[0] / 100)
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]:
            mem[612 len 0] = None
            require ext_code.size(stor18)
            call stor18.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[612 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                return 0
        if 99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] != 99:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        mem[612 len 0] = None
        require ext_code.size(stor18)
        call stor18.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[612 len 96]), address(this.address), block.timestamp + 120
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return (99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 100)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            mem[612 len 0] = None
            require ext_code.size(stor18)
            call stor18.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[612 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                return 0
        if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        mem[612 len 0] = None
        require ext_code.size(stor18)
        call stor18.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[612 len 96]), address(this.address), block.timestamp + 120
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return (99 * 0 / ext_call.return_data[0] / 100)
    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]:
        mem[612 len 0] = None
        require ext_code.size(stor18)
        call stor18.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[612 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            return 0
    if 99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] != 99:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    mem[612 len 0] = None
    require ext_code.size(stor18)
    call stor18.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[612 len 96]), address(this.address), block.timestamp + 120
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return (99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 100)
}

function sub_8555e2e5(?) payable {
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor14)
    staticcall stor14.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
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
        require ext_code.size(stor19)
        staticcall stor19.0x93f1a40b with:
                gas gas_remaining wei
               args stor11, this.address
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
        if not 2 * ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0]:
                if 0 / ext_call.return_data[0]:
                    if 200 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 200:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                revert with 0, 'SafeMath: division by zero'
            if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 0 / ext_call.return_data[0]:
                if not 2 * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / 2 * 0 / ext_call.return_data[0])
            if 200 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 200:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 2 * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (200 * 0 / ext_call.return_data[0] / 2 * 0 / ext_call.return_data[0])
        if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
            if 0 / ext_call.return_data[0]:
                if 200 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 200:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            revert with 0, 'SafeMath: division by zero'
        if 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not 0 / ext_call.return_data[0]:
            if not 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0])
        if 200 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 200:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (200 * 0 / ext_call.return_data[0] / 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0])
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
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
    require ext_code.size(stor19)
    staticcall stor19.0x93f1a40b with:
            gas gas_remaining wei
           args stor11, this.address
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
    if not 2 * ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if 200 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 200:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            revert with 0, 'SafeMath: division by zero'
        if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            if not 2 * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / 2 * 0 / ext_call.return_data[0])
        if 200 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 200:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not 2 * 0 / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (200 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 2 * 0 / ext_call.return_data[0])
    if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            if 200 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 200:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        revert with 0, 'SafeMath: division by zero'
    if 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        if not 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0])
    if 200 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 200:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (200 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0])
}

function sub_8217d6b3(?) payable {
    require ext_code.size(stor23)
    staticcall stor23.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
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
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    require ext_code.size(stor23)
                    call stor23.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor18, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    call stor18.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args address(stor22), stor12, ext_call.return_data[0], 0, 0, this.address, block.timestamp + 15
                else:
                    if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    require ext_code.size(stor23)
                    call stor23.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor18, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    call stor18.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args address(stor22), stor12, ext_call.return_data[0], 0, 99 * 0 / ext_call.return_data[0] / 100, this.address, block.timestamp + 15
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    require ext_code.size(stor23)
                    call stor23.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor18, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    call stor18.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args address(stor22), stor12, ext_call.return_data[0], 0, 0, this.address, block.timestamp + 15
                else:
                    if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    require ext_code.size(stor23)
                    call stor23.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor18, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    call stor18.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args address(stor22), stor12, ext_call.return_data[0], 0, 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, this.address, block.timestamp + 15
        else:
            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    require ext_code.size(stor23)
                    call stor23.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor18, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    call stor18.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args address(stor22), stor12, ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, 0, this.address, block.timestamp + 15
                else:
                    if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    require ext_code.size(stor23)
                    call stor23.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor18, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    call stor18.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args address(stor22), stor12, ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, 99 * 0 / ext_call.return_data[0] / 100, this.address, block.timestamp + 15
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    require ext_code.size(stor23)
                    call stor23.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor18, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    call stor18.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args address(stor22), stor12, ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, 0, this.address, block.timestamp + 15
                else:
                    if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    require ext_code.size(stor23)
                    call stor23.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor18, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    call stor18.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args address(stor22), stor12, ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, this.address, block.timestamp + 15
    else:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    require ext_code.size(stor23)
                    call stor23.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor18, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    call stor18.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args address(stor22), stor12, ext_call.return_data[0], 0, 0, this.address, block.timestamp + 15
                else:
                    if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    require ext_code.size(stor23)
                    call stor23.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor18, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    call stor18.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args address(stor22), stor12, ext_call.return_data[0], 0, 99 * 0 / ext_call.return_data[0] / 100, this.address, block.timestamp + 15
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    require ext_code.size(stor23)
                    call stor23.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor18, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    call stor18.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args address(stor22), stor12, ext_call.return_data[0], 0, 0, this.address, block.timestamp + 15
                else:
                    if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    require ext_code.size(stor23)
                    call stor23.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor18, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    call stor18.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args address(stor22), stor12, ext_call.return_data[0], 0, 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, this.address, block.timestamp + 15
        else:
            if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    require ext_code.size(stor23)
                    call stor23.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor18, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    call stor18.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args address(stor22), stor12, ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, 0, this.address, block.timestamp + 15
                else:
                    if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    require ext_code.size(stor23)
                    call stor23.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor18, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    call stor18.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args address(stor22), stor12, ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, 99 * 0 / ext_call.return_data[0] / 100, this.address, block.timestamp + 15
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    require ext_code.size(stor23)
                    call stor23.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor18, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    call stor18.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args address(stor22), stor12, ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, 0, this.address, block.timestamp + 15
                else:
                    if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    require ext_code.size(stor23)
                    call stor23.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor18, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor18)
                    call stor18.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args address(stor22), stor12, ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 100, this.address, block.timestamp + 15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
}

function calcPoolValueInToken() payable {
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
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
    require ext_code.size(stor19)
    staticcall stor19.0x93f1a40b with:
            gas gas_remaining wei
           args stor11, this.address
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
    if not 2 * ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor9)
            staticcall stor9.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor14)
                staticcall stor14.borrowBalanceStored(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(stor19)
                        staticcall stor19.0x1778809f with:
                                gas gas_remaining wei
                               args stor11, this.address
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
                        require ext_code.size(address(stor22))
                        staticcall address(stor22).0x70a08231 with:
                                gas gas_remaining wei
                               args stor24
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor22))
                        staticcall address(stor22).0x70a08231 with:
                                gas gas_remaining wei
                               args stor23
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor12)
                        staticcall stor12.0x70a08231 with:
                                gas gas_remaining wei
                               args stor23
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / ext_call.return_data[0]:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                return (ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            return (ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            return (ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(stor19)
                    staticcall stor19.0x1778809f with:
                            gas gas_remaining wei
                           args stor11, this.address
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
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor24
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0])
                        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0])
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(stor19)
                    staticcall stor19.0x1778809f with:
                            gas gas_remaining wei
                           args stor11, this.address
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
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor24
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            return ((2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return ((0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return ((2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return ((0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor19)
                staticcall stor19.0x1778809f with:
                        gas gas_remaining wei
                       args stor11, this.address
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return (ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor14)
            staticcall stor14.borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(stor19)
                    staticcall stor19.0x1778809f with:
                            gas gas_remaining wei
                           args stor11, this.address
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
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor24
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
                        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor19)
                staticcall stor19.0x1778809f with:
                        gas gas_remaining wei
                       args stor11, this.address
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor19)
                staticcall stor19.0x1778809f with:
                        gas gas_remaining wei
                       args stor11, this.address
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return ((2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return ((0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return ((2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return ((0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor19)
            staticcall stor19.0x1778809f with:
                    gas gas_remaining wei
                   args stor11, this.address
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(stor26)
        staticcall stor26.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor9)
        staticcall stor9.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor14)
            staticcall stor14.borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(stor19)
                    staticcall stor19.0x1778809f with:
                            gas gas_remaining wei
                           args stor11, this.address
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
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor24
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            return ((4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0])
                        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return ((3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return ((4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0])
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return ((3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor19)
                staticcall stor19.0x1778809f with:
                        gas gas_remaining wei
                       args stor11, this.address
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]))
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor19)
                staticcall stor19.0x1778809f with:
                        gas gas_remaining wei
                       args stor11, this.address
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return ((5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return ((4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return ((5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return ((4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor19)
            staticcall stor19.0x1778809f with:
                    gas gas_remaining wei
                   args stor11, this.address
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (ext_call.return_data[0] + (4 * 0 / ext_call.return_data[0]))
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (4 * 0 / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor14)
        staticcall stor14.borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor19)
                staticcall stor19.0x1778809f with:
                        gas gas_remaining wei
                       args stor11, this.address
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return ((4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return ((3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return ((4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return ((3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor19)
            staticcall stor19.0x1778809f with:
                    gas gas_remaining wei
                   args stor11, this.address
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]))
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor19)
            staticcall stor19.0x1778809f with:
                    gas gas_remaining wei
                   args stor11, this.address
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return ((5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return ((4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return ((5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return ((4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor19)
        staticcall stor19.0x1778809f with:
                gas gas_remaining wei
               args stor11, this.address
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
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor24
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (4 * 0 / ext_call.return_data[0]))
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (4 * 0 / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
    if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
        require ext_code.size(stor26)
        staticcall stor26.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor9)
        staticcall stor9.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor14)
            staticcall stor14.borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(stor19)
                    staticcall stor19.0x1778809f with:
                            gas gas_remaining wei
                           args stor11, this.address
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
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor24
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            return (ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return (ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return (ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor19)
                staticcall stor19.0x1778809f with:
                        gas gas_remaining wei
                       args stor11, this.address
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0])
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor19)
                staticcall stor19.0x1778809f with:
                        gas gas_remaining wei
                       args stor11, this.address
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return ((2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return ((0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return ((2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return ((0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor19)
            staticcall stor19.0x1778809f with:
                    gas gas_remaining wei
                   args stor11, this.address
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (0 / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor14)
        staticcall stor14.borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor19)
                staticcall stor19.0x1778809f with:
                        gas gas_remaining wei
                       args stor11, this.address
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor19)
            staticcall stor19.0x1778809f with:
                    gas gas_remaining wei
                   args stor11, this.address
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor19)
            staticcall stor19.0x1778809f with:
                    gas gas_remaining wei
                   args stor11, this.address
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return ((2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return ((0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return ((2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return ((0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor19)
        staticcall stor19.0x1778809f with:
                gas gas_remaining wei
               args stor11, this.address
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
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor24
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
    if 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    require ext_code.size(stor26)
    staticcall stor26.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor9)
    staticcall stor9.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor14)
        staticcall stor14.borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor19)
                staticcall stor19.0x1778809f with:
                        gas gas_remaining wei
                       args stor11, this.address
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return (ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor19)
            staticcall stor19.0x1778809f with:
                    gas gas_remaining wei
                   args stor11, this.address
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor19)
            staticcall stor19.0x1778809f with:
                    gas gas_remaining wei
                   args stor11, this.address
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return ((2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return ((0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return ((2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return ((0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor19)
        staticcall stor19.0x1778809f with:
                gas gas_remaining wei
               args stor11, this.address
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
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor24
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor14)
    staticcall stor14.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor19)
            staticcall stor19.0x1778809f with:
                    gas gas_remaining wei
                   args stor11, this.address
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor19)
        staticcall stor19.0x1778809f with:
                gas gas_remaining wei
               args stor11, this.address
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
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor24
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor19)
        staticcall stor19.0x1778809f with:
                gas gas_remaining wei
               args stor11, this.address
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
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor24
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return ((2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return ((0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return ((2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return ((0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(stor19)
    staticcall stor19.0x1778809f with:
            gas gas_remaining wei
           args stor11, this.address
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
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args stor24
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
}

function getPricePerFullShare() payable {
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
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
    require ext_code.size(stor19)
    staticcall stor19.0x93f1a40b with:
            gas gas_remaining wei
           args stor11, this.address
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
    if not 2 * ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor9)
            staticcall stor9.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor14)
                staticcall stor14.borrowBalanceStored(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(stor19)
                        staticcall stor19.0x1778809f with:
                                gas gas_remaining wei
                               args stor11, this.address
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
                        require ext_code.size(address(stor22))
                        staticcall address(stor22).0x70a08231 with:
                                gas gas_remaining wei
                               args stor24
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor22))
                        staticcall address(stor22).0x70a08231 with:
                                gas gas_remaining wei
                               args stor23
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor12)
                        staticcall stor12.0x70a08231 with:
                                gas gas_remaining wei
                               args stor23
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / ext_call.return_data[0]:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if not totalSupply:
                                    revert with 0, 'SafeMath: division by zero'
                                return (ext_call.return_data[0] + (0 / ext_call.return_data[0]) / totalSupply)
                            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalSupply:
                                revert with 0, 'SafeMath: division by zero'
                            return (ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalSupply:
                                revert with 0, 'SafeMath: division by zero'
                            return (ext_call.return_data[0] + (0 / ext_call.return_data[0]) / totalSupply)
                        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(stor19)
                    staticcall stor19.0x1778809f with:
                            gas gas_remaining wei
                           args stor11, this.address
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
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor24
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalSupply:
                                revert with 0, 'SafeMath: division by zero'
                            return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] / totalSupply)
                        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] / totalSupply)
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(stor19)
                    staticcall stor19.0x1778809f with:
                            gas gas_remaining wei
                           args stor11, this.address
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
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor24
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalSupply:
                                revert with 0, 'SafeMath: division by zero'
                            return ((2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        return ((0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        return ((2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return ((0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor19)
                staticcall stor19.0x1778809f with:
                        gas gas_remaining wei
                       args stor11, this.address
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        return (ext_call.return_data[0] + (0 / ext_call.return_data[0]) / totalSupply)
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return (ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return (ext_call.return_data[0] + (0 / ext_call.return_data[0]) / totalSupply)
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor14)
            staticcall stor14.borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(stor19)
                    staticcall stor19.0x1778809f with:
                            gas gas_remaining wei
                           args stor11, this.address
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
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor24
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalSupply:
                                revert with 0, 'SafeMath: division by zero'
                            return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) / totalSupply)
                        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) / totalSupply)
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor19)
                staticcall stor19.0x1778809f with:
                        gas gas_remaining wei
                       args stor11, this.address
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / totalSupply)
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / totalSupply)
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor19)
                staticcall stor19.0x1778809f with:
                        gas gas_remaining wei
                       args stor11, this.address
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        return ((2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return ((0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return ((2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return ((0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor19)
            staticcall stor19.0x1778809f with:
                    gas gas_remaining wei
                   args stor11, this.address
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) / totalSupply)
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
        if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(stor26)
        staticcall stor26.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor9)
        staticcall stor9.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor14)
            staticcall stor14.borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(stor19)
                    staticcall stor19.0x1778809f with:
                            gas gas_remaining wei
                           args stor11, this.address
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
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor24
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalSupply:
                                revert with 0, 'SafeMath: division by zero'
                            return ((4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] / totalSupply)
                        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        return ((3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        return ((4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] / totalSupply)
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return ((3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor19)
                staticcall stor19.0x1778809f with:
                        gas gas_remaining wei
                       args stor11, this.address
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]) / totalSupply)
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]) / totalSupply)
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor19)
                staticcall stor19.0x1778809f with:
                        gas gas_remaining wei
                       args stor11, this.address
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        return ((5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return ((4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return ((5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return ((4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor19)
            staticcall stor19.0x1778809f with:
                    gas gas_remaining wei
                   args stor11, this.address
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return (ext_call.return_data[0] + (4 * 0 / ext_call.return_data[0]) / totalSupply)
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (4 * 0 / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor14)
        staticcall stor14.borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor19)
                staticcall stor19.0x1778809f with:
                        gas gas_remaining wei
                       args stor11, this.address
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        return ((4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / totalSupply)
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return ((3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return ((4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / totalSupply)
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return ((3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor19)
            staticcall stor19.0x1778809f with:
                    gas gas_remaining wei
                   args stor11, this.address
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]) / totalSupply)
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor19)
            staticcall stor19.0x1778809f with:
                    gas gas_remaining wei
                   args stor11, this.address
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return ((5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return ((4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return ((5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            return ((4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor19)
        staticcall stor19.0x1778809f with:
                gas gas_remaining wei
               args stor11, this.address
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
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor24
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (4 * 0 / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (4 * 0 / ext_call.return_data[0]) / totalSupply)
        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
    if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
        require ext_code.size(stor26)
        staticcall stor26.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor9)
        staticcall stor9.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor14)
            staticcall stor14.borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(stor19)
                    staticcall stor19.0x1778809f with:
                            gas gas_remaining wei
                           args stor11, this.address
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
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor24
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalSupply:
                                revert with 0, 'SafeMath: division by zero'
                            return (ext_call.return_data[0] + (0 / ext_call.return_data[0]) / totalSupply)
                        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        return (ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        return (ext_call.return_data[0] + (0 / ext_call.return_data[0]) / totalSupply)
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor19)
                staticcall stor19.0x1778809f with:
                        gas gas_remaining wei
                       args stor11, this.address
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] / totalSupply)
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] / totalSupply)
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor19)
                staticcall stor19.0x1778809f with:
                        gas gas_remaining wei
                       args stor11, this.address
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        return ((2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return ((0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return ((2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return ((0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor19)
            staticcall stor19.0x1778809f with:
                    gas gas_remaining wei
                   args stor11, this.address
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return (ext_call.return_data[0] + (0 / ext_call.return_data[0]) / totalSupply)
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (0 / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor14)
        staticcall stor14.borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor19)
                staticcall stor19.0x1778809f with:
                        gas gas_remaining wei
                       args stor11, this.address
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) / totalSupply)
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) / totalSupply)
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor19)
            staticcall stor19.0x1778809f with:
                    gas gas_remaining wei
                   args stor11, this.address
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / totalSupply)
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / totalSupply)
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor19)
            staticcall stor19.0x1778809f with:
                    gas gas_remaining wei
                   args stor11, this.address
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return ((2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return ((0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return ((2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            return ((0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor19)
        staticcall stor19.0x1778809f with:
                gas gas_remaining wei
               args stor11, this.address
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
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor24
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) / totalSupply)
        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
    if 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    require ext_code.size(stor26)
    staticcall stor26.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor9)
    staticcall stor9.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor14)
        staticcall stor14.borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor19)
                staticcall stor19.0x1778809f with:
                        gas gas_remaining wei
                       args stor11, this.address
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        return (ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]) / totalSupply)
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return (ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return (ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]) / totalSupply)
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor19)
            staticcall stor19.0x1778809f with:
                    gas gas_remaining wei
                   args stor11, this.address
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) / totalSupply)
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor19)
            staticcall stor19.0x1778809f with:
                    gas gas_remaining wei
                   args stor11, this.address
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return ((2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return ((0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return ((2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            return ((0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor19)
        staticcall stor19.0x1778809f with:
                gas gas_remaining wei
               args stor11, this.address
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
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor24
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]) / totalSupply)
        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        return (ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor14)
    staticcall stor14.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor19)
            staticcall stor19.0x1778809f with:
                    gas gas_remaining wei
                   args stor11, this.address
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]) / totalSupply)
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor19)
        staticcall stor19.0x1778809f with:
                gas gas_remaining wei
               args stor11, this.address
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
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor24
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) / totalSupply)
        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor19)
        staticcall stor19.0x1778809f with:
                gas gas_remaining wei
               args stor11, this.address
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
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor24
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return ((2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            return ((0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            return ((2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        return ((0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(stor19)
    staticcall stor19.0x1778809f with:
            gas gas_remaining wei
           args stor11, this.address
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
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args stor24
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]) / totalSupply)
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]) / totalSupply)
    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
}

function sub_76973124(?) payable {
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
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
    require ext_code.size(stor19)
    staticcall stor19.0x93f1a40b with:
            gas gas_remaining wei
           args stor11, this.address
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
    if not 2 * ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            require ext_code.size(stor26)
            staticcall stor26.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor9)
            staticcall stor9.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor14)
                staticcall stor14.borrowBalanceStored(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(stor19)
                        staticcall stor19.0x1778809f with:
                                gas gas_remaining wei
                               args stor11, this.address
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
                        require ext_code.size(address(stor22))
                        staticcall address(stor22).0x70a08231 with:
                                gas gas_remaining wei
                               args stor24
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor22))
                        staticcall address(stor22).0x70a08231 with:
                                gas gas_remaining wei
                               args stor23
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor12)
                        staticcall stor12.0x70a08231 with:
                                gas gas_remaining wei
                               args stor23
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / ext_call.return_data[0]:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    if not ext_call.return_data[0] + (0 / ext_call.return_data[0]):
                                        revert with 0, 'SafeMath: division by zero'
                                    return (0 / ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if not ext_call.return_data[0] + (0 / ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: division by zero'
                                return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                if not ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                if not ext_call.return_data[0] + (0 / ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not ext_call.return_data[0] + (0 / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(stor19)
                    staticcall stor19.0x1778809f with:
                            gas gas_remaining wei
                           args stor11, this.address
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
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor24
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0])
                            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0])
                        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0])
                        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0])
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(stor19)
                    staticcall stor19.0x1778809f with:
                            gas gas_remaining wei
                           args stor11, this.address
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
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor24
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (100 * ext_call.return_data[0] / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (100 * ext_call.return_data[0] / (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (100 * ext_call.return_data[0] / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor19)
                staticcall stor19.0x1778809f with:
                        gas gas_remaining wei
                       args stor11, this.address
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            if not ext_call.return_data[0] + (0 / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not ext_call.return_data[0] + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0] + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not ext_call.return_data[0] + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor14)
            staticcall stor14.borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(stor19)
                    staticcall stor19.0x1778809f with:
                            gas gas_remaining wei
                           args stor11, this.address
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
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor24
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
                            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
                        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
                        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor19)
                staticcall stor19.0x1778809f with:
                        gas gas_remaining wei
                       args stor11, this.address
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                            revert with 0, 'SafeMath: division by zero'
                        return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor19)
                staticcall stor19.0x1778809f with:
                        gas gas_remaining wei
                       args stor11, this.address
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (100 * ext_call.return_data[0] / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor19)
            staticcall stor19.0x1778809f with:
                    gas gas_remaining wei
                   args stor11, this.address
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(stor26)
        staticcall stor26.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor9)
        staticcall stor9.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor14)
            staticcall stor14.borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(stor19)
                    staticcall stor19.0x1778809f with:
                            gas gas_remaining wei
                           args stor11, this.address
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
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor24
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                if not (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0])
                            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            return (100 * ext_call.return_data[0] / (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0])
                        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            if not (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (100 * ext_call.return_data[0] / (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            if not (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0])
                        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return (100 * ext_call.return_data[0] / (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0])
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor19)
                staticcall stor19.0x1778809f with:
                        gas gas_remaining wei
                       args stor11, this.address
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]))
                        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]))
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor19)
                staticcall stor19.0x1778809f with:
                        gas gas_remaining wei
                       args stor11, this.address
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            if not (5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not (5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (100 * ext_call.return_data[0] / (5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / (5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor19)
            staticcall stor19.0x1778809f with:
                    gas gas_remaining wei
                   args stor11, this.address
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0] + (4 * 0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / ext_call.return_data[0] + (4 * 0 / ext_call.return_data[0]))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not ext_call.return_data[0] + (4 * 0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (4 * 0 / ext_call.return_data[0]))
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0] + (4 * 0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] + (4 * 0 / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not ext_call.return_data[0] + (4 * 0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (4 * 0 / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor14)
        staticcall stor14.borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor19)
                staticcall stor19.0x1778809f with:
                        gas gas_remaining wei
                       args stor11, this.address
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            if not (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                            revert with 0, 'SafeMath: division by zero'
                        return (100 * ext_call.return_data[0] / (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor19)
            staticcall stor19.0x1778809f with:
                    gas gas_remaining wei
                   args stor11, this.address
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]))
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor19)
            staticcall stor19.0x1778809f with:
                    gas gas_remaining wei
                   args stor11, this.address
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / (5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / (5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (100 * ext_call.return_data[0] / (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor19)
        staticcall stor19.0x1778809f with:
                gas gas_remaining wei
               args stor11, this.address
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
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor24
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (4 * 0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (4 * 0 / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (4 * 0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (4 * 0 / ext_call.return_data[0]))
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (4 * 0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (4 * 0 / ext_call.return_data[0]))
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (4 * 0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (4 * 0 / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
    if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
        require ext_code.size(stor26)
        staticcall stor26.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor9)
        staticcall stor9.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor14)
            staticcall stor14.borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(stor19)
                    staticcall stor19.0x1778809f with:
                            gas gas_remaining wei
                           args stor11, this.address
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
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor24
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args stor23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                if not ext_call.return_data[0] + (0 / ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not ext_call.return_data[0] + (0 / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            if not ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            if not ext_call.return_data[0] + (0 / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not ext_call.return_data[0] + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor19)
                staticcall stor19.0x1778809f with:
                        gas gas_remaining wei
                       args stor11, this.address
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0])
                        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0])
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0])
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor19)
                staticcall stor19.0x1778809f with:
                        gas gas_remaining wei
                       args stor11, this.address
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (100 * ext_call.return_data[0] / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor19)
            staticcall stor19.0x1778809f with:
                    gas gas_remaining wei
                   args stor11, this.address
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0] + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not ext_call.return_data[0] + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0] + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not ext_call.return_data[0] + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor14)
        staticcall stor14.borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor19)
                staticcall stor19.0x1778809f with:
                        gas gas_remaining wei
                       args stor11, this.address
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
                        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor19)
            staticcall stor19.0x1778809f with:
                    gas gas_remaining wei
                   args stor11, this.address
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor19)
            staticcall stor19.0x1778809f with:
                    gas gas_remaining wei
                   args stor11, this.address
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (100 * ext_call.return_data[0] / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor19)
        staticcall stor19.0x1778809f with:
                gas gas_remaining wei
               args stor11, this.address
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
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor24
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
    if 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    require ext_code.size(stor26)
    staticcall stor26.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor9)
    staticcall stor9.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor14)
        staticcall stor14.borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor19)
                staticcall stor19.0x1778809f with:
                        gas gas_remaining wei
                       args stor11, this.address
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor24
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            if not ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
                        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor19)
            staticcall stor19.0x1778809f with:
                    gas gas_remaining wei
                   args stor11, this.address
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor19)
            staticcall stor19.0x1778809f with:
                    gas gas_remaining wei
                   args stor11, this.address
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (100 * ext_call.return_data[0] / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor19)
        staticcall stor19.0x1778809f with:
                gas gas_remaining wei
               args stor11, this.address
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
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor24
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor14)
    staticcall stor14.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor19)
            staticcall stor19.0x1778809f with:
                    gas gas_remaining wei
                   args stor11, this.address
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor24
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args stor23
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
                    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor19)
        staticcall stor19.0x1778809f with:
                gas gas_remaining wei
               args stor11, this.address
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
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor24
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (100 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor19)
        staticcall stor19.0x1778809f with:
                gas gas_remaining wei
               args stor11, this.address
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
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor24
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args stor23
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (100 * ext_call.return_data[0] / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (100 * ext_call.return_data[0] / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (100 * ext_call.return_data[0] / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (0 / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (100 * ext_call.return_data[0] / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(stor19)
    staticcall stor19.0x1778809f with:
            gas gas_remaining wei
           args stor11, this.address
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
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args stor24
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args stor23
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
    if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    return (100 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
}



}
