contract main {




// =====================  Runtime code  =====================


uint256 percent;
uint256 total;
address owner;
array of address sub_021249ee;
uint8 stor4;
mapping of uint8 stor5;
mapping of uint256 balances;
mapping of address userList;
address tokenAddress;

function sub_021249ee(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_021249ee.length
    return sub_021249ee[arg1]
}

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function total() payable {
    return total
}

function lockStatus() payable {
    return bool(stor4)
}

function percent() payable {
    return percent
}

function owner() payable {
    return owner
}

function userList(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return userList[arg1]
}

function sub_ad596bb4(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isContract(address arg1) payable {
    require calldata.size - 4 >= 32
    if not uint32(ext_code.size(arg1)):
        return 0
    return 1
}

function sub_7444144b(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ewaso: Only Owner'
    stor5[address(arg1)] = uint8(arg2)
}

function contractLock(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ewaso: Only Owner'
    stor4 = uint8(arg1)
    return 1
}

function checkBalance(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(userList[arg1])
    staticcall userList[arg1].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_7a1dd894(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ewaso: Only Owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        sub_021249ee.length++
        sub_021249ee[sub_021249ee.length] = mem[(32 * idx) + 140 len 20]
        require idx < arg1.length
        mem[0] = sub_021249ee.length - 1
        mem[32] = 7
        userList[stor3.length - 1] = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
}

function sub_fd3d9a52(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ewaso: Only Owner'
    require ext_code.size(userList[arg2])
    staticcall userList[arg2].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'insufficient'
    if not arg1:
        revert with 0, 'invalid address'
    require ext_code.size(userList[arg2])
    call userList[arg2].0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit FailSafe(address(arg1), arg3, block.timestamp);
}

function claimRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor4:
        revert with 0, 'Ewaso: Contract Locked'
    if stor5[msg.sender]:
        revert with 0, 'Reward claimed'
    if arg1 >= sub_021249ee.length:
        revert with 0, 'Invalid lp'
    require ext_code.size(userList[arg1])
    staticcall userList[arg1].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No balance in lp'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, ' User has no reward in staking'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    total = ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            percent = 0
            require ext_code.size(userList[arg1])
            staticcall userList[arg1].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if 0 / ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            require ext_code.size(userList[arg1])
            call userList[arg1].0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if balances[msg.sender] < balances[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            stor5[msg.sender] = 1
            emit Claim(msg.sender, arg1, 0, block.timestamp);
        else:
            if 10^18 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            percent = 10^18 * 0 / ext_call.return_data[0]
            require ext_code.size(userList[arg1])
            staticcall userList[arg1].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(userList[arg1])
                call userList[arg1].0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if balances[msg.sender] < balances[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                stor5[msg.sender] = 1
                emit Claim(msg.sender, arg1, 0, block.timestamp);
            else:
                if 10^18 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * 0 / ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                require ext_code.size(userList[arg1])
                call userList[arg1].0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 10^18 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (10^18 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^18) + balances[msg.sender] < balances[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balances[msg.sender] += 10^18 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^18
                stor5[msg.sender] = 1
                emit Claim(msg.sender, arg1, 10^18 * 0 / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^18, block.timestamp);
    else:
        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 100 * ext_call.return_data[0] / ext_call.return_data[0]:
            percent = 0
            require ext_code.size(userList[arg1])
            staticcall userList[arg1].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if 0 / ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            require ext_code.size(userList[arg1])
            call userList[arg1].0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if balances[msg.sender] < balances[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            stor5[msg.sender] = 1
            emit Claim(msg.sender, arg1, 0, block.timestamp);
        else:
            if 10^18 * 100 * ext_call.return_data[0] / ext_call.return_data[0] / 100 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            percent = 10^18 * 100 * ext_call.return_data[0] / ext_call.return_data[0]
            require ext_code.size(userList[arg1])
            staticcall userList[arg1].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(userList[arg1])
                call userList[arg1].0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if balances[msg.sender] < balances[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                stor5[msg.sender] = 1
                emit Claim(msg.sender, arg1, 0, block.timestamp);
            else:
                if 10^18 * 100 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * 100 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                require ext_code.size(userList[arg1])
                call userList[arg1].0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 10^18 * 100 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (10^18 * 100 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^18) + balances[msg.sender] < balances[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balances[msg.sender] += 10^18 * 100 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^18
                stor5[msg.sender] = 1
                emit Claim(msg.sender, arg1, 10^18 * 100 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^18, block.timestamp);
}



}
