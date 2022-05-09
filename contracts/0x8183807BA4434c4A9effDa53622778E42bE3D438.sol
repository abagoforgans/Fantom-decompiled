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
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint32 stor12;
address stor12;
uint256 stor12;
uint256 stor14;
address stor15;
uint32 stor17;
address stor17;
uint256 stor17;
uint32 stor21;
address stor21;
uint256 stor21;
uint32 stor22;
address stor22;
uint256 stor22;
address stor25;
address stor26;
address stor27;
address stor28;
address stor29;
address strategistAddress;
address keeperAddress;
uint256 pool;
uint256 stor36;
uint256 stor37;
uint256 stor38;
uint256 stor39;
uint256 stor40;

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
    require arg1 < stor8
    require arg2 > stor8
    stor39 = arg2
    stor40 = arg1
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
    require 750000 > arg2
    require arg2 > arg3
    require arg3 > arg1
    stor36 = arg2
    stor37 = arg3
    stor38 = arg1
}

function sub_bdcbff12(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor12))
    call address(stor12).redeemUnderlying(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8ad56bff(?) payable {
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_ba7c565b(?) payable {
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_c4401a3b(?) payable {
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor27
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_c7f46d99(?) payable {
    require ext_code.size(stor28)
    staticcall stor28.0x70a08231 with:
            gas gas_remaining wei
           args stor27
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_6622e408(?) payable {
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_feb6848a(?) payable {
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_5627f7b5(?) payable {
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args address(stor12)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function _borrow(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor17))
    call address(stor17).borrow(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_eb61c72a(?) payable {
    require ext_code.size(address(stor22))
    staticcall address(stor22).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor14, this.address
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
    require ext_code.size(address(stor22))
    staticcall address(stor22).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor14, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor22))
    call address(stor22).withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor14, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a8e9f25f(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor22))
    staticcall address(stor22).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor14, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 <= ext_call.return_data[0]
    require ext_code.size(address(stor22))
    call address(stor22).withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor14, arg1
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
    require ext_code.size(stor29)
    staticcall stor29.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor12))
    staticcall address(stor12).exchangeRateStored() with:
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
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
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
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor17))
    staticcall address(stor17).borrowBalanceStored(address arg1) with:
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
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(address(stor17))
        call address(stor17).borrow(uint256 arg1) with:
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
    require ext_code.size(address(stor17))
    call address(stor17).borrow(uint256 arg1) with:
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

function sub_26eb07b6(?) payable {
    require calldata.size - 4 >= 32
    if arg1:
        require ext_code.size(stor15)
        staticcall stor15.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(stor12)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[218 len 10]
    if not ext_code.hash(stor15):
        revert with 0, 'SafeERC20: call to non-contract'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor15):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg1) >> 32
    call stor15 with:
       funct uint32(stor12)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor12):
            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
    require ext_code.size(address(stor12))
    call address(stor12).mint(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1944ee4c(?) payable {
    require ext_code.size(stor26)
    staticcall stor26.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(stor26)
        staticcall stor26.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(stor22)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[218 len 10]
    if not ext_code.hash(stor26):
        revert with 0, 'SafeERC20: call to non-contract'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor26):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor22), uint32(stor22), ext_call.return_data[0 len 28]
    call stor26 with:
       funct uint32(stor22)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor22):
            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
    require ext_code.size(address(stor22))
    call address(stor22).deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor14, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ec079f38(?) payable {
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor26)
    staticcall stor26.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor22))
    staticcall address(stor22).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor14, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor26)
    staticcall stor26.0x70a08231 with:
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

