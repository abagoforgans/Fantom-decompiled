contract main {




// =====================  Runtime code  =====================


address owner;
address adminAddress;
uint256 buyFee;
uint256 sub_70add8b8;
mapping of struct assets;
mapping of uint8 stor5;
uint8 stor6;

function buyFee() payable {
    return buyFee
}

function sub_54ac4a1a(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function sub_70add8b8(?) payable {
    return sub_70add8b8
}

function owner() payable {
    return owner
}

function assets(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return assets[arg1].field_0, assets[arg1].field_256, assets[arg1].field_512, bool(assets[arg1].field_768)
}

function adminAddress() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    adminAddress = arg1
    emit AdminTransferred(adminAddress, arg1);
}

function sub_eaf68837(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_094e67c3(?) payable {
    require calldata.size - 4 >= 160
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    if stor5[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73537974686574696320617373657420776974682074686520494420616c726561647920657869737473,
                    mem[206 len 22]
    assets[arg3].field_0 = arg1
    assets[arg3].field_256 = arg2
    assets[arg3].field_512 = arg4
    assets[arg3].field_768 = uint8(arg5)
    stor5[arg3] = 1
}

function sub_3ae66db7(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor5[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x6c53796e74686574696320617373657420776974682074686520494420646f65736e27742065786973,
                    mem[205 len 23]
    require ext_code.size(assets[arg2].field_0)
    call assets[arg2].field_0.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(assets[arg2].field_256)
    call assets[arg2].field_256.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit EmergencyWithdraw(arg1, msg.sender);
}

function sell(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if bool(stor6) != 1:
        revert with 0, 'TotemSwap: LOCKED'
    stor6 = 0
    if not stor5[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x6c53796e74686574696320617373657420776974682074686520494420646f65736e27742065786973,
                    mem[205 len 23]
    require ext_code.size(assets[arg2].field_0)
    staticcall assets[arg2].field_0.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(assets[arg2].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    call assets[arg2].field_0 with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(assets[arg2].field_0)
    staticcall assets[arg2].field_0.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(assets[arg2].field_256)
    call assets[arg2].field_256.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Sell(arg2, arg1, msg.sender);
    stor6 = 1
}

function buy(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if bool(stor6) != 1:
        revert with 0, 'TotemSwap: LOCKED'
    stor6 = 0
    if bool(stor5[arg2]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x6c53796e74686574696320617373657420776974682074686520494420646f65736e27742065786973,
                    mem[205 len 23]
    if not assets[arg2].field_768:
        if not arg1:
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(assets[arg2].field_0)
            call assets[arg2].field_0.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(assets[arg2].field_0)
            call assets[arg2].field_0.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 57005, 0
        else:
            if assets[arg2].field_512 * arg1 / arg1 != assets[arg2].field_512:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if assets[arg2].field_512 * arg1 / 10000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(assets[arg2].field_0)
            call assets[arg2].field_0.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1 - (assets[arg2].field_512 * arg1 / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(assets[arg2].field_0)
            call assets[arg2].field_0.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 57005, assets[arg2].field_512 * arg1 / 10000
    else:
        if not arg1:
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(assets[arg2].field_0)
            call assets[arg2].field_0.mint(uint256 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(assets[arg2].field_0)
            call assets[arg2].field_0.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
        else:
            if assets[arg2].field_512 * arg1 / arg1 != assets[arg2].field_512:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if assets[arg2].field_512 * arg1 / 10000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(assets[arg2].field_0)
            call assets[arg2].field_0.mint(uint256 arg1) with:
                 gas gas_remaining wei
                args (arg1 - (assets[arg2].field_512 * arg1 / 10000))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(assets[arg2].field_0)
            call assets[arg2].field_0.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1 - (assets[arg2].field_512 * arg1 / 10000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Buy(arg1, arg2, msg.sender);
    stor6 = 1
}



}
