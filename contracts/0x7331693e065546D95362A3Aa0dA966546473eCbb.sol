contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
address sub_6a7d446bAddress;
address lpAddress;
address tokenAAddress;
address tokenBAddress;
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
    return poolTokenAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_26aa8454(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg2)
    call arg2.0xd0280539 with:
         gas gas_remaining wei
        args 0, 0, arg1, this.address, block.timestamp + 120
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

function sub_550cfe5a(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg2)
    call arg2.repay(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, 0, arg1, this.address, block.timestamp + 120
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9e24dff4(?) payable {
    require calldata.size - 4 >= 32
    mem[292] = uint256(stor3.field_0)
    idx = 292
    s = 0
    while stor3.length + 292 > idx + 32:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(sub_6d5360c1Address)
    call sub_6d5360c1Address.redeem(address arg1, uint256 arg2, address arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args poolTokenAddress, arg1, this.address, block.timestamp + 15, Array(len=stor3.length, data=mem[292 len stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a6f0b75e(?) payable {
    require calldata.size - 4 >= 32
    mem[292] = uint256(stor3.field_0)
    idx = 292
    s = 0
    while stor3.length + 292 > idx + 32:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(underlyingAddress)
    call underlyingAddress.mintCollateral(address arg1, uint256 arg2, address arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args poolTokenAddress, arg1, this.address, block.timestamp + 15, Array(len=stor3.length, data=mem[292 len stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32)])
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
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
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
    require ext_code.size(lpAddress)
    call lpAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args poolTokenAddress, -1
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
        args borrowableBAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(poolTokenAddress)
    call poolTokenAddress.approve(address arg1, uint256 arg2) with:
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
           args poolTokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(lpAddress)
        staticcall lpAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenBAddress)
        staticcall tokenBAddress.0x70a08231 with:
                gas gas_remaining wei
               args poolTokenAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0]:
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    mem[288] = 26
                    mem[320] = 'SafeMath: division by zero'
                    mem[352] = 26
                    mem[384] = 'SafeMath: division by zero'
                    mem[64] = 480
                    mem[416] = 26
                    mem[448] = 'SafeMath: division by zero'
                    mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                    mem[484] = underlyingAddress
                    mem[516] = 0
                    mem[548] = 0
                    mem[580] = 0
                    mem[612] = 0
                else:
                    if arg2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    mem[288] = 26
                    mem[320] = 'SafeMath: division by zero'
                    mem[352] = 26
                    mem[384] = 'SafeMath: division by zero'
                    if not arg2 * 0 / ext_call.return_data[0] / 10^6:
                        mem[64] = 480
                        mem[416] = 26
                        mem[448] = 'SafeMath: division by zero'
                        mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                        mem[484] = underlyingAddress
                        mem[516] = 0
                        mem[548] = arg2 * 0 / ext_call.return_data[0] / 10^6
                        mem[580] = 0
                        mem[612] = 0
                    else:
                        if 275 * 3600 * arg2 * 0 / ext_call.return_data[0] / 10^6 / arg2 * 0 / ext_call.return_data[0] / 10^6 != 275 * 3600:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        mem[64] = 480
                        mem[416] = 26
                        mem[448] = 'SafeMath: division by zero'
                        mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                        mem[484] = underlyingAddress
                        mem[516] = 0
                        mem[548] = arg2 * 0 / ext_call.return_data[0] / 10^6
                        mem[580] = 0
                        mem[612] = 275 * 3600 * arg2 * 0 / ext_call.return_data[0] / 10^6 / 10^6
            else:
                if arg2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    mem[288] = 26
                    mem[320] = 'SafeMath: division by zero'
                    if not arg2 * 0 / ext_call.return_data[0] / 10^6:
                        mem[352] = 26
                        mem[384] = 'SafeMath: division by zero'
                        mem[64] = 480
                        mem[416] = 26
                        mem[448] = 'SafeMath: division by zero'
                        mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                        mem[484] = underlyingAddress
                        mem[516] = arg2 * 0 / ext_call.return_data[0] / 10^6
                        mem[548] = 0
                        mem[580] = 0
                    else:
                        if 275 * 3600 * arg2 * 0 / ext_call.return_data[0] / 10^6 / arg2 * 0 / ext_call.return_data[0] / 10^6 != 275 * 3600:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        mem[352] = 26
                        mem[384] = 'SafeMath: division by zero'
                        mem[64] = 480
                        mem[416] = 26
                        mem[448] = 'SafeMath: division by zero'
                        mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                        mem[484] = underlyingAddress
                        mem[516] = arg2 * 0 / ext_call.return_data[0] / 10^6
                        mem[548] = 0
                        mem[580] = 275 * 3600 * arg2 * 0 / ext_call.return_data[0] / 10^6 / 10^6
                    mem[612] = 0
                else:
                    if arg2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    mem[288] = 26
                    mem[320] = 'SafeMath: division by zero'
                    if not arg2 * 0 / ext_call.return_data[0] / 10^6:
                        mem[352] = 26
                        mem[384] = 'SafeMath: division by zero'
                        if not arg2 * 0 / ext_call.return_data[0] / 10^6:
                            mem[64] = 480
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                            mem[484] = underlyingAddress
                            mem[516] = arg2 * 0 / ext_call.return_data[0] / 10^6
                            mem[548] = arg2 * 0 / ext_call.return_data[0] / 10^6
                            mem[580] = 0
                            mem[612] = 0
                        else:
                            if 275 * 3600 * arg2 * 0 / ext_call.return_data[0] / 10^6 / arg2 * 0 / ext_call.return_data[0] / 10^6 != 275 * 3600:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            mem[64] = 480
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                            mem[484] = underlyingAddress
                            mem[516] = arg2 * 0 / ext_call.return_data[0] / 10^6
                            mem[548] = arg2 * 0 / ext_call.return_data[0] / 10^6
                            mem[580] = 0
                            mem[612] = 275 * 3600 * arg2 * 0 / ext_call.return_data[0] / 10^6 / 10^6
                    else:
                        if 275 * 3600 * arg2 * 0 / ext_call.return_data[0] / 10^6 / arg2 * 0 / ext_call.return_data[0] / 10^6 != 275 * 3600:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        mem[352] = 26
                        mem[384] = 'SafeMath: division by zero'
                        if not arg2 * 0 / ext_call.return_data[0] / 10^6:
                            mem[64] = 480
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                            mem[484] = underlyingAddress
                            mem[516] = arg2 * 0 / ext_call.return_data[0] / 10^6
                            mem[548] = arg2 * 0 / ext_call.return_data[0] / 10^6
                            mem[580] = 275 * 3600 * arg2 * 0 / ext_call.return_data[0] / 10^6 / 10^6
                            mem[612] = 0
                        else:
                            if 275 * 3600 * arg2 * 0 / ext_call.return_data[0] / 10^6 / arg2 * 0 / ext_call.return_data[0] / 10^6 != 275 * 3600:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            mem[64] = 480
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                            mem[484] = underlyingAddress
                            mem[516] = arg2 * 0 / ext_call.return_data[0] / 10^6
                            mem[548] = arg2 * 0 / ext_call.return_data[0] / 10^6
                            mem[580] = 275 * 3600 * arg2 * 0 / ext_call.return_data[0] / 10^6 / 10^6
                            mem[612] = 275 * 3600 * arg2 * 0 / ext_call.return_data[0] / 10^6 / 10^6
        else:
            if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0]:
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                if not arg1 * ext_call.return_data[0] / ext_call.return_data[0]:
                    mem[288] = 26
                    mem[320] = 'SafeMath: division by zero'
                    mem[352] = 26
                    mem[384] = 'SafeMath: division by zero'
                    mem[64] = 480
                    mem[416] = 26
                    mem[448] = 'SafeMath: division by zero'
                    mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                    mem[484] = underlyingAddress
                    mem[516] = 0
                    mem[548] = 0
                    mem[580] = 0
                    mem[612] = 0
                else:
                    if arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    mem[288] = 26
                    mem[320] = 'SafeMath: division by zero'
                    mem[352] = 26
                    mem[384] = 'SafeMath: division by zero'
                    if not arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6:
                        mem[64] = 480
                        mem[416] = 26
                        mem[448] = 'SafeMath: division by zero'
                        mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                        mem[484] = underlyingAddress
                        mem[516] = 0
                        mem[548] = arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                        mem[580] = 0
                        mem[612] = 0
                    else:
                        if 275 * 3600 * arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 / arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 != 275 * 3600:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        mem[64] = 480
                        mem[416] = 26
                        mem[448] = 'SafeMath: division by zero'
                        mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                        mem[484] = underlyingAddress
                        mem[516] = 0
                        mem[548] = arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                        mem[580] = 0
                        mem[612] = 275 * 3600 * arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 / 10^6
            else:
                if arg2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                if not arg1 * ext_call.return_data[0] / ext_call.return_data[0]:
                    mem[288] = 26
                    mem[320] = 'SafeMath: division by zero'
                    if not arg2 * 0 / ext_call.return_data[0] / 10^6:
                        mem[352] = 26
                        mem[384] = 'SafeMath: division by zero'
                        mem[64] = 480
                        mem[416] = 26
                        mem[448] = 'SafeMath: division by zero'
                        mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                        mem[484] = underlyingAddress
                        mem[516] = arg2 * 0 / ext_call.return_data[0] / 10^6
                        mem[548] = 0
                        mem[580] = 0
                    else:
                        if 275 * 3600 * arg2 * 0 / ext_call.return_data[0] / 10^6 / arg2 * 0 / ext_call.return_data[0] / 10^6 != 275 * 3600:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        mem[352] = 26
                        mem[384] = 'SafeMath: division by zero'
                        mem[64] = 480
                        mem[416] = 26
                        mem[448] = 'SafeMath: division by zero'
                        mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                        mem[484] = underlyingAddress
                        mem[516] = arg2 * 0 / ext_call.return_data[0] / 10^6
                        mem[548] = 0
                        mem[580] = 275 * 3600 * arg2 * 0 / ext_call.return_data[0] / 10^6 / 10^6
                    mem[612] = 0
                else:
                    if arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    mem[288] = 26
                    mem[320] = 'SafeMath: division by zero'
                    if not arg2 * 0 / ext_call.return_data[0] / 10^6:
                        mem[352] = 26
                        mem[384] = 'SafeMath: division by zero'
                        if not arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6:
                            mem[64] = 480
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                            mem[484] = underlyingAddress
                            mem[516] = arg2 * 0 / ext_call.return_data[0] / 10^6
                            mem[548] = arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                            mem[580] = 0
                            mem[612] = 0
                        else:
                            if 275 * 3600 * arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 / arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 != 275 * 3600:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            mem[64] = 480
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                            mem[484] = underlyingAddress
                            mem[516] = arg2 * 0 / ext_call.return_data[0] / 10^6
                            mem[548] = arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                            mem[580] = 0
                            mem[612] = 275 * 3600 * arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 / 10^6
                    else:
                        if 275 * 3600 * arg2 * 0 / ext_call.return_data[0] / 10^6 / arg2 * 0 / ext_call.return_data[0] / 10^6 != 275 * 3600:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        mem[352] = 26
                        mem[384] = 'SafeMath: division by zero'
                        if not arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6:
                            mem[64] = 480
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                            mem[484] = underlyingAddress
                            mem[516] = arg2 * 0 / ext_call.return_data[0] / 10^6
                            mem[548] = arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                            mem[580] = 275 * 3600 * arg2 * 0 / ext_call.return_data[0] / 10^6 / 10^6
                            mem[612] = 0
                        else:
                            if 275 * 3600 * arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 / arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 != 275 * 3600:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            mem[64] = 480
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                            mem[484] = underlyingAddress
                            mem[516] = arg2 * 0 / ext_call.return_data[0] / 10^6
                            mem[548] = arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                            mem[580] = 275 * 3600 * arg2 * 0 / ext_call.return_data[0] / 10^6 / 10^6
                            mem[612] = 275 * 3600 * arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 / 10^6
    else:
        if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(lpAddress)
        staticcall lpAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenBAddress)
        staticcall tokenBAddress.0x70a08231 with:
                gas gas_remaining wei
               args poolTokenAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not arg1 * ext_call.return_data[0] / ext_call.return_data[0]:
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    mem[288] = 26
                    mem[320] = 'SafeMath: division by zero'
                    mem[352] = 26
                    mem[384] = 'SafeMath: division by zero'
                    mem[64] = 480
                    mem[416] = 26
                    mem[448] = 'SafeMath: division by zero'
                    mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                    mem[484] = underlyingAddress
                    mem[516] = 0
                    mem[548] = 0
                    mem[580] = 0
                    mem[612] = 0
                else:
                    if arg2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    mem[288] = 26
                    mem[320] = 'SafeMath: division by zero'
                    mem[352] = 26
                    mem[384] = 'SafeMath: division by zero'
                    if not arg2 * 0 / ext_call.return_data[0] / 10^6:
                        mem[64] = 480
                        mem[416] = 26
                        mem[448] = 'SafeMath: division by zero'
                        mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                        mem[484] = underlyingAddress
                        mem[516] = 0
                        mem[548] = arg2 * 0 / ext_call.return_data[0] / 10^6
                        mem[580] = 0
                        mem[612] = 0
                    else:
                        if 275 * 3600 * arg2 * 0 / ext_call.return_data[0] / 10^6 / arg2 * 0 / ext_call.return_data[0] / 10^6 != 275 * 3600:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        mem[64] = 480
                        mem[416] = 26
                        mem[448] = 'SafeMath: division by zero'
                        mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                        mem[484] = underlyingAddress
                        mem[516] = 0
                        mem[548] = arg2 * 0 / ext_call.return_data[0] / 10^6
                        mem[580] = 0
                        mem[612] = 275 * 3600 * arg2 * 0 / ext_call.return_data[0] / 10^6 / 10^6
            else:
                if arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    mem[288] = 26
                    mem[320] = 'SafeMath: division by zero'
                    if not arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6:
                        mem[352] = 26
                        mem[384] = 'SafeMath: division by zero'
                        mem[64] = 480
                        mem[416] = 26
                        mem[448] = 'SafeMath: division by zero'
                        mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                        mem[484] = underlyingAddress
                        mem[516] = arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                        mem[548] = 0
                        mem[580] = 0
                    else:
                        if 275 * 3600 * arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 / arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 != 275 * 3600:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        mem[352] = 26
                        mem[384] = 'SafeMath: division by zero'
                        mem[64] = 480
                        mem[416] = 26
                        mem[448] = 'SafeMath: division by zero'
                        mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                        mem[484] = underlyingAddress
                        mem[516] = arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                        mem[548] = 0
                        mem[580] = 275 * 3600 * arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 / 10^6
                    mem[612] = 0
                else:
                    if arg2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    mem[288] = 26
                    mem[320] = 'SafeMath: division by zero'
                    if not arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6:
                        mem[352] = 26
                        mem[384] = 'SafeMath: division by zero'
                        if not arg2 * 0 / ext_call.return_data[0] / 10^6:
                            mem[64] = 480
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                            mem[484] = underlyingAddress
                            mem[516] = arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                            mem[548] = arg2 * 0 / ext_call.return_data[0] / 10^6
                            mem[580] = 0
                            mem[612] = 0
                        else:
                            if 275 * 3600 * arg2 * 0 / ext_call.return_data[0] / 10^6 / arg2 * 0 / ext_call.return_data[0] / 10^6 != 275 * 3600:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            mem[64] = 480
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                            mem[484] = underlyingAddress
                            mem[516] = arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                            mem[548] = arg2 * 0 / ext_call.return_data[0] / 10^6
                            mem[580] = 0
                            mem[612] = 275 * 3600 * arg2 * 0 / ext_call.return_data[0] / 10^6 / 10^6
                    else:
                        if 275 * 3600 * arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 / arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 != 275 * 3600:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        mem[352] = 26
                        mem[384] = 'SafeMath: division by zero'
                        if not arg2 * 0 / ext_call.return_data[0] / 10^6:
                            mem[64] = 480
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                            mem[484] = underlyingAddress
                            mem[516] = arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                            mem[548] = arg2 * 0 / ext_call.return_data[0] / 10^6
                            mem[580] = 275 * 3600 * arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 / 10^6
                            mem[612] = 0
                        else:
                            if 275 * 3600 * arg2 * 0 / ext_call.return_data[0] / 10^6 / arg2 * 0 / ext_call.return_data[0] / 10^6 != 275 * 3600:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            mem[64] = 480
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                            mem[484] = underlyingAddress
                            mem[516] = arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                            mem[548] = arg2 * 0 / ext_call.return_data[0] / 10^6
                            mem[580] = 275 * 3600 * arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 / 10^6
                            mem[612] = 275 * 3600 * arg2 * 0 / ext_call.return_data[0] / 10^6 / 10^6
        else:
            if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not arg1 * ext_call.return_data[0] / ext_call.return_data[0]:
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                if not arg1 * ext_call.return_data[0] / ext_call.return_data[0]:
                    mem[288] = 26
                    mem[320] = 'SafeMath: division by zero'
                    mem[352] = 26
                    mem[384] = 'SafeMath: division by zero'
                    mem[64] = 480
                    mem[416] = 26
                    mem[448] = 'SafeMath: division by zero'
                    mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                    mem[484] = underlyingAddress
                    mem[516] = 0
                    mem[548] = 0
                    mem[580] = 0
                    mem[612] = 0
                else:
                    if arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    mem[288] = 26
                    mem[320] = 'SafeMath: division by zero'
                    mem[352] = 26
                    mem[384] = 'SafeMath: division by zero'
                    if not arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6:
                        mem[64] = 480
                        mem[416] = 26
                        mem[448] = 'SafeMath: division by zero'
                        mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                        mem[484] = underlyingAddress
                        mem[516] = 0
                        mem[548] = arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                        mem[580] = 0
                        mem[612] = 0
                    else:
                        if 275 * 3600 * arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 / arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 != 275 * 3600:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        mem[64] = 480
                        mem[416] = 26
                        mem[448] = 'SafeMath: division by zero'
                        mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                        mem[484] = underlyingAddress
                        mem[516] = 0
                        mem[548] = arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                        mem[580] = 0
                        mem[612] = 275 * 3600 * arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 / 10^6
            else:
                if arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                if not arg1 * ext_call.return_data[0] / ext_call.return_data[0]:
                    mem[288] = 26
                    mem[320] = 'SafeMath: division by zero'
                    if not arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6:
                        mem[352] = 26
                        mem[384] = 'SafeMath: division by zero'
                        mem[64] = 480
                        mem[416] = 26
                        mem[448] = 'SafeMath: division by zero'
                        mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                        mem[484] = underlyingAddress
                        mem[516] = arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                        mem[548] = 0
                        mem[580] = 0
                    else:
                        if 275 * 3600 * arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 / arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 != 275 * 3600:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        mem[352] = 26
                        mem[384] = 'SafeMath: division by zero'
                        mem[64] = 480
                        mem[416] = 26
                        mem[448] = 'SafeMath: division by zero'
                        mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                        mem[484] = underlyingAddress
                        mem[516] = arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                        mem[548] = 0
                        mem[580] = 275 * 3600 * arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 / 10^6
                    mem[612] = 0
                else:
                    if arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    mem[288] = 26
                    mem[320] = 'SafeMath: division by zero'
                    if not arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6:
                        mem[352] = 26
                        mem[384] = 'SafeMath: division by zero'
                        if not arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6:
                            mem[64] = 480
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                            mem[484] = underlyingAddress
                            mem[516] = arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                            mem[548] = arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                            mem[580] = 0
                            mem[612] = 0
                        else:
                            if 275 * 3600 * arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 / arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 != 275 * 3600:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            mem[64] = 480
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                            mem[484] = underlyingAddress
                            mem[516] = arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                            mem[548] = arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                            mem[580] = 0
                            mem[612] = 275 * 3600 * arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 / 10^6
                    else:
                        if 275 * 3600 * arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 / arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 != 275 * 3600:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        mem[352] = 26
                        mem[384] = 'SafeMath: division by zero'
                        if not arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6:
                            mem[64] = 480
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                            mem[484] = underlyingAddress
                            mem[516] = arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                            mem[548] = arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                            mem[580] = 275 * 3600 * arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 / 10^6
                            mem[612] = 0
                        else:
                            if 275 * 3600 * arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 / arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 != 275 * 3600:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            mem[64] = 480
                            mem[416] = 26
                            mem[448] = 'SafeMath: division by zero'
                            mem[480] = 0x67bf252f00000000000000000000000000000000000000000000000000000000
                            mem[484] = underlyingAddress
                            mem[516] = arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                            mem[548] = arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                            mem[580] = 275 * 3600 * arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 / 10^6
                            mem[612] = 275 * 3600 * arg2 * arg1 * ext_call.return_data[0] / ext_call.return_data[0] / 10^6 / 10^6
    mem[644] = this.address
    mem[676] = block.timestamp + 120
    mem[708] = 288
    mem[772] = stor3.length
    mem[804] = uint256(stor3.field_0)
    idx = 804
    s = 0
    while stor3.length + 804 > idx + 32:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[740] = stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + 320
    mem[stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + 804] = stor3.length
    mem[stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + 836] = uint256(stor3.field_0)
    idx = stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + 836
    s = 0
    while Mask(255, 1, stor3.length and (256 * not bool(stor3.length)) - 1) + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + 836 > idx + 32:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(sub_6d5360c1Address)
    call sub_6d5360c1Address.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len Mask(255, 1, stor3.length and (256 * not bool(stor3.length)) - 1) + (floor32(stor3.length - 1) + -stor3.length + 32 % 32) + (-stor3.length + floor32(Mask(255, 1, stor3.length and (256 * not bool(stor3.length)) - 1) + -stor3.length - 1) + 32 % 32) + -mem[64] + 832]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
