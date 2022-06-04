contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#  - chargeFees(uint256 arg1)
#
address owner;
address rewardTokenAddress;
address nativeAddress;
address stakingTokenAddress;
address masterContractAddress;
address sub_9fc4e5f3Address;
uint32 stor6;
address strategyAddress;
uint256 stor6;
array of struct stor7;
array of struct stor9;
uint32 stor10;
address unirouterAddress;
uint256 stor10;
address feeDistroAddress;
address stor12;
address stor14;
uint256 WITHDRAWAL_MAX;
uint256 WITHDRAW_FEE;
uint256 MAX_FEE;
uint256 CALL_FEE;
uint256 STRATEGIST_FEE;
uint256 FEE_BATCH;
uint256 PLATFORM_FEE;
uint8 autocompound;
uint256 sub_a91dbf95;
uint256 reset;
uint256 lastReward;

function FEE_BATCH() payable {
    return FEE_BATCH
}

function native() payable {
    return nativeAddress
}

function unirouter() payable {
    return address(unirouterAddress)
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
    return address(strategyAddress)
}

function sub_a91dbf95(?) payable {
    return sub_a91dbf95
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

function reset() payable {
    return reset
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function sub_7399442f(?) payable {
    require calldata.size - 4 >= 32
    if stor12 != msg.sender:
        revert with 0, '!auth'
    sub_a91dbf95 = arg1
    reset = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setStakingToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor12 != msg.sender:
        revert with 0, '!strategist'
    stakingTokenAddress = arg1
}

function setHarvester(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor14 = arg1
}

function sub_556a795a(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    autocompound = uint8(arg1)
}

function setFeeDistributor(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    feeDistroAddress = arg1
}

function setStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(strategyAddress) = arg1
}

function setMasterContract(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    masterContractAddress = arg1
}

function sub_467bc28e(?) payable {
    require calldata.size - 4 >= 32
    if masterContractAddress != msg.sender:
        if stor12 != msg.sender:
            revert with 0, '!masterContract||strategist'
    lastReward = arg1
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor12 != msg.sender:
        revert with 0, '!auth'
    CALL_FEE = arg1
    STRATEGIST_FEE = arg2
    WITHDRAW_FEE = arg3
    FEE_BATCH = arg4
}

function sub_f3587366(?) payable {
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfStake() payable {
    require ext_code.size(stakingTokenAddress)
    staticcall stakingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_5edb21d1(?) payable {
    require ext_code.size(masterContractAddress)
    call masterContractAddress.0x91e0029b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    lastReward = ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_695f4966(?) payable {
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_a91dbf95 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_a91dbf95
    return (ext_call.return_data[0] / sub_a91dbf95)
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

function sub_80fc56f6(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor12 != msg.sender:
        revert with 0, '!auth'
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    if arg3 <= ext_call.return_data[0]:
        mem[292 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
        call arg1 with:
             gas gas_remaining wei
            args Mask(224, 32, arg3) << 224, mem[356 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3
            if not unknown_0xa9059cbb(?????), address(arg2) << 64:
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[402 len 22]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                            mem[270 len 22],
                            Mask(80, 32, arg3) >> 32
            if return_data.size:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
    else:
        mem[292 len 64] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0
        mem[356 len 0] = 0
        call arg1 with:
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0) << 256, mem[356 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0
            if not approve(address arg1, uint256 arg2), address(arg2) << 64:
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[402 len 22]
            require ext_code.size(arg1)
            staticcall arg1.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[414 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[488 len 64] = 0, address(arg2), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call arg1 with:
                 gas gas_remaining wei
                args -1, mem[392 len 28], mem[552 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0
                if not approve(address arg1, uint256 arg2), address(arg2) << 64:
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[598 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[790 len 26]
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[684 len 64] = 0, address(arg2), Mask(224, 32, arg3) >> 32
                call arg1 with:
                     gas gas_remaining wei
                    args arg3, mem[588 len 28], mem[748 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0
                    if not approve(address arg1, uint256 arg2), address(arg2) << 64:
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[794 len 22]
                else:
                    mem[716 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                    mem[662 len 22],
                                    Mask(80, 32, arg3) >> 32
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[716]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 795 len 22]
            else:
                mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                mem[466 len 22],
                                Mask(80, 0, 0, address(arg2), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[520]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 599 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 791 len 26]
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 685 len 64] = 0, address(arg2), Mask(224, 32, arg3) >> 32
                call arg1 with:
                     gas gas_remaining wei
                    args arg3, mem[ceil32(return_data.size) + 589 len 28], mem[ceil32(return_data.size) + 749 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0
                    if not approve(address arg1, uint256 arg2), address(arg2) << 64:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 795 len 22]
                else:
                    mem[ceil32(return_data.size) + 717 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                    mem[ceil32(return_data.size) + 663 len 22],
                                    Mask(80, 32, arg3) << 144,
                                    mem[(2 * ceil32(return_data.size)) + 818 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 717]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 796 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                            mem[270 len 22],
                            Mask(80, 0, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0)
            if not return_data.size:
                require ext_code.size(arg1)
                staticcall arg1.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 415 len 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 595 len 26]
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 489 len 64] = 0, address(arg2), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call arg1 with:
                     gas gas_remaining wei
                    args -1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0
                    if not approve(address arg1, uint256 arg2), address(arg2) << 64:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 599 len 22]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 791 len 26]
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 685 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
                    call arg1 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg3) << 224, mem[ceil32(return_data.size) + 749 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0
                        if not approve(address arg1, uint256 arg2), address(arg2) << 64:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 795 len 22]
                    else:
                        mem[ceil32(return_data.size) + 717 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                        mem[ceil32(return_data.size) + 663 len 22],
                                        Mask(80, 32, arg3) >> 32
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 717]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 796 len 22]
                else:
                    mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                    mem[ceil32(return_data.size) + 467 len 22],
                                    Mask(80, 0, return_data.size)
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 521]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 600 len 22]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(2 * ceil32(return_data.size)) + 792 len 26]
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 686 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
                    mem[(2 * ceil32(return_data.size)) + 750 len 0] = 0
                    call arg1 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg3) << 224, mem[(2 * ceil32(return_data.size)) + 750 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0
                        if not approve(address arg1, uint256 arg2), address(arg2) << 64:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 796 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 718 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                        mem[(2 * ceil32(return_data.size)) + 664 len 22],
                                        Mask(80, 32, arg3) >> 32
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 718]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 797 len 22]
            else:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
                require ext_code.size(arg1)
                staticcall arg1.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 415 len 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 595 len 26]
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 489 len 64] = 0, address(arg2), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call arg1 with:
                     gas gas_remaining wei
                    args -1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0
                    if not approve(address arg1, uint256 arg2), address(arg2) << 64:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 599 len 22]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 791 len 26]
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 685 len 64] = 0, address(arg2), Mask(224, 32, arg3) >> 32
                    call arg1 with:
                         gas gas_remaining wei
                        args arg3, mem[ceil32(return_data.size) + 589 len 28], mem[ceil32(return_data.size) + 749 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0
                        if not approve(address arg1, uint256 arg2), address(arg2) << 64:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 795 len 22]
                    else:
                        mem[ceil32(return_data.size) + 717 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                        mem[ceil32(return_data.size) + 663 len 22],
                                        Mask(80, 32, arg3) << 144,
                                        mem[(2 * ceil32(return_data.size)) + 818 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 717]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 796 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                    mem[ceil32(return_data.size) + 467 len 22],
                                    0, address(arg2), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff << 176,
                                    mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 521]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(2 * ceil32(return_data.size)) + 792 len 26]
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 686 len 64] = 0, address(arg2), Mask(224, 32, arg3) >> 32
                    call arg1 with:
                         gas gas_remaining wei
                        args arg3, mem[(2 * ceil32(return_data.size)) + 590 len 28], mem[(2 * ceil32(return_data.size)) + 750 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0
                        if not approve(address arg1, uint256 arg2), address(arg2) << 64:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 796 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 718 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                        mem[(2 * ceil32(return_data.size)) + 664 len 22],
                                        Mask(80, 32, arg3) >> 32
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 718]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 797 len 22]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(strategyAddress) != msg.sender:
        revert with 0, '!auth'
    require ext_code.size(stakingTokenAddress)
    staticcall stakingTokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(strategyAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(stakingTokenAddress):
        revert with 0, 'Address: call to non-contract'
    if arg1 <= ext_call.return_data[0]:
        mem[292 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), Mask(224, 32, arg1) >> 32
        call stakingTokenAddress with:
           funct uint32(stor6)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[356 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), arg1
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor6):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[402 len 22]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                            mem[270 len 22],
                            Mask(80, 32, arg1) >> 32
            if return_data.size:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
    else:
        mem[292 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0
        call stakingTokenAddress with:
           funct uint32(stor6)
             gas gas_remaining wei
            args 0, mem[356 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[402 len 22]
            require ext_code.size(stakingTokenAddress)
            staticcall stakingTokenAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(strategyAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[414 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
            if not ext_code.size(stakingTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[488 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call stakingTokenAddress with:
               funct uint32(stor6)
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[552 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6):
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[598 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[790 len 26]
                if not ext_code.size(stakingTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[684 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), Mask(224, 32, arg1) >> 32
                mem[748 len 0] = 0
                call stakingTokenAddress with:
                   funct uint32(stor6)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[748 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6):
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[794 len 22]
                else:
                    mem[716 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                    mem[662 len 22],
                                    Mask(80, 32, arg1) >> 32
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[716]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 795 len 22]
            else:
                mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                mem[466 len 22],
                                Mask(80, 0, return_data.size)
                if not return_data.size:
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 791 len 26]
                    if not ext_code.size(stakingTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 685 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), Mask(224, 32, arg1) >> 32
                    call stakingTokenAddress with:
                       funct uint32(stor6)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 749 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6):
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 795 len 22]
                    else:
                        mem[ceil32(return_data.size) + 717 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                        mem[ceil32(return_data.size) + 663 len 22],
                                        Mask(80, 32, arg1) >> 32
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 717]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 796 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    require return_data.size >= 32
                    if not mem[520]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 599 len 22]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 791 len 26]
                    if not ext_code.size(stakingTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 685 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), Mask(224, 32, arg1) >> 32
                    mem[ceil32(return_data.size) + 749 len 0] = 0
                    call stakingTokenAddress with:
                       funct uint32(stor6)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 749 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6):
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 795 len 22]
                    else:
                        mem[ceil32(return_data.size) + 717 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                        mem[ceil32(return_data.size) + 663 len 22],
                                        Mask(80, 32, arg1) >> 32
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 717]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 796 len 22]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                            mem[270 len 22],
                            Mask(80, 0, return_data.size)
            if not return_data.size:
                require ext_code.size(stakingTokenAddress)
                staticcall stakingTokenAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(strategyAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 415 len 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 595 len 26]
                if not ext_code.size(stakingTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 489 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[ceil32(return_data.size) + 553 len 0] = 0
                call stakingTokenAddress with:
                   funct uint32(stor6)
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 599 len 22]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 791 len 26]
                    if not ext_code.size(stakingTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 685 len 64] = 0, address(strategyAddress), Mask(224, 32, arg1) >> 32
                    call stakingTokenAddress with:
                       funct uint32(stor6)
                         gas gas_remaining wei
                        args arg1, mem[ceil32(return_data.size) + 589 len 28], mem[ceil32(return_data.size) + 749 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6):
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 795 len 22]
                    else:
                        mem[ceil32(return_data.size) + 717 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                        mem[ceil32(return_data.size) + 663 len 22],
                                        Mask(80, 32, arg1) << 144,
                                        mem[(2 * ceil32(return_data.size)) + 818 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 717]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 796 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                    mem[ceil32(return_data.size) + 467 len 22],
                                    Mask(80, 0, approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 521]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 600 len 22]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(2 * ceil32(return_data.size)) + 792 len 26]
                    if not ext_code.size(stakingTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 686 len 64] = 0, address(strategyAddress), Mask(224, 32, arg1) >> 32
                    call stakingTokenAddress with:
                       funct uint32(stor6)
                         gas gas_remaining wei
                        args arg1, mem[(2 * ceil32(return_data.size)) + 590 len 28], mem[(2 * ceil32(return_data.size)) + 750 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6):
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 796 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 718 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                        mem[(2 * ceil32(return_data.size)) + 664 len 22],
                                        Mask(80, 32, arg1) >> 32
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 718]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 797 len 22]
            else:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
                require ext_code.size(stakingTokenAddress)
                staticcall stakingTokenAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(strategyAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 415 len 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 595 len 26]
                if not ext_code.size(stakingTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 489 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[ceil32(return_data.size) + 553 len 0] = 0
                call stakingTokenAddress with:
                   funct uint32(stor6)
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 599 len 22]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 791 len 26]
                    if not ext_code.size(stakingTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 685 len 64] = 0, address(strategyAddress), Mask(224, 32, arg1) >> 32
                    call stakingTokenAddress with:
                       funct uint32(stor6)
                         gas gas_remaining wei
                        args arg1, mem[ceil32(return_data.size) + 589 len 28], mem[ceil32(return_data.size) + 749 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6):
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 795 len 22]
                    else:
                        mem[ceil32(return_data.size) + 717 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                        mem[ceil32(return_data.size) + 663 len 22],
                                        Mask(80, 32, arg1) >> 32
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 717]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 796 len 22]
                else:
                    mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                    mem[ceil32(return_data.size) + 467 len 22],
                                    Mask(80, 0, approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 521]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 600 len 22]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(2 * ceil32(return_data.size)) + 792 len 26]
                    if not ext_code.size(stakingTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 686 len 64] = 0, address(strategyAddress), Mask(224, 32, arg1) >> 32
                    call stakingTokenAddress with:
                       funct uint32(stor6)
                         gas gas_remaining wei
                        args arg1, mem[(2 * ceil32(return_data.size)) + 590 len 28], mem[(2 * ceil32(return_data.size)) + 750 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6):
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 796 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 718 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                        mem[(2 * ceil32(return_data.size)) + 664 len 22],
                                        Mask(80, 32, arg1) >> 32
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 718]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 797 len 22]
}

