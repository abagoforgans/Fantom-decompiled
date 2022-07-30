contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - depositFor(uint256 arg1, address arg2)
#  - initialize(address arg1, address arg2)
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
uint128 stor1994; offset 160
address underlyingAddress;
uint256 underlyingUnit;
uint128 storA7EC; offset 160
address storA7EC;
uint32 storF1A1;
uint128 storF1A1; offset 160
address strategyAddress;
uint256 storF1A1;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function underlyingUnit() payable {
    return underlyingUnit
}

function underlying() payable {
    return underlyingAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function strategy() payable {
    return strategyAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function governance() payable {
    require ext_code.size(address(storA7EC.field_0))
    staticcall address(storA7EC.field_0).0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function controller() payable {
    require ext_code.size(address(storA7EC.field_0))
    staticcall address(storA7EC.field_0).0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function underlyingBalanceInVault() payable {
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setStorage(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(storA7EC.field_0))
    staticcall address(storA7EC.field_0).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if not arg1:
        revert with 0, 'new storage shouldn't be empty'
    address(storA7EC.field_0) = arg1
    Mask(96, 0, storA7EC.field_160) = 0
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
                    0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
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

function initializeGovernableInit(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        address(storA7EC.field_0) = arg1
        Mask(96, 0, storA7EC.field_160) = 0
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            address(storA7EC.field_0) = arg1
            Mask(96, 0, storA7EC.field_160) = 0
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            address(storA7EC.field_0) = arg1
            Mask(96, 0, storA7EC.field_160) = 0
            uint8(stor0.field_8) = 0
}

function initializeVaultStorage(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor0.field_8):
        underlyingAddress = arg1
        stor1994 = 0
        underlyingUnit = arg2
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            underlyingAddress = arg1
            stor1994 = 0
            underlyingUnit = arg2
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            underlyingAddress = arg1
            stor1994 = 0
            underlyingUnit = arg2
            uint8(stor0.field_8) = 0
}

function underlyingBalanceWithInvestment() payable {
    if not strategyAddress:
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0]
    require ext_code.size(strategyAddress)
    staticcall strategyAddress.investedUnderlyingBalance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function sub_c75e1448(?) payable {
    if not strategyAddress:
        revert with 0, 'undefined strategy'
    require ext_code.size(address(storA7EC.field_0))
    staticcall address(storA7EC.field_0).isController(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(storA7EC.field_0))
        staticcall address(storA7EC.field_0).isGovernance(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                        mem[207 len 21]
    require ext_code.size(strategyAddress)
    call strategyAddress.0xc75e1448 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawAll() payable {
    require ext_code.size(address(storA7EC.field_0))
    staticcall address(storA7EC.field_0).isController(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(storA7EC.field_0))
        staticcall address(storA7EC.field_0).isGovernance(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                        mem[207 len 21]
    if not strategyAddress:
        revert with 0, 'undefined strategy'
    require ext_code.size(strategyAddress)
    call strategyAddress.withdrawAllToVault() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
                    0x6545524332303a207472616e7366657220746f20746865207a65726f20616464726573,
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
    emit 0x65ddf252: arg2, msg.sender, arg1
    require ext_code.size(strategyAddress)
    call strategyAddress.updateUserRewardDebts(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(strategyAddress)
    call strategyAddress.updateUserRewardDebts(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function initializeControllableInit(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        address(storA7EC.field_0) = arg1
        Mask(96, 0, storA7EC.field_160) = 0
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            address(storA7EC.field_0) = arg1
            Mask(96, 0, storA7EC.field_160) = 0
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
                address(storA7EC.field_0) = arg1
                Mask(96, 0, storA7EC.field_160) = 0
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                address(storA7EC.field_0) = arg1
                Mask(96, 0, storA7EC.field_160) = 0
                uint8(stor0.field_8) = 0
                uint8(stor0.field_8) = 0
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
                    0x6545524332303a207472616e7366657220746f20746865207a65726f20616464726573,
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
    emit 0x65ddf252: arg3, arg1, arg2
    require ext_code.size(strategyAddress)
    call strategyAddress.updateUserRewardDebts(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(strategyAddress)
    call strategyAddress.updateUserRewardDebts(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function doHardWork() payable {
    if not strategyAddress:
        revert with 0, 'undefined strategy'
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(underlyingAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), ext_call.return_data[0 len 28]
        mem[324 len 0] = 0
        call underlyingAddress with:
           funct uint32(storF1A1.field_0)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
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
        emit Invest(ext_call.return_data[0]);
    require ext_code.size(strategyAddress)
    call strategyAddress.0x24a81939 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(strategyAddress)
    call strategyAddress.0xc75e1448 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function underlyingBalanceWithInvestmentForHolder(address arg1) payable {
    require calldata.size - 4 >= 32
    if not totalSupply:
        return 0
    if not strategyAddress:
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply:
                return (0 / totalSupply)
        else:
            if balanceOf[address(arg1)] * ext_call.return_data[0] / ext_call.return_data[0] != balanceOf[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply:
                return (balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply)
    else:
        require ext_code.size(strategyAddress)
        staticcall strategyAddress.investedUnderlyingBalance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * ext_call.return_data[0]:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply:
                return (0 / totalSupply)
        else:
            if (ext_call.return_data[0] * balanceOf[address(arg1)]) + (ext_call.return_data[0] * balanceOf[address(arg1)]) / 2 * ext_call.return_data[0] != balanceOf[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply:
                return ((ext_call.return_data[0] * balanceOf[address(arg1)]) + (ext_call.return_data[0] * balanceOf[address(arg1)]) / totalSupply)
    ('iszero', ('stor', ('name', 'totalSupply', 53)))
    revert
}

function sub_24a81939(?) payable {
    if not strategyAddress:
        revert with 0, 'undefined strategy'
    require ext_code.size(address(storA7EC.field_0))
    staticcall address(storA7EC.field_0).isController(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(storA7EC.field_0))
        staticcall address(storA7EC.field_0).isGovernance(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                        mem[207 len 21]
    if not strategyAddress:
        revert with 0, 'undefined strategy'
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(underlyingAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), ext_call.return_data[0 len 28]
        mem[324 len 0] = 0
        call underlyingAddress with:
           funct uint32(storF1A1.field_0)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
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
        emit Invest(ext_call.return_data[0]);
    require ext_code.size(strategyAddress)
    call strategyAddress.0x24a81939 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function rebalance() payable {
    require ext_code.size(address(storA7EC.field_0))
    staticcall address(storA7EC.field_0).isController(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(storA7EC.field_0))
    if ext_call.return_data[0]:
        staticcall address(storA7EC.field_0).isController(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if not strategyAddress:
                revert with 0, 'undefined strategy'
            require ext_code.size(strategyAddress)
            call strategyAddress.withdrawAllToVault() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not strategyAddress:
                revert with 0, 'undefined strategy'
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(underlyingAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), ext_call.return_data[0 len 28]
                call underlyingAddress with:
                   funct uint32(storF1A1.field_0)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), ext_call.return_data[0]
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
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
                emit Invest(ext_call.return_data[0]);
        else:
            require ext_code.size(address(storA7EC.field_0))
            staticcall address(storA7EC.field_0).isGovernance(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            43,
                            0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                            mem[207 len 21]
            if not strategyAddress:
                revert with 0, 'undefined strategy'
            require ext_code.size(strategyAddress)
            call strategyAddress.withdrawAllToVault() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not strategyAddress:
                revert with 0, 'undefined strategy'
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(underlyingAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), ext_call.return_data[0 len 28]
                mem[324 len 0] = 0
                call underlyingAddress with:
                   funct uint32(storF1A1.field_0)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), ext_call.return_data[0]
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
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
                emit Invest(ext_call.return_data[0]);
    else:
        staticcall address(storA7EC.field_0).isGovernance(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                        mem[207 len 21]
        require ext_code.size(address(storA7EC.field_0))
        staticcall address(storA7EC.field_0).isController(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(address(storA7EC.field_0))
            staticcall address(storA7EC.field_0).isGovernance(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            43,
                            0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                            mem[207 len 21]
        if not strategyAddress:
            revert with 0, 'undefined strategy'
        require ext_code.size(strategyAddress)
        call strategyAddress.withdrawAllToVault() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not strategyAddress:
            revert with 0, 'undefined strategy'
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(underlyingAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), ext_call.return_data[0 len 28]
            mem[324 len 0] = 0
            call underlyingAddress with:
               funct uint32(storF1A1.field_0)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), ext_call.return_data[0]
                if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
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
            emit Invest(ext_call.return_data[0]);
}

function setStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(storA7EC.field_0))
    staticcall address(storA7EC.field_0).isController(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if not arg1:
            revert with 0, 'empty strategy'
        require ext_code.size(arg1)
        staticcall arg1.0x6f307dc3 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != underlyingAddress:
            revert with 0, 'underlying not match'
        require ext_code.size(arg1)
        staticcall arg1.vault() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != this.address:
            revert with 0, 'strategy vault not match'
        strategyAddress = arg1
        Mask(96, 0, storF1A1.field_160) = 0
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(underlyingAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0
        mem[324 len 0] = 0
        call underlyingAddress with:
           funct uint32(storF1A1.field_0)
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0):
                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, strategyAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[382 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
            if not ext_code.size(underlyingAddress):
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = 0, strategyAddress, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call underlyingAddress with:
               funct uint32(storF1A1.field_0)
                 gas gas_remaining wei
                args -1, mem[360 len 28], mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0):
                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            else:
                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[456]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, strategyAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 383 len 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 531 len 26]
                if not ext_code.size(underlyingAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = 0, strategyAddress, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call underlyingAddress with:
                   funct uint32(storF1A1.field_0)
                     gas gas_remaining wei
                    args -1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0):
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                else:
                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
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
            else:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, strategyAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 383 len 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 531 len 26]
                if not ext_code.size(underlyingAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = 0, strategyAddress, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call underlyingAddress with:
                   funct uint32(storF1A1.field_0)
                     gas gas_remaining wei
                    args -1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0):
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                else:
                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
    else:
        require ext_code.size(address(storA7EC.field_0))
        staticcall address(storA7EC.field_0).isGovernance(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                        mem[207 len 21]
        if not arg1:
            revert with 0, 'empty strategy'
        require ext_code.size(arg1)
        staticcall arg1.0x6f307dc3 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != underlyingAddress:
            revert with 0, 'underlying not match'
        require ext_code.size(arg1)
        staticcall arg1.vault() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != this.address:
            revert with 0, 'strategy vault not match'
        strategyAddress = arg1
        Mask(96, 0, storF1A1.field_160) = 0
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(underlyingAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0
        mem[324 len 0] = 0
        call underlyingAddress with:
           funct uint32(storF1A1.field_0)
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0):
                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, strategyAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[382 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
            if not ext_code.size(underlyingAddress):
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = 0, strategyAddress, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call underlyingAddress with:
               funct uint32(storF1A1.field_0)
                 gas gas_remaining wei
                args -1, mem[360 len 28], mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0):
                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            else:
                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[456]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
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
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, strategyAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 383 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 531 len 26]
            if not ext_code.size(underlyingAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, strategyAddress, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call underlyingAddress with:
               funct uint32(storF1A1.field_0)
                 gas gas_remaining wei
                args -1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, storF1A1.field_0):
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
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
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if tx.origin == msg.sender:
        if not msg.sender:
            revert with 0, 'holder undefined'
        if not strategyAddress:
            require ext_code.size(strategyAddress)
            call strategyAddress.updateAccPerShare(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(strategyAddress)
            call strategyAddress.withdrawReward(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg1 > 0:
                if not totalSupply:
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if arg1 + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += arg1
                    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += arg1
                    emit 0x65ddf252: arg1, 0, msg.sender
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[416 len 4] = 0
                else:
                    if not strategyAddress:
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not arg1:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (0 / ext_call.return_data[0]) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += 0 / ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
                            emit 0x65ddf252: (0 / ext_call.return_data[0]), 0, msg.sender
                        else:
                            if totalSupply * arg1 / arg1 != totalSupply:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (totalSupply * arg1 / ext_call.return_data[0]) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += totalSupply * arg1 / ext_call.return_data[0]
                            if (totalSupply * arg1 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += totalSupply * arg1 / ext_call.return_data[0]
                            emit 0x65ddf252: (totalSupply * arg1 / ext_call.return_data[0]), 0, msg.sender
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if not ext_code.size(underlyingAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                    else:
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.investedUnderlyingBalance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not arg1:
                            if 2 * ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * ext_call.return_data[0]
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += 0 / 2 * ext_call.return_data[0]
                            if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += 0 / 2 * ext_call.return_data[0]
                            emit 0x65ddf252: (0 / 2 * ext_call.return_data[0]), 0, msg.sender
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if not ext_code.size(underlyingAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[416 len 4] = 0
                        else:
                            if totalSupply * arg1 / arg1 != totalSupply:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 2 * ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * ext_call.return_data[0]
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (totalSupply * arg1 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += totalSupply * arg1 / 2 * ext_call.return_data[0]
                            if (totalSupply * arg1 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += totalSupply * arg1 / 2 * ext_call.return_data[0]
                            emit 0x65ddf252: (totalSupply * arg1 / 2 * ext_call.return_data[0]), 0, msg.sender
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if not ext_code.size(underlyingAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[416 len 4] = 0
                            mem[388 len 0] = 0
                call underlyingAddress with:
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
                emit Deposit(arg1, msg.sender);
        else:
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(strategyAddress)
                call strategyAddress.0x24a81939 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(strategyAddress)
                call strategyAddress.0xc75e1448 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(strategyAddress)
                call strategyAddress.updateAccPerShare(address arg1) with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(strategyAddress)
                call strategyAddress.withdrawReward(address arg1) with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg1 > 0:
                    if not totalSupply:
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if arg1 + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += arg1
                        emit 0x65ddf252: arg1, 0, msg.sender
                    else:
                        if not strategyAddress:
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg1:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (0 / ext_call.return_data[0]) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += 0 / ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
                                emit 0x65ddf252: (0 / ext_call.return_data[0]), 0, msg.sender
                            else:
                                if totalSupply * arg1 / arg1 != totalSupply:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (totalSupply * arg1 / ext_call.return_data[0]) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += totalSupply * arg1 / ext_call.return_data[0]
                                if (totalSupply * arg1 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += totalSupply * arg1 / ext_call.return_data[0]
                                emit 0x65ddf252: (totalSupply * arg1 / ext_call.return_data[0]), 0, msg.sender
                        else:
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.investedUnderlyingBalance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not arg1:
                                if 2 * ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require 2 * ext_call.return_data[0]
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += 0 / 2 * ext_call.return_data[0]
                                if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += 0 / 2 * ext_call.return_data[0]
                                emit 0x65ddf252: (0 / 2 * ext_call.return_data[0]), 0, msg.sender
                            else:
                                if totalSupply * arg1 / arg1 != totalSupply:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 2 * ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require 2 * ext_call.return_data[0]
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (totalSupply * arg1 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += totalSupply * arg1 / 2 * ext_call.return_data[0]
                                if (totalSupply * arg1 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += totalSupply * arg1 / 2 * ext_call.return_data[0]
                                emit 0x65ddf252: (totalSupply * arg1 / 2 * ext_call.return_data[0]), 0, msg.sender
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[416 len 4] = 0
                    mem[388 len 0] = 0
                    call underlyingAddress with:
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
                    emit Deposit(arg1, msg.sender);
            else:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(underlyingAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), ext_call.return_data[0 len 28]
                mem[324 len 0] = 0
                call underlyingAddress with:
                   funct uint32(storF1A1.field_0)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), ext_call.return_data[0]
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
                        revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    emit Invest(ext_call.return_data[0]);
                    require ext_code.size(strategyAddress)
                    call strategyAddress.0x24a81939 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(strategyAddress)
                    call strategyAddress.0xc75e1448 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(strategyAddress)
                    call strategyAddress.updateAccPerShare(address arg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(strategyAddress)
                    call strategyAddress.withdrawReward(address arg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg1 > 0:
                        if not totalSupply:
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += arg1
                            emit 0x65ddf252: arg1, 0, msg.sender
                        else:
                            if not strategyAddress:
                                require ext_code.size(underlyingAddress)
                                staticcall underlyingAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not arg1:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if not msg.sender:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if (0 / ext_call.return_data[0]) + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += 0 / ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
                                    emit 0x65ddf252: (0 / ext_call.return_data[0]), 0, msg.sender
                                else:
                                    if totalSupply * arg1 / arg1 != totalSupply:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if not msg.sender:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if (totalSupply * arg1 / ext_call.return_data[0]) + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += totalSupply * arg1 / ext_call.return_data[0]
                                    if (totalSupply * arg1 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += totalSupply * arg1 / ext_call.return_data[0]
                                    emit 0x65ddf252: (totalSupply * arg1 / ext_call.return_data[0]), 0, msg.sender
                            else:
                                require ext_code.size(strategyAddress)
                                staticcall strategyAddress.investedUnderlyingBalance() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(underlyingAddress)
                                staticcall underlyingAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not arg1:
                                    if 2 * ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require 2 * ext_call.return_data[0]
                                    if not msg.sender:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += 0 / 2 * ext_call.return_data[0]
                                    if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += 0 / 2 * ext_call.return_data[0]
                                    emit 0x65ddf252: (0 / 2 * ext_call.return_data[0]), 0, msg.sender
                                else:
                                    if totalSupply * arg1 / arg1 != totalSupply:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    if 2 * ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require 2 * ext_call.return_data[0]
                                    if not msg.sender:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if (totalSupply * arg1 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += totalSupply * arg1 / 2 * ext_call.return_data[0]
                                    if (totalSupply * arg1 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += totalSupply * arg1 / 2 * ext_call.return_data[0]
                                    emit 0x65ddf252: (totalSupply * arg1 / 2 * ext_call.return_data[0]), 0, msg.sender
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                        if not ext_code.size(underlyingAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[456 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[580 len 4] = 0
                        call underlyingAddress with:
                             gas gas_remaining wei
                            args arg1, mem[392 len 60], mem[552 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), ext_call.return_data[0]
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[566 len 14],
                                            0,
                                            mem[584 len 4]
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
                        emit Deposit(arg1, msg.sender);
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        emit Invest(ext_call.return_data[0]);
                        require ext_code.size(strategyAddress)
                        call strategyAddress.0x24a81939 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(strategyAddress)
                        call strategyAddress.0xc75e1448 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(strategyAddress)
                        call strategyAddress.updateAccPerShare(address arg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(strategyAddress)
                        call strategyAddress.withdrawReward(address arg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg1 > 0:
                            if not totalSupply:
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += arg1
                                emit 0x65ddf252: arg1, 0, msg.sender
                            else:
                                if not strategyAddress:
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not arg1:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if not msg.sender:
                                            revert with 0, 'ERC20: mint to the zero address'
                                        if (0 / ext_call.return_data[0]) + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += 0 / ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
                                        emit 0x65ddf252: (0 / ext_call.return_data[0]), 0, msg.sender
                                    else:
                                        if totalSupply * arg1 / arg1 != totalSupply:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if not msg.sender:
                                            revert with 0, 'ERC20: mint to the zero address'
                                        if (totalSupply * arg1 / ext_call.return_data[0]) + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += totalSupply * arg1 / ext_call.return_data[0]
                                        if (totalSupply * arg1 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += totalSupply * arg1 / ext_call.return_data[0]
                                        emit 0x65ddf252: (totalSupply * arg1 / ext_call.return_data[0]), 0, msg.sender
                                else:
                                    require ext_code.size(strategyAddress)
                                    staticcall strategyAddress.investedUnderlyingBalance() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not arg1:
                                        if 2 * ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 2 * ext_call.return_data[0]
                                        if not msg.sender:
                                            revert with 0, 'ERC20: mint to the zero address'
                                        if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += 0 / 2 * ext_call.return_data[0]
                                        if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += 0 / 2 * ext_call.return_data[0]
                                        emit 0x65ddf252: (0 / 2 * ext_call.return_data[0]), 0, msg.sender
                                    else:
                                        if totalSupply * arg1 / arg1 != totalSupply:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        if 2 * ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 2 * ext_call.return_data[0]
                                        if not msg.sender:
                                            revert with 0, 'ERC20: mint to the zero address'
                                        if (totalSupply * arg1 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += totalSupply * arg1 / 2 * ext_call.return_data[0]
                                        if (totalSupply * arg1 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += totalSupply * arg1 / 2 * ext_call.return_data[0]
                                        emit 0x65ddf252: (totalSupply * arg1 / 2 * ext_call.return_data[0]), 0, msg.sender
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 563 len 26]
                            if not ext_code.size(underlyingAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 457 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[ceil32(return_data.size) + 581 len 4] = 0
                            call underlyingAddress with:
                                 gas gas_remaining wei
                                args arg1, mem[ceil32(return_data.size) + 393 len 60], mem[ceil32(return_data.size) + 553 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), ext_call.return_data[0]
                                if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 14],
                                                0,
                                                mem[ceil32(return_data.size) + 585 len 4]
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
                            emit Deposit(arg1, msg.sender);
                    else:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                        emit Invest(ext_call.return_data[0]);
                        require ext_code.size(strategyAddress)
                        call strategyAddress.0x24a81939 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(strategyAddress)
                        call strategyAddress.0xc75e1448 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(strategyAddress)
                        call strategyAddress.updateAccPerShare(address arg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(strategyAddress)
                        call strategyAddress.withdrawReward(address arg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg1 > 0:
                            if not totalSupply:
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += arg1
                                emit 0x65ddf252: arg1, 0, msg.sender
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 563 len 26]
                                if not ext_code.size(underlyingAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                call underlyingAddress with:
                                     gas gas_remaining wei
                                    args arg1, mem[ceil32(return_data.size) + 393 len 60], mem[ceil32(return_data.size) + 553 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 585 len 4]
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
                            else:
                                if not strategyAddress:
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not arg1:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if not msg.sender:
                                            revert with 0, 'ERC20: mint to the zero address'
                                        if (0 / ext_call.return_data[0]) + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += 0 / ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
                                        emit 0x65ddf252: (0 / ext_call.return_data[0]), 0, msg.sender
                                    else:
                                        if totalSupply * arg1 / arg1 != totalSupply:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if not msg.sender:
                                            revert with 0, 'ERC20: mint to the zero address'
                                        if (totalSupply * arg1 / ext_call.return_data[0]) + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += totalSupply * arg1 / ext_call.return_data[0]
                                        if (totalSupply * arg1 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += totalSupply * arg1 / ext_call.return_data[0]
                                        emit 0x65ddf252: (totalSupply * arg1 / ext_call.return_data[0]), 0, msg.sender
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 563 len 26]
                                    if not ext_code.size(underlyingAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 457 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[ceil32(return_data.size) + 581 len 4] = 0
                                    call underlyingAddress with:
                                         gas gas_remaining wei
                                        args arg1, mem[ceil32(return_data.size) + 393 len 60], mem[ceil32(return_data.size) + 553 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), ext_call.return_data[0]
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
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
                                else:
                                    require ext_code.size(strategyAddress)
                                    staticcall strategyAddress.investedUnderlyingBalance() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not arg1:
                                        if 2 * ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 2 * ext_call.return_data[0]
                                        if not msg.sender:
                                            revert with 0, 'ERC20: mint to the zero address'
                                        if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += 0 / 2 * ext_call.return_data[0]
                                        if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += 0 / 2 * ext_call.return_data[0]
                                        emit 0x65ddf252: (0 / 2 * ext_call.return_data[0]), 0, msg.sender
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 563 len 26]
                                        if not ext_code.size(underlyingAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 457 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[ceil32(return_data.size) + 581 len 4] = 0
                                        call underlyingAddress with:
                                             gas gas_remaining wei
                                            args arg1, mem[ceil32(return_data.size) + 393 len 60], mem[ceil32(return_data.size) + 553 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), ext_call.return_data[0]
                                            if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 567 len 14],
                                                            0,
                                                            mem[ceil32(return_data.size) + 585 len 4]
                                        else:
                                            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 489]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                    else:
                                        if totalSupply * arg1 / arg1 != totalSupply:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        if 2 * ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 2 * ext_call.return_data[0]
                                        if not msg.sender:
                                            revert with 0, 'ERC20: mint to the zero address'
                                        if (totalSupply * arg1 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += totalSupply * arg1 / 2 * ext_call.return_data[0]
                                        if (totalSupply * arg1 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += totalSupply * arg1 / 2 * ext_call.return_data[0]
                                        emit 0x65ddf252: (totalSupply * arg1 / 2 * ext_call.return_data[0]), 0, msg.sender
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 563 len 26]
                                        if not ext_code.size(underlyingAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 457 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[ceil32(return_data.size) + 581 len 4] = 0
                                        call underlyingAddress with:
                                             gas gas_remaining wei
                                            args arg1, mem[ceil32(return_data.size) + 393 len 60], mem[ceil32(return_data.size) + 553 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), ext_call.return_data[0]
                                            if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 567 len 14],
                                                            0,
                                                            mem[ceil32(return_data.size) + 585 len 4]
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
                            emit Deposit(arg1, msg.sender);
    else:
        require ext_code.size(address(storA7EC.field_0))
        staticcall address(storA7EC.field_0).0xf77c4791 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).greyList(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'grey listed'
        if not msg.sender:
            revert with 0, 'holder undefined'
        if not strategyAddress:
            require ext_code.size(strategyAddress)
            call strategyAddress.updateAccPerShare(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(strategyAddress)
            call strategyAddress.withdrawReward(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg1 > 0:
                if not totalSupply:
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if arg1 + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += arg1
                    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += arg1
                    emit 0x65ddf252: arg1, 0, msg.sender
                else:
                    if not strategyAddress:
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not arg1:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (0 / ext_call.return_data[0]) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += 0 / ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
                            emit 0x65ddf252: (0 / ext_call.return_data[0]), 0, msg.sender
                        else:
                            if totalSupply * arg1 / arg1 != totalSupply:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (totalSupply * arg1 / ext_call.return_data[0]) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += totalSupply * arg1 / ext_call.return_data[0]
                            if (totalSupply * arg1 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += totalSupply * arg1 / ext_call.return_data[0]
                            emit 0x65ddf252: (totalSupply * arg1 / ext_call.return_data[0]), 0, msg.sender
                    else:
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.investedUnderlyingBalance() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not arg1:
                            if 2 * ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * ext_call.return_data[0]
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += 0 / 2 * ext_call.return_data[0]
                            if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += 0 / 2 * ext_call.return_data[0]
                            emit 0x65ddf252: (0 / 2 * ext_call.return_data[0]), 0, msg.sender
                        else:
                            if totalSupply * arg1 / arg1 != totalSupply:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 2 * ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * ext_call.return_data[0]
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (totalSupply * arg1 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += totalSupply * arg1 / 2 * ext_call.return_data[0]
                            if (totalSupply * arg1 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += totalSupply * arg1 / 2 * ext_call.return_data[0]
                            emit 0x65ddf252: (totalSupply * arg1 / 2 * ext_call.return_data[0]), 0, msg.sender
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(underlyingAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
                call underlyingAddress with:
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
                emit Deposit(arg1, msg.sender);
        else:
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(strategyAddress)
                call strategyAddress.0x24a81939 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(strategyAddress)
                call strategyAddress.0xc75e1448 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(strategyAddress)
                call strategyAddress.updateAccPerShare(address arg1) with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(strategyAddress)
                call strategyAddress.withdrawReward(address arg1) with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg1 > 0:
                    if not totalSupply:
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if arg1 + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += arg1
                        emit 0x65ddf252: arg1, 0, msg.sender
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if not ext_code.size(underlyingAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                    else:
                        if not strategyAddress:
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg1:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (0 / ext_call.return_data[0]) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += 0 / ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
                                emit 0x65ddf252: (0 / ext_call.return_data[0]), 0, msg.sender
                            else:
                                if totalSupply * arg1 / arg1 != totalSupply:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (totalSupply * arg1 / ext_call.return_data[0]) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += totalSupply * arg1 / ext_call.return_data[0]
                                if (totalSupply * arg1 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += totalSupply * arg1 / ext_call.return_data[0]
                                emit 0x65ddf252: (totalSupply * arg1 / ext_call.return_data[0]), 0, msg.sender
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if not ext_code.size(underlyingAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[416 len 4] = 0
                            mem[388 len 0] = 0
                        else:
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.investedUnderlyingBalance() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not arg1:
                                if 2 * ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require 2 * ext_call.return_data[0]
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += 0 / 2 * ext_call.return_data[0]
                                if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += 0 / 2 * ext_call.return_data[0]
                                emit 0x65ddf252: (0 / 2 * ext_call.return_data[0]), 0, msg.sender
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(underlyingAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                            else:
                                if totalSupply * arg1 / arg1 != totalSupply:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 2 * ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require 2 * ext_call.return_data[0]
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if (totalSupply * arg1 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += totalSupply * arg1 / 2 * ext_call.return_data[0]
                                if (totalSupply * arg1 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += totalSupply * arg1 / 2 * ext_call.return_data[0]
                                emit 0x65ddf252: (totalSupply * arg1 / 2 * ext_call.return_data[0]), 0, msg.sender
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(underlyingAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                                mem[388 len 0] = 0
                    call underlyingAddress with:
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
                    emit Deposit(arg1, msg.sender);
            else:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(underlyingAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), ext_call.return_data[0 len 28]
                mem[324 len 0] = 0
                call underlyingAddress with:
                   funct uint32(storF1A1.field_0)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), ext_call.return_data[0]
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
                        revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    emit Invest(ext_call.return_data[0]);
                    require ext_code.size(strategyAddress)
                    call strategyAddress.0x24a81939 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(strategyAddress)
                    call strategyAddress.0xc75e1448 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(strategyAddress)
                    call strategyAddress.updateAccPerShare(address arg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(strategyAddress)
                    call strategyAddress.withdrawReward(address arg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg1 > 0:
                        if not totalSupply:
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += arg1
                            emit 0x65ddf252: arg1, 0, msg.sender
                        else:
                            if not strategyAddress:
                                require ext_code.size(underlyingAddress)
                                staticcall underlyingAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not arg1:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if not msg.sender:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if (0 / ext_call.return_data[0]) + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += 0 / ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
                                    emit 0x65ddf252: (0 / ext_call.return_data[0]), 0, msg.sender
                                else:
                                    if totalSupply * arg1 / arg1 != totalSupply:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if not msg.sender:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if (totalSupply * arg1 / ext_call.return_data[0]) + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += totalSupply * arg1 / ext_call.return_data[0]
                                    if (totalSupply * arg1 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += totalSupply * arg1 / ext_call.return_data[0]
                                    emit 0x65ddf252: (totalSupply * arg1 / ext_call.return_data[0]), 0, msg.sender
                            else:
                                require ext_code.size(strategyAddress)
                                staticcall strategyAddress.investedUnderlyingBalance() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(underlyingAddress)
                                staticcall underlyingAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not arg1:
                                    if 2 * ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require 2 * ext_call.return_data[0]
                                    if not msg.sender:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += 0 / 2 * ext_call.return_data[0]
                                    if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += 0 / 2 * ext_call.return_data[0]
                                    emit 0x65ddf252: (0 / 2 * ext_call.return_data[0]), 0, msg.sender
                                else:
                                    if totalSupply * arg1 / arg1 != totalSupply:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    if 2 * ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require 2 * ext_call.return_data[0]
                                    if not msg.sender:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if (totalSupply * arg1 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += totalSupply * arg1 / 2 * ext_call.return_data[0]
                                    if (totalSupply * arg1 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += totalSupply * arg1 / 2 * ext_call.return_data[0]
                                    emit 0x65ddf252: (totalSupply * arg1 / 2 * ext_call.return_data[0]), 0, msg.sender
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                        if not ext_code.size(underlyingAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[456 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[580 len 4] = 0
                        call underlyingAddress with:
                             gas gas_remaining wei
                            args arg1, mem[392 len 60], mem[552 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), ext_call.return_data[0]
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[566 len 14],
                                            0,
                                            mem[584 len 4]
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
                        emit Deposit(arg1, msg.sender);
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        emit Invest(ext_call.return_data[0]);
                        require ext_code.size(strategyAddress)
                        call strategyAddress.0x24a81939 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(strategyAddress)
                        call strategyAddress.0xc75e1448 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(strategyAddress)
                        call strategyAddress.updateAccPerShare(address arg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(strategyAddress)
                        call strategyAddress.withdrawReward(address arg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg1 > 0:
                            if not totalSupply:
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += arg1
                                emit 0x65ddf252: arg1, 0, msg.sender
                            else:
                                if not strategyAddress:
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not arg1:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if not msg.sender:
                                            revert with 0, 'ERC20: mint to the zero address'
                                        if (0 / ext_call.return_data[0]) + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += 0 / ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
                                        emit 0x65ddf252: (0 / ext_call.return_data[0]), 0, msg.sender
                                    else:
                                        if totalSupply * arg1 / arg1 != totalSupply:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if not msg.sender:
                                            revert with 0, 'ERC20: mint to the zero address'
                                        if (totalSupply * arg1 / ext_call.return_data[0]) + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += totalSupply * arg1 / ext_call.return_data[0]
                                        if (totalSupply * arg1 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += totalSupply * arg1 / ext_call.return_data[0]
                                        emit 0x65ddf252: (totalSupply * arg1 / ext_call.return_data[0]), 0, msg.sender
                                else:
                                    require ext_code.size(strategyAddress)
                                    staticcall strategyAddress.investedUnderlyingBalance() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not arg1:
                                        if 2 * ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 2 * ext_call.return_data[0]
                                        if not msg.sender:
                                            revert with 0, 'ERC20: mint to the zero address'
                                        if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += 0 / 2 * ext_call.return_data[0]
                                        if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += 0 / 2 * ext_call.return_data[0]
                                        emit 0x65ddf252: (0 / 2 * ext_call.return_data[0]), 0, msg.sender
                                    else:
                                        if totalSupply * arg1 / arg1 != totalSupply:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        if 2 * ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 2 * ext_call.return_data[0]
                                        if not msg.sender:
                                            revert with 0, 'ERC20: mint to the zero address'
                                        if (totalSupply * arg1 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += totalSupply * arg1 / 2 * ext_call.return_data[0]
                                        if (totalSupply * arg1 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += totalSupply * arg1 / 2 * ext_call.return_data[0]
                                        emit 0x65ddf252: (totalSupply * arg1 / 2 * ext_call.return_data[0]), 0, msg.sender
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 563 len 26]
                            if not ext_code.size(underlyingAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 457 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[ceil32(return_data.size) + 581 len 4] = 0
                            call underlyingAddress with:
                                 gas gas_remaining wei
                                args arg1, mem[ceil32(return_data.size) + 393 len 60], mem[ceil32(return_data.size) + 553 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), ext_call.return_data[0]
                                if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 14],
                                                0,
                                                mem[ceil32(return_data.size) + 585 len 4]
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
                            emit Deposit(arg1, msg.sender);
                    else:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                        emit Invest(ext_call.return_data[0]);
                        require ext_code.size(strategyAddress)
                        call strategyAddress.0x24a81939 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(strategyAddress)
                        call strategyAddress.0xc75e1448 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(strategyAddress)
                        call strategyAddress.updateAccPerShare(address arg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(strategyAddress)
                        call strategyAddress.withdrawReward(address arg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg1 > 0:
                            if not totalSupply:
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += arg1
                                emit 0x65ddf252: arg1, 0, msg.sender
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 563 len 26]
                                if not ext_code.size(underlyingAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                call underlyingAddress with:
                                     gas gas_remaining wei
                                    args arg1, mem[ceil32(return_data.size) + 393 len 60], mem[ceil32(return_data.size) + 553 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 585 len 4]
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
                            else:
                                if not strategyAddress:
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not arg1:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if not msg.sender:
                                            revert with 0, 'ERC20: mint to the zero address'
                                        if (0 / ext_call.return_data[0]) + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += 0 / ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
                                        emit 0x65ddf252: (0 / ext_call.return_data[0]), 0, msg.sender
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 563 len 26]
                                        if not ext_code.size(underlyingAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 457 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[ceil32(return_data.size) + 581 len 4] = 0
                                        call underlyingAddress with:
                                             gas gas_remaining wei
                                            args arg1, mem[ceil32(return_data.size) + 393 len 60], mem[ceil32(return_data.size) + 553 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), ext_call.return_data[0]
                                            if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 567 len 14],
                                                            0,
                                                            mem[ceil32(return_data.size) + 585 len 4]
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
                                    else:
                                        if totalSupply * arg1 / arg1 != totalSupply:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if not msg.sender:
                                            revert with 0, 'ERC20: mint to the zero address'
                                        if (totalSupply * arg1 / ext_call.return_data[0]) + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += totalSupply * arg1 / ext_call.return_data[0]
                                        if (totalSupply * arg1 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += totalSupply * arg1 / ext_call.return_data[0]
                                        emit 0x65ddf252: (totalSupply * arg1 / ext_call.return_data[0]), 0, msg.sender
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 563 len 26]
                                        if not ext_code.size(underlyingAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 457 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[ceil32(return_data.size) + 581 len 4] = 0
                                        call underlyingAddress with:
                                             gas gas_remaining wei
                                            args arg1, mem[ceil32(return_data.size) + 393 len 60], mem[ceil32(return_data.size) + 553 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), ext_call.return_data[0]
                                            if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 567 len 14],
                                                            0,
                                                            mem[ceil32(return_data.size) + 585 len 4]
                                        else:
                                            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 489]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                else:
                                    require ext_code.size(strategyAddress)
                                    staticcall strategyAddress.investedUnderlyingBalance() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(underlyingAddress)
                                    staticcall underlyingAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not arg1:
                                        if 2 * ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 2 * ext_call.return_data[0]
                                        if not msg.sender:
                                            revert with 0, 'ERC20: mint to the zero address'
                                        if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += 0 / 2 * ext_call.return_data[0]
                                        if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += 0 / 2 * ext_call.return_data[0]
                                        emit 0x65ddf252: (0 / 2 * ext_call.return_data[0]), 0, msg.sender
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 563 len 26]
                                        if not ext_code.size(underlyingAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 457 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[ceil32(return_data.size) + 581 len 4] = 0
                                        call underlyingAddress with:
                                             gas gas_remaining wei
                                            args arg1, mem[ceil32(return_data.size) + 393 len 60], mem[ceil32(return_data.size) + 553 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), ext_call.return_data[0]
                                            if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 567 len 14],
                                                            0,
                                                            mem[ceil32(return_data.size) + 585 len 4]
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
                                    else:
                                        if totalSupply * arg1 / arg1 != totalSupply:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        if 2 * ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 2 * ext_call.return_data[0]
                                        if not msg.sender:
                                            revert with 0, 'ERC20: mint to the zero address'
                                        if (totalSupply * arg1 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += totalSupply * arg1 / 2 * ext_call.return_data[0]
                                        if (totalSupply * arg1 / 2 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += totalSupply * arg1 / 2 * ext_call.return_data[0]
                                        emit 0x65ddf252: (totalSupply * arg1 / 2 * ext_call.return_data[0]), 0, msg.sender
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 563 len 26]
                                        if not ext_code.size(underlyingAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 457 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[ceil32(return_data.size) + 581 len 4] = 0
                                        call underlyingAddress with:
                                             gas gas_remaining wei
                                            args arg1, mem[ceil32(return_data.size) + 393 len 60], mem[ceil32(return_data.size) + 553 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0), uint32(storF1A1.field_0), ext_call.return_data[0]
                                            if not unknown_0xa9059cbb(?????), Mask(224, 0, storF1A1.field_0):
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 567 len 14],
                                                            0,
                                                            mem[ceil32(return_data.size) + 585 len 4]
                                        else:
                                            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 489]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 568 len 22]
                            emit Deposit(arg1, msg.sender);
    require ext_code.size(strategyAddress)
    call strategyAddress.updateUserRewardDebts(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
