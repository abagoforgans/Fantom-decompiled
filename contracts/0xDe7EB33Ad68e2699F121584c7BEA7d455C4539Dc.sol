contract main {




// =====================  Runtime code  =====================


address owner;
address rewardTokenAddress;
address nativeAddress;
address stakingTokenAddress;
address masterContractAddress;
address sub_9fc4e5f3Address;
address strategyAddress;
address unirouterAddress;
address feeDistroAddress;
address stor12;
uint256 WITHDRAWAL_MAX;
uint256 WITHDRAW_FEE;
uint256 MAX_FEE;
uint256 CALL_FEE;
uint256 STRATEGIST_FEE;
uint256 FEE_BATCH;
uint256 PLATFORM_FEE;
uint8 autocompound;
uint256 lastReward;
address stor26;

function FEE_BATCH() payable {
    return FEE_BATCH
}

function native() payable {
    return nativeAddress
}

function unirouter() payable {
    return unirouterAddress
}

function autocompound() payable {
    return bool(autocompound)
}

function PLATFORM_FEE() payable {
    return PLATFORM_FEE
}

function WITHDRAWAL_MAX() payable {
    return WITHDRAWAL_MAX
}

function stakingToken() payable {
    return stakingTokenAddress
}

function STRATEGIST_FEE() payable {
    return STRATEGIST_FEE
}

function owner() payable {
    return owner
}

function CALL_FEE() payable {
    return CALL_FEE
}

function WITHDRAW_FEE() payable {
    return WITHDRAW_FEE
}

function sub_9fc4e5f3(?) payable {
    return sub_9fc4e5f3Address
}

function strategy() payable {
    return strategyAddress
}

function MAX_FEE() payable {
    return MAX_FEE
}

function lastReward() payable {
    return lastReward
}

function masterContract() payable {
    return masterContractAddress
}

function feeDistro() payable {
    return feeDistroAddress
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function sub_5edddd29(?) payable {
    require calldata.size - 4 >= 32
    if stor12 != msg.sender:
        revert with 0, '!strategist'
    stor26 = arg1
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
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function claim() payable {
    if stor26 != msg.sender:
        revert with 0, '!auth'
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(rewardTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
    call rewardTokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[356 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[402 len 22]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 
                        32,
                        42,
                        0x6c5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                        mem[270 len 22],
                        Mask(80, 0, ext_call.return_data[0 len 28])
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
}



}