function sub_42f0c53f(?) payable {
    require calldata.size - 4 >= 32
    if stor12 != msg.sender:
        revert with 0, '!auth for customPay'
    mem[96] = rewardTokenAddress
    mem[128] = stakingTokenAddress
    stor9.length = 2
    mem[0] = 9
    s = 0
    idx = 96
    while 160 > idx:
        stor9[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor9.length > idx:
        stor9[idx].field_0 = 0
        idx = idx + 1
        continue 
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(unirouterAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 <= ext_call.return_data[0]:
        if block.timestamp + 600 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        mem[160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[164] = arg1
        mem[196] = 0
        mem[260] = this.address
        mem[292] = block.timestamp + 600
        mem[228] = 160
        mem[324] = stor9.length
        if not stor9.length:
            require ext_code.size(address(unirouterAddress))
            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, uint32(arg1), 0, 160, address(this.address), block.timestamp + 600, stor9.length
        else:
            mem[0] = 9
            mem[356] = address(stor9.field_0)
            idx = 356
            s = 0
            while (32 * stor9.length) + 356 > idx + 32:
                mem[idx + 32] = stor9[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(address(unirouterAddress))
            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, uint32(arg1), 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[356 len 32 * stor9.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 160
        require return_data.size >= 32
        require mem[160 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[160 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[160 len 4], Mask(224, 32, arg1) >> 32 + 160] <= 4294967296 and mem[160 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 32 <= return_data.size
    else:
        mem[196] = address(unirouterAddress)
        mem[228] = 0
        mem[160] = 68
        mem[196 len 28] = Mask(224, 0, stor10)
        mem[192 len 4] = approve(address arg1, uint256 arg2)
        mem[260] = 42
        mem[292 len 42] = 0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
        if not ext_code.size(rewardTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[356 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 0
        mem[448 len 4] = 0
        mem[420 len 0] = 0
        call rewardTokenAddress with:
           funct uint32(stor10)
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 0) << 256, mem[420 len 4]
        if not return_data.size:
            if not ext_call.success:
                if rewardTokenAddress:
                    revert with memory
                      from 128
                       len rewardTokenAddress
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                            mem[334 len 22],
                            Mask(80, 0, approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 0)
            if rewardTokenAddress:
                require rewardTokenAddress >= 32
                if not stakingTokenAddress:
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[466 len 22]
            require ext_code.size(rewardTokenAddress)
            staticcall rewardTokenAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(unirouterAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[478 len 10]
            mem[392] = address(unirouterAddress)
            mem[424] = -1
            mem[356] = 68
            mem[388 len 4] = approve(address arg1, uint256 arg2)
            mem[456] = 42
            mem[488 len 42] = 0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[658 len 26]
            if not ext_code.size(rewardTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[552 len 64] = 0, address(unirouterAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[644 len 4] = 0
            call rewardTokenAddress with:
               funct uint32(stor10)
                 gas gas_remaining wei
                args -1, 0, mem[616 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if rewardTokenAddress:
                        revert with memory
                          from 128
                           len rewardTokenAddress
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                mem[530 len 22],
                                Mask(80, 0, 0, address(unirouterAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
                if rewardTokenAddress:
                    require rewardTokenAddress >= 32
                    if not stakingTokenAddress:
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[662 len 22]
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[552] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[556] = arg1
                mem[588] = 0
                mem[652] = this.address
                mem[684] = block.timestamp + 600
                mem[620] = 160
                mem[716] = stor9.length
                if not stor9.length:
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg1, 0, 160, address(this.address), block.timestamp + 600, stor9.length
                else:
                    mem[0] = 9
                    mem[748] = address(stor9.field_0)
                    idx = 748
                    s = 0
                    while (32 * stor9.length) + 748 > idx + 32:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg1, 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[748 len 32 * stor9.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 552
                require return_data.size >= 32
                require mem[552 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[552 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[552 len 4], Mask(224, 32, arg1) >> 32 + 552] <= 4294967296 and mem[552 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[552 len 4], Mask(224, 32, arg1) >> 32 + 552]) + 32 <= return_data.size
            else:
                mem[552] = return_data.size
                mem[584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                mem[530 len 22],
                                Mask(80, 0, return_data.size)
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[584]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 663 len 22]
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[ceil32(return_data.size) + 553] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 557] = arg1
                mem[ceil32(return_data.size) + 589] = 0
                mem[ceil32(return_data.size) + 653] = this.address
                mem[ceil32(return_data.size) + 685] = block.timestamp + 600
                mem[ceil32(return_data.size) + 621] = 160
                mem[ceil32(return_data.size) + 717] = stor9.length
                if not stor9.length:
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg1, 0, 160, address(this.address), block.timestamp + 600, stor9.length
                else:
                    mem[0] = 9
                    mem[ceil32(return_data.size) + 749] = address(stor9.field_0)
                    idx = ceil32(return_data.size) + 749
                    s = 0
                    while ceil32(return_data.size) + (32 * stor9.length) + 749 > idx + 32:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg1, 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[ceil32(return_data.size) + 749 len 32 * stor9.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 553
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, arg1) >> 32 + 553] <= 4294967296 and mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, arg1) >> 32 + 553]) + 32 <= return_data.size
        else:
            mem[356] = return_data.size
            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                            mem[334 len 22],
                            Mask(80, 0, return_data.size)
            if not return_data.size:
                require ext_code.size(rewardTokenAddress)
                staticcall rewardTokenAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(unirouterAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 479 len 10]
                mem[ceil32(return_data.size) + 393] = address(unirouterAddress)
                mem[ceil32(return_data.size) + 425] = -1
                mem[ceil32(return_data.size) + 357] = 68
                mem[ceil32(return_data.size) + 389 len 4] = approve(address arg1, uint256 arg2)
                mem[ceil32(return_data.size) + 457] = 42
                mem[ceil32(return_data.size) + 489 len 42] = 0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 659 len 26]
                if not ext_code.size(rewardTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 553 len 64] = 0, address(unirouterAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[ceil32(return_data.size) + 645 len 4] = 0
                call rewardTokenAddress with:
                   funct uint32(stor10)
                     gas gas_remaining wei
                    args -1, 0, mem[ceil32(return_data.size) + 617 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if rewardTokenAddress:
                            revert with memory
                              from 128
                               len rewardTokenAddress
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                    mem[ceil32(return_data.size) + 531 len 22],
                                    Mask(80, 0, 0, address(unirouterAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
                    if rewardTokenAddress:
                        require rewardTokenAddress >= 32
                        if not stakingTokenAddress:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 663 len 22]
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[ceil32(return_data.size) + 553] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 557] = arg1
                    mem[ceil32(return_data.size) + 589] = 0
                    mem[ceil32(return_data.size) + 653] = this.address
                    mem[ceil32(return_data.size) + 685] = block.timestamp + 600
                    mem[ceil32(return_data.size) + 621] = 160
                    mem[ceil32(return_data.size) + 717] = stor9.length
                    if not stor9.length:
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg1, 0, 160, address(this.address), block.timestamp + 600, stor9.length
                    else:
                        mem[0] = 9
                        mem[ceil32(return_data.size) + 749] = address(stor9.field_0)
                        idx = ceil32(return_data.size) + 749
                        s = 0
                        while ceil32(return_data.size) + (32 * stor9.length) + 749 > idx + 32:
                            mem[idx + 32] = stor9[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg1, 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[ceil32(return_data.size) + 749 len 32 * stor9.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 553
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, arg1) >> 32 + 553] <= 4294967296 and mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, arg1) >> 32 + 553]) + 32 <= return_data.size
                else:
                    mem[ceil32(return_data.size) + 553] = return_data.size
                    mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                    mem[ceil32(return_data.size) + 531 len 22],
                                    return_data.size << 176,
                                    mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 585]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 664 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 
                                    'SafeMath: addition overflow',
                                    mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    mem[(2 * ceil32(return_data.size)) + 554] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 558] = arg1
                    mem[(2 * ceil32(return_data.size)) + 590] = 0
                    mem[(2 * ceil32(return_data.size)) + 654] = this.address
                    mem[(2 * ceil32(return_data.size)) + 686] = block.timestamp + 600
                    mem[(2 * ceil32(return_data.size)) + 622] = 160
                    mem[(2 * ceil32(return_data.size)) + 718] = stor9.length
                    if not stor9.length:
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg1, 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    else:
                        mem[0] = 9
                        mem[(2 * ceil32(return_data.size)) + 750] = address(stor9.field_0)
                        idx = (2 * ceil32(return_data.size)) + 750
                        s = 0
                        while (2 * ceil32(return_data.size)) + (32 * stor9.length) + 750 > idx + 32:
                            mem[idx + 32] = stor9[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg1, 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) + (32 * stor9.length) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 554 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 554
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 554 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[(2 * ceil32(return_data.size)) + 554 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 554 len 4], Mask(224, 32, arg1) >> 32 + 554] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 554 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 554 len 4], Mask(224, 32, arg1) >> 32 + 554]) + 32 <= return_data.size
            else:
                require return_data.size >= 32
                if not mem[388]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 467 len 22]
                require ext_code.size(rewardTokenAddress)
                staticcall rewardTokenAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(unirouterAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 479 len 10]
                mem[ceil32(return_data.size) + 393] = address(unirouterAddress)
                mem[ceil32(return_data.size) + 425] = -1
                mem[ceil32(return_data.size) + 357] = 68
                mem[ceil32(return_data.size) + 389 len 4] = approve(address arg1, uint256 arg2)
                mem[ceil32(return_data.size) + 457] = 42
                mem[ceil32(return_data.size) + 489 len 42] = 0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 659 len 26]
                if not ext_code.size(rewardTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 553 len 64] = 0, address(unirouterAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[ceil32(return_data.size) + 645 len 4] = 0
                call rewardTokenAddress with:
                   funct uint32(stor10)
                     gas gas_remaining wei
                    args -1, 0, mem[ceil32(return_data.size) + 617 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if rewardTokenAddress:
                            revert with memory
                              from 128
                               len rewardTokenAddress
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                    mem[ceil32(return_data.size) + 531 len 22],
                                    test266151307()
                    if rewardTokenAddress:
                        require rewardTokenAddress >= 32
                        if not stakingTokenAddress:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 663 len 22]
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[ceil32(return_data.size) + 553] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 557] = arg1
                    mem[ceil32(return_data.size) + 589] = 0
                    mem[ceil32(return_data.size) + 653] = this.address
                    mem[ceil32(return_data.size) + 685] = block.timestamp + 600
                    mem[ceil32(return_data.size) + 621] = 160
                    mem[ceil32(return_data.size) + 717] = stor9.length
                    if not stor9.length:
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg1, 0, 160, address(this.address), block.timestamp + 600, stor9.length
                    else:
                        mem[0] = 9
                        mem[ceil32(return_data.size) + 749] = address(stor9.field_0)
                        idx = ceil32(return_data.size) + 749
                        s = 0
                        while ceil32(return_data.size) + (32 * stor9.length) + 749 > idx + 32:
                            mem[idx + 32] = stor9[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg1, 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[ceil32(return_data.size) + 749 len 32 * stor9.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 553
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, arg1) >> 32 + 553] <= 4294967296 and mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, arg1) >> 32 + 553]) + 32 <= return_data.size
                else:
                    mem[ceil32(return_data.size) + 553] = return_data.size
                    mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                    mem[ceil32(return_data.size) + 531 len 22],
                                    Mask(80, 0, return_data.size)
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 585]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 664 len 22]
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(2 * ceil32(return_data.size)) + 554] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 558] = arg1
                    mem[(2 * ceil32(return_data.size)) + 590] = 0
                    mem[(2 * ceil32(return_data.size)) + 654] = this.address
                    mem[(2 * ceil32(return_data.size)) + 686] = block.timestamp + 600
                    mem[(2 * ceil32(return_data.size)) + 622] = 160
                    mem[(2 * ceil32(return_data.size)) + 718] = stor9.length
                    if not stor9.length:
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg1, 0, 160, address(this.address), block.timestamp + 600, stor9.length
                    else:
                        mem[0] = 9
                        mem[(2 * ceil32(return_data.size)) + 750] = address(stor9.field_0)
                        idx = (2 * ceil32(return_data.size)) + 750
                        s = 0
                        while (2 * ceil32(return_data.size)) + (32 * stor9.length) + 750 > idx + 32:
                            mem[idx + 32] = stor9[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg1, 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[(2 * ceil32(return_data.size)) + 750 len 32 * stor9.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 554 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 554
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 554 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[(2 * ceil32(return_data.size)) + 554 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 554 len 4], Mask(224, 32, arg1) >> 32 + 554] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 554 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 554 len 4], Mask(224, 32, arg1) >> 32 + 554]) + 32 <= return_data.size
}