function sub_7d3795c7(?) payable {
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(stor25)
        staticcall stor25.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(stor17)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[218 len 10]
    if not ext_code.hash(stor25):
        revert with 0, 'SafeERC20: call to non-contract'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor25):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor17), uint32(stor17), ext_call.return_data[0 len 28]
    call stor25 with:
       funct uint32(stor17)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor17):
            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
    require ext_code.size(address(stor17))
    staticcall address(stor17).borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor17))
    call address(stor17).repayBorrow(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3e4db047(?) payable {
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x1778809f with:
            gas gas_remaining wei
           args stor14, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor28)
    staticcall stor28.0x70a08231 with:
            gas gas_remaining wei
           args stor27
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor27
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args stor26
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

function sub_384197c3(?) payable {
    require calldata.size - 4 >= 32
    if arg1:
        require ext_code.size(stor25)
        staticcall stor25.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(stor21)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[314 len 10]
    if not ext_code.hash(stor25):
        revert with 0, 'SafeERC20: call to non-contract'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor25):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[292 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor21), uint32(stor21), Mask(224, 32, arg1) >> 32
    call stor25 with:
       funct uint32(stor21)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[356 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'SafeERC20: low-level call failed'
    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[324]:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not stor8:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        mem[ceil32(return_data.size) + 617 len 0] = None
        require ext_code.size(address(stor21))
        call address(stor21).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, 0 / stor8 / ext_call.return_data[0], Array(len=2, data=mem[ceil32(return_data.size) + 617 len 64]), this.address, block.timestamp + 120
    else:
        if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
            revert with 0, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 394 len 31]
        if not ext_call.return_data[0] * arg1:
            if not stor8:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            mem[ceil32(return_data.size) + 617 len 0] = None
            require ext_code.size(address(stor21))
            call address(stor21).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 0 / stor8 / ext_call.return_data[0], Array(len=2, data=mem[ceil32(return_data.size) + 617 len 64]), this.address, block.timestamp + 120
        else:
            if stor9 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg1 != stor9:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            if not stor8:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            mem[ceil32(return_data.size) + 617 len 0] = None
            require ext_code.size(address(stor21))
            call address(stor21).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, stor9 * ext_call.return_data[0] * arg1 / stor8 / ext_call.return_data[0], Array(len=2, data=mem[ceil32(return_data.size) + 617 len 64]), this.address, block.timestamp + 120
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4d3660f8(?) payable {
    require calldata.size - 4 >= 32
    if arg1:
        require ext_code.size(stor15)
        staticcall stor15.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(stor21)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[314 len 10]
    if not ext_code.hash(stor15):
        revert with 0, 'SafeERC20: call to non-contract'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor15):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[292 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor21), uint32(stor21), Mask(224, 32, arg1) >> 32
    call stor15 with:
       funct uint32(stor21)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[356 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'SafeERC20: low-level call failed'
    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[324]:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not stor8:
            revert with 0, 'SafeMath: division by zero'
        mem[ceil32(return_data.size) + 617 len 0] = None
        require ext_code.size(address(stor21))
        call address(stor21).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, 0 / ext_call.return_data[0] / stor8, Array(len=2, data=mem[ceil32(return_data.size) + 617 len 64]), this.address, block.timestamp + 120
    else:
        if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
            revert with 0, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 394 len 31]
        if not ext_call.return_data[0] * arg1:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not stor8:
                revert with 0, 'SafeMath: division by zero'
            mem[ceil32(return_data.size) + 617 len 0] = None
            require ext_code.size(address(stor21))
            call address(stor21).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 0 / ext_call.return_data[0] / stor8, Array(len=2, data=mem[ceil32(return_data.size) + 617 len 64]), this.address, block.timestamp + 120
        else:
            if stor9 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg1 != stor9:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not stor8:
                revert with 0, 'SafeMath: division by zero'
            mem[ceil32(return_data.size) + 617 len 0] = None
            require ext_code.size(address(stor21))
            call address(stor21).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, stor9 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / stor8, Array(len=2, data=mem[ceil32(return_data.size) + 617 len 64]), this.address, block.timestamp + 120
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c9db0d1f(?) payable {
    require ext_code.size(stor28)
    staticcall stor28.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(stor28)
        staticcall stor28.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(stor21)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[314 len 10]
    if not ext_code.hash(stor28):
        revert with 0, 'SafeERC20: call to non-contract'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor28):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[292 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor21), uint32(stor21), ext_call.return_data[0 len 28]
    call stor28 with:
       funct uint32(stor21)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[356 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'SafeERC20: low-level call failed'
    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[324]:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(stor28)
    staticcall stor28.0x70a08231 with:
            gas gas_remaining wei
           args stor27
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor27
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not stor8:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(address(stor21))
        call address(stor21).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0 / ext_call.return_data[0] / stor8, Array(len=2, data=stor28, stor25), this.address, block.timestamp + 120
    else:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 394 len 31]
        if not ext_call.return_data[0] * ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not stor8:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor21))
            call address(stor21).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0 / ext_call.return_data[0] / stor8, Array(len=2, data=stor28, stor25), this.address, block.timestamp + 120
        else:
            if stor9 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != stor9:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not stor8:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor21))
            call address(stor21).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], stor9 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / stor8, Array(len=2, data=stor28, stor25), this.address, block.timestamp + 120
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e6e7114b(?) payable {
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor17))
    staticcall address(stor17).borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor29)
        staticcall stor29.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor12))
        staticcall address(stor12).exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 0 / ext_call.return_data[0]:
                if stor8 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not 0 / ext_call.return_data[0]:
            if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
        if stor8 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != stor8:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: division by zero'
        return (stor8 * 0 / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(stor29)
    staticcall stor29.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor12))
    staticcall address(stor12).exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            if stor8 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        revert with 0, 'SafeMath: division by zero'
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
    if stor8 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        revert with 0, 'SafeMath: division by zero'
    return (stor8 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
}

function sub_d88701de(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not stor8:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if 0 / stor8 / ext_call.return_data[0]:
            require ext_code.size(stor15)
            staticcall stor15.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(stor21)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[442 len 10]
        if not ext_code.hash(stor15):
            revert with 0, 'SafeERC20: call to non-contract'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor15):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[420 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor21), uint32(stor21), Mask(224, 32, 0 / stor8 / ext_call.return_data[0]) >> 32
        call stor15 with:
           funct uint32(stor21)
             gas gas_remaining wei
            args Mask(224, 32, 0 / stor8 / ext_call.return_data[0]) << 224, mem[484 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[452]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 531 len 22]
        require ext_code.size(address(stor21))
        call address(stor21).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, 0 / stor8 / ext_call.return_data[0], Array(len=2, data=stor15, stor25), this.address, block.timestamp + 120
    else:
        if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
        if not ext_call.return_data[0] * arg1:
            if not stor8:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if 0 / stor8 / ext_call.return_data[0]:
                require ext_code.size(stor15)
                staticcall stor15.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(stor21)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[442 len 10]
            if not ext_code.hash(stor15):
                revert with 0, 'SafeERC20: call to non-contract'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor15):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[420 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor21), uint32(stor21), Mask(224, 32, 0 / stor8 / ext_call.return_data[0]) >> 32
            call stor15 with:
               funct uint32(stor21)
                 gas gas_remaining wei
                args Mask(224, 32, 0 / stor8 / ext_call.return_data[0]) << 224, mem[484 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[452]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 531 len 22]
            require ext_code.size(address(stor21))
            call address(stor21).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, 0 / stor8 / ext_call.return_data[0], Array(len=2, data=stor15, stor25), this.address, block.timestamp + 120
        else:
            if stor10 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg1 != stor10:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
            if not stor8:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if stor10 * ext_call.return_data[0] * arg1 / stor8 / ext_call.return_data[0]:
                require ext_code.size(stor15)
                staticcall stor15.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(stor21)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[442 len 10]
            if not ext_code.hash(stor15):
                revert with 0, 'SafeERC20: call to non-contract'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor15):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[420 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor21), uint32(stor21), Mask(224, 32, stor10 * ext_call.return_data[0] * arg1 / stor8 / ext_call.return_data[0]) >> 32
            call stor15 with:
               funct uint32(stor21)
                 gas gas_remaining wei
                args Mask(224, 32, stor10 * ext_call.return_data[0] * arg1 / stor8 / ext_call.return_data[0]) << 224, mem[484 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[452]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 531 len 22]
            require ext_code.size(address(stor21))
            call address(stor21).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1, stor10 * ext_call.return_data[0] * arg1 / stor8 / ext_call.return_data[0], Array(len=2, data=stor15, stor25), this.address, block.timestamp + 120
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_763a1e55(?) payable {
    require ext_code.size(stor28)
    staticcall stor28.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(stor28)
        staticcall stor28.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(stor21)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[346 len 10]
    if not ext_code.hash(stor28):
        revert with 0, 'SafeERC20: call to non-contract'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor28):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[324 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor21), uint32(stor21), ext_call.return_data[0 len 28]
    call stor28 with:
       funct uint32(stor21)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'SafeERC20: low-level call failed'
    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[356]:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 435 len 22]
    require ext_code.size(stor28)
    staticcall stor28.0x70a08231 with:
            gas gas_remaining wei
           args stor27
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor27
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args stor26
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
                mem[ceil32(return_data.size) + 713 len 0] = None
                require ext_code.size(address(stor21))
                call address(stor21).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[ceil32(return_data.size) + 713 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    return 0
            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 554 len 31]
            mem[ceil32(return_data.size) + 713 len 0] = None
            require ext_code.size(address(stor21))
            call address(stor21).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[ceil32(return_data.size) + 713 len 96]), address(this.address), block.timestamp + 120
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            return (99 * 0 / ext_call.return_data[0] / 100)
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 490 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 713 len 0] = None
            require ext_code.size(address(stor21))
            call address(stor21).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[ceil32(return_data.size) + 713 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                return 0
        if 99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] != 99:
            revert with 0, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 554 len 31]
        mem[ceil32(return_data.size) + 713 len 0] = None
        require ext_code.size(address(stor21))
        call address(stor21).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[ceil32(return_data.size) + 713 len 96]), address(this.address), block.timestamp + 120
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return (99 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 100)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[ceil32(return_data.size) + 426 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 713 len 0] = None
            require ext_code.size(address(stor21))
            call address(stor21).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[ceil32(return_data.size) + 713 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                return 0
        if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
            revert with 0, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 554 len 31]
        mem[ceil32(return_data.size) + 713 len 0] = None
        require ext_code.size(address(stor21))
        call address(stor21).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / 100, Array(len=3, data=mem[ceil32(return_data.size) + 713 len 96]), address(this.address), block.timestamp + 120
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return (99 * 0 / ext_call.return_data[0] / 100)
    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[ceil32(return_data.size) + 490 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 713 len 0] = None
        require ext_code.size(address(stor21))
        call address(stor21).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, 3, mem[ceil32(return_data.size) + 713 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            return 0
    if 99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] != 99:
        revert with 0, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[ceil32(return_data.size) + 554 len 31]
    mem[ceil32(return_data.size) + 713 len 0] = None
    require ext_code.size(address(stor21))
    call address(stor21).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 100, Array(len=3, data=mem[ceil32(return_data.size) + 713 len 96]), address(this.address), block.timestamp + 120
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return (99 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 100)
}

