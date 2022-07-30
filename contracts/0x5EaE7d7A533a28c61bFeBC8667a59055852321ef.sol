contract main {




// =====================  Runtime code  =====================


#
#  - supplyTokenTo(uint256 arg1, address arg2)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner;
uint32 stor151;
address vaultAddress;
uint256 stor151;
address depositTokenAddress;

function name() payable {
    return name[0 len name.length]
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

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function depositToken() payable {
    return depositTokenAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function vault() payable {
    return address(vaultAddress)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function balanceOfToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if not totalSupply:
        return balanceOf[address(arg1)]
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).getPricePerFullShare() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 10^uint8(ext_call.return_data[0]) <= 0:
            revert with 0, 'SafeMath: division by zero'
        if 10^uint8(ext_call.return_data[0]):
            require ext_code.size(depositTokenAddress)
            staticcall depositTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (0 / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not balanceOf[address(arg1)]:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply:
                    return (0 / totalSupply)
            else:
                if (0 / 10^uint8(ext_call.return_data[0]) * balanceOf[address(arg1)]) + (ext_call.return_data[0] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply:
                    return ((0 / 10^uint8(ext_call.return_data[0]) * balanceOf[address(arg1)]) + (ext_call.return_data[0] * balanceOf[address(arg1)]) / totalSupply)
            ('iszero', ('stor', ('name', 'totalSupply', 53)))
    else:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 10^uint8(ext_call.return_data[0]) <= 0:
            revert with 0, 'SafeMath: division by zero'
        if 10^uint8(ext_call.return_data[0]):
            require ext_code.size(depositTokenAddress)
            staticcall depositTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not balanceOf[address(arg1)]:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply:
                    return (0 / totalSupply)
            else:
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * balanceOf[address(arg1)]) + (ext_call.return_data[0] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply:
                    return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * balanceOf[address(arg1)]) + (ext_call.return_data[0] * balanceOf[address(arg1)]) / totalSupply)
            ('iszero', ('stor', ('name', 'totalSupply', 53)))
    revert
}

function sponsor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(depositTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call depositTokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        require ext_code.size(depositTokenAddress)
        staticcall depositTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(depositTokenAddress)
        staticcall depositTokenAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(vaultAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
            if not ext_code.size(depositTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[456 len 64] = 0, address(vaultAddress), 0
            call depositTokenAddress with:
               funct uint32(stor151)
                 gas gas_remaining wei
                args 0, mem[392 len 24], 0, mem[520 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                require ext_code.size(depositTokenAddress)
                staticcall depositTokenAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(vaultAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[578 len 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[726 len 26]
                if not ext_code.size(depositTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[620 len 64] = 0, address(vaultAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call depositTokenAddress with:
                   funct uint32(stor151)
                     gas gas_remaining wei
                    args -1, mem[556 len 28], mem[684 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[730 len 22]
                else:
                    mem[652 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[652]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 731 len 22]
            else:
                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[488]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                require ext_code.size(depositTokenAddress)
                staticcall depositTokenAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(vaultAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 579 len 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 727 len 26]
                if not ext_code.size(depositTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 621 len 64] = 0, address(vaultAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call depositTokenAddress with:
                   funct uint32(stor151)
                     gas gas_remaining wei
                    args -1, mem[ceil32(return_data.size) + 557 len 28], mem[ceil32(return_data.size) + 685 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 731 len 22]
                else:
                    mem[ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 722 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 653]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 732 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        require ext_code.size(depositTokenAddress)
        staticcall depositTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(depositTokenAddress)
        staticcall depositTokenAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(vaultAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 563 len 26]
            if not ext_code.size(depositTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 457 len 64] = 0, address(vaultAddress), 0
            mem[ceil32(return_data.size) + 549 len 4] = 0
            call depositTokenAddress with:
               funct uint32(stor151)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
                require ext_code.size(depositTokenAddress)
                staticcall depositTokenAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(vaultAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 579 len 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 727 len 26]
                if not ext_code.size(depositTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 621 len 64] = 0, address(vaultAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call depositTokenAddress with:
                   funct uint32(stor151)
                     gas gas_remaining wei
                    args -1, mem[ceil32(return_data.size) + 557 len 28], mem[ceil32(return_data.size) + 685 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 731 len 22]
                else:
                    mem[ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 722 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 653]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 732 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 489]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(depositTokenAddress)
                staticcall depositTokenAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(vaultAddress), mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[(2 * ceil32(return_data.size)) + 580 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(2 * ceil32(return_data.size)) + 728 len 26]
                if not ext_code.size(depositTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 622 len 64] = 0, address(vaultAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call depositTokenAddress with:
                   funct uint32(stor151)
                     gas gas_remaining wei
                    args -1, mem[(2 * ceil32(return_data.size)) + 558 len 28], mem[(2 * ceil32(return_data.size)) + 686 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 732 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 654 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 654]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 733 len 22]
    require ext_code.size(address(vaultAddress))
    call address(vaultAddress).depositAll() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Sponsored(arg1, msg.sender);
}

function redeemToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(vaultAddress))
    if not totalSupply:
        staticcall address(vaultAddress).getPricePerFullShare() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(vaultAddress))
        staticcall address(vaultAddress).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg1:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            require ext_code.size(depositTokenAddress)
            staticcall depositTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(vaultAddress))
            call address(vaultAddress).withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args (0 / ext_call.return_data[0])
        else:
            if 10^ext_call.return_data[31 len 1] * arg1 / arg1 != 10^ext_call.return_data[31 len 1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            require ext_code.size(depositTokenAddress)
            staticcall depositTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(vaultAddress))
            call address(vaultAddress).withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args (10^uint8(ext_call.return_data[0]) * arg1 / ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(depositTokenAddress)
        staticcall depositTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[197 len 31]
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
        balanceOf[address(msg.sender)] -= arg1
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
        if not ext_code.size(depositTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
        mem[420 len 0] = 0
        call depositTokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[420 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        else:
            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[388]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 467 len 22]
        emit RedeemedToken(arg1, arg1, msg.sender);
    else:
        staticcall address(vaultAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(vaultAddress))
        staticcall address(vaultAddress).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(vaultAddress))
        staticcall address(vaultAddress).getPricePerFullShare() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 10^uint8(ext_call.return_data[0]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 10^uint8(ext_call.return_data[0])
            require ext_code.size(depositTokenAddress)
            staticcall depositTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (0 / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not arg1:
                if (0 / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (0 / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0]
                require ext_code.size(address(vaultAddress))
                staticcall address(vaultAddress).getPricePerFullShare() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(vaultAddress))
                staticcall address(vaultAddress).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg1:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(vaultAddress))
                    call address(vaultAddress).withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args (0 / ext_call.return_data[0])
                else:
                    if 10^ext_call.return_data[31 len 1] * arg1 / arg1 != 10^ext_call.return_data[31 len 1]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(vaultAddress))
                    call address(vaultAddress).withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args (10^uint8(ext_call.return_data[0]) * arg1 / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(depositTokenAddress)
                staticcall depositTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if 0 / (0 / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                balanceOf[address(msg.sender)] -= 0 / (0 / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0]
                if 0 / (0 / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0] > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= 0 / (0 / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0]
                emit Transfer((0 / (0 / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0]), msg.sender, 0);
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if not ext_code.size(depositTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                mem[420 len 0] = 0
                call depositTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                else:
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                emit RedeemedToken(0 / (0 / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0], arg1, msg.sender);
            else:
                if totalSupply * arg1 / arg1 != totalSupply:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (0 / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (0 / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0]
                require ext_code.size(address(vaultAddress))
                staticcall address(vaultAddress).getPricePerFullShare() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(vaultAddress))
                staticcall address(vaultAddress).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg1:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(vaultAddress))
                    call address(vaultAddress).withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args (0 / ext_call.return_data[0])
                else:
                    if 10^ext_call.return_data[31 len 1] * arg1 / arg1 != 10^ext_call.return_data[31 len 1]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(vaultAddress))
                    call address(vaultAddress).withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args (10^uint8(ext_call.return_data[0]) * arg1 / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(depositTokenAddress)
                staticcall depositTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if totalSupply * arg1 / (0 / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                balanceOf[address(msg.sender)] -= totalSupply * arg1 / (0 / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0]
                if totalSupply * arg1 / (0 / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0] > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= totalSupply * arg1 / (0 / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0]
                emit Transfer((totalSupply * arg1 / (0 / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0]), msg.sender, 0);
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if not ext_code.size(depositTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                mem[420 len 0] = 0
                call depositTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                else:
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                emit RedeemedToken(totalSupply * arg1 / (0 / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0], arg1, msg.sender);
        else:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 10^uint8(ext_call.return_data[0]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 10^uint8(ext_call.return_data[0])
            require ext_code.size(depositTokenAddress)
            staticcall depositTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not arg1:
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0]
                require ext_code.size(address(vaultAddress))
                staticcall address(vaultAddress).getPricePerFullShare() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(vaultAddress))
                staticcall address(vaultAddress).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg1:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(vaultAddress))
                    call address(vaultAddress).withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args (0 / ext_call.return_data[0])
                else:
                    if 10^ext_call.return_data[31 len 1] * arg1 / arg1 != 10^ext_call.return_data[31 len 1]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(vaultAddress))
                    call address(vaultAddress).withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args (10^uint8(ext_call.return_data[0]) * arg1 / ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(depositTokenAddress)
                staticcall depositTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                balanceOf[address(msg.sender)] -= 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0]
                if 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0] > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0]
                emit Transfer((0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0]), msg.sender, 0);
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if not ext_code.size(depositTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                mem[420 len 0] = 0
                call depositTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                else:
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                emit RedeemedToken(0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0], arg1, msg.sender);
            else:
                if totalSupply * arg1 / arg1 != totalSupply:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0]
                require ext_code.size(address(vaultAddress))
                staticcall address(vaultAddress).getPricePerFullShare() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(vaultAddress))
                staticcall address(vaultAddress).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg1:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(vaultAddress))
                    call address(vaultAddress).withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args (0 / ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[197 len 31]
                    if totalSupply * arg1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                    balanceOf[address(msg.sender)] -= totalSupply * arg1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0]
                    if totalSupply * arg1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0] > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= totalSupply * arg1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0]
                    emit Transfer((totalSupply * arg1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0]), msg.sender, 0);
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(depositTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                    call depositTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, mem[420 len 4]
                else:
                    if 10^ext_call.return_data[31 len 1] * arg1 / arg1 != 10^ext_call.return_data[31 len 1]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(vaultAddress))
                    call address(vaultAddress).withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args (10^uint8(ext_call.return_data[0]) * arg1 / ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[197 len 31]
                    if totalSupply * arg1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                    balanceOf[address(msg.sender)] -= totalSupply * arg1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0]
                    if totalSupply * arg1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0] > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= totalSupply * arg1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0]
                    emit Transfer((totalSupply * arg1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0]), msg.sender, 0);
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(depositTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                    mem[420 len 0] = 0
                    call depositTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                else:
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                emit RedeemedToken(totalSupply * arg1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) + ext_call.return_data[0], arg1, msg.sender);
    return 0
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor0.field_8):
        if address(vaultAddress):
            revert with 0, '!already initialized'
        address(vaultAddress) = arg1
        depositTokenAddress = arg2
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            require ext_code.size(arg2)
            staticcall arg2.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(vaultAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[218 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(arg2):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[324 len 0] = 0
            call arg2 with:
               funct uint32(stor151)
                 gas gas_remaining wei
                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
        else:
            if not ext_code.size(this.address):
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                            uint8(stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                require ext_code.size(arg2)
                staticcall arg2.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(vaultAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[218 len 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[324 len 0] = 0
                call arg2 with:
                   funct uint32(stor151)
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
            else:
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    require ext_code.size(arg2)
                    staticcall arg2.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(vaultAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[218 len 10]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[324 len 0] = 0
                    call arg2 with:
                       funct uint32(stor151)
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    if not ext_code.size(this.address):
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                            require ext_code.size(arg2)
                            staticcall arg2.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(vaultAddress)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[218 len 10]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[324 len 0] = 0
                            call arg2 with:
                               funct uint32(stor151)
                                 gas gas_remaining wei
                                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            if not ext_code.size(this.address):
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    require ext_code.size(arg2)
                                    staticcall arg2.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, address(vaultAddress)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg2):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[324 len 0] = 0
                                    call arg2 with:
                                       funct uint32(stor151)
                                         gas gas_remaining wei
                                        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    require ext_code.size(arg2)
                                    staticcall arg2.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, address(vaultAddress)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg2):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    call arg2 with:
                                       funct uint32(stor151)
                                         gas gas_remaining wei
                                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                            else:
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                require ext_code.size(arg2)
                                staticcall arg2.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, address(vaultAddress)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[218 len 10]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg2):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[324 len 0] = 0
                                call arg2 with:
                                   funct uint32(stor151)
                                     gas gas_remaining wei
                                    args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                    else:
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                            if uint8(stor0.field_8):
                                owner = msg.sender
                                emit OwnershipTransferred(0, msg.sender);
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                owner = msg.sender
                                emit OwnershipTransferred(0, msg.sender);
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                        require ext_code.size(arg2)
                        staticcall arg2.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(vaultAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[218 len 10]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[324 len 0] = 0
                        call arg2 with:
                           funct uint32(stor151)
                             gas gas_remaining wei
                            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
    else:
        if not ext_code.size(this.address):
            if uint8(stor0.field_8):
                if address(vaultAddress):
                    revert with 0, '!already initialized'
                address(vaultAddress) = arg1
                depositTokenAddress = arg2
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    require ext_code.size(arg2)
                    staticcall arg2.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(vaultAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[218 len 10]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[324 len 0] = 0
                    call arg2 with:
                       funct uint32(stor151)
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                else:
                    if not ext_code.size(this.address):
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                            require ext_code.size(arg2)
                            staticcall arg2.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(vaultAddress)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[218 len 10]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[324 len 0] = 0
                            call arg2 with:
                               funct uint32(stor151)
                                 gas gas_remaining wei
                                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if not ext_code.size(this.address):
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if ext_code.size(this.address):
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                    if uint8(stor0.field_8):
                                        owner = msg.sender
                                        emit OwnershipTransferred(0, msg.sender);
                                    else:
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        owner = msg.sender
                                        emit OwnershipTransferred(0, msg.sender);
                                        uint8(stor0.field_8) = 0
                                        uint8(stor0.field_8) = 0
                                require ext_code.size(arg2)
                                staticcall arg2.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, address(vaultAddress)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[218 len 10]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg2):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[324 len 0] = 0
                                call arg2 with:
                                   funct uint32(stor151)
                                     gas gas_remaining wei
                                    args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                            else:
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    require ext_code.size(arg2)
                                    staticcall arg2.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, address(vaultAddress)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg2):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    call arg2 with:
                                       funct uint32(stor151)
                                         gas gas_remaining wei
                                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if ext_code.size(this.address):
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                    if uint8(stor0.field_8):
                                        owner = msg.sender
                                        emit OwnershipTransferred(0, msg.sender);
                                    else:
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        owner = msg.sender
                                        emit OwnershipTransferred(0, msg.sender);
                                        uint8(stor0.field_8) = 0
                                        uint8(stor0.field_8) = 0
                                    require ext_code.size(arg2)
                                    staticcall arg2.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, address(vaultAddress)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg2):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[324 len 0] = 0
                                    call arg2 with:
                                       funct uint32(stor151)
                                         gas gas_remaining wei
                                        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                    else:
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                            require ext_code.size(arg2)
                            staticcall arg2.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(vaultAddress)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[218 len 10]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[324 len 0] = 0
                            call arg2 with:
                               funct uint32(stor151)
                                 gas gas_remaining wei
                                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if not ext_code.size(this.address):
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    require ext_code.size(arg2)
                                    staticcall arg2.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, address(vaultAddress)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg2):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[324 len 0] = 0
                                    call arg2 with:
                                       funct uint32(stor151)
                                         gas gas_remaining wei
                                        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            require ext_code.size(arg2)
                                            staticcall arg2.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, address(vaultAddress)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg2):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            call arg2 with:
                                               funct uint32(stor151)
                                                 gas gas_remaining wei
                                                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            require ext_code.size(arg2)
                                            staticcall arg2.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, address(vaultAddress)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg2):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            mem[324 len 0] = 0
                                            call arg2 with:
                                               funct uint32(stor151)
                                                 gas gas_remaining wei
                                                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                        require ext_code.size(arg2)
                                        staticcall arg2.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(vaultAddress)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        54,
                                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                        mem[218 len 10]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(arg2):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[324 len 0] = 0
                                        call arg2 with:
                                           funct uint32(stor151)
                                             gas gas_remaining wei
                                            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                            else:
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if ext_code.size(this.address):
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                    if uint8(stor0.field_8):
                                        owner = msg.sender
                                        emit OwnershipTransferred(0, msg.sender);
                                    else:
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        owner = msg.sender
                                        emit OwnershipTransferred(0, msg.sender);
                                        uint8(stor0.field_8) = 0
                                        uint8(stor0.field_8) = 0
                                require ext_code.size(arg2)
                                staticcall arg2.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, address(vaultAddress)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[218 len 10]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg2):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[324 len 0] = 0
                                call arg2 with:
                                   funct uint32(stor151)
                                     gas gas_remaining wei
                                    args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if address(vaultAddress):
                    revert with 0, '!already initialized'
                address(vaultAddress) = arg1
                depositTokenAddress = arg2
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    require ext_code.size(arg2)
                    staticcall arg2.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(vaultAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[218 len 10]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[324 len 0] = 0
                    call arg2 with:
                       funct uint32(stor151)
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                else:
                    if not ext_code.size(this.address):
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                            require ext_code.size(arg2)
                            staticcall arg2.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(vaultAddress)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[218 len 10]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[324 len 0] = 0
                            call arg2 with:
                               funct uint32(stor151)
                                 gas gas_remaining wei
                                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if not ext_code.size(this.address):
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    require ext_code.size(arg2)
                                    staticcall arg2.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, address(vaultAddress)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg2):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[324 len 0] = 0
                                    call arg2 with:
                                       funct uint32(stor151)
                                         gas gas_remaining wei
                                        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            require ext_code.size(arg2)
                                            staticcall arg2.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, address(vaultAddress)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg2):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            mem[324 len 0] = 0
                                            call arg2 with:
                                               funct uint32(stor151)
                                                 gas gas_remaining wei
                                                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            require ext_code.size(arg2)
                                            staticcall arg2.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, address(vaultAddress)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg2):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            call arg2 with:
                                               funct uint32(stor151)
                                                 gas gas_remaining wei
                                                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                        require ext_code.size(arg2)
                                        staticcall arg2.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(vaultAddress)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        54,
                                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                        mem[218 len 10]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(arg2):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[324 len 0] = 0
                                        call arg2 with:
                                           funct uint32(stor151)
                                             gas gas_remaining wei
                                            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                            else:
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if ext_code.size(this.address):
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                    if uint8(stor0.field_8):
                                        owner = msg.sender
                                        emit OwnershipTransferred(0, msg.sender);
                                    else:
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        owner = msg.sender
                                        emit OwnershipTransferred(0, msg.sender);
                                        uint8(stor0.field_8) = 0
                                        uint8(stor0.field_8) = 0
                                require ext_code.size(arg2)
                                staticcall arg2.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, address(vaultAddress)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[218 len 10]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg2):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[324 len 0] = 0
                                call arg2 with:
                                   funct uint32(stor151)
                                     gas gas_remaining wei
                                    args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                    else:
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                            require ext_code.size(arg2)
                            staticcall arg2.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(vaultAddress)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[218 len 10]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[324 len 0] = 0
                            call arg2 with:
                               funct uint32(stor151)
                                 gas gas_remaining wei
                                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if not ext_code.size(this.address):
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if ext_code.size(this.address):
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                    if uint8(stor0.field_8):
                                        owner = msg.sender
                                        emit OwnershipTransferred(0, msg.sender);
                                    else:
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        owner = msg.sender
                                        emit OwnershipTransferred(0, msg.sender);
                                        uint8(stor0.field_8) = 0
                                        uint8(stor0.field_8) = 0
                                require ext_code.size(arg2)
                                staticcall arg2.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, address(vaultAddress)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[218 len 10]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg2):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[324 len 0] = 0
                                call arg2 with:
                                   funct uint32(stor151)
                                     gas gas_remaining wei
                                    args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                            else:
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    require ext_code.size(arg2)
                                    staticcall arg2.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, address(vaultAddress)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg2):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[324 len 0] = 0
                                    call arg2 with:
                                       funct uint32(stor151)
                                         gas gas_remaining wei
                                        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            require ext_code.size(arg2)
                                            staticcall arg2.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, address(vaultAddress)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg2):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            call arg2 with:
                                               funct uint32(stor151)
                                                 gas gas_remaining wei
                                                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            require ext_code.size(arg2)
                                            staticcall arg2.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, address(vaultAddress)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg2):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            mem[324 len 0] = 0
                                            call arg2 with:
                                               funct uint32(stor151)
                                                 gas gas_remaining wei
                                                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                        require ext_code.size(arg2)
                                        staticcall arg2.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(vaultAddress)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        54,
                                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                        mem[218 len 10]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(arg2):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[324 len 0] = 0
                                        call arg2 with:
                                           funct uint32(stor151)
                                             gas gas_remaining wei
                                            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
        else:
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
            if uint8(stor0.field_8):
                if address(vaultAddress):
                    revert with 0, '!already initialized'
                address(vaultAddress) = arg1
                depositTokenAddress = arg2
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    require ext_code.size(arg2)
                    staticcall arg2.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(vaultAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[218 len 10]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    call arg2 with:
                       funct uint32(stor151)
                         gas gas_remaining wei
                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                else:
                    if not ext_code.size(this.address):
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                            require ext_code.size(arg2)
                            staticcall arg2.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(vaultAddress)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[218 len 10]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[324 len 0] = 0
                            call arg2 with:
                               funct uint32(stor151)
                                 gas gas_remaining wei
                                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if not ext_code.size(this.address):
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    require ext_code.size(arg2)
                                    staticcall arg2.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, address(vaultAddress)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg2):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    call arg2 with:
                                       funct uint32(stor151)
                                         gas gas_remaining wei
                                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if ext_code.size(this.address):
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                    if uint8(stor0.field_8):
                                        owner = msg.sender
                                        emit OwnershipTransferred(0, msg.sender);
                                    else:
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        owner = msg.sender
                                        emit OwnershipTransferred(0, msg.sender);
                                        uint8(stor0.field_8) = 0
                                        uint8(stor0.field_8) = 0
                                    require ext_code.size(arg2)
                                    staticcall arg2.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, address(vaultAddress)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg2):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[324 len 0] = 0
                                    call arg2 with:
                                       funct uint32(stor151)
                                         gas gas_remaining wei
                                        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                            else:
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if ext_code.size(this.address):
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                    if uint8(stor0.field_8):
                                        owner = msg.sender
                                        emit OwnershipTransferred(0, msg.sender);
                                    else:
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        owner = msg.sender
                                        emit OwnershipTransferred(0, msg.sender);
                                        uint8(stor0.field_8) = 0
                                        uint8(stor0.field_8) = 0
                                require ext_code.size(arg2)
                                staticcall arg2.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, address(vaultAddress)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[218 len 10]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg2):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[324 len 0] = 0
                                call arg2 with:
                                   funct uint32(stor151)
                                     gas gas_remaining wei
                                    args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                    else:
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                            require ext_code.size(arg2)
                            staticcall arg2.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(vaultAddress)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[218 len 10]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[324 len 0] = 0
                            call arg2 with:
                               funct uint32(stor151)
                                 gas gas_remaining wei
                                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if not ext_code.size(this.address):
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    require ext_code.size(arg2)
                                    staticcall arg2.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, address(vaultAddress)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg2):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[324 len 0] = 0
                                    call arg2 with:
                                       funct uint32(stor151)
                                         gas gas_remaining wei
                                        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            require ext_code.size(arg2)
                                            staticcall arg2.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, address(vaultAddress)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg2):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            mem[324 len 0] = 0
                                            call arg2 with:
                                               funct uint32(stor151)
                                                 gas gas_remaining wei
                                                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            require ext_code.size(arg2)
                                            staticcall arg2.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, address(vaultAddress)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg2):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            call arg2 with:
                                               funct uint32(stor151)
                                                 gas gas_remaining wei
                                                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            require ext_code.size(arg2)
                                            staticcall arg2.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, address(vaultAddress)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg2):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            call arg2 with:
                                               funct uint32(stor151)
                                                 gas gas_remaining wei
                                                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            require ext_code.size(arg2)
                                            staticcall arg2.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, address(vaultAddress)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg2):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            mem[324 len 0] = 0
                                            call arg2 with:
                                               funct uint32(stor151)
                                                 gas gas_remaining wei
                                                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                            else:
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if ext_code.size(this.address):
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                    if uint8(stor0.field_8):
                                        owner = msg.sender
                                        emit OwnershipTransferred(0, msg.sender);
                                    else:
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        owner = msg.sender
                                        emit OwnershipTransferred(0, msg.sender);
                                        uint8(stor0.field_8) = 0
                                        uint8(stor0.field_8) = 0
                                require ext_code.size(arg2)
                                staticcall arg2.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, address(vaultAddress)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[218 len 10]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg2):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[324 len 0] = 0
                                call arg2 with:
                                   funct uint32(stor151)
                                     gas gas_remaining wei
                                    args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if address(vaultAddress):
                    revert with 0, '!already initialized'
                address(vaultAddress) = arg1
                depositTokenAddress = arg2
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    require ext_code.size(arg2)
                    staticcall arg2.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(vaultAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[218 len 10]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[324 len 0] = 0
                    call arg2 with:
                       funct uint32(stor151)
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                else:
                    if not ext_code.size(this.address):
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                            require ext_code.size(arg2)
                            staticcall arg2.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(vaultAddress)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[218 len 10]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[324 len 0] = 0
                            call arg2 with:
                               funct uint32(stor151)
                                 gas gas_remaining wei
                                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if not ext_code.size(this.address):
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    require ext_code.size(arg2)
                                    staticcall arg2.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, address(vaultAddress)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg2):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[324 len 0] = 0
                                    call arg2 with:
                                       funct uint32(stor151)
                                         gas gas_remaining wei
                                        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                        require ext_code.size(arg2)
                                        staticcall arg2.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(vaultAddress)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        54,
                                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                        mem[218 len 10]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(arg2):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[324 len 0] = 0
                                        call arg2 with:
                                           funct uint32(stor151)
                                             gas gas_remaining wei
                                            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            require ext_code.size(arg2)
                                            staticcall arg2.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, address(vaultAddress)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg2):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            call arg2 with:
                                               funct uint32(stor151)
                                                 gas gas_remaining wei
                                                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            require ext_code.size(arg2)
                                            staticcall arg2.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, address(vaultAddress)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg2):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            mem[324 len 0] = 0
                                            call arg2 with:
                                               funct uint32(stor151)
                                                 gas gas_remaining wei
                                                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                            else:
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(0, msg.sender);
                                    require ext_code.size(arg2)
                                    staticcall arg2.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, address(vaultAddress)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg2):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    call arg2 with:
                                       funct uint32(stor151)
                                         gas gas_remaining wei
                                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if not ext_code.size(this.address):
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                        require ext_code.size(arg2)
                                        staticcall arg2.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(vaultAddress)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        54,
                                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                        mem[218 len 10]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(arg2):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[324 len 0] = 0
                                        call arg2 with:
                                           funct uint32(stor151)
                                             gas gas_remaining wei
                                            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                    else:
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                        if uint8(stor0.field_8):
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            require ext_code.size(arg2)
                                            staticcall arg2.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, address(vaultAddress)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg2):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            mem[324 len 0] = 0
                                            call arg2 with:
                                               funct uint32(stor151)
                                                 gas gas_remaining wei
                                                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            owner = msg.sender
                                            emit OwnershipTransferred(0, msg.sender);
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            require ext_code.size(arg2)
                                            staticcall arg2.0xdd62ed3e with:
                                                    gas gas_remaining wei
                                                   args this.address, address(vaultAddress)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            54,
                                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                            mem[218 len 10]
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(arg2):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            call arg2 with:
                                               funct uint32(stor151)
                                                 gas gas_remaining wei
                                                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                    else:
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                            require ext_code.size(arg2)
                            staticcall arg2.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(vaultAddress)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[218 len 10]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[324 len 0] = 0
                            call arg2 with:
                               funct uint32(stor151)
                                 gas gas_remaining wei
                                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                            if uint8(stor0.field_8):
                                owner = msg.sender
                                emit OwnershipTransferred(0, msg.sender);
                                require ext_code.size(arg2)
                                staticcall arg2.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, address(vaultAddress)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                54,
                                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                mem[218 len 10]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(arg2):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[324 len 0] = 0
                                call arg2 with:
                                   funct uint32(stor151)
                                     gas gas_remaining wei
                                    args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                if not ext_code.size(this.address):
                                    if uint8(stor0.field_8):
                                        owner = msg.sender
                                        emit OwnershipTransferred(0, msg.sender);
                                    else:
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        owner = msg.sender
                                        emit OwnershipTransferred(0, msg.sender);
                                        uint8(stor0.field_8) = 0
                                        uint8(stor0.field_8) = 0
                                    require ext_code.size(arg2)
                                    staticcall arg2.0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, address(vaultAddress)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    54,
                                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                    mem[218 len 10]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(arg2):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[324 len 0] = 0
                                    call arg2 with:
                                       funct uint32(stor151)
                                         gas gas_remaining wei
                                        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
                                else:
                                    if uint8(stor0.field_0):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    46,
                                                    0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                    mem[210 len 18]
                                    if uint8(stor0.field_8):
                                        owner = msg.sender
                                        emit OwnershipTransferred(0, msg.sender);
                                        require ext_code.size(arg2)
                                        staticcall arg2.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(vaultAddress)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        54,
                                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                        mem[218 len 10]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(arg2):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        call arg2 with:
                                           funct uint32(stor151)
                                             gas gas_remaining wei
                                            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
                                    else:
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        owner = msg.sender
                                        emit OwnershipTransferred(0, msg.sender);
                                        uint8(stor0.field_8) = 0
                                        uint8(stor0.field_8) = 0
                                        require ext_code.size(arg2)
                                        staticcall arg2.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(vaultAddress)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        54,
                                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                        mem[218 len 10]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(arg2):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[324 len 0] = 0
                                        call arg2 with:
                                           funct uint32(stor151)
                                             gas gas_remaining wei
                                            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor151), uint32(stor151), -1
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor151):
            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit 0x9c681589: address(arg1), arg2
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
