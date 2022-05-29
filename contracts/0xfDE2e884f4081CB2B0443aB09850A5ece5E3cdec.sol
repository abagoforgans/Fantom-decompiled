contract main {




// =====================  Runtime code  =====================


address owner;
address wftmAddress;
address rewardTokenAddress;
address lpPairAddress;
address lpToken0Address;
address lpToken1Address;
address uniRouterAddress;
address masterChefAddress;
uint32 stor8;
address recipientAddress;
uint256 stor8;
uint8 stor9;
uint8 poolId; offset 160
address sub_3e5f13d4Address;
array of struct sub_65108ea4;
array of struct sub_d0f2e818;
array of struct sub_59a9d23a;

function poolId() payable {
    return poolId
}

function sub_3e5f13d4(?) payable {
    return sub_3e5f13d4Address
}

function lpPair() payable {
    return lpPairAddress
}

function masterChef() payable {
    return masterChefAddress
}

function sub_59a9d23a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_59a9d23a.length
    return sub_59a9d23a[arg1].field_0
}

function lpToken0() payable {
    return lpToken0Address
}

function sub_65108ea4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_65108ea4.length
    return sub_65108ea4[arg1].field_0
}

function recipient() payable {
    return address(recipientAddress)
}

function lpToken1() payable {
    return lpToken1Address
}

function owner() payable {
    return owner
}

function uniRouter() payable {
    return uniRouterAddress
}

function sub_d0f2e818(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_d0f2e818.length
    return sub_d0f2e818[arg1].field_0
}

function wftm() payable {
    return wftmAddress
}

function rewardToken() payable {
    return rewardTokenAddress
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

function balanceOfLpPair() payable {
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfPool() payable {
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor9, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
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

function deposit() payable {
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(masterChefAddress)
        call masterChefAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor9, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function panic() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor9, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(masterChefAddress)
    call masterChefAddress.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor9, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf() payable {
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor9, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function sub_4a655f9d(?) payable {
    require ext_code.size(masterChefAddress)
    call masterChefAddress.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor9, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp + 600 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if not sub_65108ea4.length:
        require ext_code.size(uniRouterAddress)
        call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], 0, 160, address(recipientAddress), block.timestamp + 600, sub_65108ea4.length
    else:
        mem[292] = address(sub_65108ea4.field_0)
        idx = 292
        s = 0
        while (32 * sub_65108ea4.length) + 292 > idx + 32:
            mem[idx + 32] = sub_65108ea4[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(uniRouterAddress)
        call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], 0, 160, address(recipientAddress), block.timestamp + 600, sub_65108ea4.length, mem[292 len 32 * sub_65108ea4.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xdc7625f4: msg.sender
}

function withdraw() payable {
    if address(recipientAddress) != msg.sender:
        revert with 0, 'not owner'
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(masterChefAddress)
    call masterChefAddress.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor9, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_code.size(lpPairAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call lpPairAddress with:
       funct uint32(stor8)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor8):
            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_78f07508(?) payable {
    require ext_code.size(masterChefAddress)
    call masterChefAddress.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor9, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if lpToken0Address != rewardTokenAddress:
        if block.timestamp + 600 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_d0f2e818.length:
            require ext_code.size(uniRouterAddress)
            call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, sub_d0f2e818.length
        else:
            mem[356] = address(sub_d0f2e818.field_0)
            idx = 356
            s = 0
            while (32 * sub_d0f2e818.length) + 356 > idx + 32:
                mem[idx + 32] = sub_d0f2e818[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(uniRouterAddress)
            call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, sub_d0f2e818.length, mem[356 len 32 * sub_d0f2e818.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if lpToken1Address != rewardTokenAddress:
        if block.timestamp + 600 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_59a9d23a.length:
            require ext_code.size(uniRouterAddress)
            call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, sub_59a9d23a.length
        else:
            mem[356] = address(sub_59a9d23a.field_0)
            idx = 356
            s = 0
            while (32 * sub_59a9d23a.length) + 356 > idx + 32:
                mem[idx + 32] = sub_59a9d23a[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(uniRouterAddress)
            call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, sub_59a9d23a.length, mem[356 len 32 * sub_59a9d23a.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(lpToken0Address)
    staticcall lpToken0Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(lpToken1Address)
    staticcall lpToken1Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3e5f13d4Address)
    call sub_3e5f13d4Address.0xf1efacf9 with:
         gas gas_remaining wei
        args wftmAddress, ext_call.return_data[0], ext_call.return_data[0], 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(masterChefAddress)
        call masterChefAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor9, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit StratHarvest(msg.sender);
}



}