function sub_250ad965(?) payable {
    require ext_code.size(stor29)
    staticcall stor29.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor12))
    staticcall address(stor12).exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor26)
        staticcall stor26.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args stor14, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor26)
        staticcall stor26.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 2 * ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if uint255(0 / ext_call.return_data[0]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not 2 * 0 / ext_call.return_data[0]:
                if not uint255(0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / uint255(0 / ext_call.return_data[0]) / 2)
            if stor8 * 2 * 0 / ext_call.return_data[0] / 2 * 0 / ext_call.return_data[0] != stor8:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not uint255(0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (stor8 * 2 * 0 / ext_call.return_data[0] / uint255(0 / ext_call.return_data[0]) / 2)
        if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if uint255((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
            if not uint255((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (0 / uint255((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) / 2)
        if stor8 * 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != stor8:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not uint255((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (stor8 * 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / uint255((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) / 2)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor26)
    staticcall stor26.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor22))
    staticcall address(stor22).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor14, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor26)
    staticcall stor26.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not 2 * ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 2)
        if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if uint255(0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * 0 / ext_call.return_data[0]:
            if not uint255(0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 'SafeMath: division by zero'
            return (0 / uint255(0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 2)
        if stor8 * 2 * 0 / ext_call.return_data[0] / 2 * 0 / ext_call.return_data[0] != stor8:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not uint255(0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
            revert with 0, 'SafeMath: division by zero'
        return (stor8 * 2 * 0 / ext_call.return_data[0] / uint255(0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 2)
    if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 2)
    if 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if uint255((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
        if not uint255((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
            revert with 0, 'SafeMath: division by zero'
        return (0 / uint255((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 2)
    if stor8 * 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != stor8:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not uint255((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
        revert with 0, 'SafeMath: division by zero'
    return (stor8 * 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / uint255((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 2)
}

function sub_8555e2e5(?) payable {
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor17))
    staticcall address(stor17).borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor26)
        staticcall stor26.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor22))
        staticcall address(stor22).userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args stor14, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor26)
        staticcall stor26.0x70a08231 with:
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
                    if stor8 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if stor8 * 0 / ext_call.return_data[0]:
                        if 2 * stor8 * 0 / ext_call.return_data[0] / stor8 * 0 / ext_call.return_data[0] != 2:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                revert with 0, 'SafeMath: division by zero'
            if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 0 / ext_call.return_data[0]:
                if not 2 * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / 2 * 0 / ext_call.return_data[0])
            if stor8 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != stor8:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not stor8 * 0 / ext_call.return_data[0]:
                if not 2 * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / 2 * 0 / ext_call.return_data[0])
            if 2 * stor8 * 0 / ext_call.return_data[0] / stor8 * 0 / ext_call.return_data[0] != 2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not 2 * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (2 * stor8 * 0 / ext_call.return_data[0] / 2 * 0 / ext_call.return_data[0])
        if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
            if 0 / ext_call.return_data[0]:
                if stor8 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if stor8 * 0 / ext_call.return_data[0]:
                    if 2 * stor8 * 0 / ext_call.return_data[0] / stor8 * 0 / ext_call.return_data[0] != 2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            revert with 0, 'SafeMath: division by zero'
        if 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not 0 / ext_call.return_data[0]:
            if not 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0])
        if stor8 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != stor8:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not stor8 * 0 / ext_call.return_data[0]:
            if not 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0])
        if 2 * stor8 * 0 / ext_call.return_data[0] / stor8 * 0 / ext_call.return_data[0] != 2:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (2 * stor8 * 0 / ext_call.return_data[0] / 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0])
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor26)
    staticcall stor26.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor22))
    staticcall address(stor22).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor14, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor26)
    staticcall stor26.0x70a08231 with:
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
                if stor8 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if stor8 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if 2 * stor8 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / stor8 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            revert with 0, 'SafeMath: division by zero'
        if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            if not 2 * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / 2 * 0 / ext_call.return_data[0])
        if stor8 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not stor8 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            if not 2 * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / 2 * 0 / ext_call.return_data[0])
        if 2 * stor8 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / stor8 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 2:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not 2 * 0 / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (2 * stor8 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 2 * 0 / ext_call.return_data[0])
    if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            if stor8 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if stor8 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                if 2 * stor8 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / stor8 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        revert with 0, 'SafeMath: division by zero'
    if 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        if not 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0])
    if stor8 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not stor8 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        if not 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0])
    if 2 * stor8 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / stor8 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 2:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (2 * stor8 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0])
}

