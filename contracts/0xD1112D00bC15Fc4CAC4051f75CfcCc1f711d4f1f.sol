contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint8 sub_496a1140; offset 160
uint128 stor51; offset 160
address addressProvider;
mapping of uint256 balance;
mapping of uint256 totalBalance;
array of address tokens;
array of address stor33502907836418749244169045844382937189522934634747984393157770024170991419832;

function addressProvider() payable {
    return addressProvider
}

function sub_496a1140(?) payable {
    return bool(sub_496a1140)
}

function tokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tokens.length
    return tokens[arg1]
}

function totalBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    return totalBalance[arg1]
}

function tokensCount() payable {
    return tokens.length
}

function balance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return balance[arg1][arg2]
}

function balanceOf(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return balance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_55ceeb31(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x44969711 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'token storage access restricted'
    if arg3 > balance[address(arg1)][address(arg2)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balance[address(arg1)][address(arg2)] -= arg3
    if arg3 > totalBalance[address(arg2)]:
        revert with 0, 'SafeMath: subtraction overflow'
    totalBalance[address(arg2)] -= arg3
}

function initialize(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor0.field_8):
        addressProvider = arg1
        stor51 = Mask(96, 0, arg2)
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            addressProvider = arg1
            stor51 = Mask(96, 0, arg2)
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            addressProvider = arg1
            stor51 = Mask(96, 0, arg2)
            uint8(stor0.field_8) = 0
}

function add(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x44969711 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'token storage access restricted'
    if arg3 + balance[address(arg1)][address(arg2)] < balance[address(arg1)][address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balance[address(arg1)][address(arg2)] += arg3
    if arg3 + totalBalance[address(arg2)] < totalBalance[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    totalBalance[address(arg2)] += arg3
    idx = 0
    while idx < tokens.length:
        mem[0] = 54
        if tokens[idx] != arg2:
            idx = idx + 1
            continue 
    tokens.length++
    stor4A11[stor54.length] = arg2
}

function tokenValue(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg2:
        return 0
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x45bb7f8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x41976e09 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x57838bd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xcefe0f21 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not sub_496a1140:
            return (0 / 10^uint8(ext_call.return_data[0]))
        if (0 / 10^uint8(ext_call.return_data[0])) + 1 < 0 / 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / 10^uint8(ext_call.return_data[0])) + 1)
    if ext_call.return_data[0] * arg2 / arg2 != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    if not sub_496a1140:
        return (ext_call.return_data[0] * arg2 / 10^uint8(ext_call.return_data[0]))
    if (ext_call.return_data[0] * arg2 / 10^uint8(ext_call.return_data[0])) + 1 < ext_call.return_data[0] * arg2 / 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: addition overflow'
    return ((ext_call.return_data[0] * arg2 / 10^uint8(ext_call.return_data[0])) + 1)
}

function total() payable {
    mem[64] = 96
    idx = 0
    while idx < tokens.length:
        mem[0] = tokens[idx]
        mem[32] = 53
        if not totalBalance[stor54[idx]]:
            idx = idx + 1
            continue 
        require ext_code.size(addressProvider)
        staticcall addressProvider.0x45bb7f8 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x41976e09 with:
                gas gas_remaining wei
               args tokens[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(addressProvider)
        staticcall addressProvider.0x57838bd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64] + 4] = tokens[idx]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xcefe0f21 with:
                gas gas_remaining wei
               args tokens[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not totalBalance[stor54[idx]]:
            _83 = mem[64]
            mem[64] = mem[64] + 64
            mem[_83] = 26
            mem[_83 + 32] = 'SafeMath: division by zero'
            if 10^uint8(ext_call.return_data[0]):
                if not sub_496a1140:
                    if 0 / 10^uint8(ext_call.return_data[0]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (0 / 10^uint8(ext_call.return_data[0])) + 1 < 0 / 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / 10^uint8(ext_call.return_data[0])) + 1 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            mem[mem[64] + 68] = 'SafeMath: division by zero'
            idx = 32
            while idx < 26:
                mem[idx + mem[64] + 68] = mem[idx + _83 + 32]
                idx = idx + 32
                continue 
        else:
            if ext_call.return_data[0] * totalBalance[stor54[idx]] / totalBalance[stor54[idx]] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _84 = mem[64]
            mem[64] = mem[64] + 64
            mem[_84] = 26
            mem[_84 + 32] = 'SafeMath: division by zero'
            if 10^uint8(ext_call.return_data[0]):
                if not sub_496a1140:
                    if ext_call.return_data[0] * totalBalance[stor54[idx]] / 10^uint8(ext_call.return_data[0]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (ext_call.return_data[0] * totalBalance[stor54[idx]] / 10^uint8(ext_call.return_data[0])) + 1 < ext_call.return_data[0] * totalBalance[stor54[idx]] / 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    if (ext_call.return_data[0] * totalBalance[stor54[idx]] / 10^uint8(ext_call.return_data[0])) + 1 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            mem[mem[64] + 68] = 'SafeMath: division by zero'
            idx = 32
            while idx < 26:
                mem[idx + mem[64] + 68] = mem[idx + _84 + 32]
                idx = idx + 32
                continue 
        revert with 0, 'SafeMath: division by zero'
    return 0
}

function totalOf(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    idx = 0
    while idx < tokens.length:
        require idx < tokens.length
        if tokens[idx]:
            mem[0] = tokens[idx]
            mem[32] = sha3(address(arg1), 52)
            if not balance[address(arg1)][stor54[idx]]:
                idx = idx + 1
                continue 
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x45bb7f8 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x41976e09 with:
                    gas gas_remaining wei
                   args tokens[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x57838bd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = tokens[idx]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xcefe0f21 with:
                    gas gas_remaining wei
                   args tokens[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not balance[address(arg1)][stor54[idx]]:
                _183 = mem[64]
                mem[64] = mem[64] + 64
                mem[_183] = 26
                mem[_183 + 32] = 'SafeMath: division by zero'
                if 10^uint8(ext_call.return_data[0]):
                    if not sub_496a1140:
                        if 0 / 10^uint8(ext_call.return_data[0]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (0 / 10^uint8(ext_call.return_data[0])) + 1 < 0 / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / 10^uint8(ext_call.return_data[0])) + 1 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _183 + 32]
                    idx = idx + 32
                    continue 
            else:
                if ext_call.return_data[0] * balance[address(arg1)][stor54[idx]] / balance[address(arg1)][stor54[idx]] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _185 = mem[64]
                mem[64] = mem[64] + 64
                mem[_185] = 26
                mem[_185 + 32] = 'SafeMath: division by zero'
                if 10^uint8(ext_call.return_data[0]):
                    if not sub_496a1140:
                        if ext_call.return_data[0] * balance[address(arg1)][stor54[idx]] / 10^uint8(ext_call.return_data[0]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (ext_call.return_data[0] * balance[address(arg1)][stor54[idx]] / 10^uint8(ext_call.return_data[0])) + 1 < ext_call.return_data[0] * balance[address(arg1)][stor54[idx]] / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if (ext_call.return_data[0] * balance[address(arg1)][stor54[idx]] / 10^uint8(ext_call.return_data[0])) + 1 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _185 + 32]
                    idx = idx + 32
                    continue 
        else:
            mem[0] = 54
            _134 = mem[64]
            mem[64] = mem[64] + 64
            mem[_134] = 25
            mem[_134 + 32] = 'token sub exceeds balance'
            mem[0] = tokens[idx]
            mem[32] = sha3(address(arg1), 52)
            if balance[address(arg1)][stor54[idx]] < balance[address(arg1)][stor54[idx]]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > balance[address(arg1)][stor54[idx]]:
                _150 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 25
                idx = 0
                while idx < 25:
                    mem[idx + _150 + 68] = mem[idx + _134 + 32]
                    idx = idx + 32
                    continue 
                mem[_150 + 68] = mem[_150 + 75 len 25]
                revert with memory
                  from mem[64]
                   len _150 + -mem[64] + 100
            if not balance[address(arg1)][stor54[idx]]:
                idx = idx + 1
                continue 
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x45bb7f8 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x41976e09 with:
                    gas gas_remaining wei
                   args tokens[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x57838bd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = tokens[idx]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xcefe0f21 with:
                    gas gas_remaining wei
                   args tokens[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not balance[address(arg1)][stor54[idx]]:
                _207 = mem[64]
                mem[64] = mem[64] + 64
                mem[_207] = 26
                mem[_207 + 32] = 'SafeMath: division by zero'
                if 10^uint8(ext_call.return_data[0]):
                    if not sub_496a1140:
                        if 0 / 10^uint8(ext_call.return_data[0]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (0 / 10^uint8(ext_call.return_data[0])) + 1 < 0 / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / 10^uint8(ext_call.return_data[0])) + 1 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _207 + 32]
                    idx = idx + 32
                    continue 
            else:
                if ext_call.return_data[0] * balance[address(arg1)][stor54[idx]] / balance[address(arg1)][stor54[idx]] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _211 = mem[64]
                mem[64] = mem[64] + 64
                mem[_211] = 26
                mem[_211 + 32] = 'SafeMath: division by zero'
                if 10^uint8(ext_call.return_data[0]):
                    if not sub_496a1140:
                        if ext_call.return_data[0] * balance[address(arg1)][stor54[idx]] / 10^uint8(ext_call.return_data[0]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (ext_call.return_data[0] * balance[address(arg1)][stor54[idx]] / 10^uint8(ext_call.return_data[0])) + 1 < ext_call.return_data[0] * balance[address(arg1)][stor54[idx]] / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if (ext_call.return_data[0] * balance[address(arg1)][stor54[idx]] / 10^uint8(ext_call.return_data[0])) + 1 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _211 + 32]
                    idx = idx + 32
                    continue 
        revert with 0, 'SafeMath: division by zero'
    return 0
}

function sub_660eab83(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    idx = 0
    s = arg3
    while idx < tokens.length:
        require idx < tokens.length
        if tokens[idx] != arg2:
            mem[0] = tokens[idx]
            mem[32] = sha3(address(arg1), 52)
            if not balance[address(arg1)][stor54[idx]]:
                idx = idx + 1
                s = s
                continue 
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x45bb7f8 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x41976e09 with:
                    gas gas_remaining wei
                   args tokens[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x57838bd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = tokens[idx]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xcefe0f21 with:
                    gas gas_remaining wei
                   args tokens[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not balance[address(arg1)][stor54[idx]]:
                _276 = mem[64]
                mem[64] = mem[64] + 64
                mem[_276] = 26
                mem[_276 + 32] = 'SafeMath: division by zero'
                if 10^uint8(ext_call.return_data[0]):
                    if not sub_496a1140:
                        if 0 / 10^uint8(ext_call.return_data[0]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (0 / 10^uint8(ext_call.return_data[0])) + 1 < 0 / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / 10^uint8(ext_call.return_data[0])) + 1 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = s
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _276 + 32]
                    idx = idx + 32
                    continue 
            else:
                if ext_call.return_data[0] * balance[address(arg1)][stor54[idx]] / balance[address(arg1)][stor54[idx]] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _281 = mem[64]
                mem[64] = mem[64] + 64
                mem[_281] = 26
                mem[_281 + 32] = 'SafeMath: division by zero'
                if 10^uint8(ext_call.return_data[0]):
                    if not sub_496a1140:
                        if ext_call.return_data[0] * balance[address(arg1)][stor54[idx]] / 10^uint8(ext_call.return_data[0]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (ext_call.return_data[0] * balance[address(arg1)][stor54[idx]] / 10^uint8(ext_call.return_data[0])) + 1 < ext_call.return_data[0] * balance[address(arg1)][stor54[idx]] / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if (ext_call.return_data[0] * balance[address(arg1)][stor54[idx]] / 10^uint8(ext_call.return_data[0])) + 1 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = s
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _281 + 32]
                    idx = idx + 32
                    continue 
        else:
            mem[0] = 54
            _200 = mem[64]
            mem[64] = mem[64] + 64
            mem[_200] = 25
            mem[_200 + 32] = 'token sub exceeds balance'
            mem[0] = tokens[idx]
            mem[32] = sha3(address(arg1), 52)
            if s + balance[address(arg1)][stor54[idx]] < balance[address(arg1)][stor54[idx]]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > s + balance[address(arg1)][stor54[idx]]:
                _224 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 25
                idx = 0
                while idx < 25:
                    mem[idx + _224 + 68] = mem[idx + _200 + 32]
                    idx = idx + 32
                    continue 
                mem[_224 + 68] = mem[_224 + 75 len 25]
                revert with memory
                  from mem[64]
                   len _224 + -mem[64] + 100
            if not s + balance[address(arg1)][stor54[idx]]:
                idx = idx + 1
                s = 0
                continue 
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x45bb7f8 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x41976e09 with:
                    gas gas_remaining wei
                   args tokens[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x57838bd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = tokens[idx]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xcefe0f21 with:
                    gas gas_remaining wei
                   args tokens[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not s + balance[address(arg1)][stor54[idx]]:
                _321 = mem[64]
                mem[64] = mem[64] + 64
                mem[_321] = 26
                mem[_321 + 32] = 'SafeMath: division by zero'
                if 10^uint8(ext_call.return_data[0]):
                    if not sub_496a1140:
                        if 0 / 10^uint8(ext_call.return_data[0]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (0 / 10^uint8(ext_call.return_data[0])) + 1 < 0 / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / 10^uint8(ext_call.return_data[0])) + 1 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = 0
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _321 + 32]
                    idx = idx + 32
                    continue 
            else:
                if (s * ext_call.return_data[0]) + (balance[address(arg1)][stor54[idx]] * ext_call.return_data[0]) / s + balance[address(arg1)][stor54[idx]] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _327 = mem[64]
                mem[64] = mem[64] + 64
                mem[_327] = 26
                mem[_327 + 32] = 'SafeMath: division by zero'
                if 10^uint8(ext_call.return_data[0]):
                    if not sub_496a1140:
                        if (s * ext_call.return_data[0]) + (balance[address(arg1)][stor54[idx]] * ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if ((s * ext_call.return_data[0]) + (balance[address(arg1)][stor54[idx]] * ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])) + 1 < (s * ext_call.return_data[0]) + (balance[address(arg1)][stor54[idx]] * ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if ((s * ext_call.return_data[0]) + (balance[address(arg1)][stor54[idx]] * ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])) + 1 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = 0
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _327 + 32]
                    idx = idx + 32
                    continue 
        revert with 0, 'SafeMath: division by zero'
    if not s:
        return 0
    if not s:
        return 0
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x45bb7f8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x41976e09 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x57838bd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xcefe0f21 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not s:
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not sub_496a1140:
            if 0 / 10^uint8(ext_call.return_data[0]) < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (0 / 10^uint8(ext_call.return_data[0]))
        if (0 / 10^uint8(ext_call.return_data[0])) + 1 < 0 / 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: addition overflow'
        if (0 / 10^uint8(ext_call.return_data[0])) + 1 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / 10^uint8(ext_call.return_data[0])) + 1)
    if ext_call.return_data[0] * s / s != ext_call.return_data[0]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    if not 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    if not sub_496a1140:
        if ext_call.return_data[0] * s / 10^uint8(ext_call.return_data[0]) < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (ext_call.return_data[0] * s / 10^uint8(ext_call.return_data[0]))
    if (ext_call.return_data[0] * s / 10^uint8(ext_call.return_data[0])) + 1 < ext_call.return_data[0] * s / 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: addition overflow'
    if (ext_call.return_data[0] * s / 10^uint8(ext_call.return_data[0])) + 1 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return ((ext_call.return_data[0] * s / 10^uint8(ext_call.return_data[0])) + 1)
}

function sub_65be454d(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    idx = 0
    s = arg3
    while idx < tokens.length:
        require idx < tokens.length
        if tokens[idx] != arg2:
            mem[0] = tokens[idx]
            mem[32] = sha3(address(arg1), 52)
            if not balance[address(arg1)][stor54[idx]]:
                idx = idx + 1
                s = s
                continue 
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x45bb7f8 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x41976e09 with:
                    gas gas_remaining wei
                   args tokens[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x57838bd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = tokens[idx]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xcefe0f21 with:
                    gas gas_remaining wei
                   args tokens[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not balance[address(arg1)][stor54[idx]]:
                _298 = mem[64]
                mem[64] = mem[64] + 64
                mem[_298] = 26
                mem[_298 + 32] = 'SafeMath: division by zero'
                if 10^uint8(ext_call.return_data[0]):
                    if not sub_496a1140:
                        if 0 / 10^uint8(ext_call.return_data[0]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (0 / 10^uint8(ext_call.return_data[0])) + 1 < 0 / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / 10^uint8(ext_call.return_data[0])) + 1 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = s
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _298 + 32]
                    idx = idx + 32
                    continue 
            else:
                if ext_call.return_data[0] * balance[address(arg1)][stor54[idx]] / balance[address(arg1)][stor54[idx]] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _304 = mem[64]
                mem[64] = mem[64] + 64
                mem[_304] = 26
                mem[_304 + 32] = 'SafeMath: division by zero'
                if 10^uint8(ext_call.return_data[0]):
                    if not sub_496a1140:
                        if ext_call.return_data[0] * balance[address(arg1)][stor54[idx]] / 10^uint8(ext_call.return_data[0]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (ext_call.return_data[0] * balance[address(arg1)][stor54[idx]] / 10^uint8(ext_call.return_data[0])) + 1 < ext_call.return_data[0] * balance[address(arg1)][stor54[idx]] / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if (ext_call.return_data[0] * balance[address(arg1)][stor54[idx]] / 10^uint8(ext_call.return_data[0])) + 1 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = s
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _304 + 32]
                    idx = idx + 32
                    continue 
        else:
            mem[0] = 54
            _223 = mem[64]
            mem[64] = mem[64] + 64
            mem[_223] = 25
            mem[_223 + 32] = 'token sub exceeds balance'
            mem[0] = tokens[idx]
            mem[32] = sha3(address(arg1), 52)
            if balance[address(arg1)][stor54[idx]] < balance[address(arg1)][stor54[idx]]:
                revert with 0, 'SafeMath: addition overflow'
            if s > balance[address(arg1)][stor54[idx]]:
                _247 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 25
                idx = 0
                while idx < 25:
                    mem[idx + _247 + 68] = mem[idx + _223 + 32]
                    idx = idx + 32
                    continue 
                mem[_247 + 68] = mem[_247 + 75 len 25]
                revert with memory
                  from mem[64]
                   len _247 + -mem[64] + 100
            if not balance[address(arg1)][stor54[idx]] - s:
                idx = idx + 1
                s = 0
                continue 
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x45bb7f8 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x41976e09 with:
                    gas gas_remaining wei
                   args tokens[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x57838bd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = tokens[idx]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xcefe0f21 with:
                    gas gas_remaining wei
                   args tokens[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not balance[address(arg1)][stor54[idx]] - s:
                _344 = mem[64]
                mem[64] = mem[64] + 64
                mem[_344] = 26
                mem[_344 + 32] = 'SafeMath: division by zero'
                if 10^uint8(ext_call.return_data[0]):
                    if not sub_496a1140:
                        if 0 / 10^uint8(ext_call.return_data[0]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (0 / 10^uint8(ext_call.return_data[0])) + 1 < 0 / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / 10^uint8(ext_call.return_data[0])) + 1 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = 0
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _344 + 32]
                    idx = idx + 32
                    continue 
            else:
                if (balance[address(arg1)][stor54[idx]] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) / balance[address(arg1)][stor54[idx]] - s != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _351 = mem[64]
                mem[64] = mem[64] + 64
                mem[_351] = 26
                mem[_351 + 32] = 'SafeMath: division by zero'
                if 10^uint8(ext_call.return_data[0]):
                    if not sub_496a1140:
                        if (balance[address(arg1)][stor54[idx]] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if ((balance[address(arg1)][stor54[idx]] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])) + 1 < (balance[address(arg1)][stor54[idx]] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if ((balance[address(arg1)][stor54[idx]] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])) + 1 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = 0
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _351 + 32]
                    idx = idx + 32
                    continue 
        revert with 0, 'SafeMath: division by zero'
    if not s:
        return 0
    if not s:
        return 0
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x45bb7f8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x41976e09 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x57838bd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xcefe0f21 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not s:
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not sub_496a1140:
            if 0 / 10^uint8(ext_call.return_data[0]) > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -(0 / 10^uint8(ext_call.return_data[0]))
        if (0 / 10^uint8(ext_call.return_data[0])) + 1 < 0 / 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: addition overflow'
        if (0 / 10^uint8(ext_call.return_data[0])) + 1 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return (-(0 / 10^uint8(ext_call.return_data[0])) - 1)
    if ext_call.return_data[0] * s / s != ext_call.return_data[0]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    if not 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    if not sub_496a1140:
        if ext_call.return_data[0] * s / 10^uint8(ext_call.return_data[0]) > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -(ext_call.return_data[0] * s / 10^uint8(ext_call.return_data[0]))
    if (ext_call.return_data[0] * s / 10^uint8(ext_call.return_data[0])) + 1 < ext_call.return_data[0] * s / 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: addition overflow'
    if (ext_call.return_data[0] * s / 10^uint8(ext_call.return_data[0])) + 1 > 0:
        revert with 0, 'SafeMath: subtraction overflow'
    return (-(ext_call.return_data[0] * s / 10^uint8(ext_call.return_data[0])) - 1)
}



}