function sub_ad1db359(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor12 != msg.sender:
        revert with 0, '!auth'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[132] = address(unirouterAddress)
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(unirouterAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        mem[96] = arg1
        mem[128] = rewardTokenAddress
        stor7.length = 2
        s = 0
        idx = 96
        while 160 > idx:
            stor7[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
        while stor7.length > idx:
            stor7[idx].field_0 = 0
            idx = idx + 1
            continue 
        if block.timestamp + 600 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        mem[160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[164] = ext_call.return_data[0]
        mem[196] = 0
        mem[260] = this.address
        mem[292] = block.timestamp + 600
        mem[228] = 160
        mem[324] = stor7.length
        if not stor7.length:
            require ext_code.size(arg2)
            call arg2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp + 600, stor7.length
        else:
            mem[0] = 7
            mem[356] = address(stor7.field_0)
            idx = 356
            s = 0
            while (32 * stor7.length) + 356 > idx + 32:
                mem[idx + 32] = stor7[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(arg2)
            call arg2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp + 600, stor7.length, mem[356 len 32 * stor7.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 160
        require return_data.size >= 32
        require mem[160 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[160 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[160 len 4], ext_call.return_data[0 len 28] + 160] <= 4294967296 and mem[160 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[160 len 4], ext_call.return_data[0 len 28] + 160]) + 32 <= return_data.size
    else:
        mem[132] = address(unirouterAddress)
        mem[164] = 0
        mem[96] = 68
        mem[132 len 28] = Mask(224, 0, stor10)
        mem[128 len 4] = approve(address arg1, uint256 arg2)
        mem[196] = 42
        mem[228 len 42] = 0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 0
        mem[384 len 4] = 0
        call arg1 with:
           funct uint32(stor10)
             gas gas_remaining wei
            args 0, mem[356 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor10):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[402 len 22]
            require ext_code.size(arg1)
            staticcall arg1.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(unirouterAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[414 len 10]
            mem[328] = address(unirouterAddress)
            mem[360] = -1
            mem[292] = 68
            mem[328 len 28] = Mask(224, 0, stor10)
            mem[324 len 4] = approve(address arg1, uint256 arg2)
            mem[392] = 42
            mem[424 len 42] = 0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[488 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[580 len 4] = 0
            call arg1 with:
               funct uint32(stor10)
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[552 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor10):
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[598 len 22]
                mem[488] = arg1
                mem[520] = rewardTokenAddress
                stor7.length = 2
                s = 0
                idx = 488
                while 552 > idx:
                    stor7[s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 2
                while stor7.length > idx:
                    stor7[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[552] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[556] = ext_call.return_data[0]
                mem[588] = 0
                mem[652] = this.address
                mem[684] = block.timestamp + 600
                mem[620] = 160
                mem[716] = stor7.length
                if not stor7.length:
                    require ext_code.size(arg2)
                    call arg2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, stor7.length
                else:
                    mem[0] = 7
                    mem[748] = address(stor7.field_0)
                    idx = 748
                    s = 0
                    while (32 * stor7.length) + 748 > idx + 32:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(arg2)
                    call arg2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, stor7.length, mem[748 len 32 * stor7.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 552
                require return_data.size >= 32
                require mem[552 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[552 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[552 len 4], ext_call.return_data[0 len 28] + 552] <= 4294967296 and mem[552 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[552 len 4], ext_call.return_data[0 len 28] + 552]) + 32 <= return_data.size
            else:
                mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                mem[466 len 22],
                                Mask(80, 0, approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[520]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 599 len 22]
                mem[ceil32(return_data.size) + 489] = arg1
                mem[ceil32(return_data.size) + 521] = rewardTokenAddress
                stor7.length = 2
                s = 0
                idx = ceil32(return_data.size) + 489
                while ceil32(return_data.size) + 553 > idx:
                    stor7[s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 2
                while stor7.length > idx:
                    stor7[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[ceil32(return_data.size) + 553] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 557] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 589] = 0
                mem[ceil32(return_data.size) + 653] = this.address
                mem[ceil32(return_data.size) + 685] = block.timestamp + 600
                mem[ceil32(return_data.size) + 621] = 160
                mem[ceil32(return_data.size) + 717] = stor7.length
                if not stor7.length:
                    require ext_code.size(arg2)
                    call arg2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, stor7.length
                else:
                    mem[0] = 7
                    mem[ceil32(return_data.size) + 749] = address(stor7.field_0)
                    idx = ceil32(return_data.size) + 749
                    s = 0
                    while ceil32(return_data.size) + (32 * stor7.length) + 749 > idx + 32:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(arg2)
                    call arg2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, stor7.length, mem[ceil32(return_data.size) + 749 len 32 * stor7.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 553
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + 553] <= 4294967296 and mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + 553]) + 32 <= return_data.size
        else:
            mem[292] = return_data.size
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                            mem[270 len 22],
                            Mask(80, 0, return_data.size)
            if not return_data.size:
                require ext_code.size(arg1)
                staticcall arg1.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(unirouterAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 415 len 10]
                mem[ceil32(return_data.size) + 329] = address(unirouterAddress)
                mem[ceil32(return_data.size) + 361] = -1
                mem[ceil32(return_data.size) + 293] = 68
                mem[ceil32(return_data.size) + 329 len 28] = Mask(224, 0, stor10)
                mem[ceil32(return_data.size) + 325 len 4] = approve(address arg1, uint256 arg2)
                mem[ceil32(return_data.size) + 393] = 42
                mem[ceil32(return_data.size) + 425 len 42] = 0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 595 len 26]
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 489 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[ceil32(return_data.size) + 581 len 4] = 0
                call arg1 with:
                   funct uint32(stor10)
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor10):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 599 len 22]
                    mem[ceil32(return_data.size) + 489] = arg1
                    mem[ceil32(return_data.size) + 521] = rewardTokenAddress
                    stor7.length = 2
                    s = 0
                    idx = ceil32(return_data.size) + 489
                    while ceil32(return_data.size) + 553 > idx:
                        stor7[s].field_0 = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while stor7.length > idx:
                        stor7[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[ceil32(return_data.size) + 553] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 557] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 589] = 0
                    mem[ceil32(return_data.size) + 653] = this.address
                    mem[ceil32(return_data.size) + 685] = block.timestamp + 600
                    mem[ceil32(return_data.size) + 621] = 160
                    mem[ceil32(return_data.size) + 717] = stor7.length
                    if not stor7.length:
                        require ext_code.size(arg2)
                        call arg2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, stor7.length
                    else:
                        mem[0] = 7
                        mem[ceil32(return_data.size) + 749] = address(stor7.field_0)
                        idx = ceil32(return_data.size) + 749
                        s = 0
                        while ceil32(return_data.size) + (32 * stor7.length) + 749 > idx + 32:
                            mem[idx + 32] = stor7[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(arg2)
                        call arg2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, stor7.length, mem[ceil32(return_data.size) + 749 len 32 * stor7.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 553
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + 553] <= 4294967296 and mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + 553]) + 32 <= return_data.size
                else:
                    mem[ceil32(return_data.size) + 489] = return_data.size
                    mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                    mem[ceil32(return_data.size) + 467 len 22],
                                    Mask(80, 0, return_data.size)
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 521]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    mem[(2 * ceil32(return_data.size)) + 490] = arg1
                    mem[(2 * ceil32(return_data.size)) + 522] = rewardTokenAddress
                    stor7.length = 2
                    mem[0] = 7
                    s = 0
                    idx = (2 * ceil32(return_data.size)) + 490
                    while (2 * ceil32(return_data.size)) + 554 > idx:
                        stor7[s].field_0 = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while stor7.length > idx:
                        stor7[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 
                                    'SafeMath: addition overflow',
                                    mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    mem[(2 * ceil32(return_data.size)) + 554] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 590] = 0
                    mem[(2 * ceil32(return_data.size)) + 654] = this.address
                    mem[(2 * ceil32(return_data.size)) + 686] = block.timestamp + 600
                    mem[(2 * ceil32(return_data.size)) + 622] = 160
                    mem[(2 * ceil32(return_data.size)) + 718] = stor7.length
                    if not stor7.length:
                        require ext_code.size(arg2)
                        call arg2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, stor7.length, mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    else:
                        mem[0] = 7
                        mem[(2 * ceil32(return_data.size)) + 750] = address(stor7.field_0)
                        idx = (2 * ceil32(return_data.size)) + 750
                        s = 0
                        while (2 * ceil32(return_data.size)) + (32 * stor7.length) + 750 > idx + 32:
                            mem[idx + 32] = stor7[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(arg2)
                        call arg2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, stor7.length, mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) + (32 * stor7.length) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 554 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 554
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + 554] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + 554]) + 32 <= return_data.size
            else:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
                require ext_code.size(arg1)
                staticcall arg1.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(unirouterAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 415 len 10]
                mem[ceil32(return_data.size) + 329] = address(unirouterAddress)
                mem[ceil32(return_data.size) + 361] = -1
                mem[ceil32(return_data.size) + 293] = 68
                mem[ceil32(return_data.size) + 329 len 28] = Mask(224, 0, stor10)
                mem[ceil32(return_data.size) + 325 len 4] = approve(address arg1, uint256 arg2)
                mem[ceil32(return_data.size) + 393] = 42
                mem[ceil32(return_data.size) + 425 len 42] = 0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 595 len 26]
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 489 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[ceil32(return_data.size) + 581 len 4] = 0
                mem[ceil32(return_data.size) + 553 len 0] = 0
                call arg1 with:
                   funct uint32(stor10)
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor10):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 599 len 22]
                    mem[ceil32(return_data.size) + 489] = arg1
                    mem[ceil32(return_data.size) + 521] = rewardTokenAddress
                    stor7.length = 2
                    s = 0
                    idx = ceil32(return_data.size) + 489
                    while ceil32(return_data.size) + 553 > idx:
                        stor7[s].field_0 = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while stor7.length > idx:
                        stor7[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[ceil32(return_data.size) + 553] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 557] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 589] = 0
                    mem[ceil32(return_data.size) + 653] = this.address
                    mem[ceil32(return_data.size) + 685] = block.timestamp + 600
                    mem[ceil32(return_data.size) + 621] = 160
                    mem[ceil32(return_data.size) + 717] = stor7.length
                    if not stor7.length:
                        require ext_code.size(arg2)
                        call arg2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, stor7.length
                    else:
                        mem[0] = 7
                        mem[ceil32(return_data.size) + 749] = address(stor7.field_0)
                        idx = ceil32(return_data.size) + 749
                        s = 0
                        while ceil32(return_data.size) + (32 * stor7.length) + 749 > idx + 32:
                            mem[idx + 32] = stor7[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(arg2)
                        call arg2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, stor7.length, mem[ceil32(return_data.size) + 749 len 32 * stor7.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 553
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + 553] <= 4294967296 and mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + 553]) + 32 <= return_data.size
                else:
                    mem[ceil32(return_data.size) + 489] = return_data.size
                    mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                    mem[ceil32(return_data.size) + 467 len 22],
                                    Mask(80, 0, return_data.size)
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 521]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 600 len 22]
                    mem[(2 * ceil32(return_data.size)) + 490] = arg1
                    mem[(2 * ceil32(return_data.size)) + 522] = rewardTokenAddress
                    stor7.length = 2
                    mem[0] = 7
                    s = 0
                    idx = (2 * ceil32(return_data.size)) + 490
                    while (2 * ceil32(return_data.size)) + 554 > idx:
                        stor7[s].field_0 = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while stor7.length > idx:
                        stor7[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(2 * ceil32(return_data.size)) + 554] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 590] = 0
                    mem[(2 * ceil32(return_data.size)) + 654] = this.address
                    mem[(2 * ceil32(return_data.size)) + 686] = block.timestamp + 600
                    mem[(2 * ceil32(return_data.size)) + 622] = 160
                    mem[(2 * ceil32(return_data.size)) + 718] = stor7.length
                    if not stor7.length:
                        require ext_code.size(arg2)
                        call arg2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, stor7.length
                    else:
                        mem[0] = 7
                        mem[(2 * ceil32(return_data.size)) + 750] = address(stor7.field_0)
                        idx = (2 * ceil32(return_data.size)) + 750
                        s = 0
                        while (2 * ceil32(return_data.size)) + (32 * stor7.length) + 750 > idx + 32:
                            mem[idx + 32] = stor7[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(arg2)
                        call arg2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, stor7.length, mem[(2 * ceil32(return_data.size)) + 750 len 32 * stor7.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 554 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 554
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + 554] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + 554]) + 32 <= return_data.size
}

