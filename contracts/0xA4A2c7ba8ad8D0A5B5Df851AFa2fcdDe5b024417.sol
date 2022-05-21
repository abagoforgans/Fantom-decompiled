contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address sub_6a7d446bAddress;
address lpAddress;
address tokenAAddress;
address tokenBAddress;
uint32 stor7;
address poolTokenAddress;
address sub_6d5360c1Address;
address underlyingAddress;
address borrowableAAddress;
address borrowableBAddress;

function tokenA() payable {
    return tokenAAddress
}

function totalSupply() payable {
    return totalSupply
}

function lp() payable {
    return lpAddress
}

function borrowableA() payable {
    return borrowableAAddress
}

function tokenB() payable {
    return tokenBAddress
}

function sub_6a7d446b(?) payable {
    return sub_6a7d446bAddress
}

function sub_6d5360c1(?) payable {
    return sub_6d5360c1Address
}

function underlying() payable {
    return underlyingAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function borrowableB() payable {
    return borrowableBAddress
}

function poolToken() payable {
    return address(poolTokenAddress)
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_a8e9f25f(?) payable {
    require calldata.size - 4 >= 32
}

function sub_26aa8454(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg2)
    call arg2.0xd0280539 with:
         gas gas_remaining wei
        args 0, 0, arg1, address(this.address), block.timestamp + 120
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3fd59465(?) payable {
    require ext_code.size(lpAddress)
    staticcall lpAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a6f0b75e(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(underlyingAddress)
    call underlyingAddress.0x2e15fcbc with:
         gas gas_remaining wei
        args 0, uint32(stor7), arg1, address(this.address), block.timestamp + 15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_550cfe5a(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg2)
    call arg2.repay(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, 0, arg1, address(this.address), block.timestamp + 120
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
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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

function approveContracts() payable {
    require ext_code.size(lpAddress)
    call lpAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_6d5360c1Address, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAAddress)
    call tokenAAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args borrowableAAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenBAddress)
    call tokenBAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args borrowableAAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(poolTokenAddress))
    call address(poolTokenAddress).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_6d5360c1Address, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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

function sub_43124025(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(lpAddress)
    staticcall lpAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAAddress)
    staticcall tokenAAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(poolTokenAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require ext_code.size(lpAddress)
        staticcall lpAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenBAddress)
        staticcall tokenBAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(poolTokenAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not 0 / ext_call.return_data[0]:
                if not 0 / ext_call.return_data[0]:
                    require ext_code.size(sub_6d5360c1Address)
                    call sub_6d5360c1Address.0xf584e602 with:
                         gas gas_remaining wei
                        args underlyingAddress, 0, 0, 0, 0, address(this.address), block.timestamp + 120
                else:
                    require 0 / ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] * arg2 / 0 / ext_call.return_data[0] != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not 0 / ext_call.return_data[0] * arg2 / 10^6:
                        require ext_code.size(sub_6d5360c1Address)
                        call sub_6d5360c1Address.0xf584e602 with:
                             gas gas_remaining wei
                            args underlyingAddress, 0, 0 / ext_call.return_data[0] * arg2 / 10^6, 0, 0, address(this.address), block.timestamp + 120
                    else:
                        require 0 / ext_call.return_data[0] * arg2 / 10^6
                        if 275 * 3600 * 0 / ext_call.return_data[0] * arg2 / 10^6 / 0 / ext_call.return_data[0] * arg2 / 10^6 != 275 * 3600:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        require ext_code.size(sub_6d5360c1Address)
                        call sub_6d5360c1Address.0xf584e602 with:
                             gas gas_remaining wei
                            args underlyingAddress, 0, 0 / ext_call.return_data[0] * arg2 / 10^6, 0, 275 * 3600 * 0 / ext_call.return_data[0] * arg2 / 10^6 / 10^6, address(this.address), block.timestamp + 120
            else:
                require 0 / ext_call.return_data[0]
                if 0 / ext_call.return_data[0] * arg2 / 0 / ext_call.return_data[0] != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not 0 / ext_call.return_data[0]:
                    if not 0 / ext_call.return_data[0] * arg2 / 10^6:
                        require ext_code.size(sub_6d5360c1Address)
                        call sub_6d5360c1Address.0xf584e602 with:
                             gas gas_remaining wei
                            args underlyingAddress, 0 / ext_call.return_data[0] * arg2 / 10^6, 0, 0, 0, address(this.address), block.timestamp + 120
                    else:
                        require 0 / ext_call.return_data[0] * arg2 / 10^6
                        if 275 * 3600 * 0 / ext_call.return_data[0] * arg2 / 10^6 / 0 / ext_call.return_data[0] * arg2 / 10^6 != 275 * 3600:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        require ext_code.size(sub_6d5360c1Address)
                        call sub_6d5360c1Address.0xf584e602 with:
                             gas gas_remaining wei
                            args underlyingAddress, 0 / ext_call.return_data[0] * arg2 / 10^6, 0, 275 * 3600 * 0 / ext_call.return_data[0] * arg2 / 10^6 / 10^6, 0, address(this.address), block.timestamp + 120
                else:
                    require 0 / ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] * arg2 / 0 / ext_call.return_data[0] != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not 0 / ext_call.return_data[0] * arg2 / 10^6:
                        if not 0 / ext_call.return_data[0] * arg2 / 10^6:
                            require ext_code.size(sub_6d5360c1Address)
                            call sub_6d5360c1Address.0xf584e602 with:
                                 gas gas_remaining wei
                                args underlyingAddress, 0 / ext_call.return_data[0] * arg2 / 10^6, 0 / ext_call.return_data[0] * arg2 / 10^6, 0, 0, address(this.address), block.timestamp + 120
                        else:
                            require 0 / ext_call.return_data[0] * arg2 / 10^6
                            if 275 * 3600 * 0 / ext_call.return_data[0] * arg2 / 10^6 / 0 / ext_call.return_data[0] * arg2 / 10^6 != 275 * 3600:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            require ext_code.size(sub_6d5360c1Address)
                            call sub_6d5360c1Address.0xf584e602 with:
                                 gas gas_remaining wei
                                args underlyingAddress, 0 / ext_call.return_data[0] * arg2 / 10^6, 0 / ext_call.return_data[0] * arg2 / 10^6, 0, 275 * 3600 * 0 / ext_call.return_data[0] * arg2 / 10^6 / 10^6, address(this.address), block.timestamp + 120
                    else:
                        require 0 / ext_call.return_data[0] * arg2 / 10^6
                        if 275 * 3600 * 0 / ext_call.return_data[0] * arg2 / 10^6 / 0 / ext_call.return_data[0] * arg2 / 10^6 != 275 * 3600:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not 0 / ext_call.return_data[0] * arg2 / 10^6:
                            require ext_code.size(sub_6d5360c1Address)
                            call sub_6d5360c1Address.0xf584e602 with:
                                 gas gas_remaining wei
                                args underlyingAddress, 0 / ext_call.return_data[0] * arg2 / 10^6, 0 / ext_call.return_data[0] * arg2 / 10^6, 275 * 3600 * 0 / ext_call.return_data[0] * arg2 / 10^6 / 10^6, 0, address(this.address), block.timestamp + 120
                        else:
                            require 0 / ext_call.return_data[0] * arg2 / 10^6
                            if 275 * 3600 * 0 / ext_call.return_data[0] * arg2 / 10^6 / 0 / ext_call.return_data[0] * arg2 / 10^6 != 275 * 3600:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            require ext_code.size(sub_6d5360c1Address)
                            call sub_6d5360c1Address.0xf584e602 with:
                                 gas gas_remaining wei
                                args underlyingAddress, 0 / ext_call.return_data[0] * arg2 / 10^6, 0 / ext_call.return_data[0] * arg2 / 10^6, 275 * 3600 * 0 / ext_call.return_data[0] * arg2 / 10^6 / 10^6, 275 * 3600 * 0 / ext_call.return_data[0] * arg2 / 10^6 / 10^6, address(this.address), block.timestamp + 120
        else:
            require ext_call.return_data[0]
            if ext_call.return_data[0] * arg1 / ext_call.return_data[0] != arg1:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not 0 / ext_call.return_data[0]:
                if not ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                    require ext_code.size(sub_6d5360c1Address)
                    call sub_6d5360c1Address.0xf584e602 with:
                         gas gas_remaining wei
                        args underlyingAddress, 0, 0, 0, 0, address(this.address), block.timestamp + 120
                else:
                    require ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                    if ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / ext_call.return_data[0] * arg1 / ext_call.return_data[0] != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6:
                        require ext_code.size(sub_6d5360c1Address)
                        call sub_6d5360c1Address.0xf584e602 with:
                             gas gas_remaining wei
                            args underlyingAddress, 0, ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6, 0, 0, address(this.address), block.timestamp + 120
                    else:
                        require ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6
                        if 275 * 3600 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 / ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 != 275 * 3600:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        require ext_code.size(sub_6d5360c1Address)
                        call sub_6d5360c1Address.0xf584e602 with:
                             gas gas_remaining wei
                            args underlyingAddress, 0, ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6, 0, 275 * 3600 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 / 10^6, address(this.address), block.timestamp + 120
            else:
                require 0 / ext_call.return_data[0]
                if 0 / ext_call.return_data[0] * arg2 / 0 / ext_call.return_data[0] != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                    if not 0 / ext_call.return_data[0] * arg2 / 10^6:
                        require ext_code.size(sub_6d5360c1Address)
                        call sub_6d5360c1Address.0xf584e602 with:
                             gas gas_remaining wei
                            args underlyingAddress, 0 / ext_call.return_data[0] * arg2 / 10^6, 0, 0, 0, address(this.address), block.timestamp + 120
                    else:
                        require 0 / ext_call.return_data[0] * arg2 / 10^6
                        if 275 * 3600 * 0 / ext_call.return_data[0] * arg2 / 10^6 / 0 / ext_call.return_data[0] * arg2 / 10^6 != 275 * 3600:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        require ext_code.size(sub_6d5360c1Address)
                        call sub_6d5360c1Address.0xf584e602 with:
                             gas gas_remaining wei
                            args underlyingAddress, 0 / ext_call.return_data[0] * arg2 / 10^6, 0, 275 * 3600 * 0 / ext_call.return_data[0] * arg2 / 10^6 / 10^6, 0, address(this.address), block.timestamp + 120
                else:
                    require ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                    if ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / ext_call.return_data[0] * arg1 / ext_call.return_data[0] != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not 0 / ext_call.return_data[0] * arg2 / 10^6:
                        if not ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6:
                            require ext_code.size(sub_6d5360c1Address)
                            call sub_6d5360c1Address.0xf584e602 with:
                                 gas gas_remaining wei
                                args underlyingAddress, 0 / ext_call.return_data[0] * arg2 / 10^6, ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6, 0, 0, address(this.address), block.timestamp + 120
                        else:
                            require ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6
                            if 275 * 3600 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 / ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 != 275 * 3600:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            require ext_code.size(sub_6d5360c1Address)
                            call sub_6d5360c1Address.0xf584e602 with:
                                 gas gas_remaining wei
                                args underlyingAddress, 0 / ext_call.return_data[0] * arg2 / 10^6, ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6, 0, 275 * 3600 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 / 10^6, address(this.address), block.timestamp + 120
                    else:
                        require 0 / ext_call.return_data[0] * arg2 / 10^6
                        if 275 * 3600 * 0 / ext_call.return_data[0] * arg2 / 10^6 / 0 / ext_call.return_data[0] * arg2 / 10^6 != 275 * 3600:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6:
                            require ext_code.size(sub_6d5360c1Address)
                            call sub_6d5360c1Address.0xf584e602 with:
                                 gas gas_remaining wei
                                args underlyingAddress, 0 / ext_call.return_data[0] * arg2 / 10^6, ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6, 275 * 3600 * 0 / ext_call.return_data[0] * arg2 / 10^6 / 10^6, 0, address(this.address), block.timestamp + 120
                        else:
                            require ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6
                            if 275 * 3600 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 / ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 != 275 * 3600:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            require ext_code.size(sub_6d5360c1Address)
                            call sub_6d5360c1Address.0xf584e602 with:
                                 gas gas_remaining wei
                                args underlyingAddress, 0 / ext_call.return_data[0] * arg2 / 10^6, ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6, 275 * 3600 * 0 / ext_call.return_data[0] * arg2 / 10^6 / 10^6, 275 * 3600 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 / 10^6, address(this.address), block.timestamp + 120
    else:
        require ext_call.return_data[0]
        if ext_call.return_data[0] * arg1 / ext_call.return_data[0] != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require ext_code.size(lpAddress)
        staticcall lpAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenBAddress)
        staticcall tokenBAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(poolTokenAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                if not 0 / ext_call.return_data[0]:
                    require ext_code.size(sub_6d5360c1Address)
                    call sub_6d5360c1Address.0xf584e602 with:
                         gas gas_remaining wei
                        args underlyingAddress, 0, 0, 0, 0, address(this.address), block.timestamp + 120
                else:
                    require 0 / ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] * arg2 / 0 / ext_call.return_data[0] != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not 0 / ext_call.return_data[0] * arg2 / 10^6:
                        require ext_code.size(sub_6d5360c1Address)
                        call sub_6d5360c1Address.0xf584e602 with:
                             gas gas_remaining wei
                            args underlyingAddress, 0, 0 / ext_call.return_data[0] * arg2 / 10^6, 0, 0, address(this.address), block.timestamp + 120
                    else:
                        require 0 / ext_call.return_data[0] * arg2 / 10^6
                        if 275 * 3600 * 0 / ext_call.return_data[0] * arg2 / 10^6 / 0 / ext_call.return_data[0] * arg2 / 10^6 != 275 * 3600:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        require ext_code.size(sub_6d5360c1Address)
                        call sub_6d5360c1Address.0xf584e602 with:
                             gas gas_remaining wei
                            args underlyingAddress, 0, 0 / ext_call.return_data[0] * arg2 / 10^6, 0, 275 * 3600 * 0 / ext_call.return_data[0] * arg2 / 10^6 / 10^6, address(this.address), block.timestamp + 120
            else:
                require ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / ext_call.return_data[0] * arg1 / ext_call.return_data[0] != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not 0 / ext_call.return_data[0]:
                    if not ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6:
                        require ext_code.size(sub_6d5360c1Address)
                        call sub_6d5360c1Address.0xf584e602 with:
                             gas gas_remaining wei
                            args underlyingAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6, 0, 0, 0, address(this.address), block.timestamp + 120
                    else:
                        require ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6
                        if 275 * 3600 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 / ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 != 275 * 3600:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        require ext_code.size(sub_6d5360c1Address)
                        call sub_6d5360c1Address.0xf584e602 with:
                             gas gas_remaining wei
                            args underlyingAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6, 0, 275 * 3600 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 / 10^6, 0, address(this.address), block.timestamp + 120
                else:
                    require 0 / ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] * arg2 / 0 / ext_call.return_data[0] != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6:
                        if not 0 / ext_call.return_data[0] * arg2 / 10^6:
                            require ext_code.size(sub_6d5360c1Address)
                            call sub_6d5360c1Address.0xf584e602 with:
                                 gas gas_remaining wei
                                args underlyingAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6, 0 / ext_call.return_data[0] * arg2 / 10^6, 0, 0, address(this.address), block.timestamp + 120
                        else:
                            require 0 / ext_call.return_data[0] * arg2 / 10^6
                            if 275 * 3600 * 0 / ext_call.return_data[0] * arg2 / 10^6 / 0 / ext_call.return_data[0] * arg2 / 10^6 != 275 * 3600:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            require ext_code.size(sub_6d5360c1Address)
                            call sub_6d5360c1Address.0xf584e602 with:
                                 gas gas_remaining wei
                                args underlyingAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6, 0 / ext_call.return_data[0] * arg2 / 10^6, 0, 275 * 3600 * 0 / ext_call.return_data[0] * arg2 / 10^6 / 10^6, address(this.address), block.timestamp + 120
                    else:
                        require ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6
                        if 275 * 3600 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 / ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 != 275 * 3600:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not 0 / ext_call.return_data[0] * arg2 / 10^6:
                            require ext_code.size(sub_6d5360c1Address)
                            call sub_6d5360c1Address.0xf584e602 with:
                                 gas gas_remaining wei
                                args underlyingAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6, 0 / ext_call.return_data[0] * arg2 / 10^6, 275 * 3600 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 / 10^6, 0, address(this.address), block.timestamp + 120
                        else:
                            require 0 / ext_call.return_data[0] * arg2 / 10^6
                            if 275 * 3600 * 0 / ext_call.return_data[0] * arg2 / 10^6 / 0 / ext_call.return_data[0] * arg2 / 10^6 != 275 * 3600:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            require ext_code.size(sub_6d5360c1Address)
                            call sub_6d5360c1Address.0xf584e602 with:
                                 gas gas_remaining wei
                                args underlyingAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6, 0 / ext_call.return_data[0] * arg2 / 10^6, 275 * 3600 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 / 10^6, 275 * 3600 * 0 / ext_call.return_data[0] * arg2 / 10^6 / 10^6, address(this.address), block.timestamp + 120
        else:
            require ext_call.return_data[0]
            if ext_call.return_data[0] * arg1 / ext_call.return_data[0] != arg1:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                if not ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                    require ext_code.size(sub_6d5360c1Address)
                    call sub_6d5360c1Address.0xf584e602 with:
                         gas gas_remaining wei
                        args underlyingAddress, 0, 0, 0, 0, address(this.address), block.timestamp + 120
                else:
                    require ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                    if ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / ext_call.return_data[0] * arg1 / ext_call.return_data[0] != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6:
                        require ext_code.size(sub_6d5360c1Address)
                        call sub_6d5360c1Address.0xf584e602 with:
                             gas gas_remaining wei
                            args underlyingAddress, 0, ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6, 0, 0, address(this.address), block.timestamp + 120
                    else:
                        require ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6
                        if 275 * 3600 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 / ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 != 275 * 3600:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        require ext_code.size(sub_6d5360c1Address)
                        call sub_6d5360c1Address.0xf584e602 with:
                             gas gas_remaining wei
                            args underlyingAddress, 0, ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6, 0, 275 * 3600 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 / 10^6, address(this.address), block.timestamp + 120
            else:
                require ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                if ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / ext_call.return_data[0] * arg1 / ext_call.return_data[0] != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                    if not ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6:
                        require ext_code.size(sub_6d5360c1Address)
                        call sub_6d5360c1Address.0xf584e602 with:
                             gas gas_remaining wei
                            args underlyingAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6, 0, 0, 0, address(this.address), block.timestamp + 120
                    else:
                        require ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6
                        if 275 * 3600 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 / ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 != 275 * 3600:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        require ext_code.size(sub_6d5360c1Address)
                        call sub_6d5360c1Address.0xf584e602 with:
                             gas gas_remaining wei
                            args underlyingAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6, 0, 275 * 3600 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 / 10^6, 0, address(this.address), block.timestamp + 120
                else:
                    require ext_call.return_data[0] * arg1 / ext_call.return_data[0]
                    if ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / ext_call.return_data[0] * arg1 / ext_call.return_data[0] != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6:
                        if not ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6:
                            require ext_code.size(sub_6d5360c1Address)
                            call sub_6d5360c1Address.0xf584e602 with:
                                 gas gas_remaining wei
                                args underlyingAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6, ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6, 0, 0, address(this.address), block.timestamp + 120
                        else:
                            require ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6
                            if 275 * 3600 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 / ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 != 275 * 3600:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            require ext_code.size(sub_6d5360c1Address)
                            call sub_6d5360c1Address.0xf584e602 with:
                                 gas gas_remaining wei
                                args underlyingAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6, ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6, 0, 275 * 3600 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 / 10^6, address(this.address), block.timestamp + 120
                    else:
                        require ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6
                        if 275 * 3600 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 / ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 != 275 * 3600:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6:
                            require ext_code.size(sub_6d5360c1Address)
                            call sub_6d5360c1Address.0xf584e602 with:
                                 gas gas_remaining wei
                                args underlyingAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6, ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6, 275 * 3600 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 / 10^6, 0, address(this.address), block.timestamp + 120
                        else:
                            require ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6
                            if 275 * 3600 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 / ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 != 275 * 3600:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            require ext_code.size(sub_6d5360c1Address)
                            call sub_6d5360c1Address.0xf584e602 with:
                                 gas gas_remaining wei
                                args underlyingAddress, ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6, ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6, 275 * 3600 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 / 10^6, 275 * 3600 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg2 / 10^6 / 10^6, address(this.address), block.timestamp + 120
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
