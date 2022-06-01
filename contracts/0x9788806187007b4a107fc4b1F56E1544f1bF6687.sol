contract main {




// =====================  Runtime code  =====================


address owner;
address sub_eb1b1a7eAddress;
address sub_35b390abAddress;
address adminAddress;
uint256 buyFee;
uint256 sub_70add8b8;
uint8 stor6;

function sub_35b390ab(?) payable {
    return sub_35b390abAddress
}

function buyFee() payable {
    return buyFee
}

function sub_70add8b8(?) payable {
    return sub_70add8b8
}

function owner() payable {
    return owner
}

function sub_eb1b1a7e(?) payable {
    return sub_eb1b1a7eAddress
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

function setBuyFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    if arg1 > sub_70add8b8:
        revert with 0, 'fee must be mess than maxBuyFee'
    buyFee = arg1
    emit UpdateBuyFee(buyFee, arg1);
}

function sub_1c8929a0(?) payable {
    require ext_code.size(sub_35b390abAddress)
    staticcall sub_35b390abAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_b6732bb3(?) payable {
    require ext_code.size(sub_eb1b1a7eAddress)
    staticcall sub_eb1b1a7eAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(sub_35b390abAddress)
    call sub_35b390abAddress.0x23b872dd with:
         gas gas_remaining wei
        args this.address, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit EmergencyWithdraw(arg1, msg.sender);
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

function sell(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor6) != 1:
        revert with 0, 'ApeSwap: LOCKED'
    stor6 = 0
    require ext_code.size(sub_35b390abAddress)
    staticcall sub_35b390abAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(sub_35b390abAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    call sub_35b390abAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
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
    require ext_code.size(sub_35b390abAddress)
    staticcall sub_35b390abAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(sub_eb1b1a7eAddress)
    call sub_eb1b1a7eAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Sell(arg1, msg.sender);
    stor6 = 1
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor6) != 1:
        revert with 0, 'ApeSwap: LOCKED'
    stor6 = 0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(sub_eb1b1a7eAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    call sub_eb1b1a7eAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if not arg1:
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(sub_35b390abAddress)
            call sub_35b390abAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_eb1b1a7eAddress)
            call sub_eb1b1a7eAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args 57005, 0
        else:
            if buyFee * arg1 / arg1 != buyFee:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
            if buyFee * arg1 / 10000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(sub_35b390abAddress)
            call sub_35b390abAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1 - (buyFee * arg1 / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_eb1b1a7eAddress)
            call sub_eb1b1a7eAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args 57005, buyFee * arg1 / 10000
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
        if not arg1:
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(sub_35b390abAddress)
            call sub_35b390abAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_eb1b1a7eAddress)
            call sub_eb1b1a7eAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args 57005, 0
        else:
            if buyFee * arg1 / arg1 != buyFee:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            if buyFee * arg1 / 10000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(sub_35b390abAddress)
            call sub_35b390abAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1 - (buyFee * arg1 / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_eb1b1a7eAddress)
            call sub_eb1b1a7eAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args 57005, buyFee * arg1 / 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Buy(arg1, msg.sender);
    stor6 = 1
}



}