function sub_883dd547(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            if 0 / ext_call.return_data[0]:
                require ext_code.size(stor15)
                staticcall stor15.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(stor21)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[346 len 10]
            if not ext_code.hash(stor15):
                revert with 0, 'SafeERC20: call to non-contract'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor15):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[324 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor21), uint32(stor21), Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
            call stor15 with:
               funct uint32(stor21)
                 gas gas_remaining wei
                args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
            if arg1:
                require ext_code.size(stor25)
                staticcall stor25.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(stor21)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 447 len 10]
            if not ext_code.hash(stor25):
                revert with 0, 'SafeERC20: call to non-contract'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor25):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor21), uint32(stor21), Mask(224, 32, arg1) >> 32
            call stor25 with:
               funct uint32(stor21)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            require ext_code.size(address(stor21))
            call address(stor21).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor25, stor15, arg1, 0 / ext_call.return_data[0], arg1, 0, this.address, block.timestamp + 15, mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        else:
            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if 0 / ext_call.return_data[0]:
                require ext_code.size(stor15)
                staticcall stor15.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(stor21)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[346 len 10]
            if not ext_code.hash(stor15):
                revert with 0, 'SafeERC20: call to non-contract'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor15):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[324 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor21), uint32(stor21), Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
            call stor15 with:
               funct uint32(stor21)
                 gas gas_remaining wei
                args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
            if arg1:
                require ext_code.size(stor25)
                staticcall stor25.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(stor21)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 447 len 10]
            if not ext_code.hash(stor25):
                revert with 0, 'SafeERC20: call to non-contract'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor25):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor21), uint32(stor21), Mask(224, 32, arg1) >> 32
            call stor25 with:
               funct uint32(stor21)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            require ext_code.size(address(stor21))
            call address(stor21).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor25, stor15, arg1, 0 / ext_call.return_data[0], arg1, 99 * 0 / ext_call.return_data[0] / 100, this.address, block.timestamp + 15, mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
            if ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                require ext_code.size(stor15)
                staticcall stor15.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(stor21)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[346 len 10]
            if not ext_code.hash(stor15):
                revert with 0, 'SafeERC20: call to non-contract'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor15):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[324 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor21), uint32(stor21), Mask(224, 32, ext_call.return_data[0] * arg1 / ext_call.return_data[0]) >> 32
            call stor15 with:
               funct uint32(stor21)
                 gas gas_remaining wei
                args Mask(224, 32, ext_call.return_data[0] * arg1 / ext_call.return_data[0]) << 224, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
            if arg1:
                require ext_code.size(stor25)
                staticcall stor25.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(stor21)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 447 len 10]
            if not ext_code.hash(stor25):
                revert with 0, 'SafeERC20: call to non-contract'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor25):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor21), uint32(stor21), Mask(224, 32, arg1) >> 32
            call stor25 with:
               funct uint32(stor21)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            require ext_code.size(address(stor21))
            call address(stor21).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor25, stor15, arg1, ext_call.return_data[0] * arg1 / ext_call.return_data[0], arg1, 0, this.address, block.timestamp + 15, mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        else:
            if 99 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / ext_call.return_data[0] * arg1 / ext_call.return_data[0] != 99:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                require ext_code.size(stor15)
                staticcall stor15.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(stor21)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[346 len 10]
            if not ext_code.hash(stor15):
                revert with 0, 'SafeERC20: call to non-contract'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor15):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[324 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor21), uint32(stor21), Mask(224, 32, ext_call.return_data[0] * arg1 / ext_call.return_data[0]) >> 32
            call stor15 with:
               funct uint32(stor21)
                 gas gas_remaining wei
                args Mask(224, 32, ext_call.return_data[0] * arg1 / ext_call.return_data[0]) << 224, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
            if arg1:
                require ext_code.size(stor25)
                staticcall stor25.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(stor21)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 447 len 10]
            if not ext_code.hash(stor25):
                revert with 0, 'SafeERC20: call to non-contract'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor25):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor21), uint32(stor21), Mask(224, 32, arg1) >> 32
            call stor25 with:
               funct uint32(stor21)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            require ext_code.size(address(stor21))
            call address(stor21).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor25, stor15, arg1, ext_call.return_data[0] * arg1 / ext_call.return_data[0], arg1, 99 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] / 100, this.address, block.timestamp + 15, mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8217d6b3(?) payable {
    require ext_code.size(stor26)
    staticcall stor26.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor26)
    staticcall stor26.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            if not stor8:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not stor8:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        require ext_code.size(stor26)
                        staticcall stor26.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(stor21)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[474 len 10]
                    if not ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor21), uint32(stor21), ext_call.return_data[0 len 28]
                    call stor26 with:
                       funct uint32(stor21)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    require ext_code.size(address(stor21))
                    call address(stor21).removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args stor25, stor15, ext_call.return_data[0], 0 / stor8, 0 / stor8, this.address, block.timestamp + 15
                else:
                    if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not stor8:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        require ext_code.size(stor26)
                        staticcall stor26.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(stor21)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[474 len 10]
                    if not ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor21), uint32(stor21), ext_call.return_data[0 len 28]
                    call stor26 with:
                       funct uint32(stor21)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    require ext_code.size(address(stor21))
                    call address(stor21).removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args stor25, stor15, ext_call.return_data[0], 0 / stor8, 99 * 0 / ext_call.return_data[0] / stor8, this.address, block.timestamp + 15
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not stor8:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        require ext_code.size(stor26)
                        staticcall stor26.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(stor21)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[474 len 10]
                    if not ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor21), uint32(stor21), ext_call.return_data[0 len 28]
                    call stor26 with:
                       funct uint32(stor21)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    require ext_code.size(address(stor21))
                    call address(stor21).removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args stor25, stor15, ext_call.return_data[0], 0 / stor8, 0 / stor8, this.address, block.timestamp + 15
                else:
                    if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not stor8:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        require ext_code.size(stor26)
                        staticcall stor26.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(stor21)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[474 len 10]
                    if not ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor21), uint32(stor21), ext_call.return_data[0 len 28]
                    call stor26 with:
                       funct uint32(stor21)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    require ext_code.size(address(stor21))
                    call address(stor21).removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args stor25, stor15, ext_call.return_data[0], 0 / stor8, 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / stor8, this.address, block.timestamp + 15
        else:
            if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not stor8:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not stor8:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        require ext_code.size(stor26)
                        staticcall stor26.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(stor21)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[474 len 10]
                    if not ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor21), uint32(stor21), ext_call.return_data[0 len 28]
                    call stor26 with:
                       funct uint32(stor21)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    require ext_code.size(address(stor21))
                    call address(stor21).removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args stor25, stor15, ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / stor8, 0 / stor8, this.address, block.timestamp + 15
                else:
                    if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not stor8:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        require ext_code.size(stor26)
                        staticcall stor26.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(stor21)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[474 len 10]
                    if not ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor21), uint32(stor21), ext_call.return_data[0 len 28]
                    call stor26 with:
                       funct uint32(stor21)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    require ext_code.size(address(stor21))
                    call address(stor21).removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args stor25, stor15, ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / stor8, 99 * 0 / ext_call.return_data[0] / stor8, this.address, block.timestamp + 15
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not stor8:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        require ext_code.size(stor26)
                        staticcall stor26.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(stor21)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[474 len 10]
                    if not ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor21), uint32(stor21), ext_call.return_data[0 len 28]
                    call stor26 with:
                       funct uint32(stor21)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    require ext_code.size(address(stor21))
                    call address(stor21).removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args stor25, stor15, ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / stor8, 0 / stor8, this.address, block.timestamp + 15
                else:
                    if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not stor8:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        require ext_code.size(stor26)
                        staticcall stor26.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(stor21)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[474 len 10]
                    if not ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor21), uint32(stor21), ext_call.return_data[0 len 28]
                    call stor26 with:
                       funct uint32(stor21)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    require ext_code.size(address(stor21))
                    call address(stor21).removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args stor25, stor15, ext_call.return_data[0], 99 * 0 / ext_call.return_data[0] / stor8, 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / stor8, this.address, block.timestamp + 15
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
            if not stor8:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not stor8:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        require ext_code.size(stor26)
                        staticcall stor26.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(stor21)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[474 len 10]
                    if not ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor21), uint32(stor21), ext_call.return_data[0 len 28]
                    call stor26 with:
                       funct uint32(stor21)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    require ext_code.size(address(stor21))
                    call address(stor21).removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args stor25, stor15, ext_call.return_data[0], 0 / stor8, 0 / stor8, this.address, block.timestamp + 15
                else:
                    if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not stor8:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        require ext_code.size(stor26)
                        staticcall stor26.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(stor21)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[474 len 10]
                    if not ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor21), uint32(stor21), ext_call.return_data[0 len 28]
                    call stor26 with:
                       funct uint32(stor21)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    require ext_code.size(address(stor21))
                    call address(stor21).removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args stor25, stor15, ext_call.return_data[0], 0 / stor8, 99 * 0 / ext_call.return_data[0] / stor8, this.address, block.timestamp + 15
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not stor8:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        require ext_code.size(stor26)
                        staticcall stor26.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(stor21)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[474 len 10]
                    if not ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor21), uint32(stor21), ext_call.return_data[0 len 28]
                    call stor26 with:
                       funct uint32(stor21)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    require ext_code.size(address(stor21))
                    call address(stor21).removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args stor25, stor15, ext_call.return_data[0], 0 / stor8, 0 / stor8, this.address, block.timestamp + 15
                else:
                    if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not stor8:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        require ext_code.size(stor26)
                        staticcall stor26.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(stor21)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[474 len 10]
                    if not ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor21), uint32(stor21), ext_call.return_data[0 len 28]
                    call stor26 with:
                       funct uint32(stor21)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    require ext_code.size(address(stor21))
                    call address(stor21).removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args stor25, stor15, ext_call.return_data[0], 0 / stor8, 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / stor8, this.address, block.timestamp + 15
        else:
            if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not stor8:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    if not stor8:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        require ext_code.size(stor26)
                        staticcall stor26.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(stor21)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[474 len 10]
                    if not ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor21), uint32(stor21), ext_call.return_data[0 len 28]
                    call stor26 with:
                       funct uint32(stor21)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    require ext_code.size(address(stor21))
                    call address(stor21).removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args stor25, stor15, ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / stor8, 0 / stor8, this.address, block.timestamp + 15
                else:
                    if 99 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 99:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not stor8:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        require ext_code.size(stor26)
                        staticcall stor26.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(stor21)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[474 len 10]
                    if not ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor21), uint32(stor21), ext_call.return_data[0 len 28]
                    call stor26 with:
                       funct uint32(stor21)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    require ext_code.size(address(stor21))
                    call address(stor21).removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args stor25, stor15, ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / stor8, 99 * 0 / ext_call.return_data[0] / stor8, this.address, block.timestamp + 15
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not stor8:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        require ext_code.size(stor26)
                        staticcall stor26.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(stor21)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[474 len 10]
                    if not ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor21), uint32(stor21), ext_call.return_data[0 len 28]
                    call stor26 with:
                       funct uint32(stor21)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    require ext_code.size(address(stor21))
                    call address(stor21).removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args stor25, stor15, ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / stor8, 0 / stor8, this.address, block.timestamp + 15
                else:
                    if 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 99:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not stor8:
                        revert with 0, 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        require ext_code.size(stor26)
                        staticcall stor26.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(stor21)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[474 len 10]
                    if not ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor26):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor21), uint32(stor21), ext_call.return_data[0 len 28]
                    call stor26 with:
                       funct uint32(stor21)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    require ext_code.size(address(stor21))
                    call address(stor21).removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args stor25, stor15, ext_call.return_data[0], 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / stor8, 99 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / stor8, this.address, block.timestamp + 15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
}

