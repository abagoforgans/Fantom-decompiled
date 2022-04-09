contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address bscsTokenAddress;
address bscStarterInfoAddress;
mapping of uint8 stor3;
mapping of struct accountInfos;
uint256 sub_8f7545f2;
uint256 sub_a871c02e;
address sub_3af4a3b1Address;
uint256 sub_1359fac1;

function sub_1359fac1(?) payable {
    return sub_1359fac1
}

function bscsToken() payable {
    return bscsTokenAddress
}

function sub_3af4a3b1(?) payable {
    return sub_3af4a3b1Address
}

function sub_797b419b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function accountInfos(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return accountInfos[arg1].field_0, accountInfos[arg1].field_256, accountInfos[arg1].field_512
}

function sub_8f7545f2(?) payable {
    return sub_8f7545f2
}

function sub_a871c02e(?) payable {
    return sub_a871c02e
}

function bscStarterInfo() payable {
    return bscStarterInfoAddress
}

function destroyContract() payable {
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function sub_3593c6a5(?) payable {
    require calldata.size - 4 >= 96
    require arg3 == address(arg3)
    require ext_code.size(bscStarterInfoAddress)
    staticcall bscStarterInfoAddress.0x775aca52 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(bscStarterInfoAddress)
        staticcall bscStarterInfoAddress.0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            if bool(stor3[msg.sender]) != 1:
                revert with 0, 'Only BSCS factory or Presales!'
    if sub_3af4a3b1Address == address(arg3):
        sub_8f7545f2 = arg1
        sub_a871c02e = arg2
        if not stor3[address(arg3)]:
            stor3[address(arg3)] = 1
    else:
        if sub_8f7545f2 >= arg1:
            sub_8f7545f2 = arg1
        if arg2 >= sub_a871c02e:
            sub_a871c02e = arg2
        sub_3af4a3b1Address = address(arg3)
        if not stor3[address(arg3)]:
            stor3[address(arg3)] = 1
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_8f7545f2 > 0:
        if sub_a871c02e > 0:
            if block.timestamp >= sub_8f7545f2:
                if block.timestamp < sub_a871c02e:
                    revert with 0, 'Staking Paused'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not arg1:
        revert with 0, 'Invalid amount'
    require ext_code.size(bscsTokenAddress)
    staticcall bscsTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Invalid balance'
    require ext_code.size(bscsTokenAddress)
    call bscsTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 + accountInfos[msg.sender].field_0 < accountInfos[msg.sender].field_0:
        revert with 0, 'SafeMath: addition overflow'
    accountInfos[msg.sender].field_0 += arg1
    accountInfos[msg.sender].field_256 = block.timestamp
    if not accountInfos[msg.sender].field_512:
        accountInfos[msg.sender].field_512 = block.timestamp
    emit Staked(arg1, msg.sender);
    stor0 = 1
}

function unstake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_8f7545f2 > 0:
        if sub_a871c02e > 0:
            if block.timestamp >= sub_8f7545f2:
                if block.timestamp < sub_a871c02e:
                    revert with 0, 'Staking Paused'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require ext_code.size(bscStarterInfoAddress)
    staticcall bscStarterInfoAddress.0x4810b405 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if accountInfos[msg.sender].field_512 + ext_call.return_data[0] > block.timestamp:
        revert with 0, 'Invalid unstake time'
    if not accountInfos[msg.sender].field_0:
        revert with 0, 'Nothing to unstake'
    if arg1 <= 0:
        revert with 0, 'Invalid amount'
    if arg1 <= accountInfos[msg.sender].field_0:
        accountInfos[msg.sender].field_0 -= arg1
        accountInfos[msg.sender].field_512 = block.timestamp
        if not arg1:
            require ext_code.size(bscsTokenAddress)
            call bscsTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Unstaked(arg1, msg.sender);
        else:
            if sub_1359fac1 * arg1 / arg1 != sub_1359fac1:
                revert with 0, 'SafeMath: multiplication overflow'
            if not sub_1359fac1 * arg1 / 10000:
                require ext_code.size(bscsTokenAddress)
                call bscsTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit Unstaked(arg1, msg.sender);
            else:
                if sub_1359fac1 * arg1 / 10000 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(bscsTokenAddress)
                call bscsTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args 57005, sub_1359fac1 * arg1 / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(bscsTokenAddress)
                call bscsTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1 - (sub_1359fac1 * arg1 / 10000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit Unstaked((arg1 - (sub_1359fac1 * arg1 / 10000)), msg.sender);
    else:
        if accountInfos[msg.sender].field_0 > accountInfos[msg.sender].field_0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        accountInfos[msg.sender].field_0 = 0
        accountInfos[msg.sender].field_512 = block.timestamp
        if not accountInfos[msg.sender].field_0:
            require ext_code.size(bscsTokenAddress)
            call bscsTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, accountInfos[msg.sender].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Unstaked(accountInfos[msg.sender].field_0, msg.sender);
        else:
            if sub_1359fac1 * accountInfos[msg.sender].field_0 / accountInfos[msg.sender].field_0 != sub_1359fac1:
                revert with 0, 'SafeMath: multiplication overflow'
            if not sub_1359fac1 * accountInfos[msg.sender].field_0 / 10000:
                require ext_code.size(bscsTokenAddress)
                call bscsTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, accountInfos[msg.sender].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit Unstaked(accountInfos[msg.sender].field_0, msg.sender);
            else:
                if sub_1359fac1 * accountInfos[msg.sender].field_0 / 10000 > accountInfos[msg.sender].field_0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(bscsTokenAddress)
                call bscsTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args 57005, sub_1359fac1 * accountInfos[msg.sender].field_0 / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(bscsTokenAddress)
                call bscsTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, accountInfos[msg.sender].field_0 - (sub_1359fac1 * accountInfos[msg.sender].field_0 / 10000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit Unstaked((accountInfos[msg.sender].field_0 - (sub_1359fac1 * accountInfos[msg.sender].field_0 / 10000)), msg.sender);
    stor0 = 1
}



}
