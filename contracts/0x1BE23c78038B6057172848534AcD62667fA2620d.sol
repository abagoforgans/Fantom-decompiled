contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address sub_866f6196Address; offset 8
address sub_81f4be5eAddress;
address daoAddress;
uint256 sub_63775287;
uint256 stor9;
mapping of uint8 stor10;
mapping of uint8 stor11;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function dao() payable {
    return daoAddress
}

function sub_63775287(?) payable {
    return sub_63775287
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_81f4be5e(?) payable {
    return sub_81f4be5eAddress
}

function sub_866f6196(?) payable {
    return sub_866f6196Address
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowed(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function exempt(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function _fallback() payable {
    revert
}

function sub_84796ed0(?) payable {
    require calldata.size - 4 >= 32
    if daoAddress != msg.sender:
        revert with 0, 'for D.A.O. use only'
    sub_81f4be5eAddress = arg1
}

function sub_04c37290(?) payable {
    require calldata.size - 4 >= 64
    if daoAddress != msg.sender:
        revert with 0, 'for D.A.O. use only'
    stor11[address(arg1)] = uint8(arg2)
}

function sub_a5b8f6a1(?) payable {
    require calldata.size - 4 >= 64
    if daoAddress != msg.sender:
        revert with 0, 'for D.A.O. use only'
    stor10[address(arg1)] = uint8(arg2)
}

function sub_a14a7890(?) payable {
    require calldata.size - 4 >= 32
    if daoAddress != msg.sender:
        revert with 0, 'for D.A.O. use only'
    if arg1 >= 133700:
        revert with 0, 'Be kinder, ser DAO sers'
    sub_63775287 = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2145524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
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
        revert with 0, 32, 36, 0x2145524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
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
                    0x2145524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function rescue(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if daoAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x734f6e6c7920452e4c2e492e542e452e20442e412e4f2e2054726561737572792063616e2072657363756520747265617375726573,
                    mem[217 len 11]
    if arg1 == sub_866f6196Address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x775374616b656420454c495445206d757374204e4f542062652072656d6f766564,
                    mem[197 len 31]
    if not arg1:
        call daoAddress with:
           value arg2 wei
             gas gas_remaining wei
        return bool(ext_call.success)
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args daoAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_59948892(?) payable {
    require calldata.size - 4 >= 32
    if not totalSupply:
        return 0
    require ext_code.size(sub_866f6196Address)
    staticcall sub_866f6196Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalSupply:
            return (0 / totalSupply)
    else:
        if arg1:
            if arg1 * ext_call.return_data[0] / arg1 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply:
                return (arg1 * ext_call.return_data[0] / totalSupply)
    revert
}

function sub_768f17de(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_866f6196Address)
    staticcall sub_866f6196Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not balanceOf[address(arg1)]:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalSupply:
            return (0 / totalSupply)
    else:
        if balanceOf[address(arg1)]:
            if balanceOf[address(arg1)] * ext_call.return_data[0] / balanceOf[address(arg1)] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply:
                return (balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply)
    revert
}

function sub_ff22db2e(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_866f6196Address)
    staticcall sub_866f6196Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not totalSupply:
        if 133700000 * arg1 / 133700000 != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (133700000 * arg1)
    if not ext_call.return_data[0]:
        if 133700000 * arg1 / 133700000 != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (133700000 * arg1)
    if not arg1:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if arg1:
            if arg1 * totalSupply / arg1 != totalSupply:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                return (arg1 * totalSupply / ext_call.return_data[0])
    revert
}

function enter(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor9 != 1:
        revert with 0, 'Reeee-Guard said NO!'
    stor9 = 2
    require ext_code.size(sub_866f6196Address)
    staticcall sub_866f6196Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_866f6196Address)
    call sub_866f6196Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_866f6196Address)
    staticcall sub_866f6196Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not totalSupply:
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        emit Transfer(0, 0, msg.sender);
    else:
        if not ext_call.return_data[0]:
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
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
    stor9 = 1
}

function leave(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor9 != 1:
        revert with 0, 'Reeee-Guard said NO!'
    stor9 = 2
    require ext_code.size(sub_866f6196Address)
    staticcall sub_866f6196Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if not msg.sender:
            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
        balanceOf[address(msg.sender)] -= arg1
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        require ext_code.size(sub_866f6196Address)
        call sub_866f6196Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0 / totalSupply
    else:
        require arg1
        if arg1 * ext_call.return_data[0] / arg1 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if not msg.sender:
            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
        balanceOf[address(msg.sender)] -= arg1
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        require ext_code.size(sub_866f6196Address)
        call sub_866f6196Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1 * ext_call.return_data[0] / totalSupply
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor9 = 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor11[address(msg.sender)]:
        if arg2:
            require arg2
            if 0 / arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
        if 0 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if not msg.sender:
            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
        if not arg1:
            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[294 len 26],
                        mem[346 len 6]
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if stor10[address(arg1)]:
            if arg2:
                require arg2
                if 0 / arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
            if 0 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if not msg.sender:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
            if not arg1:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[294 len 26],
                            mem[346 len 6]
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if stor10[address(msg.sender)]:
                if arg2:
                    require arg2
                    if 0 / arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                if 0 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not msg.sender:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                if not arg1:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[294 len 26],
                                mem[346 len 6]
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if not arg2:
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not msg.sender:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[294 len 26],
                                    mem[346 len 6]
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    require arg2
                    if arg2 * sub_63775287 / arg2 != sub_63775287:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if arg2 * sub_63775287 / 10^6 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not msg.sender:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                    if arg2 * sub_63775287 / 10^6 <= 0:
                        if not arg1:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                        if arg2 - (arg2 * sub_63775287 / 10^6) > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[294 len 26],
                                        mem[346 len 6]
                    else:
                        if not sub_81f4be5eAddress:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                        if arg2 * sub_63775287 / 10^6 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[294 len 26],
                                        mem[346 len 6]
                        balanceOf[address(msg.sender)] -= arg2 * sub_63775287 / 10^6
                        if balanceOf[stor6] + (arg2 * sub_63775287 / 10^6) < balanceOf[stor6]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor6] += arg2 * sub_63775287 / 10^6
                        emit Transfer((arg2 * sub_63775287 / 10^6), msg.sender, sub_81f4be5eAddress);
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                        if not arg1:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                        if arg2 - (arg2 * sub_63775287 / 10^6) > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[390 len 26],
                                        mem[442 len 6]
                    ('le', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mul', ('param', 'arg2'), ('stor', ('name', 'sub_63775287', 8))), 1000000))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_63775287 / 10^6)
                    if balanceOf[address(arg1)] + arg2 - (arg2 * sub_63775287 / 10^6) < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_63775287 / 10^6)
                    emit Transfer((arg2 - (arg2 * sub_63775287 / 10^6)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor11[address(arg1)]:
        if arg3:
            require arg3
            if 0 / arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
        if 0 > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg1:
            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
        if not arg2:
            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[294 len 26],
                        mem[346 len 6]
        balanceOf[address(arg1)] -= arg3
        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        40,
                        0x2145524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[392 len 24],
                        mem[440 len 8]
        if not arg1:
            revert with 0, 32, 36, 0x2145524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    else:
        if stor10[address(arg2)]:
            if arg3:
                require arg3
                if 0 / arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
            if 0 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg1:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
            if not arg2:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[294 len 26],
                            mem[346 len 6]
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x2145524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[392 len 24],
                            mem[440 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x2145524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        else:
            if stor10[address(arg1)]:
                if arg3:
                    require arg3
                    if 0 / arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                if 0 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg1:
                    revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                if not arg2:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[294 len 26],
                                mem[346 len 6]
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                40,
                                0x2145524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                mem[392 len 24],
                                mem[440 len 8]
                if not arg1:
                    revert with 0, 32, 36, 0x2145524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
            else:
                if not arg3:
                    if 0 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[294 len 26],
                                    mem[346 len 6]
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x2145524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[392 len 24],
                                    mem[440 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x2145524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                else:
                    require arg3
                    if arg3 * sub_63775287 / arg3 != sub_63775287:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if arg3 * sub_63775287 / 10^6 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                    if arg3 * sub_63775287 / 10^6 <= 0:
                        if not arg2:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                        if arg3 - (arg3 * sub_63775287 / 10^6) > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[294 len 26],
                                        mem[346 len 6]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_63775287 / 10^6)
                        if balanceOf[address(arg2)] + arg3 - (arg3 * sub_63775287 / 10^6) < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_63775287 / 10^6)
                        emit Transfer((arg3 - (arg3 * sub_63775287 / 10^6)), arg1, arg2);
                        if arg3 - (arg3 * sub_63775287 / 10^6) > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x2145524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[392 len 24],
                                        mem[440 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x2145524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
                    else:
                        if not sub_81f4be5eAddress:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                        if arg3 * sub_63775287 / 10^6 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[294 len 26],
                                        mem[346 len 6]
                        balanceOf[address(arg1)] -= arg3 * sub_63775287 / 10^6
                        if balanceOf[stor6] + (arg3 * sub_63775287 / 10^6) < balanceOf[stor6]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor6] += arg3 * sub_63775287 / 10^6
                        emit Transfer((arg3 * sub_63775287 / 10^6), arg1, sub_81f4be5eAddress);
                        if arg3 * sub_63775287 / 10^6 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x2145524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[392 len 24],
                                        mem[440 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x2145524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
                        allowance[address(arg1)][address(msg.sender)] -= arg3 * sub_63775287 / 10^6
                        emit Approval((allowance[address(arg1)][address(msg.sender)] - (arg3 * sub_63775287 / 10^6)), arg1, msg.sender);
                        if not arg1:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[521 len 27]
                        if not arg2:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[519 len 29]
                        if arg3 - (arg3 * sub_63775287 / 10^6) > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[486 len 26],
                                        mem[538 len 6]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_63775287 / 10^6)
                        if balanceOf[address(arg2)] + arg3 - (arg3 * sub_63775287 / 10^6) < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_63775287 / 10^6)
                        emit Transfer((arg3 - (arg3 * sub_63775287 / 10^6)), arg1, arg2);
                        if arg3 - (arg3 * sub_63775287 / 10^6) > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x2145524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                        mem[584 len 24],
                                        mem[632 len 8]
                        if not arg1:
                            revert with 0, 32, 36, 0x2145524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                    ('bool', 'msg.sender')
                    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - arg3 + (arg3 * sub_63775287 / 10^6)
                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3 + (arg3 * sub_63775287 / 10^6)), arg1, msg.sender);
    return 1
}



}
