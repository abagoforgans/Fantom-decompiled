contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint8 stor6;
address tokenAddress;
uint256 stor8;
uint16 stor10;
uint256 tokenId;
uint256 stor13;
address stor16;

function getTokenId() payable {
    return uint256(tokenId)
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function getTokenAddress() payable {
    return tokenAddress
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

function getReserves() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args this.address, uint256(tokenId)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_32816be1(?) payable {
    require calldata.size - 4 >= 192
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    stor8 = this.address or Mask(96, 160, stor8)
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg5.length) + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
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
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
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
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), 
           mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)]
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
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
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
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function unwrap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'ZERO_QUANTITY'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args this.address, uint256(tokenId)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'INSUFFICIENT_RESERVES'
    if not arg1:
        if balanceOf[address(msg.sender)] < 0:
            revert with 0, 'INSUFFICIENT_ERC20_BALANCE'
    else:
        if 10^decimals * stor13 * arg1 / arg1 != 10^decimals * stor13:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if balanceOf[address(msg.sender)] < 10^decimals * stor13 * arg1:
            revert with 0, 'INSUFFICIENT_ERC20_BALANCE'
    if not arg1:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[197 len 31]
        if 0 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        34,
                        0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                        uint16(stor10),
                        mem[164 len 28],
                        mem[222 len 2]
        if 0 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        emit Transfer(0, msg.sender, 0);
    else:
        if 10^decimals * stor13 * arg1 / arg1 != 10^decimals * stor13:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[197 len 31]
        if 10^decimals * stor13 * arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        34,
                        0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                        uint16(stor10),
                        mem[164 len 28],
                        mem[222 len 2]
        balanceOf[address(msg.sender)] += -1 * 10^decimals * stor13 * arg1
        if 10^decimals * stor13 * arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply += -1 * 10^decimals * stor13 * arg1
        emit Transfer((10^decimals * stor13 * arg1), msg.sender, 0);
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf242432a with:
         gas gas_remaining wei
        args 0, uint32(this.address), msg.sender, uint256(tokenId), arg1, 160, 0, mem[388]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function wrap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'ZERO_QUANTITY'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args msg.sender, uint256(tokenId)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'INSUFFICIENT_ERC1155_BALANCE'
    if not arg1:
        require ext_code.size(stor16)
        staticcall stor16.0xeee1ad80 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(tokenAddress)
            call tokenAddress.0xf242432a with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), this.address, uint256(tokenId), arg1, 160, 0, mem[292]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer(0, 0, msg.sender);
            if not stor16:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if balanceOf[stor16] < balanceOf[stor16]:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer(0, 0, stor16);
        else:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(tokenAddress)
            call tokenAddress.0xf242432a with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), this.address, uint256(tokenId), arg1, 160, 0, mem[292]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if -(0 / ext_call.return_data[0]) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply -= 0 / ext_call.return_data[0]
            if -(0 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] -= 0 / ext_call.return_data[0]
            emit Transfer(-(0 / ext_call.return_data[0]), 0, msg.sender);
            if not stor16:
                revert with 0, 'ERC20: mint to the zero address'
            if (0 / ext_call.return_data[0]) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += 0 / ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + balanceOf[stor16] < balanceOf[stor16]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor16] += 0 / ext_call.return_data[0]
            emit Transfer((0 / ext_call.return_data[0]), 0, stor16);
    else:
        if 10^decimals * stor13 * arg1 / arg1 != 10^decimals * stor13:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(stor16)
        staticcall stor16.0xeee1ad80 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 0 > 10^decimals * stor13 * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(tokenAddress)
            call tokenAddress.0xf242432a with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), this.address, uint256(tokenId), arg1, 160, 0, mem[292]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if (10^decimals * stor13 * arg1) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += 10^decimals * stor13 * arg1
            if (10^decimals * stor13 * arg1) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += 10^decimals * stor13 * arg1
            emit Transfer((10^decimals * stor13 * arg1), 0, msg.sender);
            if not stor16:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if balanceOf[stor16] < balanceOf[stor16]:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer(0, 0, stor16);
        else:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if 10^decimals * stor13 * arg1 / ext_call.return_data[0] > 10^decimals * stor13 * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(tokenAddress)
            call tokenAddress.0xf242432a with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), this.address, uint256(tokenId), arg1, 160, 0, mem[292]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if (10^decimals * stor13 * arg1) - (10^decimals * stor13 * arg1 / ext_call.return_data[0]) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply = (10^decimals * stor13 * arg1) - (10^decimals * stor13 * arg1 / ext_call.return_data[0]) + totalSupply
            if (10^decimals * stor13 * arg1) - (10^decimals * stor13 * arg1 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] = (10^decimals * stor13 * arg1) - (10^decimals * stor13 * arg1 / ext_call.return_data[0]) + balanceOf[address(msg.sender)]
            emit Transfer(((10^decimals * stor13 * arg1) - (10^decimals * stor13 * arg1 / ext_call.return_data[0])), 0, msg.sender);
            if not stor16:
                revert with 0, 'ERC20: mint to the zero address'
            if (10^decimals * stor13 * arg1 / ext_call.return_data[0]) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += 10^decimals * stor13 * arg1 / ext_call.return_data[0]
            if (10^decimals * stor13 * arg1 / ext_call.return_data[0]) + balanceOf[stor16] < balanceOf[stor16]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor16] += 10^decimals * stor13 * arg1 / ext_call.return_data[0]
            emit Transfer((10^decimals * stor13 * arg1 / ext_call.return_data[0]), 0, stor16);
}



}
