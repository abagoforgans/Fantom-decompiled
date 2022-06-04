contract main {




// =====================  Runtime code  =====================


const depositContractInitCodeHash = sha3(code.data[4222 len 788])


address owner;
address tombAddress;
address pairAddress;
address wethAddress;
mapping of address sub_b09133bc;

function weth() payable {
    return wethAddress
}

function owner() payable {
    return owner
}

function pair() payable {
    return pairAddress
}

function sub_b09133bc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b09133bc[arg1]
}

function tomb() payable {
    return tombAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function depositAddressFor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return address(sha3(0, this.address, sha3(arg1), sha3(code.data[4222 len 788])))
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setAddresses(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NoTaxSwap: Tomb address is not a contract'
    if not ext_code.size(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NoTaxSwap: Pair address is not a contract'
    if not ext_code.size(arg3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NoTaxSwap: WETH address is not a contract'
    tombAddress = arg1
    pairAddress = arg2
    wethAddress = arg3
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if sub_b09133bc[address(msg.sender)]:
        require ext_code.size(sub_b09133bc[address(msg.sender)])
        call sub_b09133bc[address(msg.sender)].sendTo(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), arg2
    else:
        if sub_b09133bc[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NoTaxSwap: Deposit contract already created'
        create2 contract with 0 wei
                        salt: sha3(msg.sender)
                        code: code.data[4222 len 788]
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).initalize(address arg1) with:
             gas gas_remaining wei
            args tombAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_b09133bc[address(msg.sender)] = address(create2.new_address)
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).sendTo(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NoTaxSwap: Failed to send TOMB'
}

function swap(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if tombAddress == wethAddress:
        revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
    if tombAddress < wethAddress:
        if not tombAddress:
            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
        require ext_code.size(pairAddress)
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg2 <= 0:
            revert with 0, 'NoTaxSwap: Insufficient Input Amount'
        if tombAddress == tombAddress:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'NoTaxSwap: Insufficient Liquidity'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'NoTaxSwap: Insufficient Liquidity'
            if arg2 and 998 > -1 / arg2:
                revert with 0, 17
            if 998 * arg2 / 998 != arg2:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[50 len 14]:
                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                    revert with 0, 17
                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[18 len 14] > !(998 * arg2):
                    revert with 0, 17
                if (1000 * ext_call.return_data[18 len 14]) + (998 * arg2) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[18 len 14]) + (998 * arg2):
                    revert with 0, 18
                if sub_b09133bc[address(msg.sender)]:
                    require ext_code.size(sub_b09133bc[address(msg.sender)])
                    call sub_b09133bc[address(msg.sender)].sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NoTaxSwap: Failed to send TOMB'
                    if tombAddress == wethAddress:
                        revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
                    if tombAddress < wethAddress:
                        if not tombAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == tombAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(arg1), 128, 0, None
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(arg1), 128, 0
                    else:
                        if not wethAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == wethAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(arg1), 128, 0
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(arg1), 128, 0
                else:
                    if sub_b09133bc[address(msg.sender)]:
                        revert with 0, 'NoTaxSwap: Deposit contract already created'
                    create2 contract with 0 wei
                                    salt: sha3(msg.sender)
                                    code: code.data[4222 len 788]
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initalize(address arg1) with:
                         gas gas_remaining wei
                        args tombAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_b09133bc[address(msg.sender)] = address(create2.new_address)
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NoTaxSwap: Failed to send TOMB'
                    if tombAddress == wethAddress:
                        revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
                    if tombAddress < wethAddress:
                        if not tombAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == tombAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(arg1), 128, 0
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(arg1), 128, 0, None
                    else:
                        if not wethAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == wethAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(arg1), 128, 0, None
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(arg1), 128, 0
            else:
                if 998 * arg2 and ext_call.return_data[50 len 14] > -1 / 998 * arg2:
                    revert with 0, 17
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                if 998 * arg2 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * arg2:
                    revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                    revert with 0, 17
                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[18 len 14] > !(998 * arg2):
                    revert with 0, 17
                if (1000 * ext_call.return_data[18 len 14]) + (998 * arg2) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[18 len 14]) + (998 * arg2):
                    revert with 0, 18
                if sub_b09133bc[address(msg.sender)]:
                    require ext_code.size(sub_b09133bc[address(msg.sender)])
                    call sub_b09133bc[address(msg.sender)].sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NoTaxSwap: Failed to send TOMB'
                    if tombAddress == wethAddress:
                        revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
                    if tombAddress < wethAddress:
                        if not tombAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == tombAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(arg1), 128, 0
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(arg1), 128, 0, None
                    else:
                        if not wethAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == wethAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(arg1), 128, 0
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(arg1), 128, 0
                else:
                    if sub_b09133bc[address(msg.sender)]:
                        revert with 0, 'NoTaxSwap: Deposit contract already created'
                    create2 contract with 0 wei
                                    salt: sha3(msg.sender)
                                    code: code.data[4222 len 788]
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initalize(address arg1) with:
                         gas gas_remaining wei
                        args tombAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_b09133bc[address(msg.sender)] = address(create2.new_address)
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NoTaxSwap: Failed to send TOMB'
                    if tombAddress == wethAddress:
                        revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
                    if tombAddress < wethAddress:
                        if not tombAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == tombAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(arg1), 128, 0, None
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(arg1), 128, 0, None
                    else:
                        if not wethAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == wethAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(arg1), 128, 0
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(arg1), 128, 0
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'NoTaxSwap: Insufficient Liquidity'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'NoTaxSwap: Insufficient Liquidity'
            if arg2 and 998 > -1 / arg2:
                revert with 0, 17
            if 998 * arg2 / 998 != arg2:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[18 len 14]:
                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                    revert with 0, 17
                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[50 len 14] > !(998 * arg2):
                    revert with 0, 17
                if (1000 * ext_call.return_data[50 len 14]) + (998 * arg2) < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[50 len 14]) + (998 * arg2):
                    revert with 0, 18
                if sub_b09133bc[address(msg.sender)]:
                    require ext_code.size(sub_b09133bc[address(msg.sender)])
                    call sub_b09133bc[address(msg.sender)].sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                else:
                    if sub_b09133bc[address(msg.sender)]:
                        revert with 0, 'NoTaxSwap: Deposit contract already created'
                    create2 contract with 0 wei
                                    salt: sha3(msg.sender)
                                    code: code.data[4222 len 788]
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initalize(address arg1) with:
                         gas gas_remaining wei
                        args tombAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_b09133bc[address(msg.sender)] = address(create2.new_address)
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'NoTaxSwap: Failed to send TOMB'
                if tombAddress == wethAddress:
                    revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
                if tombAddress < wethAddress:
                    if not tombAddress:
                        revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                    require ext_code.size(pairAddress)
                    if tombAddress == tombAddress:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), address(arg1), 128, 0, None
                    else:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), 0, address(arg1), 128, 0
                else:
                    if not wethAddress:
                        revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                    require ext_code.size(pairAddress)
                    if tombAddress == wethAddress:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), address(arg1), 128, 0
                    else:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), 0, address(arg1), 128, 0
            else:
                if 998 * arg2 and ext_call.return_data[18 len 14] > -1 / 998 * arg2:
                    revert with 0, 17
                if not ext_call.return_data[18 len 14]:
                    revert with 0, 18
                if 998 * arg2 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * arg2:
                    revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                    revert with 0, 17
                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[50 len 14] > !(998 * arg2):
                    revert with 0, 17
                if (1000 * ext_call.return_data[50 len 14]) + (998 * arg2) < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[50 len 14]) + (998 * arg2):
                    revert with 0, 18
                if sub_b09133bc[address(msg.sender)]:
                    require ext_code.size(sub_b09133bc[address(msg.sender)])
                    call sub_b09133bc[address(msg.sender)].sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NoTaxSwap: Failed to send TOMB'
                    if tombAddress == wethAddress:
                        revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
                    if tombAddress < wethAddress:
                        if not tombAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == tombAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), address(arg1), 128, 0
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), 0, address(arg1), 128, 0
                    else:
                        if not wethAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == wethAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), address(arg1), 128, 0, None
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), 0, address(arg1), 128, 0, None
                else:
                    if sub_b09133bc[address(msg.sender)]:
                        revert with 0, 'NoTaxSwap: Deposit contract already created'
                    create2 contract with 0 wei
                                    salt: sha3(msg.sender)
                                    code: code.data[4222 len 788]
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initalize(address arg1) with:
                         gas gas_remaining wei
                        args tombAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_b09133bc[address(msg.sender)] = address(create2.new_address)
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NoTaxSwap: Failed to send TOMB'
                    if tombAddress == wethAddress:
                        revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
                    if tombAddress < wethAddress:
                        if not tombAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == tombAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), address(arg1), 128, 0, None
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), 0, address(arg1), 128, 0
                    else:
                        if not wethAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == wethAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), address(arg1), 128, 0, None
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), 0, address(arg1), 128, 0
    else:
        if not wethAddress:
            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
        require ext_code.size(pairAddress)
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg2 <= 0:
            revert with 0, 'NoTaxSwap: Insufficient Input Amount'
        if tombAddress == wethAddress:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'NoTaxSwap: Insufficient Liquidity'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'NoTaxSwap: Insufficient Liquidity'
            if arg2 and 998 > -1 / arg2:
                revert with 0, 17
            if 998 * arg2 / 998 != arg2:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[50 len 14]:
                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                    revert with 0, 17
                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[18 len 14] > !(998 * arg2):
                    revert with 0, 17
                if (1000 * ext_call.return_data[18 len 14]) + (998 * arg2) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[18 len 14]) + (998 * arg2):
                    revert with 0, 18
                if sub_b09133bc[address(msg.sender)]:
                    require ext_code.size(sub_b09133bc[address(msg.sender)])
                    call sub_b09133bc[address(msg.sender)].sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NoTaxSwap: Failed to send TOMB'
                    if tombAddress == wethAddress:
                        revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
                    if tombAddress < wethAddress:
                        if not tombAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == tombAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(arg1), 128, 0, None
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(arg1), 128, 0
                    else:
                        if not wethAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == wethAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(arg1), 128, 0
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(arg1), 128, 0, None
                else:
                    if sub_b09133bc[address(msg.sender)]:
                        revert with 0, 'NoTaxSwap: Deposit contract already created'
                    create2 contract with 0 wei
                                    salt: sha3(msg.sender)
                                    code: code.data[4222 len 788]
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initalize(address arg1) with:
                         gas gas_remaining wei
                        args tombAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_b09133bc[address(msg.sender)] = address(create2.new_address)
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NoTaxSwap: Failed to send TOMB'
                    if tombAddress == wethAddress:
                        revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
                    if tombAddress < wethAddress:
                        if not tombAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == tombAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(arg1), 128, 0
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(arg1), 128, 0, None
                    else:
                        if not wethAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == wethAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(arg1), 128, 0, None
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(arg1), 128, 0
            else:
                if 998 * arg2 and ext_call.return_data[50 len 14] > -1 / 998 * arg2:
                    revert with 0, 17
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                if 998 * arg2 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * arg2:
                    revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                    revert with 0, 17
                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[18 len 14] > !(998 * arg2):
                    revert with 0, 17
                if (1000 * ext_call.return_data[18 len 14]) + (998 * arg2) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[18 len 14]) + (998 * arg2):
                    revert with 0, 18
                if sub_b09133bc[address(msg.sender)]:
                    require ext_code.size(sub_b09133bc[address(msg.sender)])
                    call sub_b09133bc[address(msg.sender)].sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NoTaxSwap: Failed to send TOMB'
                    if tombAddress == wethAddress:
                        revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
                    if tombAddress < wethAddress:
                        if not tombAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == tombAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(arg1), 128, 0
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(arg1), 128, 0
                    else:
                        if not wethAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == wethAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(arg1), 128, 0
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(arg1), 128, 0
                else:
                    if sub_b09133bc[address(msg.sender)]:
                        revert with 0, 'NoTaxSwap: Deposit contract already created'
                    create2 contract with 0 wei
                                    salt: sha3(msg.sender)
                                    code: code.data[4222 len 788]
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initalize(address arg1) with:
                         gas gas_remaining wei
                        args tombAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_b09133bc[address(msg.sender)] = address(create2.new_address)
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NoTaxSwap: Failed to send TOMB'
                    if tombAddress == wethAddress:
                        revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
                    if tombAddress < wethAddress:
                        if not tombAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == tombAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(arg1), 128, 0, None
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(arg1), 128, 0, None
                    else:
                        if not wethAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == wethAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(arg1), 128, 0
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(arg1), 128, 0, None
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'NoTaxSwap: Insufficient Liquidity'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'NoTaxSwap: Insufficient Liquidity'
            if arg2 and 998 > -1 / arg2:
                revert with 0, 17
            if 998 * arg2 / 998 != arg2:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[18 len 14]:
                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                    revert with 0, 17
                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[50 len 14] > !(998 * arg2):
                    revert with 0, 17
                if (1000 * ext_call.return_data[50 len 14]) + (998 * arg2) < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[50 len 14]) + (998 * arg2):
                    revert with 0, 18
                if sub_b09133bc[address(msg.sender)]:
                    require ext_code.size(sub_b09133bc[address(msg.sender)])
                    call sub_b09133bc[address(msg.sender)].sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NoTaxSwap: Failed to send TOMB'
                    if tombAddress == wethAddress:
                        revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
                    if tombAddress < wethAddress:
                        if not tombAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == tombAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), address(arg1), 128, 0
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), 0, address(arg1), 128, 0
                    else:
                        if not wethAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == wethAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), address(arg1), 128, 0, None
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), 0, address(arg1), 128, 0
                else:
                    if sub_b09133bc[address(msg.sender)]:
                        revert with 0, 'NoTaxSwap: Deposit contract already created'
                    create2 contract with 0 wei
                                    salt: sha3(msg.sender)
                                    code: code.data[4222 len 788]
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initalize(address arg1) with:
                         gas gas_remaining wei
                        args tombAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_b09133bc[address(msg.sender)] = address(create2.new_address)
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NoTaxSwap: Failed to send TOMB'
                    if tombAddress == wethAddress:
                        revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
                    if tombAddress < wethAddress:
                        if not tombAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == tombAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), address(arg1), 128, 0, None
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), 0, address(arg1), 128, 0, None
                    else:
                        if not wethAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == wethAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), address(arg1), 128, 0
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), 0, address(arg1), 128, 0, None
            else:
                if 998 * arg2 and ext_call.return_data[18 len 14] > -1 / 998 * arg2:
                    revert with 0, 17
                if not ext_call.return_data[18 len 14]:
                    revert with 0, 18
                if 998 * arg2 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * arg2:
                    revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                    revert with 0, 17
                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[50 len 14] > !(998 * arg2):
                    revert with 0, 17
                if (1000 * ext_call.return_data[50 len 14]) + (998 * arg2) < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[50 len 14]) + (998 * arg2):
                    revert with 0, 18
                if sub_b09133bc[address(msg.sender)]:
                    require ext_code.size(sub_b09133bc[address(msg.sender)])
                    call sub_b09133bc[address(msg.sender)].sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NoTaxSwap: Failed to send TOMB'
                    if tombAddress == wethAddress:
                        revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
                    if tombAddress < wethAddress:
                        if not tombAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == tombAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), address(arg1), 128, 0
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), 0, address(arg1), 128, 0
                    else:
                        if not wethAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == wethAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), address(arg1), 128, 0, None
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), 0, address(arg1), 128, 0, None
                else:
                    if sub_b09133bc[address(msg.sender)]:
                        revert with 0, 'NoTaxSwap: Deposit contract already created'
                    create2 contract with 0 wei
                                    salt: sha3(msg.sender)
                                    code: code.data[4222 len 788]
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initalize(address arg1) with:
                         gas gas_remaining wei
                        args tombAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_b09133bc[address(msg.sender)] = address(create2.new_address)
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NoTaxSwap: Failed to send TOMB'
                    if tombAddress == wethAddress:
                        revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
                    if tombAddress < wethAddress:
                        if not tombAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == tombAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), address(arg1), 128, 0
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), 0, address(arg1), 128, 0
                    else:
                        if not wethAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == wethAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), address(arg1), 128, 0
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), 0, address(arg1), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function swapETH(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if tombAddress == wethAddress:
        revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
    if tombAddress < wethAddress:
        if not tombAddress:
            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
        require ext_code.size(pairAddress)
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg2 <= 0:
            revert with 0, 'NoTaxSwap: Insufficient Input Amount'
        if tombAddress == tombAddress:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'NoTaxSwap: Insufficient Liquidity'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'NoTaxSwap: Insufficient Liquidity'
            if arg2 and 998 > -1 / arg2:
                revert with 0, 17
            if 998 * arg2 / 998 != arg2:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[50 len 14]:
                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                    revert with 0, 17
                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[18 len 14] > !(998 * arg2):
                    revert with 0, 17
                if (1000 * ext_call.return_data[18 len 14]) + (998 * arg2) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[18 len 14]) + (998 * arg2):
                    revert with 0, 18
                if sub_b09133bc[address(msg.sender)]:
                    require ext_code.size(sub_b09133bc[address(msg.sender)])
                    call sub_b09133bc[address(msg.sender)].sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NoTaxSwap: Failed to send TOMB'
                    if tombAddress == wethAddress:
                        revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
                    if tombAddress < wethAddress:
                        if not tombAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == tombAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(this.address), 128, 0, None
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(this.address), 128, 0
                    else:
                        if not wethAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == wethAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(this.address), 128, 0
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(this.address), 128, 0
                else:
                    if sub_b09133bc[address(msg.sender)]:
                        revert with 0, 'NoTaxSwap: Deposit contract already created'
                    create2 contract with 0 wei
                                    salt: sha3(msg.sender)
                                    code: code.data[4222 len 788]
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initalize(address arg1) with:
                         gas gas_remaining wei
                        args tombAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_b09133bc[address(msg.sender)] = address(create2.new_address)
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NoTaxSwap: Failed to send TOMB'
                    if tombAddress == wethAddress:
                        revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
                    if tombAddress < wethAddress:
                        if not tombAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == tombAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(this.address), 128, 0
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(this.address), 128, 0, None
                    else:
                        if not wethAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == wethAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(this.address), 128, 0, None
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(wethAddress)
                call wethAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = 0
                while idx < 0:
                    idx = idx + 32
                    continue 
                call arg1 with:
                   value 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2) wei
                     gas gas_remaining wei
            else:
                if 998 * arg2 and ext_call.return_data[50 len 14] > -1 / 998 * arg2:
                    revert with 0, 17
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                if 998 * arg2 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * arg2:
                    revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                    revert with 0, 17
                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[18 len 14] > !(998 * arg2):
                    revert with 0, 17
                if (1000 * ext_call.return_data[18 len 14]) + (998 * arg2) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[18 len 14]) + (998 * arg2):
                    revert with 0, 18
                if sub_b09133bc[address(msg.sender)]:
                    require ext_code.size(sub_b09133bc[address(msg.sender)])
                    call sub_b09133bc[address(msg.sender)].sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NoTaxSwap: Failed to send TOMB'
                    if tombAddress == wethAddress:
                        revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
                    if tombAddress < wethAddress:
                        if not tombAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == tombAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(this.address), 128, 0
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(this.address), 128, 0, None
                    else:
                        if not wethAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == wethAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(this.address), 128, 0
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(this.address), 128, 0
                else:
                    if sub_b09133bc[address(msg.sender)]:
                        revert with 0, 'NoTaxSwap: Deposit contract already created'
                    create2 contract with 0 wei
                                    salt: sha3(msg.sender)
                                    code: code.data[4222 len 788]
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initalize(address arg1) with:
                         gas gas_remaining wei
                        args tombAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_b09133bc[address(msg.sender)] = address(create2.new_address)
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NoTaxSwap: Failed to send TOMB'
                    if tombAddress == wethAddress:
                        revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
                    if tombAddress < wethAddress:
                        if not tombAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == tombAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(this.address), 128, 0, None
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(this.address), 128, 0
                    else:
                        if not wethAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == wethAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(this.address), 128, 0, None
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(wethAddress)
                call wethAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args (998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = 0
                while idx < 0:
                    idx = idx + 32
                    continue 
                call arg1 with:
                   value 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2) wei
                     gas gas_remaining wei
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'NoTaxSwap: Insufficient Liquidity'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'NoTaxSwap: Insufficient Liquidity'
            if arg2 and 998 > -1 / arg2:
                revert with 0, 17
            if 998 * arg2 / 998 != arg2:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[18 len 14]:
                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                    revert with 0, 17
                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[50 len 14] > !(998 * arg2):
                    revert with 0, 17
                if (1000 * ext_call.return_data[50 len 14]) + (998 * arg2) < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[50 len 14]) + (998 * arg2):
                    revert with 0, 18
                if sub_b09133bc[address(msg.sender)]:
                    require ext_code.size(sub_b09133bc[address(msg.sender)])
                    call sub_b09133bc[address(msg.sender)].sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                else:
                    if sub_b09133bc[address(msg.sender)]:
                        revert with 0, 'NoTaxSwap: Deposit contract already created'
                    create2 contract with 0 wei
                                    salt: sha3(msg.sender)
                                    code: code.data[4222 len 788]
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initalize(address arg1) with:
                         gas gas_remaining wei
                        args tombAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_b09133bc[address(msg.sender)] = address(create2.new_address)
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'NoTaxSwap: Failed to send TOMB'
                if tombAddress == wethAddress:
                    revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
                if tombAddress < wethAddress:
                    if not tombAddress:
                        revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                    require ext_code.size(pairAddress)
                    if tombAddress == tombAddress:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), address(this.address), 128, 0, None
                    else:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), 0, address(this.address), 128, 0
                else:
                    if not wethAddress:
                        revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                    require ext_code.size(pairAddress)
                    if tombAddress == wethAddress:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), address(this.address), 128, 0
                    else:
                        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(wethAddress)
                call wethAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = 0
                while idx < 0:
                    idx = idx + 32
                    continue 
                call arg1 with:
                   value 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2) wei
                     gas gas_remaining wei
            else:
                if 998 * arg2 and ext_call.return_data[18 len 14] > -1 / 998 * arg2:
                    revert with 0, 17
                if not ext_call.return_data[18 len 14]:
                    revert with 0, 18
                if 998 * arg2 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * arg2:
                    revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                    revert with 0, 17
                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[50 len 14] > !(998 * arg2):
                    revert with 0, 17
                if (1000 * ext_call.return_data[50 len 14]) + (998 * arg2) < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[50 len 14]) + (998 * arg2):
                    revert with 0, 18
                if sub_b09133bc[address(msg.sender)]:
                    require ext_code.size(sub_b09133bc[address(msg.sender)])
                    call sub_b09133bc[address(msg.sender)].sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NoTaxSwap: Failed to send TOMB'
                    if tombAddress == wethAddress:
                        revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
                    if tombAddress < wethAddress:
                        if not tombAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == tombAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), address(this.address), 128, 0
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), 0, address(this.address), 128, 0
                    else:
                        if not wethAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == wethAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), address(this.address), 128, 0, None
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), 0, address(this.address), 128, 0, None
                else:
                    if sub_b09133bc[address(msg.sender)]:
                        revert with 0, 'NoTaxSwap: Deposit contract already created'
                    create2 contract with 0 wei
                                    salt: sha3(msg.sender)
                                    code: code.data[4222 len 788]
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initalize(address arg1) with:
                         gas gas_remaining wei
                        args tombAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_b09133bc[address(msg.sender)] = address(create2.new_address)
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NoTaxSwap: Failed to send TOMB'
                    if tombAddress == wethAddress:
                        revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
                    if tombAddress < wethAddress:
                        if not tombAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == tombAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), address(this.address), 128, 0
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), 0, address(this.address), 128, 0, None
                    else:
                        if not wethAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == wethAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), address(this.address), 128, 0, None
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), 0, address(this.address), 128, 0, None
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(wethAddress)
                call wethAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args (998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = 0
                while idx < 0:
                    idx = idx + 32
                    continue 
                call arg1 with:
                   value 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2) wei
                     gas gas_remaining wei
    else:
        if not wethAddress:
            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
        require ext_code.size(pairAddress)
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg2 <= 0:
            revert with 0, 'NoTaxSwap: Insufficient Input Amount'
        if tombAddress == wethAddress:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'NoTaxSwap: Insufficient Liquidity'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'NoTaxSwap: Insufficient Liquidity'
            if arg2 and 998 > -1 / arg2:
                revert with 0, 17
            if 998 * arg2 / 998 != arg2:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[50 len 14]:
                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                    revert with 0, 17
                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[18 len 14] > !(998 * arg2):
                    revert with 0, 17
                if (1000 * ext_call.return_data[18 len 14]) + (998 * arg2) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[18 len 14]) + (998 * arg2):
                    revert with 0, 18
                if sub_b09133bc[address(msg.sender)]:
                    require ext_code.size(sub_b09133bc[address(msg.sender)])
                    call sub_b09133bc[address(msg.sender)].sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NoTaxSwap: Failed to send TOMB'
                    if tombAddress == wethAddress:
                        revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
                    if tombAddress < wethAddress:
                        if not tombAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == tombAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(this.address), 128, 0, None
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(this.address), 128, 0
                    else:
                        if not wethAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == wethAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(this.address), 128, 0
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(this.address), 128, 0, None
                else:
                    if sub_b09133bc[address(msg.sender)]:
                        revert with 0, 'NoTaxSwap: Deposit contract already created'
                    create2 contract with 0 wei
                                    salt: sha3(msg.sender)
                                    code: code.data[4222 len 788]
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initalize(address arg1) with:
                         gas gas_remaining wei
                        args tombAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_b09133bc[address(msg.sender)] = address(create2.new_address)
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NoTaxSwap: Failed to send TOMB'
                    if tombAddress == wethAddress:
                        revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
                    if tombAddress < wethAddress:
                        if not tombAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == tombAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(this.address), 128, 0
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(this.address), 128, 0, None
                    else:
                        if not wethAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == wethAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(this.address), 128, 0, None
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(wethAddress)
                call wethAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = 0
                while idx < 0:
                    idx = idx + 32
                    continue 
                call arg1 with:
                   value 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2) wei
                     gas gas_remaining wei
            else:
                if 998 * arg2 and ext_call.return_data[50 len 14] > -1 / 998 * arg2:
                    revert with 0, 17
                if not ext_call.return_data[50 len 14]:
                    revert with 0, 18
                if 998 * arg2 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 998 * arg2:
                    revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                    revert with 0, 17
                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[18 len 14] > !(998 * arg2):
                    revert with 0, 17
                if (1000 * ext_call.return_data[18 len 14]) + (998 * arg2) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[18 len 14]) + (998 * arg2):
                    revert with 0, 18
                if sub_b09133bc[address(msg.sender)]:
                    require ext_code.size(sub_b09133bc[address(msg.sender)])
                    call sub_b09133bc[address(msg.sender)].sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NoTaxSwap: Failed to send TOMB'
                    if tombAddress == wethAddress:
                        revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
                    if tombAddress < wethAddress:
                        if not tombAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == tombAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(this.address), 128, 0
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(this.address), 128, 0
                    else:
                        if not wethAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == wethAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(this.address), 128, 0
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(this.address), 128, 0
                else:
                    if sub_b09133bc[address(msg.sender)]:
                        revert with 0, 'NoTaxSwap: Deposit contract already created'
                    create2 contract with 0 wei
                                    salt: sha3(msg.sender)
                                    code: code.data[4222 len 788]
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initalize(address arg1) with:
                         gas gas_remaining wei
                        args tombAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_b09133bc[address(msg.sender)] = address(create2.new_address)
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NoTaxSwap: Failed to send TOMB'
                    if tombAddress == wethAddress:
                        revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
                    if tombAddress < wethAddress:
                        if not tombAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == tombAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(this.address), 128, 0, None
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(this.address), 128, 0, None
                    else:
                        if not wethAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == wethAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), address(this.address), 128, 0, None
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2), 0, address(this.address), 128, 0, None
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(wethAddress)
                call wethAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args (998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = 0
                while idx < 0:
                    idx = idx + 32
                    continue 
                call arg1 with:
                   value 998 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg2) wei
                     gas gas_remaining wei
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'NoTaxSwap: Insufficient Liquidity'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'NoTaxSwap: Insufficient Liquidity'
            if arg2 and 998 > -1 / arg2:
                revert with 0, 17
            if 998 * arg2 / 998 != arg2:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[18 len 14]:
                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                    revert with 0, 17
                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[50 len 14] > !(998 * arg2):
                    revert with 0, 17
                if (1000 * ext_call.return_data[50 len 14]) + (998 * arg2) < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[50 len 14]) + (998 * arg2):
                    revert with 0, 18
                if sub_b09133bc[address(msg.sender)]:
                    require ext_code.size(sub_b09133bc[address(msg.sender)])
                    call sub_b09133bc[address(msg.sender)].sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NoTaxSwap: Failed to send TOMB'
                    if tombAddress == wethAddress:
                        revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
                    if tombAddress < wethAddress:
                        if not tombAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == tombAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), address(this.address), 128, 0
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), 0, address(this.address), 128, 0
                    else:
                        if not wethAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == wethAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), address(this.address), 128, 0, None
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), 0, address(this.address), 128, 0
                else:
                    if sub_b09133bc[address(msg.sender)]:
                        revert with 0, 'NoTaxSwap: Deposit contract already created'
                    create2 contract with 0 wei
                                    salt: sha3(msg.sender)
                                    code: code.data[4222 len 788]
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initalize(address arg1) with:
                         gas gas_remaining wei
                        args tombAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_b09133bc[address(msg.sender)] = address(create2.new_address)
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NoTaxSwap: Failed to send TOMB'
                    if tombAddress == wethAddress:
                        revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
                    if tombAddress < wethAddress:
                        if not tombAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == tombAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), address(this.address), 128, 0, None
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), 0, address(this.address), 128, 0, None
                    else:
                        if not wethAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == wethAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), address(this.address), 128, 0
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), 0, address(this.address), 128, 0, None
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(wethAddress)
                call wethAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = 0
                while idx < 0:
                    idx = idx + 32
                    continue 
                call arg1 with:
                   value 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2) wei
                     gas gas_remaining wei
            else:
                if 998 * arg2 and ext_call.return_data[18 len 14] > -1 / 998 * arg2:
                    revert with 0, 17
                if not ext_call.return_data[18 len 14]:
                    revert with 0, 18
                if 998 * arg2 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 998 * arg2:
                    revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                    revert with 0, 17
                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[50 len 14] > !(998 * arg2):
                    revert with 0, 17
                if (1000 * ext_call.return_data[50 len 14]) + (998 * arg2) < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * ext_call.return_data[50 len 14]) + (998 * arg2):
                    revert with 0, 18
                if sub_b09133bc[address(msg.sender)]:
                    require ext_code.size(sub_b09133bc[address(msg.sender)])
                    call sub_b09133bc[address(msg.sender)].sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NoTaxSwap: Failed to send TOMB'
                    if tombAddress == wethAddress:
                        revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
                    if tombAddress < wethAddress:
                        if not tombAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == tombAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), address(this.address), 128, 0
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), 0, address(this.address), 128, 0
                    else:
                        if not wethAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == wethAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), address(this.address), 128, 0, None
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), 0, address(this.address), 128, 0, None
                else:
                    if sub_b09133bc[address(msg.sender)]:
                        revert with 0, 'NoTaxSwap: Deposit contract already created'
                    create2 contract with 0 wei
                                    salt: sha3(msg.sender)
                                    code: code.data[4222 len 788]
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initalize(address arg1) with:
                         gas gas_remaining wei
                        args tombAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_b09133bc[address(msg.sender)] = address(create2.new_address)
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).sendTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pairAddress, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'NoTaxSwap: Failed to send TOMB'
                    if tombAddress == wethAddress:
                        revert with 0, 'NoTaxSwap: IDENTICAL_ADDRESSES'
                    if tombAddress < wethAddress:
                        if not tombAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == tombAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), address(this.address), 128, 0, None
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), 0, address(this.address), 128, 0, None
                    else:
                        if not wethAddress:
                            revert with 0, 'NoTaxSwap: ZERO_ADDRESS'
                        require ext_code.size(pairAddress)
                        if tombAddress == wethAddress:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), address(this.address), 128, 0, None
                        else:
                            call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2), 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(wethAddress)
                call wethAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args (998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = 0
                while idx < 0:
                    idx = idx + 32
                    continue 
                call arg1 with:
                   value 998 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg2) wei
                     gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'NoTaxSwap: ETH Transfer Failed'
}



}
