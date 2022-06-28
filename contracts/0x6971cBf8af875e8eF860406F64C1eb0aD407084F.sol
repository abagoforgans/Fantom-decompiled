contract main {




// =====================  Runtime code  =====================


address sub_647aba30Address;
address summitAddress;
uint256 referralRound;
mapping of address referrerOf;
mapping of uint256 sub_07bb27aa;
mapping of uint256 sub_d9b8f602;

function sub_07bb27aa(?) payable {
    require calldata.size - 4 >= 64
    return sub_07bb27aa[arg1][arg2]
}

function sub_647aba30(?) payable {
    return sub_647aba30Address
}

function getPendingReferralRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    return sub_07bb27aa[stor2][address(arg1)]
}

function summit() payable {
    return summitAddress
}

function referrerOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return referrerOf[arg1]
}

function getReferralRound() payable {
    return referralRound
}

function sub_d9b8f602(?) payable {
    require calldata.size - 4 >= 32
    return sub_d9b8f602[arg1]
}

function _fallback() payable {
    revert
}

function getReferralRewardsToBeBurned() payable {
    require ext_code.size(summitAddress)
    staticcall summitAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function createReferral(address arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender == arg1:
        revert with 0, 'Cant refer yourself'
    if referrerOf[msg.sender]:
        revert with 0, 'Already been referred'
    if msg.sender == referrerOf[address(arg1)]:
        revert with 0, 'No reciprocal referrals'
    if msg.sender == referrerOf[referrerOf[address(arg1)]]:
        revert with 0, 'No 3 user cyclical referrals'
    referrerOf[msg.sender] = arg1
    emit ReferralCreated(arg1, msg.sender);
}

function addReferralRewardsIfNecessary(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_647aba30Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe4f6e6c7920436172746f677261706865722063616e2063616c6c2066756e6374696f,
                    mem[199 len 29]
    if referrerOf[address(arg1)]:
        sub_07bb27aa[stor2][stor3[address(arg1)]] += arg2 / 100
        sub_07bb27aa[stor2][address(arg1)] += arg2 / 100
        sub_d9b8f602[stor3[address(arg1)]] += arg2 / 100
        sub_d9b8f602[arg1] += arg2 / 100
}

function enable(address arg1) payable {
    require calldata.size - 4 >= 32
    if sub_647aba30Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe4f6e6c7920436172746f677261706865722063616e2063616c6c2066756e6374696f,
                    mem[199 len 29]
    summitAddress = arg1
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 57005, 0x446c3b15f9926687d2c40534fdb564000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function burnUnclaimedReferralRewardsAndRolloverRound(address arg1) payable {
    require calldata.size - 4 >= 32
    if sub_647aba30Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe4f6e6c7920436172746f677261706865722063616e2063616c6c2066756e6374696f,
                    mem[199 len 29]
    require ext_code.size(summitAddress)
    staticcall summitAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(summitAddress)
        call summitAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0] / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(summitAddress)
        staticcall summitAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(summitAddress)
        call summitAddress.0xa9059cbb with:
             gas gas_remaining wei
            args 57005, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    referralRound++
    emit 0xfebab261: ext_call.return_data[0], arg1, referralRound
}

function redeemReferralRewards() payable {
    if not sub_07bb27aa[stor2][msg.sender]:
        revert with 0, 'No referral rewards to redeem'
    require ext_code.size(summitAddress)
    staticcall summitAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_07bb27aa[stor2][msg.sender] > ext_call.return_data[0]:
        require ext_code.size(sub_647aba30Address)
        call sub_647aba30Address.0xdc3a34b7 with:
             gas gas_remaining wei
            args sub_07bb27aa[stor2][msg.sender]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(summitAddress)
    staticcall summitAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(summitAddress)
    if sub_07bb27aa[stor2][msg.sender] <= ext_call.return_data[0]:
        call summitAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_07bb27aa[stor2][msg.sender]
    else:
        call summitAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'SafeSummitTransfer: failed'
    sub_07bb27aa[stor2][msg.sender] = 0
    emit ReferralRewardsRedeemed(sub_07bb27aa[stor2][msg.sender], msg.sender);
}



}