function sub_a86bb166(?) payable {
    if stor12 != msg.sender:
        revert with 0, '!auth'
    if autocompound:
        require ext_code.size(rewardTokenAddress)
        staticcall rewardTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_a91dbf95 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_a91dbf95
        mem[132] = address(unirouterAddress)
        require ext_code.size(rewardTokenAddress)
        staticcall rewardTokenAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(unirouterAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] / sub_a91dbf95 <= ext_call.return_data[0]:
            mem[96] = rewardTokenAddress
            mem[128] = stakingTokenAddress
            stor9.length = 2
            s = 0
            idx = 96
            while 160 > idx:
                stor9[s].field_0 = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 2
            while stor9.length > idx:
                stor9[idx].field_0 = 0
                idx = idx + 1
                continue 
            require ext_code.size(rewardTokenAddress)
            staticcall rewardTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_a91dbf95 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_a91dbf95
            if block.timestamp + 600 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[164] = ext_call.return_data[0] / sub_a91dbf95
            mem[196] = 0
            mem[260] = this.address
            mem[292] = block.timestamp + 600
            mem[228] = 160
            mem[324] = stor9.length
            if not stor9.length:
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, uint32(ext_call.return_data[0] / sub_a91dbf95), 0, 160, address(this.address), block.timestamp + 600, stor9.length
            else:
                mem[0] = 9
                mem[356] = address(stor9.field_0)
                idx = 356
                s = 0
                while (32 * stor9.length) + 356 > idx + 32:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, uint32(ext_call.return_data[0] / sub_a91dbf95), 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[356 len 32 * stor9.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 32
            require mem[160 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 <= 4294967296
            require mem[160 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 + 32 <= return_data.size
            require mem[mem[160 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 + 160] <= 4294967296 and mem[160 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 + (32 * mem[mem[160 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 + 160]) + 32 <= return_data.size
        else:
            mem[132] = address(unirouterAddress)
            mem[164] = 0
            mem[96] = 68
            mem[132 len 28] = Mask(224, 0, stor10)
            mem[128 len 4] = approve(address arg1, uint256 arg2)
            mem[196] = 42
            mem[228 len 42] = 0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
            if not ext_code.size(rewardTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[292 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 0
            mem[384 len 4] = 0
            mem[356 len 0] = 0
            call rewardTokenAddress with:
               funct uint32(stor10)
                 gas gas_remaining wei
                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 0) << 256, mem[356 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor10):
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[402 len 22]
                require ext_code.size(rewardTokenAddress)
                staticcall rewardTokenAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(unirouterAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[414 len 10]
                mem[328] = address(unirouterAddress)
                mem[360] = -1
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                if not ext_code.size(rewardTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[488 len 64] = 0, address(unirouterAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[580 len 4] = 0
                call rewardTokenAddress with:
                   funct uint32(stor10)
                     gas gas_remaining wei
                    args -1, mem[392 len 28], mem[552 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor10):
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[598 len 22]
                    mem[488] = rewardTokenAddress
                    mem[520] = stakingTokenAddress
                    stor9.length = 2
                    s = 0
                    idx = 488
                    while 552 > idx:
                        stor9[s].field_0 = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while stor9.length > idx:
                        stor9[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(rewardTokenAddress)
                    staticcall rewardTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_a91dbf95 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_a91dbf95
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[552] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[556] = ext_call.return_data[0] / sub_a91dbf95
                    mem[588] = 0
                    mem[652] = this.address
                    mem[684] = block.timestamp + 600
                    mem[620] = 160
                    mem[716] = stor9.length
                    if not stor9.length:
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] / sub_a91dbf95, 0, 160, address(this.address), block.timestamp + 600, stor9.length
                    else:
                        mem[0] = 9
                        mem[748] = address(stor9.field_0)
                        idx = 748
                        s = 0
                        while (32 * stor9.length) + 748 > idx + 32:
                            mem[idx + 32] = stor9[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] / sub_a91dbf95, 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[748 len 32 * stor9.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 552
                    require return_data.size >= 32
                    require mem[552 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 <= 4294967296
                    require mem[552 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 + 32 <= return_data.size
                    require mem[mem[552 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 + 552] <= 4294967296 and mem[552 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 + (32 * mem[mem[552 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 + 552]) + 32 <= return_data.size
                else:
                    mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                    mem[466 len 22],
                                    Mask(80, 0, 0, address(unirouterAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[520]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 599 len 22]
                    mem[ceil32(return_data.size) + 489] = rewardTokenAddress
                    mem[ceil32(return_data.size) + 521] = stakingTokenAddress
                    stor9.length = 2
                    s = 0
                    idx = ceil32(return_data.size) + 489
                    while ceil32(return_data.size) + 553 > idx:
                        stor9[s].field_0 = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while stor9.length > idx:
                        stor9[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(rewardTokenAddress)
                    staticcall rewardTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_a91dbf95 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_a91dbf95
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[ceil32(return_data.size) + 553] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 557] = ext_call.return_data[0] / sub_a91dbf95
                    mem[ceil32(return_data.size) + 589] = 0
                    mem[ceil32(return_data.size) + 653] = this.address
                    mem[ceil32(return_data.size) + 685] = block.timestamp + 600
                    mem[ceil32(return_data.size) + 621] = 160
                    mem[ceil32(return_data.size) + 717] = stor9.length
                    if not stor9.length:
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] / sub_a91dbf95, 0, 160, address(this.address), block.timestamp + 600, stor9.length
                    else:
                        mem[0] = 9
                        mem[ceil32(return_data.size) + 749] = address(stor9.field_0)
                        idx = ceil32(return_data.size) + 749
                        s = 0
                        while ceil32(return_data.size) + (32 * stor9.length) + 749 > idx + 32:
                            mem[idx + 32] = stor9[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] / sub_a91dbf95, 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[ceil32(return_data.size) + 749 len 32 * stor9.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 553
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 <= 4294967296
                    require mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 + 32 <= return_data.size
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 + 553] <= 4294967296 and mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 + 553]) + 32 <= return_data.size
            else:
                mem[292] = return_data.size
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                mem[270 len 22],
                                Mask(80, 0, return_data.size)
                if not return_data.size:
                    require ext_code.size(rewardTokenAddress)
                    staticcall rewardTokenAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(unirouterAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[ceil32(return_data.size) + 415 len 10]
                    mem[ceil32(return_data.size) + 329] = address(unirouterAddress)
                    mem[ceil32(return_data.size) + 361] = -1
                    mem[ceil32(return_data.size) + 293] = 68
                    mem[ceil32(return_data.size) + 325 len 4] = approve(address arg1, uint256 arg2)
                    mem[ceil32(return_data.size) + 393] = 42
                    mem[ceil32(return_data.size) + 425 len 42] = 0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 595 len 26]
                    if not ext_code.size(rewardTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 489 len 64] = 0, address(unirouterAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[ceil32(return_data.size) + 581 len 4] = 0
                    call rewardTokenAddress with:
                       funct uint32(stor10)
                         gas gas_remaining wei
                        args -1, 0, mem[ceil32(return_data.size) + 553 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 0
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor10):
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 599 len 22]
                        mem[ceil32(return_data.size) + 489] = rewardTokenAddress
                        mem[ceil32(return_data.size) + 521] = stakingTokenAddress
                        stor9.length = 2
                        mem[0] = 9
                        s = 0
                        idx = ceil32(return_data.size) + 489
                        while ceil32(return_data.size) + 553 > idx:
                            stor9[s].field_0 = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = 2
                        while stor9.length > idx:
                            stor9[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(rewardTokenAddress)
                        staticcall rewardTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_a91dbf95 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_a91dbf95
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(return_data.size) + 553] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 557] = ext_call.return_data[0] / sub_a91dbf95
                        mem[ceil32(return_data.size) + 589] = 0
                        mem[ceil32(return_data.size) + 653] = this.address
                        mem[ceil32(return_data.size) + 685] = block.timestamp + 600
                        mem[ceil32(return_data.size) + 621] = 160
                        mem[ceil32(return_data.size) + 717] = stor9.length
                        if not stor9.length:
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] / sub_a91dbf95, 0, 160, address(this.address), block.timestamp + 600, stor9.length
                        else:
                            mem[0] = 9
                            mem[ceil32(return_data.size) + 749] = address(stor9.field_0)
                            idx = ceil32(return_data.size) + 749
                            s = 0
                            while ceil32(return_data.size) + (32 * stor9.length) + 749 > idx + 32:
                                mem[idx + 32] = stor9[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] / sub_a91dbf95, 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[ceil32(return_data.size) + 749 len 32 * stor9.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 553
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 <= 4294967296
                        require mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 + 32 <= return_data.size
                        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 + 553] <= 4294967296 and mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 + 553]) + 32 <= return_data.size
                    else:
                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                        mem[ceil32(return_data.size) + 467 len 22],
                                        test266151307()
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 521]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 600 len 22]
                        mem[(2 * ceil32(return_data.size)) + 490] = rewardTokenAddress
                        mem[(2 * ceil32(return_data.size)) + 522] = stakingTokenAddress
                        stor9.length = 2
                        mem[0] = 9
                        s = 0
                        idx = (2 * ceil32(return_data.size)) + 490
                        while (2 * ceil32(return_data.size)) + 554 > idx:
                            stor9[s].field_0 = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = 2
                        while stor9.length > idx:
                            stor9[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(rewardTokenAddress)
                        staticcall rewardTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_a91dbf95 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_a91dbf95
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(2 * ceil32(return_data.size)) + 554] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 558] = ext_call.return_data[0] / sub_a91dbf95
                        mem[(2 * ceil32(return_data.size)) + 590] = 0
                        mem[(2 * ceil32(return_data.size)) + 654] = this.address
                        mem[(2 * ceil32(return_data.size)) + 686] = block.timestamp + 600
                        mem[(2 * ceil32(return_data.size)) + 622] = 160
                        mem[(2 * ceil32(return_data.size)) + 718] = stor9.length
                        if not stor9.length:
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] / sub_a91dbf95, 0, 160, address(this.address), block.timestamp + 600, stor9.length
                        else:
                            mem[0] = 9
                            mem[(2 * ceil32(return_data.size)) + 750] = address(stor9.field_0)
                            idx = (2 * ceil32(return_data.size)) + 750
                            s = 0
                            while (2 * ceil32(return_data.size)) + (32 * stor9.length) + 750 > idx + 32:
                                mem[idx + 32] = stor9[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] / sub_a91dbf95, 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[(2 * ceil32(return_data.size)) + 750 len 32 * stor9.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 554 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 554
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 554 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 <= 4294967296
                        require mem[(2 * ceil32(return_data.size)) + 554 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 + 32 <= return_data.size
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 554 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 + 554] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 554 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 554 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 + 554]) + 32 <= return_data.size
                else:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
                    require ext_code.size(rewardTokenAddress)
                    staticcall rewardTokenAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(unirouterAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[ceil32(return_data.size) + 415 len 10]
                    mem[ceil32(return_data.size) + 329] = address(unirouterAddress)
                    mem[ceil32(return_data.size) + 361] = -1
                    mem[ceil32(return_data.size) + 293] = 68
                    mem[ceil32(return_data.size) + 325 len 4] = approve(address arg1, uint256 arg2)
                    mem[ceil32(return_data.size) + 393] = 42
                    mem[ceil32(return_data.size) + 425 len 42] = 0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 595 len 26]
                    if not ext_code.size(rewardTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 489 len 64] = 0, address(unirouterAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[ceil32(return_data.size) + 581 len 4] = 0
                    call rewardTokenAddress with:
                       funct uint32(stor10)
                         gas gas_remaining wei
                        args -1, 0, mem[ceil32(return_data.size) + 553 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 0
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor10):
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 599 len 22]
                        mem[ceil32(return_data.size) + 489] = rewardTokenAddress
                        mem[ceil32(return_data.size) + 521] = stakingTokenAddress
                        stor9.length = 2
                        s = 0
                        idx = ceil32(return_data.size) + 489
                        while ceil32(return_data.size) + 553 > idx:
                            stor9[s].field_0 = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = 2
                        while stor9.length > idx:
                            stor9[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(rewardTokenAddress)
                        staticcall rewardTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_a91dbf95 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_a91dbf95
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(return_data.size) + 553] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 557] = ext_call.return_data[0] / sub_a91dbf95
                        mem[ceil32(return_data.size) + 589] = 0
                        mem[ceil32(return_data.size) + 653] = this.address
                        mem[ceil32(return_data.size) + 685] = block.timestamp + 600
                        mem[ceil32(return_data.size) + 621] = 160
                        mem[ceil32(return_data.size) + 717] = stor9.length
                        if not stor9.length:
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] / sub_a91dbf95, 0, 160, address(this.address), block.timestamp + 600, stor9.length
                        else:
                            mem[0] = 9
                            mem[ceil32(return_data.size) + 749] = address(stor9.field_0)
                            idx = ceil32(return_data.size) + 749
                            s = 0
                            while ceil32(return_data.size) + (32 * stor9.length) + 749 > idx + 32:
                                mem[idx + 32] = stor9[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] / sub_a91dbf95, 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[ceil32(return_data.size) + 749 len 32 * stor9.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 553
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 <= 4294967296
                        require mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 + 32 <= return_data.size
                        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 + 553] <= 4294967296 and mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 + 553]) + 32 <= return_data.size
                    else:
                        mem[ceil32(return_data.size) + 489] = return_data.size
                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e206d61737465,
                                        mem[ceil32(return_data.size) + 467 len 22],
                                        return_data.size << 176,
                                        mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 521]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        mem[(2 * ceil32(return_data.size)) + 490] = rewardTokenAddress
                        mem[(2 * ceil32(return_data.size)) + 522] = stakingTokenAddress
                        stor9.length = 2
                        mem[0] = 9
                        s = 0
                        idx = (2 * ceil32(return_data.size)) + 490
                        while (2 * ceil32(return_data.size)) + 554 > idx:
                            stor9[s].field_0 = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = 2
                        while stor9.length > idx:
                            stor9[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(rewardTokenAddress)
                        staticcall rewardTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_a91dbf95 <= 0:
                            revert with 0, 
                                        'SafeMath: division by zero',
                                        mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        require sub_a91dbf95
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 
                                        'SafeMath: addition overflow',
                                        mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        mem[(2 * ceil32(return_data.size)) + 554] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 558] = ext_call.return_data[0] / sub_a91dbf95
                        mem[(2 * ceil32(return_data.size)) + 590] = 0
                        mem[(2 * ceil32(return_data.size)) + 654] = this.address
                        mem[(2 * ceil32(return_data.size)) + 686] = block.timestamp + 600
                        mem[(2 * ceil32(return_data.size)) + 622] = 160
                        mem[(2 * ceil32(return_data.size)) + 718] = stor9.length
                        if not stor9.length:
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] / sub_a91dbf95, 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        else:
                            mem[0] = 9
                            mem[(2 * ceil32(return_data.size)) + 750] = address(stor9.field_0)
                            idx = (2 * ceil32(return_data.size)) + 750
                            s = 0
                            while (2 * ceil32(return_data.size)) + (32 * stor9.length) + 750 > idx + 32:
                                mem[idx + 32] = stor9[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] / sub_a91dbf95, 0, 160, address(this.address), block.timestamp + 600, stor9.length, mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) + (32 * stor9.length) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 554 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 554
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 554 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 <= 4294967296
                        require mem[(2 * ceil32(return_data.size)) + 554 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 + 32 <= return_data.size
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 554 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 + 554] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 554 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 554 len 4], Mask(224, 32, ext_call.return_data[0] / sub_a91dbf95) >> 32 + 554]) + 32 <= return_data.size
        if 1 > sub_a91dbf95:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_a91dbf95--
        if not sub_a91dbf95:
            sub_a91dbf95 = reset
}



}
