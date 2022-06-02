contract main {




// =====================  Runtime code  =====================


#
#  - unpause()
#  - harvest()
#  - panic()
#  - pause()
#  - retireStrat()
#
const reward = 0x4cdf39285d7ca8eb3f090fda0c069ba5f4145b37

const unirouter = 0xf491e7b69e4244ad4002bc14e878a34207e38c29

const shareRewardPool = 0xcc0a87f7e7c693042a9cc703661f5060c80acb43

const wftm = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83


uint8 stor0; offset 160
address owner;
uint256 totalFee;
uint256 _treasurySup;
uint256 _strategistFee;
address lpPairAddress;
address lpToken0Address;
address lpToken1Address;
uint256 poolId;
uint256 lastHarvestedTime;
address treasuryAddress;
address strategistAddress;
address adminAddress;
uint32 stor12;
address vaultAddress;
uint256 stor12;
array of address sub_2ec1bf45;
array of address rewardToLp0Route;
array of address rewardToLp1Route;
array of struct lp0ToLp1Route;
array of struct lp1ToLp0Route;

function totalFee() payable {
    return totalFee
}

function strategist() payable {
    return strategistAddress
}

function sub_2ec1bf45(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_2ec1bf45.length
    return sub_2ec1bf45[arg1]
}

function poolId() payable {
    return poolId
}

function lpPair() payable {
    return lpPairAddress
}

function _strategistFee() payable {
    return _strategistFee
}

function rewardToLp0Route(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < rewardToLp0Route.length
    return rewardToLp0Route[arg1]
}

function paused() payable {
    return bool(stor0)
}

function Lp0ToLp1Route(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < lp0ToLp1Route.length
    return lp0ToLp1Route[arg1].field_0
}

function lpToken0() payable {
    return lpToken0Address
}

function treasury() payable {
    return treasuryAddress
}

function Lp1ToLp0Route(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < lp1ToLp0Route.length
    return lp1ToLp0Route[arg1].field_0
}

function lpToken1() payable {
    return lpToken1Address
}

function owner() payable {
    return owner
}

function rewardToLp1Route(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < rewardToLp1Route.length
    return rewardToLp1Route[arg1]
}

function lastHarvestedTime() payable {
    return lastHarvestedTime
}

function _treasurySup() payable {
    return _treasurySup
}

function admin() payable {
    return adminAddress
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

function newAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    adminAddress = arg1
}

function newFeeAddress(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    strategistAddress = arg2
    treasuryAddress = arg1
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
    require ext_code.size(0xcc0a87f7e7c693042a9cc703661f5060c80acb43)
    staticcall 0xcc0a87f7e7c693042a9cc703661f5060c80acb43.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function calculateTotalPendingRewards() payable {
    require ext_code.size(0xcc0a87f7e7c693042a9cc703661f5060c80acb43)
    staticcall 0xcc0a87f7e7c693042a9cc703661f5060c80acb43.pendingShare(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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

function setperfomFee(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if adminAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Not autorized'
    require arg1 <= 100
    if arg2 + arg3 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 + arg3 != 100:
        revert with 0, '!100%'
    if arg2 <= 0:
        revert with 0, 'must be > 0'
    if arg3 <= 0:
        revert with 0, 'must be > 0'
    totalFee = arg1
    _strategistFee = arg2
    _treasurySup = arg3
}

function deposit() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(0xcc0a87f7e7c693042a9cc703661f5060c80acb43)
        call 0xcc0a87f7e7c693042a9cc703661f5060c80acb43.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args poolId, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf() payable {
    require ext_code.size(0xcc0a87f7e7c693042a9cc703661f5060c80acb43)
    staticcall 0xcc0a87f7e7c693042a9cc703661f5060c80acb43.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
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

function rebalance(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Not autorized'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp + 600 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 != lpToken0Address:
        if not lp1ToLp0Route.length:
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, lp1ToLp0Route.length
        else:
            mem[356] = address(lp1ToLp0Route.field_0)
            idx = 356
            s = 0
            while (32 * lp1ToLp0Route.length) + 356 > idx + 32:
                mem[idx + 32] = lp1ToLp0Route[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, lp1ToLp0Route.length, mem[356 len 32 * lp1ToLp0Route.length]
    else:
        if not lp0ToLp1Route.length:
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, lp0ToLp1Route.length
        else:
            mem[356] = address(lp0ToLp1Route.field_0)
            idx = 356
            s = 0
            while (32 * lp0ToLp1Route.length) + 356 > idx + 32:
                mem[idx + 32] = lp0ToLp1Route[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, lp0ToLp1Route.length, mem[356 len 32 * lp0ToLp1Route.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        if ext_code.size(lpPairAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg1) >> 32
        mem[324 len 0] = 0
        call lpPairAddress with:
           funct uint32(stor12)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), arg1
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor12):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
    else:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(0xcc0a87f7e7c693042a9cc703661f5060c80acb43)
        call 0xcc0a87f7e7c693042a9cc703661f5060c80acb43.withdraw(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args poolId, arg1 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(lpPairAddress)
        staticcall lpPairAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_code.size(lpPairAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
        mem[388 len 0] = 0
        call lpPairAddress with:
           funct uint32(stor12)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
}



}