function calcPoolValueInToken() payable {
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor26)
    staticcall stor26.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor22))
    staticcall address(stor22).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor14, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor26)
    staticcall stor26.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not 2 * ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            require ext_code.size(stor29)
            staticcall stor29.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor12))
            staticcall address(stor12).exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor17))
                staticcall address(stor17).borrowBalanceStored(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor15)
                    staticcall stor15.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(address(stor22))
                        staticcall address(stor22).0x1778809f with:
                                gas gas_remaining wei
                               args stor14, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor28)
                        staticcall stor28.0x70a08231 with:
                                gas gas_remaining wei
                               args stor27
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor25)
                        staticcall stor25.0x70a08231 with:
                                gas gas_remaining wei
                               args stor27
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor25)
                        staticcall stor25.0x70a08231 with:
                                gas gas_remaining wei
                               args stor26
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor15)
                        staticcall stor15.0x70a08231 with:
                                gas gas_remaining wei
                               args stor26
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
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x1778809f with:
                            gas gas_remaining wei
                           args stor14, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor28)
                    staticcall stor28.0x70a08231 with:
                            gas gas_remaining wei
                           args stor27
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor27
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor15)
                    staticcall stor15.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
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
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x1778809f with:
                            gas gas_remaining wei
                           args stor14, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor28)
                    staticcall stor28.0x70a08231 with:
                            gas gas_remaining wei
                           args stor27
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor27
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor15)
                    staticcall stor15.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x1778809f with:
                        gas gas_remaining wei
                       args stor14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
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
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor17))
            staticcall address(stor17).borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x1778809f with:
                            gas gas_remaining wei
                           args stor14, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor28)
                    staticcall stor28.0x70a08231 with:
                            gas gas_remaining wei
                           args stor27
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor27
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor15)
                    staticcall stor15.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x1778809f with:
                        gas gas_remaining wei
                       args stor14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
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
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x1778809f with:
                        gas gas_remaining wei
                       args stor14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x1778809f with:
                    gas gas_remaining wei
                   args stor14, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
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
        require ext_code.size(stor29)
        staticcall stor29.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor12))
        staticcall address(stor12).exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor17))
            staticcall address(stor17).borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x1778809f with:
                            gas gas_remaining wei
                           args stor14, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor28)
                    staticcall stor28.0x70a08231 with:
                            gas gas_remaining wei
                           args stor27
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor27
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor15)
                    staticcall stor15.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x1778809f with:
                        gas gas_remaining wei
                       args stor14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
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
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x1778809f with:
                        gas gas_remaining wei
                       args stor14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x1778809f with:
                    gas gas_remaining wei
                   args stor14, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
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
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor17))
        staticcall address(stor17).borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x1778809f with:
                        gas gas_remaining wei
                       args stor14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x1778809f with:
                    gas gas_remaining wei
                   args stor14, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
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
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x1778809f with:
                    gas gas_remaining wei
                   args stor14, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
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
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x1778809f with:
                gas gas_remaining wei
               args stor14, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor28)
        staticcall stor28.0x70a08231 with:
                gas gas_remaining wei
               args stor27
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor27
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
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
        require ext_code.size(stor29)
        staticcall stor29.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor12))
        staticcall address(stor12).exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor17))
            staticcall address(stor17).borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x1778809f with:
                            gas gas_remaining wei
                           args stor14, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor28)
                    staticcall stor28.0x70a08231 with:
                            gas gas_remaining wei
                           args stor27
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor27
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor15)
                    staticcall stor15.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x1778809f with:
                        gas gas_remaining wei
                       args stor14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
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
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x1778809f with:
                        gas gas_remaining wei
                       args stor14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x1778809f with:
                    gas gas_remaining wei
                   args stor14, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
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
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor17))
        staticcall address(stor17).borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x1778809f with:
                        gas gas_remaining wei
                       args stor14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x1778809f with:
                    gas gas_remaining wei
                   args stor14, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
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
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x1778809f with:
                    gas gas_remaining wei
                   args stor14, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
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
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x1778809f with:
                gas gas_remaining wei
               args stor14, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor28)
        staticcall stor28.0x70a08231 with:
                gas gas_remaining wei
               args stor27
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor27
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
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
    require ext_code.size(stor29)
    staticcall stor29.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor12))
    staticcall address(stor12).exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor17))
        staticcall address(stor17).borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x1778809f with:
                        gas gas_remaining wei
                       args stor14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x1778809f with:
                    gas gas_remaining wei
                   args stor14, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
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
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x1778809f with:
                    gas gas_remaining wei
                   args stor14, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
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
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x1778809f with:
                gas gas_remaining wei
               args stor14, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor28)
        staticcall stor28.0x70a08231 with:
                gas gas_remaining wei
               args stor27
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor27
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
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
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor17))
    staticcall address(stor17).borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x1778809f with:
                    gas gas_remaining wei
                   args stor14, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
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
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x1778809f with:
                gas gas_remaining wei
               args stor14, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor28)
        staticcall stor28.0x70a08231 with:
                gas gas_remaining wei
               args stor27
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor27
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
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
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x1778809f with:
                gas gas_remaining wei
               args stor14, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor28)
        staticcall stor28.0x70a08231 with:
                gas gas_remaining wei
               args stor27
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor27
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
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
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x1778809f with:
            gas gas_remaining wei
           args stor14, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor28)
    staticcall stor28.0x70a08231 with:
            gas gas_remaining wei
           args stor27
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor27
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args stor26
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
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor26)
    staticcall stor26.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor22))
    staticcall address(stor22).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor14, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor26)
    staticcall stor26.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not 2 * ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            require ext_code.size(stor29)
            staticcall stor29.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor12))
            staticcall address(stor12).exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor17))
                staticcall address(stor17).borrowBalanceStored(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor15)
                    staticcall stor15.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(address(stor22))
                        staticcall address(stor22).0x1778809f with:
                                gas gas_remaining wei
                               args stor14, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor28)
                        staticcall stor28.0x70a08231 with:
                                gas gas_remaining wei
                               args stor27
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor25)
                        staticcall stor25.0x70a08231 with:
                                gas gas_remaining wei
                               args stor27
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor25)
                        staticcall stor25.0x70a08231 with:
                                gas gas_remaining wei
                               args stor26
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor15)
                        staticcall stor15.0x70a08231 with:
                                gas gas_remaining wei
                               args stor26
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
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x1778809f with:
                            gas gas_remaining wei
                           args stor14, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor28)
                    staticcall stor28.0x70a08231 with:
                            gas gas_remaining wei
                           args stor27
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor27
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor15)
                    staticcall stor15.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
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
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x1778809f with:
                            gas gas_remaining wei
                           args stor14, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor28)
                    staticcall stor28.0x70a08231 with:
                            gas gas_remaining wei
                           args stor27
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor27
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor15)
                    staticcall stor15.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x1778809f with:
                        gas gas_remaining wei
                       args stor14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
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
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor17))
            staticcall address(stor17).borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x1778809f with:
                            gas gas_remaining wei
                           args stor14, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor28)
                    staticcall stor28.0x70a08231 with:
                            gas gas_remaining wei
                           args stor27
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor27
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor15)
                    staticcall stor15.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x1778809f with:
                        gas gas_remaining wei
                       args stor14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
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
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x1778809f with:
                        gas gas_remaining wei
                       args stor14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x1778809f with:
                    gas gas_remaining wei
                   args stor14, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
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
        require ext_code.size(stor29)
        staticcall stor29.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor12))
        staticcall address(stor12).exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor17))
            staticcall address(stor17).borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x1778809f with:
                            gas gas_remaining wei
                           args stor14, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor28)
                    staticcall stor28.0x70a08231 with:
                            gas gas_remaining wei
                           args stor27
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor27
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor15)
                    staticcall stor15.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x1778809f with:
                        gas gas_remaining wei
                       args stor14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
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
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x1778809f with:
                        gas gas_remaining wei
                       args stor14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x1778809f with:
                    gas gas_remaining wei
                   args stor14, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
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
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor17))
        staticcall address(stor17).borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x1778809f with:
                        gas gas_remaining wei
                       args stor14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x1778809f with:
                    gas gas_remaining wei
                   args stor14, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
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
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x1778809f with:
                    gas gas_remaining wei
                   args stor14, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
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
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x1778809f with:
                gas gas_remaining wei
               args stor14, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor28)
        staticcall stor28.0x70a08231 with:
                gas gas_remaining wei
               args stor27
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor27
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
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
        require ext_code.size(stor29)
        staticcall stor29.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor12))
        staticcall address(stor12).exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor17))
            staticcall address(stor17).borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x1778809f with:
                            gas gas_remaining wei
                           args stor14, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor28)
                    staticcall stor28.0x70a08231 with:
                            gas gas_remaining wei
                           args stor27
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor27
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor15)
                    staticcall stor15.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
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
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x1778809f with:
                        gas gas_remaining wei
                       args stor14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
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
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x1778809f with:
                        gas gas_remaining wei
                       args stor14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x1778809f with:
                    gas gas_remaining wei
                   args stor14, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
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
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor17))
        staticcall address(stor17).borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x1778809f with:
                        gas gas_remaining wei
                       args stor14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x1778809f with:
                    gas gas_remaining wei
                   args stor14, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
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
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x1778809f with:
                    gas gas_remaining wei
                   args stor14, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
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
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x1778809f with:
                gas gas_remaining wei
               args stor14, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor28)
        staticcall stor28.0x70a08231 with:
                gas gas_remaining wei
               args stor27
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor27
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
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
    require ext_code.size(stor29)
    staticcall stor29.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor12))
    staticcall address(stor12).exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor17))
        staticcall address(stor17).borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x1778809f with:
                        gas gas_remaining wei
                       args stor14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
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
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x1778809f with:
                    gas gas_remaining wei
                   args stor14, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
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
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x1778809f with:
                    gas gas_remaining wei
                   args stor14, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
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
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x1778809f with:
                gas gas_remaining wei
               args stor14, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor28)
        staticcall stor28.0x70a08231 with:
                gas gas_remaining wei
               args stor27
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor27
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
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
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor17))
    staticcall address(stor17).borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x1778809f with:
                    gas gas_remaining wei
                   args stor14, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
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
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x1778809f with:
                gas gas_remaining wei
               args stor14, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor28)
        staticcall stor28.0x70a08231 with:
                gas gas_remaining wei
               args stor27
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor27
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
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
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x1778809f with:
                gas gas_remaining wei
               args stor14, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor28)
        staticcall stor28.0x70a08231 with:
                gas gas_remaining wei
               args stor27
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor27
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
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
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x1778809f with:
            gas gas_remaining wei
           args stor14, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor28)
    staticcall stor28.0x70a08231 with:
            gas gas_remaining wei
           args stor27
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor27
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args stor26
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
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor26)
    staticcall stor26.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor22))
    staticcall address(stor22).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor14, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor26)
    staticcall stor26.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not 2 * ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            require ext_code.size(stor29)
            staticcall stor29.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor12))
            staticcall address(stor12).exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor17))
                staticcall address(stor17).borrowBalanceStored(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor15)
                    staticcall stor15.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(address(stor22))
                        staticcall address(stor22).0x1778809f with:
                                gas gas_remaining wei
                               args stor14, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor28)
                        staticcall stor28.0x70a08231 with:
                                gas gas_remaining wei
                               args stor27
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor25)
                        staticcall stor25.0x70a08231 with:
                                gas gas_remaining wei
                               args stor27
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor25)
                        staticcall stor25.0x70a08231 with:
                                gas gas_remaining wei
                               args stor26
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor15)
                        staticcall stor15.0x70a08231 with:
                                gas gas_remaining wei
                               args stor26
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
                                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if not ext_call.return_data[0] + (0 / ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: division by zero'
                                return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                if not ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                            if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
                            if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not ext_call.return_data[0] + (0 / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                        if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x1778809f with:
                            gas gas_remaining wei
                           args stor14, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor28)
                    staticcall stor28.0x70a08231 with:
                            gas gas_remaining wei
                           args stor27
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor27
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor15)
                    staticcall stor15.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
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
                            if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0])
                        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                        if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
                        if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0])
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x1778809f with:
                            gas gas_remaining wei
                           args stor14, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor28)
                    staticcall stor28.0x70a08231 with:
                            gas gas_remaining wei
                           args stor27
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor27
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor15)
                    staticcall stor15.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
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
                            if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (stor8 * ext_call.return_data[0] / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                        if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (stor8 * ext_call.return_data[0] / (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
                        if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (stor8 * ext_call.return_data[0] / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x1778809f with:
                        gas gas_remaining wei
                       args stor14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
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
                        if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not ext_call.return_data[0] + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not ext_call.return_data[0] + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor17))
            staticcall address(stor17).borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x1778809f with:
                            gas gas_remaining wei
                           args stor14, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor28)
                    staticcall stor28.0x70a08231 with:
                            gas gas_remaining wei
                           args stor27
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor27
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor15)
                    staticcall stor15.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
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
                            if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
                        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                        if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
                        if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x1778809f with:
                        gas gas_remaining wei
                       args stor14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
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
                        if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                            revert with 0, 'SafeMath: division by zero'
                        return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x1778809f with:
                        gas gas_remaining wei
                       args stor14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
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
                        if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (stor8 * ext_call.return_data[0] / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x1778809f with:
                    gas gas_remaining wei
                   args stor14, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
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
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(stor29)
        staticcall stor29.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor12))
        staticcall address(stor12).exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor17))
            staticcall address(stor17).borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x1778809f with:
                            gas gas_remaining wei
                           args stor14, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor28)
                    staticcall stor28.0x70a08231 with:
                            gas gas_remaining wei
                           args stor27
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor27
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor15)
                    staticcall stor15.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
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
                            if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            return (stor8 * ext_call.return_data[0] / (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0])
                        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            if not (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                        if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (stor8 * ext_call.return_data[0] / (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
                        if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return (stor8 * ext_call.return_data[0] / (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0])
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x1778809f with:
                        gas gas_remaining wei
                       args stor14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
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
                        if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]))
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x1778809f with:
                        gas gas_remaining wei
                       args stor14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
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
                        if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not (5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (stor8 * ext_call.return_data[0] / (5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / (5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x1778809f with:
                    gas gas_remaining wei
                   args stor14, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
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
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not ext_call.return_data[0] + (4 * 0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (4 * 0 / ext_call.return_data[0]))
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not ext_call.return_data[0] + (4 * 0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (4 * 0 / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor17))
        staticcall address(stor17).borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x1778809f with:
                        gas gas_remaining wei
                       args stor14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
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
                        if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                            revert with 0, 'SafeMath: division by zero'
                        return (stor8 * ext_call.return_data[0] / (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / (3 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x1778809f with:
                    gas gas_remaining wei
                   args stor14, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
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
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]))
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x1778809f with:
                    gas gas_remaining wei
                   args stor14, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
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
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / (5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / (5 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (stor8 * ext_call.return_data[0] / (4 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x1778809f with:
                gas gas_remaining wei
               args stor14, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor28)
        staticcall stor28.0x70a08231 with:
                gas gas_remaining wei
               args stor27
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor27
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
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
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (4 * 0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (4 * 0 / ext_call.return_data[0]))
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
            if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
            if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (4 * 0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (4 * 0 / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
    if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
        require ext_code.size(stor29)
        staticcall stor29.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor12))
        staticcall address(stor12).exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor17))
            staticcall address(stor17).borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(address(stor22))
                    staticcall address(stor22).0x1778809f with:
                            gas gas_remaining wei
                           args stor14, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor28)
                    staticcall stor28.0x70a08231 with:
                            gas gas_remaining wei
                           args stor27
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor27
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor25)
                    staticcall stor25.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor15)
                    staticcall stor15.0x70a08231 with:
                            gas gas_remaining wei
                           args stor26
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
                            if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not ext_call.return_data[0] + (0 / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            if not ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                        if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
                        if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not ext_call.return_data[0] + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x1778809f with:
                        gas gas_remaining wei
                       args stor14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
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
                        if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0])
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x1778809f with:
                        gas gas_remaining wei
                       args stor14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
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
                        if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (stor8 * ext_call.return_data[0] / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / (0 / ext_call.return_data[0]) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x1778809f with:
                    gas gas_remaining wei
                   args stor14, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
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
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not ext_call.return_data[0] + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / ext_call.return_data[0]))
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not ext_call.return_data[0] + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor17))
        staticcall address(stor17).borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x1778809f with:
                        gas gas_remaining wei
                       args stor14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
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
                        if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x1778809f with:
                    gas gas_remaining wei
                   args stor14, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
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
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x1778809f with:
                    gas gas_remaining wei
                   args stor14, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
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
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (stor8 * ext_call.return_data[0] / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x1778809f with:
                gas gas_remaining wei
               args stor14, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor28)
        staticcall stor28.0x70a08231 with:
                gas gas_remaining wei
               args stor27
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor27
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
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
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
            if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
            if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
    if 2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    require ext_code.size(stor29)
    staticcall stor29.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor12))
    staticcall address(stor12).exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor17))
        staticcall address(stor17).borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(address(stor22))
                staticcall address(stor22).0x1778809f with:
                        gas gas_remaining wei
                       args stor14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor28)
                staticcall stor28.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor27
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor25)
                staticcall stor25.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args stor26
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
                        if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
                    if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x1778809f with:
                    gas gas_remaining wei
                   args stor14, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
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
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x1778809f with:
                    gas gas_remaining wei
                   args stor14, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
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
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (stor8 * ext_call.return_data[0] / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x1778809f with:
                gas gas_remaining wei
               args stor14, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor28)
        staticcall stor28.0x70a08231 with:
                gas gas_remaining wei
               args stor27
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor27
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
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
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
            if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
            if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor17))
    staticcall address(stor17).borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(address(stor22))
            staticcall address(stor22).0x1778809f with:
                    gas gas_remaining wei
                   args stor14, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor28)
            staticcall stor28.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor27
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor25)
            staticcall stor25.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args stor26
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
                    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
            if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
            if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x1778809f with:
                gas gas_remaining wei
               args stor14, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor28)
        staticcall stor28.0x70a08231 with:
                gas gas_remaining wei
               args stor27
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor27
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
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
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
            if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
            if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (stor8 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(address(stor22))
        staticcall address(stor22).0x1778809f with:
                gas gas_remaining wei
               args stor14, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor28)
        staticcall stor28.0x70a08231 with:
                gas gas_remaining wei
               args stor27
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor27
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor25)
        staticcall stor25.0x70a08231 with:
                gas gas_remaining wei
               args stor26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args stor26
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
                if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (stor8 * ext_call.return_data[0] / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
            if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (stor8 * ext_call.return_data[0] / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
            if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (stor8 * ext_call.return_data[0] / (2 * 0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (0 / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
        if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (stor8 * ext_call.return_data[0] / (0 / ext_call.return_data[0]) + ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(address(stor22))
    staticcall address(stor22).0x1778809f with:
            gas gas_remaining wei
           args stor14, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor28)
    staticcall stor28.0x70a08231 with:
            gas gas_remaining wei
           args stor27
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor27
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor25)
    staticcall stor25.0x70a08231 with:
            gas gas_remaining wei
           args stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args stor26
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
            if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
        if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
        if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]))
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
        if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
    if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
    if stor8 * ext_call.return_data[0] / ext_call.return_data[0] != stor8:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
    if not ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    return (stor8 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]))
}



}
