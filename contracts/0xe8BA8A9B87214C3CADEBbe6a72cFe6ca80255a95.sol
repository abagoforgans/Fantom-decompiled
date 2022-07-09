contract main {




// =====================  Runtime code  =====================


#
#  - resetAllowances()
#  - unpause()
#  - earn()
#  - withdraw(address arg1, uint256 arg2)
#  - earn(address arg1)
#
const sub_015fc88f(?) = 10000

const sub_1401a634(?) = 10000

const sub_64f3dbcb(?) = 9900

const sub_f4a9cdf6(?) = 995

const FEE_MAX = 10000


address owner;
uint256 stor1;
uint8 stor2;
address wantAddress; offset 8
address earnedAddress;
address uniRouterAddress;
address usdcAddress;
address sub_927ac464Address;
address sub_ac680cdfAddress;
address rewardAddress;
address withdrawFeeAddress;
address vaultChefAddress;
address govAddress;
uint256 lastEarnBlock;
uint256 sharesTotal;
uint256 tolerance;
uint256 burnedAmount;
address buyBackAddress;
uint256 controllerFee;
uint256 rewardRate;
uint256 buyBackRate;
uint256 withdrawFeeFactor;
uint256 slippageFactor;
array of address sub_fb6bb272;
array of address sub_49281683;
array of address sub_f522f274;
uint8 active;
address token0Address; offset 8
address token1Address;
array of address earnedToToken0Path;
array of address earnedToToken1Path;
array of struct token0ToEarnedPath;
array of struct token1ToEarnedPath;
address masterchefAddress;
uint256 pid;

function token1ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < token1ToEarnedPath.length
    return token1ToEarnedPath[arg1].field_0
}

function usdcAddress() payable {
    return usdcAddress
}

function active() payable {
    return bool(active)
}

function lastEarnBlock() payable {
    return lastEarnBlock
}

function buyBackRate() payable {
    return buyBackRate
}

function vaultChefAddress() payable {
    return vaultChefAddress
}

function masterchefAddress() payable {
    return masterchefAddress
}

function sharesTotal() payable {
    return sharesTotal
}

function govAddress() payable {
    return govAddress
}

function sub_49281683(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_49281683.length
    return sub_49281683[arg1]
}

function burnedAmount() payable {
    return burnedAmount
}

function paused() payable {
    return bool(stor2)
}

function withdrawFeeFactor() payable {
    return withdrawFeeFactor
}

function uniRouterAddress() payable {
    return uniRouterAddress
}

function buyBackAddress() payable {
    return buyBackAddress
}

function withdrawFeeAddress() payable {
    return withdrawFeeAddress
}

function rewardRate() payable {
    return rewardRate
}

function token0Address() payable {
    return token0Address
}

function controllerFee() payable {
    return controllerFee
}

function rewardAddress() payable {
    return rewardAddress
}

function owner() payable {
    return owner
}

function sub_927ac464(?) payable {
    return sub_927ac464Address
}

function earnedToToken1Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < earnedToToken1Path.length
    return earnedToToken1Path[arg1]
}

function sub_ac680cdf(?) payable {
    return sub_ac680cdfAddress
}

function token0ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < token0ToEarnedPath.length
    return token0ToEarnedPath[arg1].field_0
}

function earnedToToken0Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < earnedToToken0Path.length
    return earnedToToken0Path[arg1]
}

function token1Address() payable {
    return token1Address
}

function tolerance() payable {
    return tolerance
}

function earnedAddress() payable {
    return earnedAddress
}

function wantAddress() payable {
    return wantAddress
}

function pid() payable {
    return pid
}

function sub_f522f274(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_f522f274.length
    return sub_f522f274[arg1]
}

function sub_fb6bb272(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_fb6bb272.length
    return sub_fb6bb272[arg1]
}

function slippageFactor() payable {
    return slippageFactor
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

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if govAddress != msg.sender:
        revert with 0, '!gov'
    govAddress = arg1
}

function pause() payable {
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if stor2:
        revert with 0, 'Pausable: paused'
    stor2 = 1
    emit Paused(msg.sender);
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

function panic() payable {
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if stor2:
        revert with 0, 'Pausable: paused'
    stor2 = 1
    emit Paused(msg.sender);
    require ext_code.size(masterchefAddress)
    call masterchefAddress.emergencyWithdraw(uint256 arg1) with:
         gas gas_remaining wei
        args pid
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function vaultSharesTotal() payable {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0x93f1a40b with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    return ext_call.return_data[0]
}

function setAddresses(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if not arg2:
        revert with 0, 'Invalid Withdraw address'
    if not arg1:
        revert with 0, 'Invalid reward address'
    if not arg3:
        revert with 0, 'Invalid buyback address'
    if not arg4:
        revert with 0, 'Invalid RDPRT address'
    rewardAddress = arg1
    withdrawFeeAddress = arg2
    buyBackAddress = arg3
    sub_927ac464Address = arg4
    emit 0xc820496d: address(arg1), address(arg2), address(arg3), arg4
}

function setSettings(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 + arg3 > 10000:
        revert with 0, 'Max fee of 100%'
    if arg4 < 9900:
        revert with 0, '_withdrawFeeFactor too low'
    if arg4 > 10000:
        revert with 0, '_withdrawFeeFactor too high'
    if arg5 > 995:
        revert with 0, '_slippageFactor too high'
    controllerFee = arg1
    rewardRate = arg2
    buyBackRate = arg3
    withdrawFeeFactor = arg4
    slippageFactor = arg5
    emit SetSettings(arg1, arg2, arg3, arg4, arg5);
}

function wantLockedTotal() payable {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0x93f1a40b with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    return (2 * ext_call.return_data[0])
}

function unpanic() payable {
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if not stor2:
        revert with 0, 'Pausable: not paused'
    stor2 = 0
    emit Unpaused(msg.sender);
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.0x93f1a40b with:
                gas gas_remaining wei
               args pid, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_code.size(masterchefAddress)
        call masterchefAddress.0xe2bbb158 with:
             gas gas_remaining wei
            args pid, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.0x93f1a40b with:
                gas gas_remaining wei
               args pid, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor2:
        revert with 0, 'Pausable: paused'
    mem[132] = this.address
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0x93f1a40b with:
            gas gas_remaining wei
           args pid, this.address
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 164] = this.address
    mem[(2 * ceil32(return_data.size)) + 196] = arg2
    mem[(2 * ceil32(return_data.size)) + 96] = 100
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(2 * ceil32(return_data.size)) + 228] = 32
    mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(wantAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
    mem[(2 * ceil32(return_data.size)) + 392] = 0
    call wantAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require ext_call.return_data[32] == bool(ext_call.return_data[32])
            if not ext_call.return_data[32]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
            if not mem[(2 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        if sharesTotal <= 0:
            revert with 0, 'Low deposit - no shares added'
        if not 2 * ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 0 / 2 * ext_call.return_data[0] < 1:
            revert with 0, 'Low deposit - no shares added'
        if sharesTotal > -(0 / 2 * ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        sharesTotal += 0 / 2 * ext_call.return_data[0]
        stor1 = 1
        return (0 / 2 * ext_call.return_data[0])
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0x93f1a40b with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_code.size(masterchefAddress)
    call masterchefAddress.0xe2bbb158 with:
         gas gas_remaining wei
        args pid, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0x93f1a40b with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if sharesTotal <= 0:
        revert with 0, 'Low deposit - no shares added'
    if 0 and sharesTotal > -1 / 0:
        revert with 'NH{q', 17
    if not 2 * ext_call.return_data[0]:
        revert with 'NH{q', 18
    if (ext_call.return_data[0] * sharesTotal) - (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0] < 1:
        revert with 0, 'Low deposit - no shares added'
    if sharesTotal > -((ext_call.return_data[0] * sharesTotal) - (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    sharesTotal += (ext_call.return_data[0] * sharesTotal) - (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0]
    stor1 = 1
    return ((ext_call.return_data[0] * sharesTotal) - (ext_call.return_data[0] * sharesTotal) / 2 * ext_call.return_data[0])
}

function convertDustToEarned() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor2:
        revert with 0, 'Pausable: paused'
    mem[100] = this.address
    require ext_code.size(token0Address)
    staticcall token0Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(token1Address)
        staticcall token1Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > 0:
            if token1Address != earnedAddress:
                mem[(2 * ceil32(return_data.size)) + 96] = token1ToEarnedPath.length
                if not token1ToEarnedPath.length:
                    mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 132] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 164] = 64
                    mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 196] = token1ToEarnedPath.length
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 228
                    while idx < token1ToEarnedPath.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniRouterAddress)
                    staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 132 len (96 * token1ToEarnedPath.length) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128
                    require return_data.size >= 32
                    _166 = mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 159 < (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + return_data.size + 128
                    _169 = mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                    if mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                        revert with 'NH{q', 65
                    if (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                    mem[(4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128] = _169
                    require _166 + (32 * _169) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _166 + 160
                    t = (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160
                    while idx < _169:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if _169 < 1:
                        revert with 'NH{q', 17
                    if _169 - 1 >= _169:
                        revert with 'NH{q', 50
                    if mem[(2 * ceil32(return_data.size)) + 96] < 1:
                        revert with 'NH{q', 17
                    if mem[(2 * ceil32(return_data.size)) + 96] - 1 >= mem[(2 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    if mem[(32 * mem[(2 * ceil32(return_data.size)) + 96] - 1) + (2 * ceil32(return_data.size)) + 140 len 20] != sub_927ac464Address:
                        if mem[(32 * _169 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160] and slippageFactor > -1 / mem[(32 * _169 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160]:
                            revert with 'NH{q', 17
                        if block.timestamp > -601:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = mem[(32 * _169 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160] * slippageFactor / 1000
                        mem[mem[64] + 68] = 160
                        _390 = mem[(2 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _390:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 600
                        require ext_code.size(uniRouterAddress)
                        call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _390) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _674 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _686 = mem[_674]
                        require mem[_674] <= test266151307()
                        require _674 + mem[_674] + 31 < _674 + return_data.size
                        _695 = mem[_674 + mem[_674]]
                        if mem[_674 + mem[_674]] > test266151307():
                            revert with 'NH{q', 65
                        if _674 + ceil32(return_data.size) + floor32(mem[_674 + mem[_674]]) + 1 > test266151307() or floor32(mem[_674 + mem[_674]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _674 + ceil32(return_data.size) + floor32(mem[_674 + mem[_674]]) + 1
                        mem[_674 + ceil32(return_data.size)] = _695
                        require _686 + (32 * _695) + 32 <= return_data.size
                        idx = 0
                        s = _674 + _686 + 32
                        t = _674 + ceil32(return_data.size) + 32
                        while idx < _695:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        if buyBackAddress != this.address:
                            if mem[(32 * _169 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160] and slippageFactor > -1 / mem[(32 * _169 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160]:
                                revert with 'NH{q', 17
                            if block.timestamp > -601:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            mem[mem[64] + 36] = mem[(32 * _169 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160] * slippageFactor / 1000
                            mem[mem[64] + 68] = 160
                            _396 = mem[(2 * ceil32(return_data.size)) + 96]
                            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 128
                            t = mem[64] + 196
                            while idx < _396:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(uniRouterAddress)
                            call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _396) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _675 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _687 = mem[_675]
                            require mem[_675] <= test266151307()
                            require _675 + mem[_675] + 31 < _675 + return_data.size
                            _696 = mem[_675 + mem[_675]]
                            if mem[_675 + mem[_675]] > test266151307():
                                revert with 'NH{q', 65
                            if _675 + ceil32(return_data.size) + floor32(mem[_675 + mem[_675]]) + 1 > test266151307() or floor32(mem[_675 + mem[_675]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _675 + ceil32(return_data.size) + floor32(mem[_675 + mem[_675]]) + 1
                            mem[_675 + ceil32(return_data.size)] = _696
                            require _687 + (32 * _696) + 32 <= return_data.size
                            idx = 0
                            s = _675 + _687 + 32
                            t = _675 + ceil32(return_data.size) + 32
                            while idx < _696:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            if burnedAmount > -mem[(32 * _169 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160] - 1:
                                revert with 'NH{q', 17
                            burnedAmount += mem[(32 * _169 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160]
                            if mem[(32 * _169 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160] and slippageFactor > -1 / mem[(32 * _169 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160]:
                                revert with 'NH{q', 17
                            if block.timestamp > -601:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            mem[mem[64] + 36] = mem[(32 * _169 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160] * slippageFactor / 1000
                            mem[mem[64] + 68] = 160
                            _405 = mem[(2 * ceil32(return_data.size)) + 96]
                            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 128
                            t = mem[64] + 196
                            while idx < _405:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(uniRouterAddress)
                            call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _405) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _676 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _688 = mem[_676]
                            require mem[_676] <= test266151307()
                            require _676 + mem[_676] + 31 < _676 + return_data.size
                            _697 = mem[_676 + mem[_676]]
                            if mem[_676 + mem[_676]] > test266151307():
                                revert with 'NH{q', 65
                            if _676 + ceil32(return_data.size) + floor32(mem[_676 + mem[_676]]) + 1 > test266151307() or floor32(mem[_676 + mem[_676]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _676 + ceil32(return_data.size) + floor32(mem[_676 + mem[_676]]) + 1
                            mem[_676 + ceil32(return_data.size)] = _697
                            require _688 + (32 * _697) + 32 <= return_data.size
                            idx = 0
                            s = _676 + _688 + 32
                            t = _676 + ceil32(return_data.size) + 32
                            while idx < _697:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                else:
                    mem[0] = 30
                    mem[(2 * ceil32(return_data.size)) + 128] = address(token1ToEarnedPath.field_0)
                    idx = (2 * ceil32(return_data.size)) + 128
                    s = 0
                    while (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 96 > idx:
                        mem[idx + 32] = token1ToEarnedPath[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 132] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 164] = 64
                    mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 196] = token1ToEarnedPath.length
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 228
                    while idx < token1ToEarnedPath.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniRouterAddress)
                    staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 132 len (96 * token1ToEarnedPath.length) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128
                    require return_data.size >= 32
                    _659 = mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 159 < (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + return_data.size + 128
                    _662 = mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                    if mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                        revert with 'NH{q', 65
                    if (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                    mem[(4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128] = _662
                    require _659 + (32 * _662) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _659 + 160
                    t = (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160
                    while idx < _662:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if _662 < 1:
                        revert with 'NH{q', 17
                    if _662 - 1 >= _662:
                        revert with 'NH{q', 50
                    if mem[(2 * ceil32(return_data.size)) + 96] < 1:
                        revert with 'NH{q', 17
                    if mem[(2 * ceil32(return_data.size)) + 96] - 1 >= mem[(2 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    if mem[(32 * mem[(2 * ceil32(return_data.size)) + 96] - 1) + (2 * ceil32(return_data.size)) + 140 len 20] != sub_927ac464Address:
                        if mem[(32 * _662 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160] and slippageFactor > -1 / mem[(32 * _662 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160]:
                            revert with 'NH{q', 17
                        if block.timestamp > -601:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = mem[(32 * _662 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160] * slippageFactor / 1000
                        mem[mem[64] + 68] = 160
                        _1060 = mem[(2 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _1060:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 600
                        require ext_code.size(uniRouterAddress)
                        call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _1060) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1331 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1343 = mem[_1331]
                        require mem[_1331] <= test266151307()
                        require _1331 + mem[_1331] + 31 < _1331 + return_data.size
                        _1352 = mem[_1331 + mem[_1331]]
                        if mem[_1331 + mem[_1331]] > test266151307():
                            revert with 'NH{q', 65
                        if _1331 + ceil32(return_data.size) + floor32(mem[_1331 + mem[_1331]]) + 1 > test266151307() or floor32(mem[_1331 + mem[_1331]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1331 + ceil32(return_data.size) + floor32(mem[_1331 + mem[_1331]]) + 1
                        mem[_1331 + ceil32(return_data.size)] = _1352
                        require _1343 + (32 * _1352) + 32 <= return_data.size
                        idx = 0
                        s = _1331 + _1343 + 32
                        t = _1331 + ceil32(return_data.size) + 32
                        while idx < _1352:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        if buyBackAddress != this.address:
                            if mem[(32 * _662 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160] and slippageFactor > -1 / mem[(32 * _662 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160]:
                                revert with 'NH{q', 17
                            if block.timestamp > -601:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            mem[mem[64] + 36] = mem[(32 * _662 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160] * slippageFactor / 1000
                            mem[mem[64] + 68] = 160
                            _1066 = mem[(2 * ceil32(return_data.size)) + 96]
                            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 128
                            t = mem[64] + 196
                            while idx < _1066:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(uniRouterAddress)
                            call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _1066) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1332 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1344 = mem[_1332]
                            require mem[_1332] <= test266151307()
                            require _1332 + mem[_1332] + 31 < _1332 + return_data.size
                            _1353 = mem[_1332 + mem[_1332]]
                            if mem[_1332 + mem[_1332]] > test266151307():
                                revert with 'NH{q', 65
                            if _1332 + ceil32(return_data.size) + floor32(mem[_1332 + mem[_1332]]) + 1 > test266151307() or floor32(mem[_1332 + mem[_1332]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1332 + ceil32(return_data.size) + floor32(mem[_1332 + mem[_1332]]) + 1
                            mem[_1332 + ceil32(return_data.size)] = _1353
                            require _1344 + (32 * _1353) + 32 <= return_data.size
                            idx = 0
                            s = _1332 + _1344 + 32
                            t = _1332 + ceil32(return_data.size) + 32
                            while idx < _1353:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            if burnedAmount > -mem[(32 * _662 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160] - 1:
                                revert with 'NH{q', 17
                            burnedAmount += mem[(32 * _662 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160]
                            if mem[(32 * _662 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160] and slippageFactor > -1 / mem[(32 * _662 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160]:
                                revert with 'NH{q', 17
                            if block.timestamp > -601:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            mem[mem[64] + 36] = mem[(32 * _662 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160] * slippageFactor / 1000
                            mem[mem[64] + 68] = 160
                            _1081 = mem[(2 * ceil32(return_data.size)) + 96]
                            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 128
                            t = mem[64] + 196
                            while idx < _1081:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(uniRouterAddress)
                            call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _1081) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1333 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1345 = mem[_1333]
                            require mem[_1333] <= test266151307()
                            require _1333 + mem[_1333] + 31 < _1333 + return_data.size
                            _1354 = mem[_1333 + mem[_1333]]
                            if mem[_1333 + mem[_1333]] > test266151307():
                                revert with 'NH{q', 65
                            if _1333 + ceil32(return_data.size) + floor32(mem[_1333 + mem[_1333]]) + 1 > test266151307() or floor32(mem[_1333 + mem[_1333]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1333 + ceil32(return_data.size) + floor32(mem[_1333 + mem[_1333]]) + 1
                            mem[_1333 + ceil32(return_data.size)] = _1354
                            require _1345 + (32 * _1354) + 32 <= return_data.size
                            idx = 0
                            s = _1333 + _1345 + 32
                            t = _1333 + ceil32(return_data.size) + 32
                            while idx < _1354:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
    else:
        if token0Address == earnedAddress:
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(token1Address)
            staticcall token1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > 0:
                if token1Address != earnedAddress:
                    mem[(2 * ceil32(return_data.size)) + 96] = token1ToEarnedPath.length
                    if not token1ToEarnedPath.length:
                        mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 132] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 164] = 64
                        mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 196] = token1ToEarnedPath.length
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 228
                        while idx < token1ToEarnedPath.length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniRouterAddress)
                        staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 132 len (96 * token1ToEarnedPath.length) + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128
                        require return_data.size >= 32
                        _167 = mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 159 < (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + return_data.size + 128
                        _170 = mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                        if mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                            revert with 'NH{q', 65
                        if (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                        mem[(4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128] = _170
                        require _167 + (32 * _170) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _167 + 160
                        t = (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160
                        while idx < _170:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _170 < 1:
                            revert with 'NH{q', 17
                        if _170 - 1 >= _170:
                            revert with 'NH{q', 50
                        if mem[(2 * ceil32(return_data.size)) + 96] < 1:
                            revert with 'NH{q', 17
                        if mem[(2 * ceil32(return_data.size)) + 96] - 1 >= mem[(2 * ceil32(return_data.size)) + 96]:
                            revert with 'NH{q', 50
                        if mem[(32 * mem[(2 * ceil32(return_data.size)) + 96] - 1) + (2 * ceil32(return_data.size)) + 140 len 20] != sub_927ac464Address:
                            if mem[(32 * _170 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160] and slippageFactor > -1 / mem[(32 * _170 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160]:
                                revert with 'NH{q', 17
                            if block.timestamp > -601:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            mem[mem[64] + 36] = mem[(32 * _170 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160] * slippageFactor / 1000
                            mem[mem[64] + 68] = 160
                            _392 = mem[(2 * ceil32(return_data.size)) + 96]
                            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 128
                            t = mem[64] + 196
                            while idx < _392:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(uniRouterAddress)
                            call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _392) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _677 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _689 = mem[_677]
                            require mem[_677] <= test266151307()
                            require _677 + mem[_677] + 31 < _677 + return_data.size
                            _698 = mem[_677 + mem[_677]]
                            if mem[_677 + mem[_677]] > test266151307():
                                revert with 'NH{q', 65
                            if _677 + ceil32(return_data.size) + floor32(mem[_677 + mem[_677]]) + 1 > test266151307() or floor32(mem[_677 + mem[_677]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _677 + ceil32(return_data.size) + floor32(mem[_677 + mem[_677]]) + 1
                            mem[_677 + ceil32(return_data.size)] = _698
                            require _689 + (32 * _698) + 32 <= return_data.size
                            idx = 0
                            s = _677 + _689 + 32
                            t = _677 + ceil32(return_data.size) + 32
                            while idx < _698:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            if buyBackAddress != this.address:
                                if mem[(32 * _170 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160] and slippageFactor > -1 / mem[(32 * _170 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160]:
                                    revert with 'NH{q', 17
                                if block.timestamp > -601:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0]
                                mem[mem[64] + 36] = mem[(32 * _170 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160] * slippageFactor / 1000
                                mem[mem[64] + 68] = 160
                                _397 = mem[(2 * ceil32(return_data.size)) + 96]
                                mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 128
                                t = mem[64] + 196
                                while idx < _397:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp + 600
                                require ext_code.size(uniRouterAddress)
                                call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _397) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _678 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _690 = mem[_678]
                                require mem[_678] <= test266151307()
                                require _678 + mem[_678] + 31 < _678 + return_data.size
                                _699 = mem[_678 + mem[_678]]
                                if mem[_678 + mem[_678]] > test266151307():
                                    revert with 'NH{q', 65
                                if _678 + ceil32(return_data.size) + floor32(mem[_678 + mem[_678]]) + 1 > test266151307() or floor32(mem[_678 + mem[_678]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _678 + ceil32(return_data.size) + floor32(mem[_678 + mem[_678]]) + 1
                                mem[_678 + ceil32(return_data.size)] = _699
                                require _690 + (32 * _699) + 32 <= return_data.size
                                idx = 0
                                s = _678 + _690 + 32
                                t = _678 + ceil32(return_data.size) + 32
                                while idx < _699:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                            else:
                                if burnedAmount > -mem[(32 * _170 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160] - 1:
                                    revert with 'NH{q', 17
                                burnedAmount += mem[(32 * _170 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160]
                                if mem[(32 * _170 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160] and slippageFactor > -1 / mem[(32 * _170 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160]:
                                    revert with 'NH{q', 17
                                if block.timestamp > -601:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0]
                                mem[mem[64] + 36] = mem[(32 * _170 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160] * slippageFactor / 1000
                                mem[mem[64] + 68] = 160
                                _406 = mem[(2 * ceil32(return_data.size)) + 96]
                                mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 128
                                t = mem[64] + 196
                                while idx < _406:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp + 600
                                require ext_code.size(uniRouterAddress)
                                call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _406) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _679 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _691 = mem[_679]
                                require mem[_679] <= test266151307()
                                require _679 + mem[_679] + 31 < _679 + return_data.size
                                _700 = mem[_679 + mem[_679]]
                                if mem[_679 + mem[_679]] > test266151307():
                                    revert with 'NH{q', 65
                                if _679 + ceil32(return_data.size) + floor32(mem[_679 + mem[_679]]) + 1 > test266151307() or floor32(mem[_679 + mem[_679]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _679 + ceil32(return_data.size) + floor32(mem[_679 + mem[_679]]) + 1
                                mem[_679 + ceil32(return_data.size)] = _700
                                require _691 + (32 * _700) + 32 <= return_data.size
                                idx = 0
                                s = _679 + _691 + 32
                                t = _679 + ceil32(return_data.size) + 32
                                while idx < _700:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                    else:
                        mem[0] = 30
                        mem[(2 * ceil32(return_data.size)) + 128] = address(token1ToEarnedPath.field_0)
                        idx = (2 * ceil32(return_data.size)) + 128
                        s = 0
                        while (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 96 > idx:
                            mem[idx + 32] = token1ToEarnedPath[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 132] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 164] = 64
                        mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 196] = token1ToEarnedPath.length
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 228
                        while idx < token1ToEarnedPath.length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniRouterAddress)
                        staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 132 len (96 * token1ToEarnedPath.length) + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128
                        require return_data.size >= 32
                        _660 = mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 159 < (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + return_data.size + 128
                        _663 = mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                        if mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                            revert with 'NH{q', 65
                        if (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + mem[(2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                        mem[(4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 128] = _663
                        require _660 + (32 * _663) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + _660 + 160
                        t = (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160
                        while idx < _663:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _663 < 1:
                            revert with 'NH{q', 17
                        if _663 - 1 >= _663:
                            revert with 'NH{q', 50
                        _1005 = mem[(32 * _663 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160]
                        if mem[(2 * ceil32(return_data.size)) + 96] < 1:
                            revert with 'NH{q', 17
                        if mem[(2 * ceil32(return_data.size)) + 96] - 1 >= mem[(2 * ceil32(return_data.size)) + 96]:
                            revert with 'NH{q', 50
                        if mem[(32 * mem[(2 * ceil32(return_data.size)) + 96] - 1) + (2 * ceil32(return_data.size)) + 140 len 20] != sub_927ac464Address:
                            if mem[(32 * _663 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160] and slippageFactor > -1 / mem[(32 * _663 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160]:
                                revert with 'NH{q', 17
                            if block.timestamp > -601:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            mem[mem[64] + 36] = _1005 * slippageFactor / 1000
                            mem[mem[64] + 68] = 160
                            _1062 = mem[(2 * ceil32(return_data.size)) + 96]
                            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 128
                            t = mem[64] + 196
                            while idx < _1062:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 600
                            require ext_code.size(uniRouterAddress)
                            call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], _1005 * slippageFactor / 1000, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _1062) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1334 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1346 = mem[_1334]
                            require mem[_1334] <= test266151307()
                            require _1334 + mem[_1334] + 31 < _1334 + return_data.size
                            _1355 = mem[_1334 + mem[_1334]]
                            if mem[_1334 + mem[_1334]] > test266151307():
                                revert with 'NH{q', 65
                            if _1334 + ceil32(return_data.size) + floor32(mem[_1334 + mem[_1334]]) + 1 > test266151307() or floor32(mem[_1334 + mem[_1334]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1334 + ceil32(return_data.size) + floor32(mem[_1334 + mem[_1334]]) + 1
                            mem[_1334 + ceil32(return_data.size)] = _1355
                            require _1346 + (32 * _1355) + 32 <= return_data.size
                            idx = 0
                            s = _1334 + _1346 + 32
                            t = _1334 + ceil32(return_data.size) + 32
                            while idx < _1355:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            if buyBackAddress != this.address:
                                if mem[(32 * _663 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160] and slippageFactor > -1 / mem[(32 * _663 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160]:
                                    revert with 'NH{q', 17
                                if block.timestamp > -601:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0]
                                mem[mem[64] + 36] = _1005 * slippageFactor / 1000
                                mem[mem[64] + 68] = 160
                                _1067 = mem[(2 * ceil32(return_data.size)) + 96]
                                mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 128
                                t = mem[64] + 196
                                while idx < _1067:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp + 600
                                require ext_code.size(uniRouterAddress)
                                call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], _1005 * slippageFactor / 1000, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _1067) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1335 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1347 = mem[_1335]
                                require mem[_1335] <= test266151307()
                                require _1335 + mem[_1335] + 31 < _1335 + return_data.size
                                _1356 = mem[_1335 + mem[_1335]]
                                if mem[_1335 + mem[_1335]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1335 + ceil32(return_data.size) + floor32(mem[_1335 + mem[_1335]]) + 1 > test266151307() or floor32(mem[_1335 + mem[_1335]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1335 + ceil32(return_data.size) + floor32(mem[_1335 + mem[_1335]]) + 1
                                mem[_1335 + ceil32(return_data.size)] = _1356
                                require _1347 + (32 * _1356) + 32 <= return_data.size
                                idx = 0
                                s = _1335 + _1347 + 32
                                t = _1335 + ceil32(return_data.size) + 32
                                while idx < _1356:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                            else:
                                if burnedAmount > -mem[(32 * _663 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160] - 1:
                                    revert with 'NH{q', 17
                                burnedAmount += mem[(32 * _663 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160]
                                if mem[(32 * _663 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160] and slippageFactor > -1 / mem[(32 * _663 - 1) + (4 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 160]:
                                    revert with 'NH{q', 17
                                if block.timestamp > -601:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0]
                                mem[mem[64] + 36] = _1005 * slippageFactor / 1000
                                mem[mem[64] + 68] = 160
                                _1082 = mem[(2 * ceil32(return_data.size)) + 96]
                                mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 128
                                t = mem[64] + 196
                                while idx < _1082:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp + 600
                                require ext_code.size(uniRouterAddress)
                                call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], _1005 * slippageFactor / 1000, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _1082) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1336 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1348 = mem[_1336]
                                require mem[_1336] <= test266151307()
                                require _1336 + mem[_1336] + 31 < _1336 + return_data.size
                                _1357 = mem[_1336 + mem[_1336]]
                                if mem[_1336 + mem[_1336]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1336 + ceil32(return_data.size) + floor32(mem[_1336 + mem[_1336]]) + 1 > test266151307() or floor32(mem[_1336 + mem[_1336]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1336 + ceil32(return_data.size) + floor32(mem[_1336 + mem[_1336]]) + 1
                                mem[_1336 + ceil32(return_data.size)] = _1357
                                require _1348 + (32 * _1357) + 32 <= return_data.size
                                idx = 0
                                s = _1336 + _1348 + 32
                                t = _1336 + ceil32(return_data.size) + 32
                                while idx < _1357:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
        else:
            mem[ceil32(return_data.size) + 96] = token0ToEarnedPath.length
            if not token0ToEarnedPath.length:
                mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 132] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 164] = 64
                mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 196] = token0ToEarnedPath.length
                idx = 0
                s = ceil32(return_data.size) + 128
                t = ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 228
                while idx < token0ToEarnedPath.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(uniRouterAddress)
                staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 132 len (96 * token0ToEarnedPath.length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 128
                require return_data.size >= 32
                _168 = mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28]
                require mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 159 < ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + return_data.size + 128
                _171 = mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                if mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + floor32(mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307() or floor32(mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + floor32(mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                mem[(2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 128] = _171
                require _168 + (32 * _171) + 32 <= return_data.size
                idx = 0
                s = ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + _168 + 160
                t = (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160
                while idx < _171:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _171 < 1:
                    revert with 'NH{q', 17
                if _171 - 1 >= _171:
                    revert with 'NH{q', 50
                if mem[ceil32(return_data.size) + 96] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 96] - 1 >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                if mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 140 len 20] != sub_927ac464Address:
                    if mem[(32 * _171 - 1) + (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160] and slippageFactor > -1 / mem[(32 * _171 - 1) + (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160]:
                        revert with 'NH{q', 17
                    if block.timestamp > -601:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = mem[(32 * _171 - 1) + (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160] * slippageFactor / 1000
                    mem[mem[64] + 68] = 160
                    _394 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = mem[64] + 196
                    while idx < _394:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 600
                    require ext_code.size(uniRouterAddress)
                    call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _394) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _680 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _692 = mem[_680]
                    require mem[_680] <= test266151307()
                    require _680 + mem[_680] + 31 < _680 + return_data.size
                    _701 = mem[_680 + mem[_680]]
                    if mem[_680 + mem[_680]] > test266151307():
                        revert with 'NH{q', 65
                    if _680 + ceil32(return_data.size) + floor32(mem[_680 + mem[_680]]) + 1 > test266151307() or floor32(mem[_680 + mem[_680]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _680 + ceil32(return_data.size) + floor32(mem[_680 + mem[_680]]) + 1
                    mem[_680 + ceil32(return_data.size)] = _701
                    require _692 + (32 * _701) + 32 <= return_data.size
                    idx = 0
                    s = _680 + _692 + 32
                    t = _680 + ceil32(return_data.size) + 32
                    while idx < _701:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(token1Address)
                    staticcall token1Address.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1012 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1015 = mem[_1012]
                    require mem[_1012] == mem[_1012]
                    if mem[_1012] > 0:
                        if token1Address != earnedAddress:
                            _1024 = mem[64]
                            mem[64] = mem[64] + (32 * token1ToEarnedPath.length) + 32
                            mem[_1024] = token1ToEarnedPath.length
                            if not token1ToEarnedPath.length:
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1015
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = token1ToEarnedPath.length
                                idx = 0
                                s = _1024 + 32
                                t = mem[64] + 100
                                while idx < token1ToEarnedPath.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args _1015, Array(len=token1ToEarnedPath.length, data=mem[mem[64] + 100 len 32 * token1ToEarnedPath.length])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1313 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1316 = mem[_1313]
                                require mem[_1313] <= test266151307()
                                require _1313 + mem[_1313] + 31 < _1313 + return_data.size
                                _1319 = mem[_1313 + mem[_1313]]
                                if mem[_1313 + mem[_1313]] > test266151307():
                                    revert with 'NH{q', 65
                                if _1313 + ceil32(return_data.size) + floor32(mem[_1313 + mem[_1313]]) + 1 > test266151307() or floor32(mem[_1313 + mem[_1313]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _1313 + ceil32(return_data.size) + floor32(mem[_1313 + mem[_1313]]) + 1
                                mem[_1313 + ceil32(return_data.size)] = _1319
                                require _1316 + (32 * _1319) + 32 <= return_data.size
                                idx = 0
                                s = _1313 + _1316 + 32
                                t = _1313 + ceil32(return_data.size) + 32
                                while idx < _1319:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1319 < 1:
                                    revert with 'NH{q', 17
                                if _1319 - 1 >= _1319:
                                    revert with 'NH{q', 50
                                _1625 = mem[(32 * _1319 - 1) + _1313 + ceil32(return_data.size) + 32]
                                if mem[_1024] < 1:
                                    revert with 'NH{q', 17
                                if mem[_1024] - 1 >= mem[_1024]:
                                    revert with 'NH{q', 50
                                if mem[(32 * mem[_1024] - 1) + _1024 + 44 len 20] != sub_927ac464Address:
                                    if mem[(32 * _1319 - 1) + _1313 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _1319 - 1) + _1313 + ceil32(return_data.size) + 32]:
                                        revert with 'NH{q', 17
                                    if block.timestamp > -601:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1015
                                    mem[mem[64] + 36] = _1625 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    _1721 = mem[_1024]
                                    mem[mem[64] + 164] = mem[_1024]
                                    idx = 0
                                    s = _1024 + 32
                                    t = mem[64] + 196
                                    while idx < _1721:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + 600
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _1015, _1625 * slippageFactor / 1000, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _1721) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2027 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2042 = mem[_2027]
                                    require mem[_2027] <= test266151307()
                                    require _2027 + mem[_2027] + 31 < _2027 + return_data.size
                                    _2051 = mem[_2027 + mem[_2027]]
                                    if mem[_2027 + mem[_2027]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _2027 + ceil32(return_data.size) + floor32(mem[_2027 + mem[_2027]]) + 1 > test266151307() or floor32(mem[_2027 + mem[_2027]]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _2027 + ceil32(return_data.size) + floor32(mem[_2027 + mem[_2027]]) + 1
                                    mem[_2027 + ceil32(return_data.size)] = _2051
                                    require _2042 + (32 * _2051) + 32 <= return_data.size
                                    idx = 0
                                    s = _2027 + _2042 + 32
                                    t = _2027 + ceil32(return_data.size) + 32
                                    while idx < _2051:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                else:
                                    if buyBackAddress != this.address:
                                        if mem[(32 * _1319 - 1) + _1313 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _1319 - 1) + _1313 + ceil32(return_data.size) + 32]:
                                            revert with 'NH{q', 17
                                        if block.timestamp > -601:
                                            revert with 'NH{q', 17
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _1015
                                        mem[mem[64] + 36] = _1625 * slippageFactor / 1000
                                        mem[mem[64] + 68] = 160
                                        _1727 = mem[_1024]
                                        mem[mem[64] + 164] = mem[_1024]
                                        idx = 0
                                        s = _1024 + 32
                                        t = mem[64] + 196
                                        while idx < _1727:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = block.timestamp + 600
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _1015, _1625 * slippageFactor / 1000, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _1727) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2028 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2043 = mem[_2028]
                                        require mem[_2028] <= test266151307()
                                        require _2028 + mem[_2028] + 31 < _2028 + return_data.size
                                        _2052 = mem[_2028 + mem[_2028]]
                                        if mem[_2028 + mem[_2028]] > test266151307():
                                            revert with 'NH{q', 65
                                        if _2028 + ceil32(return_data.size) + floor32(mem[_2028 + mem[_2028]]) + 1 > test266151307() or floor32(mem[_2028 + mem[_2028]]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = _2028 + ceil32(return_data.size) + floor32(mem[_2028 + mem[_2028]]) + 1
                                        mem[_2028 + ceil32(return_data.size)] = _2052
                                        require _2043 + (32 * _2052) + 32 <= return_data.size
                                        idx = 0
                                        s = _2028 + _2043 + 32
                                        t = _2028 + ceil32(return_data.size) + 32
                                        while idx < _2052:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                    else:
                                        if burnedAmount > -mem[(32 * _1319 - 1) + _1313 + ceil32(return_data.size) + 32] - 1:
                                            revert with 'NH{q', 17
                                        burnedAmount += mem[(32 * _1319 - 1) + _1313 + ceil32(return_data.size) + 32]
                                        if mem[(32 * _1319 - 1) + _1313 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _1319 - 1) + _1313 + ceil32(return_data.size) + 32]:
                                            revert with 'NH{q', 17
                                        if block.timestamp > -601:
                                            revert with 'NH{q', 17
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _1015
                                        mem[mem[64] + 36] = _1625 * slippageFactor / 1000
                                        mem[mem[64] + 68] = 160
                                        _1742 = mem[_1024]
                                        mem[mem[64] + 164] = mem[_1024]
                                        idx = 0
                                        s = _1024 + 32
                                        t = mem[64] + 196
                                        while idx < _1742:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = block.timestamp + 600
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _1015, _1625 * slippageFactor / 1000, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _1742) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2029 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2044 = mem[_2029]
                                        require mem[_2029] <= test266151307()
                                        require _2029 + mem[_2029] + 31 < _2029 + return_data.size
                                        _2053 = mem[_2029 + mem[_2029]]
                                        if mem[_2029 + mem[_2029]] > test266151307():
                                            revert with 'NH{q', 65
                                        if _2029 + ceil32(return_data.size) + floor32(mem[_2029 + mem[_2029]]) + 1 > test266151307() or floor32(mem[_2029 + mem[_2029]]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = _2029 + ceil32(return_data.size) + floor32(mem[_2029 + mem[_2029]]) + 1
                                        mem[_2029 + ceil32(return_data.size)] = _2053
                                        require _2044 + (32 * _2053) + 32 <= return_data.size
                                        idx = 0
                                        s = _2029 + _2044 + 32
                                        t = _2029 + ceil32(return_data.size) + 32
                                        while idx < _2053:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                            else:
                                mem[0] = 30
                                mem[_1024 + 32] = address(token1ToEarnedPath.field_0)
                                idx = _1024 + 32
                                s = 0
                                while _1024 + (32 * token1ToEarnedPath.length) > idx:
                                    mem[idx + 32] = token1ToEarnedPath[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1015
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = token1ToEarnedPath.length
                                idx = 0
                                s = _1024 + 32
                                t = mem[64] + 100
                                while idx < token1ToEarnedPath.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args _1015, Array(len=token1ToEarnedPath.length, data=mem[mem[64] + 100 len 32 * token1ToEarnedPath.length])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2000 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2006 = mem[_2000]
                                require mem[_2000] <= test266151307()
                                require _2000 + mem[_2000] + 31 < _2000 + return_data.size
                                _2012 = mem[_2000 + mem[_2000]]
                                if mem[_2000 + mem[_2000]] > test266151307():
                                    revert with 'NH{q', 65
                                if _2000 + ceil32(return_data.size) + floor32(mem[_2000 + mem[_2000]]) + 1 > test266151307() or floor32(mem[_2000 + mem[_2000]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _2000 + ceil32(return_data.size) + floor32(mem[_2000 + mem[_2000]]) + 1
                                mem[_2000 + ceil32(return_data.size)] = _2012
                                require _2006 + (32 * _2012) + 32 <= return_data.size
                                idx = 0
                                s = _2000 + _2006 + 32
                                t = _2000 + ceil32(return_data.size) + 32
                                while idx < _2012:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _2012 < 1:
                                    revert with 'NH{q', 17
                                if _2012 - 1 >= _2012:
                                    revert with 'NH{q', 50
                                if mem[_1024] < 1:
                                    revert with 'NH{q', 17
                                if mem[_1024] - 1 >= mem[_1024]:
                                    revert with 'NH{q', 50
                                if mem[(32 * mem[_1024] - 1) + _1024 + 44 len 20] != sub_927ac464Address:
                                    if mem[(32 * _2012 - 1) + _2000 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _2012 - 1) + _2000 + ceil32(return_data.size) + 32]:
                                        revert with 'NH{q', 17
                                    if block.timestamp > -601:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1015
                                    mem[mem[64] + 36] = mem[(32 * _2012 - 1) + _2000 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    _2390 = mem[_1024]
                                    mem[mem[64] + 164] = mem[_1024]
                                    idx = 0
                                    s = _1024 + 32
                                    t = mem[64] + 196
                                    while idx < _2390:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + 600
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _1015, mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _2390) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2672 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2693 = mem[_2672]
                                    require mem[_2672] <= test266151307()
                                    require _2672 + mem[_2672] + 31 < _2672 + return_data.size
                                    _2711 = mem[_2672 + mem[_2672]]
                                    if mem[_2672 + mem[_2672]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _2672 + ceil32(return_data.size) + floor32(mem[_2672 + mem[_2672]]) + 1 > test266151307() or floor32(mem[_2672 + mem[_2672]]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _2672 + ceil32(return_data.size) + floor32(mem[_2672 + mem[_2672]]) + 1
                                    mem[_2672 + ceil32(return_data.size)] = _2711
                                    require _2693 + (32 * _2711) + 32 <= return_data.size
                                    idx = 0
                                    s = _2672 + _2693 + 32
                                    t = _2672 + ceil32(return_data.size) + 32
                                    while idx < _2711:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                else:
                                    if buyBackAddress != this.address:
                                        if mem[(32 * _2012 - 1) + _2000 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _2012 - 1) + _2000 + ceil32(return_data.size) + 32]:
                                            revert with 'NH{q', 17
                                        if block.timestamp > -601:
                                            revert with 'NH{q', 17
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _1015
                                        mem[mem[64] + 36] = mem[(32 * _2012 - 1) + _2000 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                        mem[mem[64] + 68] = 160
                                        _2402 = mem[_1024]
                                        mem[mem[64] + 164] = mem[_1024]
                                        idx = 0
                                        s = _1024 + 32
                                        t = mem[64] + 196
                                        while idx < _2402:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = block.timestamp + 600
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _1015, mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _2402) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2673 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2694 = mem[_2673]
                                        require mem[_2673] <= test266151307()
                                        require _2673 + mem[_2673] + 31 < _2673 + return_data.size
                                        _2712 = mem[_2673 + mem[_2673]]
                                        if mem[_2673 + mem[_2673]] > test266151307():
                                            revert with 'NH{q', 65
                                        if _2673 + ceil32(return_data.size) + floor32(mem[_2673 + mem[_2673]]) + 1 > test266151307() or floor32(mem[_2673 + mem[_2673]]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = _2673 + ceil32(return_data.size) + floor32(mem[_2673 + mem[_2673]]) + 1
                                        mem[_2673 + ceil32(return_data.size)] = _2712
                                        require _2694 + (32 * _2712) + 32 <= return_data.size
                                        idx = 0
                                        s = _2673 + _2694 + 32
                                        t = _2673 + ceil32(return_data.size) + 32
                                        while idx < _2712:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                    else:
                                        if burnedAmount > -mem[(32 * _2012 - 1) + _2000 + ceil32(return_data.size) + 32] - 1:
                                            revert with 'NH{q', 17
                                        burnedAmount += mem[(32 * _2012 - 1) + _2000 + ceil32(return_data.size) + 32]
                                        if mem[(32 * _2012 - 1) + _2000 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _2012 - 1) + _2000 + ceil32(return_data.size) + 32]:
                                            revert with 'NH{q', 17
                                        if block.timestamp > -601:
                                            revert with 'NH{q', 17
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _1015
                                        mem[mem[64] + 36] = mem[(32 * _2012 - 1) + _2000 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                        mem[mem[64] + 68] = 160
                                        _2420 = mem[_1024]
                                        mem[mem[64] + 164] = mem[_1024]
                                        idx = 0
                                        s = _1024 + 32
                                        t = mem[64] + 196
                                        while idx < _2420:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = block.timestamp + 600
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _1015, mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _2420) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2674 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2695 = mem[_2674]
                                        require mem[_2674] <= test266151307()
                                        require _2674 + mem[_2674] + 31 < _2674 + return_data.size
                                        _2713 = mem[_2674 + mem[_2674]]
                                        if mem[_2674 + mem[_2674]] > test266151307():
                                            revert with 'NH{q', 65
                                        if _2674 + ceil32(return_data.size) + floor32(mem[_2674 + mem[_2674]]) + 1 > test266151307() or floor32(mem[_2674 + mem[_2674]]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = _2674 + ceil32(return_data.size) + floor32(mem[_2674 + mem[_2674]]) + 1
                                        mem[_2674 + ceil32(return_data.size)] = _2713
                                        require _2695 + (32 * _2713) + 32 <= return_data.size
                                        idx = 0
                                        s = _2674 + _2695 + 32
                                        t = _2674 + ceil32(return_data.size) + 32
                                        while idx < _2713:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                else:
                    if buyBackAddress != this.address:
                        if mem[(32 * _171 - 1) + (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160] and slippageFactor > -1 / mem[(32 * _171 - 1) + (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160]:
                            revert with 'NH{q', 17
                        if block.timestamp > -601:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = mem[(32 * _171 - 1) + (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160] * slippageFactor / 1000
                        mem[mem[64] + 68] = 160
                        _398 = mem[ceil32(return_data.size) + 96]
                        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = mem[64] + 196
                        while idx < _398:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 600
                        require ext_code.size(uniRouterAddress)
                        call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _398) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _681 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _693 = mem[_681]
                        require mem[_681] <= test266151307()
                        require _681 + mem[_681] + 31 < _681 + return_data.size
                        _702 = mem[_681 + mem[_681]]
                        if mem[_681 + mem[_681]] > test266151307():
                            revert with 'NH{q', 65
                        if _681 + ceil32(return_data.size) + floor32(mem[_681 + mem[_681]]) + 1 > test266151307() or floor32(mem[_681 + mem[_681]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _681 + ceil32(return_data.size) + floor32(mem[_681 + mem[_681]]) + 1
                        mem[_681 + ceil32(return_data.size)] = _702
                        require _693 + (32 * _702) + 32 <= return_data.size
                        idx = 0
                        s = _681 + _693 + 32
                        t = _681 + ceil32(return_data.size) + 32
                        while idx < _702:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(token1Address)
                        staticcall token1Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1013 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1016 = mem[_1013]
                        require mem[_1013] == mem[_1013]
                        if mem[_1013] > 0:
                            if token1Address != earnedAddress:
                                _1025 = mem[64]
                                mem[64] = mem[64] + (32 * token1ToEarnedPath.length) + 32
                                mem[_1025] = token1ToEarnedPath.length
                                if not token1ToEarnedPath.length:
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1016
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = token1ToEarnedPath.length
                                    idx = 0
                                    s = _1025 + 32
                                    t = mem[64] + 100
                                    while idx < token1ToEarnedPath.length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniRouterAddress)
                                    staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args _1016, Array(len=token1ToEarnedPath.length, data=mem[mem[64] + 100 len 32 * token1ToEarnedPath.length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1314 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1317 = mem[_1314]
                                    require mem[_1314] <= test266151307()
                                    require _1314 + mem[_1314] + 31 < _1314 + return_data.size
                                    _1320 = mem[_1314 + mem[_1314]]
                                    if mem[_1314 + mem[_1314]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _1314 + ceil32(return_data.size) + floor32(mem[_1314 + mem[_1314]]) + 1 > test266151307() or floor32(mem[_1314 + mem[_1314]]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _1314 + ceil32(return_data.size) + floor32(mem[_1314 + mem[_1314]]) + 1
                                    mem[_1314 + ceil32(return_data.size)] = _1320
                                    require _1317 + (32 * _1320) + 32 <= return_data.size
                                    idx = 0
                                    s = _1314 + _1317 + 32
                                    t = _1314 + ceil32(return_data.size) + 32
                                    while idx < _1320:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _1320 < 1:
                                        revert with 'NH{q', 17
                                    if _1320 - 1 >= _1320:
                                        revert with 'NH{q', 50
                                    _1627 = mem[(32 * _1320 - 1) + _1314 + ceil32(return_data.size) + 32]
                                    if mem[_1025] < 1:
                                        revert with 'NH{q', 17
                                    if mem[_1025] - 1 >= mem[_1025]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * mem[_1025] - 1) + _1025 + 44 len 20] != sub_927ac464Address:
                                        if mem[(32 * _1320 - 1) + _1314 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _1320 - 1) + _1314 + ceil32(return_data.size) + 32]:
                                            revert with 'NH{q', 17
                                        if block.timestamp > -601:
                                            revert with 'NH{q', 17
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _1016
                                        mem[mem[64] + 36] = _1627 * slippageFactor / 1000
                                        mem[mem[64] + 68] = 160
                                        _1723 = mem[_1025]
                                        mem[mem[64] + 164] = mem[_1025]
                                        idx = 0
                                        s = _1025 + 32
                                        t = mem[64] + 196
                                        while idx < _1723:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = block.timestamp + 600
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _1016, _1627 * slippageFactor / 1000, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _1723) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2030 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2045 = mem[_2030]
                                        require mem[_2030] <= test266151307()
                                        require _2030 + mem[_2030] + 31 < _2030 + return_data.size
                                        _2054 = mem[_2030 + mem[_2030]]
                                        if mem[_2030 + mem[_2030]] > test266151307():
                                            revert with 'NH{q', 65
                                        if _2030 + ceil32(return_data.size) + floor32(mem[_2030 + mem[_2030]]) + 1 > test266151307() or floor32(mem[_2030 + mem[_2030]]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = _2030 + ceil32(return_data.size) + floor32(mem[_2030 + mem[_2030]]) + 1
                                        mem[_2030 + ceil32(return_data.size)] = _2054
                                        require _2045 + (32 * _2054) + 32 <= return_data.size
                                        idx = 0
                                        s = _2030 + _2045 + 32
                                        t = _2030 + ceil32(return_data.size) + 32
                                        while idx < _2054:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                    else:
                                        if buyBackAddress != this.address:
                                            if mem[(32 * _1320 - 1) + _1314 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _1320 - 1) + _1314 + ceil32(return_data.size) + 32]:
                                                revert with 'NH{q', 17
                                            if block.timestamp > -601:
                                                revert with 'NH{q', 17
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _1016
                                            mem[mem[64] + 36] = _1627 * slippageFactor / 1000
                                            mem[mem[64] + 68] = 160
                                            _1728 = mem[_1025]
                                            mem[mem[64] + 164] = mem[_1025]
                                            idx = 0
                                            s = _1025 + 32
                                            t = mem[64] + 196
                                            while idx < _1728:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = block.timestamp + 600
                                            require ext_code.size(uniRouterAddress)
                                            call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args _1016, _1627 * slippageFactor / 1000, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _1728) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2031 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2046 = mem[_2031]
                                            require mem[_2031] <= test266151307()
                                            require _2031 + mem[_2031] + 31 < _2031 + return_data.size
                                            _2055 = mem[_2031 + mem[_2031]]
                                            if mem[_2031 + mem[_2031]] > test266151307():
                                                revert with 'NH{q', 65
                                            if _2031 + ceil32(return_data.size) + floor32(mem[_2031 + mem[_2031]]) + 1 > test266151307() or floor32(mem[_2031 + mem[_2031]]) + 1 < 0:
                                                revert with 'NH{q', 65
                                            mem[64] = _2031 + ceil32(return_data.size) + floor32(mem[_2031 + mem[_2031]]) + 1
                                            mem[_2031 + ceil32(return_data.size)] = _2055
                                            require _2046 + (32 * _2055) + 32 <= return_data.size
                                            idx = 0
                                            s = _2031 + _2046 + 32
                                            t = _2031 + ceil32(return_data.size) + 32
                                            while idx < _2055:
                                                require mem[s] == mem[s]
                                                mem[t] = mem[s]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                        else:
                                            if burnedAmount > -mem[(32 * _1320 - 1) + _1314 + ceil32(return_data.size) + 32] - 1:
                                                revert with 'NH{q', 17
                                            burnedAmount += mem[(32 * _1320 - 1) + _1314 + ceil32(return_data.size) + 32]
                                            if mem[(32 * _1320 - 1) + _1314 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _1320 - 1) + _1314 + ceil32(return_data.size) + 32]:
                                                revert with 'NH{q', 17
                                            if block.timestamp > -601:
                                                revert with 'NH{q', 17
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _1016
                                            mem[mem[64] + 36] = _1627 * slippageFactor / 1000
                                            mem[mem[64] + 68] = 160
                                            _1743 = mem[_1025]
                                            mem[mem[64] + 164] = mem[_1025]
                                            idx = 0
                                            s = _1025 + 32
                                            t = mem[64] + 196
                                            while idx < _1743:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = block.timestamp + 600
                                            require ext_code.size(uniRouterAddress)
                                            call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args _1016, _1627 * slippageFactor / 1000, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _1743) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2032 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2047 = mem[_2032]
                                            require mem[_2032] <= test266151307()
                                            require _2032 + mem[_2032] + 31 < _2032 + return_data.size
                                            _2056 = mem[_2032 + mem[_2032]]
                                            if mem[_2032 + mem[_2032]] > test266151307():
                                                revert with 'NH{q', 65
                                            if _2032 + ceil32(return_data.size) + floor32(mem[_2032 + mem[_2032]]) + 1 > test266151307() or floor32(mem[_2032 + mem[_2032]]) + 1 < 0:
                                                revert with 'NH{q', 65
                                            mem[64] = _2032 + ceil32(return_data.size) + floor32(mem[_2032 + mem[_2032]]) + 1
                                            mem[_2032 + ceil32(return_data.size)] = _2056
                                            require _2047 + (32 * _2056) + 32 <= return_data.size
                                            idx = 0
                                            s = _2032 + _2047 + 32
                                            t = _2032 + ceil32(return_data.size) + 32
                                            while idx < _2056:
                                                require mem[s] == mem[s]
                                                mem[t] = mem[s]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                else:
                                    mem[0] = 30
                                    mem[_1025 + 32] = address(token1ToEarnedPath.field_0)
                                    idx = _1025 + 32
                                    s = 0
                                    while _1025 + (32 * token1ToEarnedPath.length) > idx:
                                        mem[idx + 32] = token1ToEarnedPath[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1016
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = token1ToEarnedPath.length
                                    idx = 0
                                    s = _1025 + 32
                                    t = mem[64] + 100
                                    while idx < token1ToEarnedPath.length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniRouterAddress)
                                    staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args _1016, Array(len=token1ToEarnedPath.length, data=mem[mem[64] + 100 len 32 * token1ToEarnedPath.length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2001 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2007 = mem[_2001]
                                    require mem[_2001] <= test266151307()
                                    require _2001 + mem[_2001] + 31 < _2001 + return_data.size
                                    _2013 = mem[_2001 + mem[_2001]]
                                    if mem[_2001 + mem[_2001]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _2001 + ceil32(return_data.size) + floor32(mem[_2001 + mem[_2001]]) + 1 > test266151307() or floor32(mem[_2001 + mem[_2001]]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _2001 + ceil32(return_data.size) + floor32(mem[_2001 + mem[_2001]]) + 1
                                    mem[_2001 + ceil32(return_data.size)] = _2013
                                    require _2007 + (32 * _2013) + 32 <= return_data.size
                                    idx = 0
                                    s = _2001 + _2007 + 32
                                    t = _2001 + ceil32(return_data.size) + 32
                                    while idx < _2013:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _2013 < 1:
                                        revert with 'NH{q', 17
                                    if _2013 - 1 >= _2013:
                                        revert with 'NH{q', 50
                                    if mem[_1025] < 1:
                                        revert with 'NH{q', 17
                                    if mem[_1025] - 1 >= mem[_1025]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * mem[_1025] - 1) + _1025 + 44 len 20] != sub_927ac464Address:
                                        if mem[(32 * _2013 - 1) + _2001 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _2013 - 1) + _2001 + ceil32(return_data.size) + 32]:
                                            revert with 'NH{q', 17
                                        if block.timestamp > -601:
                                            revert with 'NH{q', 17
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _1016
                                        mem[mem[64] + 36] = mem[(32 * _2013 - 1) + _2001 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                        mem[mem[64] + 68] = 160
                                        _2392 = mem[_1025]
                                        mem[mem[64] + 164] = mem[_1025]
                                        idx = 0
                                        s = _1025 + 32
                                        t = mem[64] + 196
                                        while idx < _2392:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = block.timestamp + 600
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _1016, mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _2392) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2675 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2696 = mem[_2675]
                                        require mem[_2675] <= test266151307()
                                        require _2675 + mem[_2675] + 31 < _2675 + return_data.size
                                        _2714 = mem[_2675 + mem[_2675]]
                                        if mem[_2675 + mem[_2675]] > test266151307():
                                            revert with 'NH{q', 65
                                        if _2675 + ceil32(return_data.size) + floor32(mem[_2675 + mem[_2675]]) + 1 > test266151307() or floor32(mem[_2675 + mem[_2675]]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = _2675 + ceil32(return_data.size) + floor32(mem[_2675 + mem[_2675]]) + 1
                                        mem[_2675 + ceil32(return_data.size)] = _2714
                                        require _2696 + (32 * _2714) + 32 <= return_data.size
                                        idx = 0
                                        s = _2675 + _2696 + 32
                                        t = _2675 + ceil32(return_data.size) + 32
                                        while idx < _2714:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                    else:
                                        if buyBackAddress != this.address:
                                            if mem[(32 * _2013 - 1) + _2001 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _2013 - 1) + _2001 + ceil32(return_data.size) + 32]:
                                                revert with 'NH{q', 17
                                            if block.timestamp > -601:
                                                revert with 'NH{q', 17
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _1016
                                            mem[mem[64] + 36] = mem[(32 * _2013 - 1) + _2001 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                            mem[mem[64] + 68] = 160
                                            _2403 = mem[_1025]
                                            mem[mem[64] + 164] = mem[_1025]
                                            idx = 0
                                            s = _1025 + 32
                                            t = mem[64] + 196
                                            while idx < _2403:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = block.timestamp + 600
                                            require ext_code.size(uniRouterAddress)
                                            call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args _1016, mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _2403) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2676 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2697 = mem[_2676]
                                            require mem[_2676] <= test266151307()
                                            require _2676 + mem[_2676] + 31 < _2676 + return_data.size
                                            _2715 = mem[_2676 + mem[_2676]]
                                            if mem[_2676 + mem[_2676]] > test266151307():
                                                revert with 'NH{q', 65
                                            if _2676 + ceil32(return_data.size) + floor32(mem[_2676 + mem[_2676]]) + 1 > test266151307() or floor32(mem[_2676 + mem[_2676]]) + 1 < 0:
                                                revert with 'NH{q', 65
                                            mem[64] = _2676 + ceil32(return_data.size) + floor32(mem[_2676 + mem[_2676]]) + 1
                                            mem[_2676 + ceil32(return_data.size)] = _2715
                                            require _2697 + (32 * _2715) + 32 <= return_data.size
                                            idx = 0
                                            s = _2676 + _2697 + 32
                                            t = _2676 + ceil32(return_data.size) + 32
                                            while idx < _2715:
                                                require mem[s] == mem[s]
                                                mem[t] = mem[s]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                        else:
                                            if burnedAmount > -mem[(32 * _2013 - 1) + _2001 + ceil32(return_data.size) + 32] - 1:
                                                revert with 'NH{q', 17
                                            burnedAmount += mem[(32 * _2013 - 1) + _2001 + ceil32(return_data.size) + 32]
                                            if mem[(32 * _2013 - 1) + _2001 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _2013 - 1) + _2001 + ceil32(return_data.size) + 32]:
                                                revert with 'NH{q', 17
                                            if block.timestamp > -601:
                                                revert with 'NH{q', 17
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _1016
                                            mem[mem[64] + 36] = mem[(32 * _2013 - 1) + _2001 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                            mem[mem[64] + 68] = 160
                                            _2421 = mem[_1025]
                                            mem[mem[64] + 164] = mem[_1025]
                                            idx = 0
                                            s = _1025 + 32
                                            t = mem[64] + 196
                                            while idx < _2421:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = block.timestamp + 600
                                            require ext_code.size(uniRouterAddress)
                                            call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args _1016, mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _2421) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2677 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2698 = mem[_2677]
                                            require mem[_2677] <= test266151307()
                                            require _2677 + mem[_2677] + 31 < _2677 + return_data.size
                                            _2716 = mem[_2677 + mem[_2677]]
                                            if mem[_2677 + mem[_2677]] > test266151307():
                                                revert with 'NH{q', 65
                                            if _2677 + ceil32(return_data.size) + floor32(mem[_2677 + mem[_2677]]) + 1 > test266151307() or floor32(mem[_2677 + mem[_2677]]) + 1 < 0:
                                                revert with 'NH{q', 65
                                            mem[64] = _2677 + ceil32(return_data.size) + floor32(mem[_2677 + mem[_2677]]) + 1
                                            mem[_2677 + ceil32(return_data.size)] = _2716
                                            require _2698 + (32 * _2716) + 32 <= return_data.size
                                            idx = 0
                                            s = _2677 + _2698 + 32
                                            t = _2677 + ceil32(return_data.size) + 32
                                            while idx < _2716:
                                                require mem[s] == mem[s]
                                                mem[t] = mem[s]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                    else:
                        if burnedAmount > -mem[(32 * _171 - 1) + (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160] - 1:
                            revert with 'NH{q', 17
                        burnedAmount += mem[(32 * _171 - 1) + (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160]
                        if mem[(32 * _171 - 1) + (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160] and slippageFactor > -1 / mem[(32 * _171 - 1) + (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160]:
                            revert with 'NH{q', 17
                        if block.timestamp > -601:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = mem[(32 * _171 - 1) + (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160] * slippageFactor / 1000
                        mem[mem[64] + 68] = 160
                        _407 = mem[ceil32(return_data.size) + 96]
                        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = mem[64] + 196
                        while idx < _407:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 600
                        require ext_code.size(uniRouterAddress)
                        call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _407) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _682 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _694 = mem[_682]
                        require mem[_682] <= test266151307()
                        require _682 + mem[_682] + 31 < _682 + return_data.size
                        _703 = mem[_682 + mem[_682]]
                        if mem[_682 + mem[_682]] > test266151307():
                            revert with 'NH{q', 65
                        if _682 + ceil32(return_data.size) + floor32(mem[_682 + mem[_682]]) + 1 > test266151307() or floor32(mem[_682 + mem[_682]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _682 + ceil32(return_data.size) + floor32(mem[_682 + mem[_682]]) + 1
                        mem[_682 + ceil32(return_data.size)] = _703
                        require _694 + (32 * _703) + 32 <= return_data.size
                        idx = 0
                        s = _682 + _694 + 32
                        t = _682 + ceil32(return_data.size) + 32
                        while idx < _703:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(token1Address)
                        staticcall token1Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1014 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1017 = mem[_1014]
                        require mem[_1014] == mem[_1014]
                        if mem[_1014] > 0:
                            if token1Address != earnedAddress:
                                _1026 = mem[64]
                                mem[64] = mem[64] + (32 * token1ToEarnedPath.length) + 32
                                mem[_1026] = token1ToEarnedPath.length
                                if not token1ToEarnedPath.length:
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1017
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = token1ToEarnedPath.length
                                    idx = 0
                                    s = _1026 + 32
                                    t = mem[64] + 100
                                    while idx < token1ToEarnedPath.length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniRouterAddress)
                                    staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args _1017, Array(len=token1ToEarnedPath.length, data=mem[mem[64] + 100 len 32 * token1ToEarnedPath.length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1315 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1318 = mem[_1315]
                                    require mem[_1315] <= test266151307()
                                    require _1315 + mem[_1315] + 31 < _1315 + return_data.size
                                    _1321 = mem[_1315 + mem[_1315]]
                                    if mem[_1315 + mem[_1315]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _1315 + ceil32(return_data.size) + floor32(mem[_1315 + mem[_1315]]) + 1 > test266151307() or floor32(mem[_1315 + mem[_1315]]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _1315 + ceil32(return_data.size) + floor32(mem[_1315 + mem[_1315]]) + 1
                                    mem[_1315 + ceil32(return_data.size)] = _1321
                                    require _1318 + (32 * _1321) + 32 <= return_data.size
                                    idx = 0
                                    s = _1315 + _1318 + 32
                                    t = _1315 + ceil32(return_data.size) + 32
                                    while idx < _1321:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _1321 < 1:
                                        revert with 'NH{q', 17
                                    if _1321 - 1 >= _1321:
                                        revert with 'NH{q', 50
                                    _1629 = mem[(32 * _1321 - 1) + _1315 + ceil32(return_data.size) + 32]
                                    if mem[_1026] < 1:
                                        revert with 'NH{q', 17
                                    if mem[_1026] - 1 >= mem[_1026]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * mem[_1026] - 1) + _1026 + 44 len 20] != sub_927ac464Address:
                                        if mem[(32 * _1321 - 1) + _1315 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _1321 - 1) + _1315 + ceil32(return_data.size) + 32]:
                                            revert with 'NH{q', 17
                                        if block.timestamp > -601:
                                            revert with 'NH{q', 17
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _1017
                                        mem[mem[64] + 36] = _1629 * slippageFactor / 1000
                                        mem[mem[64] + 68] = 160
                                        _1725 = mem[_1026]
                                        mem[mem[64] + 164] = mem[_1026]
                                        idx = 0
                                        s = _1026 + 32
                                        t = mem[64] + 196
                                        while idx < _1725:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = block.timestamp + 600
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _1017, _1629 * slippageFactor / 1000, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _1725) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2033 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2048 = mem[_2033]
                                        require mem[_2033] <= test266151307()
                                        require _2033 + mem[_2033] + 31 < _2033 + return_data.size
                                        _2057 = mem[_2033 + mem[_2033]]
                                        if mem[_2033 + mem[_2033]] > test266151307():
                                            revert with 'NH{q', 65
                                        if _2033 + ceil32(return_data.size) + floor32(mem[_2033 + mem[_2033]]) + 1 > test266151307() or floor32(mem[_2033 + mem[_2033]]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = _2033 + ceil32(return_data.size) + floor32(mem[_2033 + mem[_2033]]) + 1
                                        mem[_2033 + ceil32(return_data.size)] = _2057
                                        require _2048 + (32 * _2057) + 32 <= return_data.size
                                        idx = 0
                                        s = _2033 + _2048 + 32
                                        t = _2033 + ceil32(return_data.size) + 32
                                        while idx < _2057:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                    else:
                                        if buyBackAddress != this.address:
                                            if mem[(32 * _1321 - 1) + _1315 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _1321 - 1) + _1315 + ceil32(return_data.size) + 32]:
                                                revert with 'NH{q', 17
                                            if block.timestamp > -601:
                                                revert with 'NH{q', 17
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _1017
                                            mem[mem[64] + 36] = _1629 * slippageFactor / 1000
                                            mem[mem[64] + 68] = 160
                                            _1729 = mem[_1026]
                                            mem[mem[64] + 164] = mem[_1026]
                                            idx = 0
                                            s = _1026 + 32
                                            t = mem[64] + 196
                                            while idx < _1729:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = block.timestamp + 600
                                            require ext_code.size(uniRouterAddress)
                                            call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args _1017, _1629 * slippageFactor / 1000, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _1729) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2034 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2049 = mem[_2034]
                                            require mem[_2034] <= test266151307()
                                            require _2034 + mem[_2034] + 31 < _2034 + return_data.size
                                            _2058 = mem[_2034 + mem[_2034]]
                                            if mem[_2034 + mem[_2034]] > test266151307():
                                                revert with 'NH{q', 65
                                            if _2034 + ceil32(return_data.size) + floor32(mem[_2034 + mem[_2034]]) + 1 > test266151307() or floor32(mem[_2034 + mem[_2034]]) + 1 < 0:
                                                revert with 'NH{q', 65
                                            mem[64] = _2034 + ceil32(return_data.size) + floor32(mem[_2034 + mem[_2034]]) + 1
                                            mem[_2034 + ceil32(return_data.size)] = _2058
                                            require _2049 + (32 * _2058) + 32 <= return_data.size
                                            idx = 0
                                            s = _2034 + _2049 + 32
                                            t = _2034 + ceil32(return_data.size) + 32
                                            while idx < _2058:
                                                require mem[s] == mem[s]
                                                mem[t] = mem[s]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                        else:
                                            if burnedAmount > -mem[(32 * _1321 - 1) + _1315 + ceil32(return_data.size) + 32] - 1:
                                                revert with 'NH{q', 17
                                            burnedAmount += mem[(32 * _1321 - 1) + _1315 + ceil32(return_data.size) + 32]
                                            if mem[(32 * _1321 - 1) + _1315 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _1321 - 1) + _1315 + ceil32(return_data.size) + 32]:
                                                revert with 'NH{q', 17
                                            if block.timestamp > -601:
                                                revert with 'NH{q', 17
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _1017
                                            mem[mem[64] + 36] = _1629 * slippageFactor / 1000
                                            mem[mem[64] + 68] = 160
                                            _1744 = mem[_1026]
                                            mem[mem[64] + 164] = mem[_1026]
                                            idx = 0
                                            s = _1026 + 32
                                            t = mem[64] + 196
                                            while idx < _1744:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = block.timestamp + 600
                                            require ext_code.size(uniRouterAddress)
                                            call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args _1017, _1629 * slippageFactor / 1000, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _1744) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2035 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2050 = mem[_2035]
                                            require mem[_2035] <= test266151307()
                                            require _2035 + mem[_2035] + 31 < _2035 + return_data.size
                                            _2059 = mem[_2035 + mem[_2035]]
                                            if mem[_2035 + mem[_2035]] > test266151307():
                                                revert with 'NH{q', 65
                                            if _2035 + ceil32(return_data.size) + floor32(mem[_2035 + mem[_2035]]) + 1 > test266151307() or floor32(mem[_2035 + mem[_2035]]) + 1 < 0:
                                                revert with 'NH{q', 65
                                            mem[64] = _2035 + ceil32(return_data.size) + floor32(mem[_2035 + mem[_2035]]) + 1
                                            mem[_2035 + ceil32(return_data.size)] = _2059
                                            require _2050 + (32 * _2059) + 32 <= return_data.size
                                            idx = 0
                                            s = _2035 + _2050 + 32
                                            t = _2035 + ceil32(return_data.size) + 32
                                            while idx < _2059:
                                                require mem[s] == mem[s]
                                                mem[t] = mem[s]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                else:
                                    mem[0] = 30
                                    mem[_1026 + 32] = address(token1ToEarnedPath.field_0)
                                    idx = _1026 + 32
                                    s = 0
                                    while _1026 + (32 * token1ToEarnedPath.length) > idx:
                                        mem[idx + 32] = token1ToEarnedPath[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1017
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = token1ToEarnedPath.length
                                    idx = 0
                                    s = _1026 + 32
                                    t = mem[64] + 100
                                    while idx < token1ToEarnedPath.length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniRouterAddress)
                                    staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args _1017, Array(len=token1ToEarnedPath.length, data=mem[mem[64] + 100 len 32 * token1ToEarnedPath.length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2002 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2008 = mem[_2002]
                                    require mem[_2002] <= test266151307()
                                    require _2002 + mem[_2002] + 31 < _2002 + return_data.size
                                    _2014 = mem[_2002 + mem[_2002]]
                                    if mem[_2002 + mem[_2002]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _2002 + ceil32(return_data.size) + floor32(mem[_2002 + mem[_2002]]) + 1 > test266151307() or floor32(mem[_2002 + mem[_2002]]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _2002 + ceil32(return_data.size) + floor32(mem[_2002 + mem[_2002]]) + 1
                                    mem[_2002 + ceil32(return_data.size)] = _2014
                                    require _2008 + (32 * _2014) + 32 <= return_data.size
                                    idx = 0
                                    s = _2002 + _2008 + 32
                                    t = _2002 + ceil32(return_data.size) + 32
                                    while idx < _2014:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _2014 < 1:
                                        revert with 'NH{q', 17
                                    if _2014 - 1 >= _2014:
                                        revert with 'NH{q', 50
                                    if mem[_1026] < 1:
                                        revert with 'NH{q', 17
                                    if mem[_1026] - 1 >= mem[_1026]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * mem[_1026] - 1) + _1026 + 44 len 20] != sub_927ac464Address:
                                        if mem[(32 * _2014 - 1) + _2002 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _2014 - 1) + _2002 + ceil32(return_data.size) + 32]:
                                            revert with 'NH{q', 17
                                        if block.timestamp > -601:
                                            revert with 'NH{q', 17
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _1017
                                        mem[mem[64] + 36] = mem[(32 * _2014 - 1) + _2002 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                        mem[mem[64] + 68] = 160
                                        _2394 = mem[_1026]
                                        mem[mem[64] + 164] = mem[_1026]
                                        idx = 0
                                        s = _1026 + 32
                                        t = mem[64] + 196
                                        while idx < _2394:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = block.timestamp + 600
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _1017, mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _2394) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2678 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2699 = mem[_2678]
                                        require mem[_2678] <= test266151307()
                                        require _2678 + mem[_2678] + 31 < _2678 + return_data.size
                                        _2717 = mem[_2678 + mem[_2678]]
                                        if mem[_2678 + mem[_2678]] > test266151307():
                                            revert with 'NH{q', 65
                                        if _2678 + ceil32(return_data.size) + floor32(mem[_2678 + mem[_2678]]) + 1 > test266151307() or floor32(mem[_2678 + mem[_2678]]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = _2678 + ceil32(return_data.size) + floor32(mem[_2678 + mem[_2678]]) + 1
                                        mem[_2678 + ceil32(return_data.size)] = _2717
                                        require _2699 + (32 * _2717) + 32 <= return_data.size
                                        idx = 0
                                        s = _2678 + _2699 + 32
                                        t = _2678 + ceil32(return_data.size) + 32
                                        while idx < _2717:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                    else:
                                        if buyBackAddress != this.address:
                                            if mem[(32 * _2014 - 1) + _2002 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _2014 - 1) + _2002 + ceil32(return_data.size) + 32]:
                                                revert with 'NH{q', 17
                                            if block.timestamp > -601:
                                                revert with 'NH{q', 17
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _1017
                                            mem[mem[64] + 36] = mem[(32 * _2014 - 1) + _2002 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                            mem[mem[64] + 68] = 160
                                            _2404 = mem[_1026]
                                            mem[mem[64] + 164] = mem[_1026]
                                            idx = 0
                                            s = _1026 + 32
                                            t = mem[64] + 196
                                            while idx < _2404:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = block.timestamp + 600
                                            require ext_code.size(uniRouterAddress)
                                            call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args _1017, mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _2404) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2679 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2700 = mem[_2679]
                                            require mem[_2679] <= test266151307()
                                            require _2679 + mem[_2679] + 31 < _2679 + return_data.size
                                            _2718 = mem[_2679 + mem[_2679]]
                                            if mem[_2679 + mem[_2679]] > test266151307():
                                                revert with 'NH{q', 65
                                            if _2679 + ceil32(return_data.size) + floor32(mem[_2679 + mem[_2679]]) + 1 > test266151307() or floor32(mem[_2679 + mem[_2679]]) + 1 < 0:
                                                revert with 'NH{q', 65
                                            mem[64] = _2679 + ceil32(return_data.size) + floor32(mem[_2679 + mem[_2679]]) + 1
                                            mem[_2679 + ceil32(return_data.size)] = _2718
                                            require _2700 + (32 * _2718) + 32 <= return_data.size
                                            idx = 0
                                            s = _2679 + _2700 + 32
                                            t = _2679 + ceil32(return_data.size) + 32
                                            while idx < _2718:
                                                require mem[s] == mem[s]
                                                mem[t] = mem[s]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                        else:
                                            if burnedAmount > -mem[(32 * _2014 - 1) + _2002 + ceil32(return_data.size) + 32] - 1:
                                                revert with 'NH{q', 17
                                            burnedAmount += mem[(32 * _2014 - 1) + _2002 + ceil32(return_data.size) + 32]
                                            if mem[(32 * _2014 - 1) + _2002 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _2014 - 1) + _2002 + ceil32(return_data.size) + 32]:
                                                revert with 'NH{q', 17
                                            if block.timestamp > -601:
                                                revert with 'NH{q', 17
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _1017
                                            mem[mem[64] + 36] = mem[(32 * _2014 - 1) + _2002 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                            mem[mem[64] + 68] = 160
                                            _2422 = mem[_1026]
                                            mem[mem[64] + 164] = mem[_1026]
                                            idx = 0
                                            s = _1026 + 32
                                            t = mem[64] + 196
                                            while idx < _2422:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = block.timestamp + 600
                                            require ext_code.size(uniRouterAddress)
                                            call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args _1017, mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _2422) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2680 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2701 = mem[_2680]
                                            require mem[_2680] <= test266151307()
                                            require _2680 + mem[_2680] + 31 < _2680 + return_data.size
                                            _2719 = mem[_2680 + mem[_2680]]
                                            if mem[_2680 + mem[_2680]] > test266151307():
                                                revert with 'NH{q', 65
                                            if _2680 + ceil32(return_data.size) + floor32(mem[_2680 + mem[_2680]]) + 1 > test266151307() or floor32(mem[_2680 + mem[_2680]]) + 1 < 0:
                                                revert with 'NH{q', 65
                                            mem[64] = _2680 + ceil32(return_data.size) + floor32(mem[_2680 + mem[_2680]]) + 1
                                            mem[_2680 + ceil32(return_data.size)] = _2719
                                            require _2701 + (32 * _2719) + 32 <= return_data.size
                                            idx = 0
                                            s = _2680 + _2701 + 32
                                            t = _2680 + ceil32(return_data.size) + 32
                                            while idx < _2719:
                                                require mem[s] == mem[s]
                                                mem[t] = mem[s]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
            else:
                mem[0] = 29
                mem[ceil32(return_data.size) + 128] = address(token0ToEarnedPath.field_0)
                idx = ceil32(return_data.size) + 128
                s = 0
                while ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 96 > idx:
                    mem[idx + 32] = token0ToEarnedPath[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 132] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 164] = 64
                mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 196] = token0ToEarnedPath.length
                idx = 0
                s = ceil32(return_data.size) + 128
                t = ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 228
                while idx < token0ToEarnedPath.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(uniRouterAddress)
                staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 132 len (96 * token0ToEarnedPath.length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 128
                require return_data.size >= 32
                _661 = mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28]
                require mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 159 < ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + return_data.size + 128
                _664 = mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                if mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + floor32(mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307() or floor32(mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + floor32(mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                mem[(2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 128] = _664
                require _661 + (32 * _664) + 32 <= return_data.size
                idx = 0
                s = ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + _661 + 160
                t = (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160
                while idx < _664:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _664 < 1:
                    revert with 'NH{q', 17
                if _664 - 1 >= _664:
                    revert with 'NH{q', 50
                if mem[ceil32(return_data.size) + 96] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 96] - 1 >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                if mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 140 len 20] != sub_927ac464Address:
                    if mem[(32 * _664 - 1) + (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160] and slippageFactor > -1 / mem[(32 * _664 - 1) + (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160]:
                        revert with 'NH{q', 17
                    if block.timestamp > -601:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = mem[(32 * _664 - 1) + (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160] * slippageFactor / 1000
                    mem[mem[64] + 68] = 160
                    _1064 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = mem[64] + 196
                    while idx < _1064:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 600
                    require ext_code.size(uniRouterAddress)
                    call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _1064) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1337 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1349 = mem[_1337]
                    require mem[_1337] <= test266151307()
                    require _1337 + mem[_1337] + 31 < _1337 + return_data.size
                    _1358 = mem[_1337 + mem[_1337]]
                    if mem[_1337 + mem[_1337]] > test266151307():
                        revert with 'NH{q', 65
                    if _1337 + ceil32(return_data.size) + floor32(mem[_1337 + mem[_1337]]) + 1 > test266151307() or floor32(mem[_1337 + mem[_1337]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1337 + ceil32(return_data.size) + floor32(mem[_1337 + mem[_1337]]) + 1
                    mem[_1337 + ceil32(return_data.size)] = _1358
                    require _1349 + (32 * _1358) + 32 <= return_data.size
                    idx = 0
                    s = _1337 + _1349 + 32
                    t = _1337 + ceil32(return_data.size) + 32
                    while idx < _1358:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(token1Address)
                    staticcall token1Address.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1637 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1646 = mem[_1637]
                    require mem[_1637] == mem[_1637]
                    if mem[_1637] > 0:
                        if token1Address != earnedAddress:
                            _1661 = mem[64]
                            mem[64] = mem[64] + (32 * token1ToEarnedPath.length) + 32
                            mem[_1661] = token1ToEarnedPath.length
                            if not token1ToEarnedPath.length:
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1646
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = token1ToEarnedPath.length
                                idx = 0
                                s = _1661 + 32
                                t = mem[64] + 100
                                while idx < token1ToEarnedPath.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args _1646, Array(len=token1ToEarnedPath.length, data=mem[mem[64] + 100 len 32 * token1ToEarnedPath.length])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2003 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2009 = mem[_2003]
                                require mem[_2003] <= test266151307()
                                require _2003 + mem[_2003] + 31 < _2003 + return_data.size
                                _2015 = mem[_2003 + mem[_2003]]
                                if mem[_2003 + mem[_2003]] > test266151307():
                                    revert with 'NH{q', 65
                                if _2003 + ceil32(return_data.size) + floor32(mem[_2003 + mem[_2003]]) + 1 > test266151307() or floor32(mem[_2003 + mem[_2003]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _2003 + ceil32(return_data.size) + floor32(mem[_2003 + mem[_2003]]) + 1
                                mem[_2003 + ceil32(return_data.size)] = _2015
                                require _2009 + (32 * _2015) + 32 <= return_data.size
                                idx = 0
                                s = _2003 + _2009 + 32
                                t = _2003 + ceil32(return_data.size) + 32
                                while idx < _2015:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _2015 < 1:
                                    revert with 'NH{q', 17
                                if _2015 - 1 >= _2015:
                                    revert with 'NH{q', 50
                                if mem[_1661] < 1:
                                    revert with 'NH{q', 17
                                if mem[_1661] - 1 >= mem[_1661]:
                                    revert with 'NH{q', 50
                                if mem[(32 * mem[_1661] - 1) + _1661 + 44 len 20] != sub_927ac464Address:
                                    if mem[(32 * _2015 - 1) + _2003 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _2015 - 1) + _2003 + ceil32(return_data.size) + 32]:
                                        revert with 'NH{q', 17
                                    if block.timestamp > -601:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1646
                                    mem[mem[64] + 36] = mem[(32 * _2015 - 1) + _2003 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    _2396 = mem[_1661]
                                    mem[mem[64] + 164] = mem[_1661]
                                    idx = 0
                                    s = _1661 + 32
                                    t = mem[64] + 196
                                    while idx < _2396:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + 600
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _1646, mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _2396) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2681 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2702 = mem[_2681]
                                    require mem[_2681] <= test266151307()
                                    require _2681 + mem[_2681] + 31 < _2681 + return_data.size
                                    _2720 = mem[_2681 + mem[_2681]]
                                    if mem[_2681 + mem[_2681]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _2681 + ceil32(return_data.size) + floor32(mem[_2681 + mem[_2681]]) + 1 > test266151307() or floor32(mem[_2681 + mem[_2681]]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _2681 + ceil32(return_data.size) + floor32(mem[_2681 + mem[_2681]]) + 1
                                    mem[_2681 + ceil32(return_data.size)] = _2720
                                    require _2702 + (32 * _2720) + 32 <= return_data.size
                                    idx = 0
                                    s = _2681 + _2702 + 32
                                    t = _2681 + ceil32(return_data.size) + 32
                                    while idx < _2720:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                else:
                                    if buyBackAddress != this.address:
                                        if mem[(32 * _2015 - 1) + _2003 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _2015 - 1) + _2003 + ceil32(return_data.size) + 32]:
                                            revert with 'NH{q', 17
                                        if block.timestamp > -601:
                                            revert with 'NH{q', 17
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _1646
                                        mem[mem[64] + 36] = mem[(32 * _2015 - 1) + _2003 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                        mem[mem[64] + 68] = 160
                                        _2405 = mem[_1661]
                                        mem[mem[64] + 164] = mem[_1661]
                                        idx = 0
                                        s = _1661 + 32
                                        t = mem[64] + 196
                                        while idx < _2405:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = block.timestamp + 600
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _1646, mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _2405) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2682 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2703 = mem[_2682]
                                        require mem[_2682] <= test266151307()
                                        require _2682 + mem[_2682] + 31 < _2682 + return_data.size
                                        _2721 = mem[_2682 + mem[_2682]]
                                        if mem[_2682 + mem[_2682]] > test266151307():
                                            revert with 'NH{q', 65
                                        if _2682 + ceil32(return_data.size) + floor32(mem[_2682 + mem[_2682]]) + 1 > test266151307() or floor32(mem[_2682 + mem[_2682]]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = _2682 + ceil32(return_data.size) + floor32(mem[_2682 + mem[_2682]]) + 1
                                        mem[_2682 + ceil32(return_data.size)] = _2721
                                        require _2703 + (32 * _2721) + 32 <= return_data.size
                                        idx = 0
                                        s = _2682 + _2703 + 32
                                        t = _2682 + ceil32(return_data.size) + 32
                                        while idx < _2721:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                    else:
                                        if burnedAmount > -mem[(32 * _2015 - 1) + _2003 + ceil32(return_data.size) + 32] - 1:
                                            revert with 'NH{q', 17
                                        burnedAmount += mem[(32 * _2015 - 1) + _2003 + ceil32(return_data.size) + 32]
                                        if mem[(32 * _2015 - 1) + _2003 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _2015 - 1) + _2003 + ceil32(return_data.size) + 32]:
                                            revert with 'NH{q', 17
                                        if block.timestamp > -601:
                                            revert with 'NH{q', 17
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _1646
                                        mem[mem[64] + 36] = mem[(32 * _2015 - 1) + _2003 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                        mem[mem[64] + 68] = 160
                                        _2423 = mem[_1661]
                                        mem[mem[64] + 164] = mem[_1661]
                                        idx = 0
                                        s = _1661 + 32
                                        t = mem[64] + 196
                                        while idx < _2423:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = block.timestamp + 600
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _1646, mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _2423) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2683 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2704 = mem[_2683]
                                        require mem[_2683] <= test266151307()
                                        require _2683 + mem[_2683] + 31 < _2683 + return_data.size
                                        _2722 = mem[_2683 + mem[_2683]]
                                        if mem[_2683 + mem[_2683]] > test266151307():
                                            revert with 'NH{q', 65
                                        if _2683 + ceil32(return_data.size) + floor32(mem[_2683 + mem[_2683]]) + 1 > test266151307() or floor32(mem[_2683 + mem[_2683]]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = _2683 + ceil32(return_data.size) + floor32(mem[_2683 + mem[_2683]]) + 1
                                        mem[_2683 + ceil32(return_data.size)] = _2722
                                        require _2704 + (32 * _2722) + 32 <= return_data.size
                                        idx = 0
                                        s = _2683 + _2704 + 32
                                        t = _2683 + ceil32(return_data.size) + 32
                                        while idx < _2722:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                            else:
                                mem[0] = 30
                                mem[_1661 + 32] = address(token1ToEarnedPath.field_0)
                                idx = _1661 + 32
                                s = 0
                                while _1661 + (32 * token1ToEarnedPath.length) > idx:
                                    mem[idx + 32] = token1ToEarnedPath[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1646
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 68] = token1ToEarnedPath.length
                                idx = 0
                                s = _1661 + 32
                                t = mem[64] + 100
                                while idx < token1ToEarnedPath.length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args _1646, Array(len=token1ToEarnedPath.length, data=mem[mem[64] + 100 len 32 * token1ToEarnedPath.length])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2645 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2648 = mem[_2645]
                                require mem[_2645] <= test266151307()
                                require _2645 + mem[_2645] + 31 < _2645 + return_data.size
                                _2651 = mem[_2645 + mem[_2645]]
                                if mem[_2645 + mem[_2645]] > test266151307():
                                    revert with 'NH{q', 65
                                if _2645 + ceil32(return_data.size) + floor32(mem[_2645 + mem[_2645]]) + 1 > test266151307() or floor32(mem[_2645 + mem[_2645]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _2645 + ceil32(return_data.size) + floor32(mem[_2645 + mem[_2645]]) + 1
                                mem[_2645 + ceil32(return_data.size)] = _2651
                                require _2648 + (32 * _2651) + 32 <= return_data.size
                                idx = 0
                                s = _2645 + _2648 + 32
                                t = _2645 + ceil32(return_data.size) + 32
                                while idx < _2651:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _2651 < 1:
                                    revert with 'NH{q', 17
                                if _2651 - 1 >= _2651:
                                    revert with 'NH{q', 50
                                if mem[_1661] < 1:
                                    revert with 'NH{q', 17
                                if mem[_1661] - 1 >= mem[_1661]:
                                    revert with 'NH{q', 50
                                if mem[(32 * mem[_1661] - 1) + _1661 + 44 len 20] != sub_927ac464Address:
                                    if mem[(32 * _2651 - 1) + _2645 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _2651 - 1) + _2645 + ceil32(return_data.size) + 32]:
                                        revert with 'NH{q', 17
                                    if block.timestamp > -601:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1646
                                    mem[mem[64] + 36] = mem[(32 * _2651 - 1) + _2645 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    _2912 = mem[_1661]
                                    mem[mem[64] + 164] = mem[_1661]
                                    idx = 0
                                    s = _1661 + 32
                                    t = mem[64] + 196
                                    while idx < _2912:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + 600
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _1646, mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _2912) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3005 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3014 = mem[_3005]
                                    require mem[_3005] <= test266151307()
                                    require _3005 + mem[_3005] + 31 < _3005 + return_data.size
                                    _3023 = mem[_3005 + mem[_3005]]
                                    if mem[_3005 + mem[_3005]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _3005 + ceil32(return_data.size) + floor32(mem[_3005 + mem[_3005]]) + 1 > test266151307() or floor32(mem[_3005 + mem[_3005]]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _3005 + ceil32(return_data.size) + floor32(mem[_3005 + mem[_3005]]) + 1
                                    mem[_3005 + ceil32(return_data.size)] = _3023
                                    require _3014 + (32 * _3023) + 32 <= return_data.size
                                    idx = 0
                                    s = _3005 + _3014 + 32
                                    t = _3005 + ceil32(return_data.size) + 32
                                    while idx < _3023:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                else:
                                    if buyBackAddress != this.address:
                                        if mem[(32 * _2651 - 1) + _2645 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _2651 - 1) + _2645 + ceil32(return_data.size) + 32]:
                                            revert with 'NH{q', 17
                                        if block.timestamp > -601:
                                            revert with 'NH{q', 17
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _1646
                                        mem[mem[64] + 36] = mem[(32 * _2651 - 1) + _2645 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                        mem[mem[64] + 68] = 160
                                        _2918 = mem[_1661]
                                        mem[mem[64] + 164] = mem[_1661]
                                        idx = 0
                                        s = _1661 + 32
                                        t = mem[64] + 196
                                        while idx < _2918:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = block.timestamp + 600
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _1646, mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _2918) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3006 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3015 = mem[_3006]
                                        require mem[_3006] <= test266151307()
                                        require _3006 + mem[_3006] + 31 < _3006 + return_data.size
                                        _3024 = mem[_3006 + mem[_3006]]
                                        if mem[_3006 + mem[_3006]] > test266151307():
                                            revert with 'NH{q', 65
                                        if _3006 + ceil32(return_data.size) + floor32(mem[_3006 + mem[_3006]]) + 1 > test266151307() or floor32(mem[_3006 + mem[_3006]]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = _3006 + ceil32(return_data.size) + floor32(mem[_3006 + mem[_3006]]) + 1
                                        mem[_3006 + ceil32(return_data.size)] = _3024
                                        require _3015 + (32 * _3024) + 32 <= return_data.size
                                        idx = 0
                                        s = _3006 + _3015 + 32
                                        t = _3006 + ceil32(return_data.size) + 32
                                        while idx < _3024:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                    else:
                                        if burnedAmount > -mem[(32 * _2651 - 1) + _2645 + ceil32(return_data.size) + 32] - 1:
                                            revert with 'NH{q', 17
                                        burnedAmount += mem[(32 * _2651 - 1) + _2645 + ceil32(return_data.size) + 32]
                                        if mem[(32 * _2651 - 1) + _2645 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _2651 - 1) + _2645 + ceil32(return_data.size) + 32]:
                                            revert with 'NH{q', 17
                                        if block.timestamp > -601:
                                            revert with 'NH{q', 17
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _1646
                                        mem[mem[64] + 36] = mem[(32 * _2651 - 1) + _2645 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                        mem[mem[64] + 68] = 160
                                        _2927 = mem[_1661]
                                        mem[mem[64] + 164] = mem[_1661]
                                        idx = 0
                                        s = _1661 + 32
                                        t = mem[64] + 196
                                        while idx < _2927:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = block.timestamp + 600
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _1646, mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _2927) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3007 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3016 = mem[_3007]
                                        require mem[_3007] <= test266151307()
                                        require _3007 + mem[_3007] + 31 < _3007 + return_data.size
                                        _3025 = mem[_3007 + mem[_3007]]
                                        if mem[_3007 + mem[_3007]] > test266151307():
                                            revert with 'NH{q', 65
                                        if _3007 + ceil32(return_data.size) + floor32(mem[_3007 + mem[_3007]]) + 1 > test266151307() or floor32(mem[_3007 + mem[_3007]]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = _3007 + ceil32(return_data.size) + floor32(mem[_3007 + mem[_3007]]) + 1
                                        mem[_3007 + ceil32(return_data.size)] = _3025
                                        require _3016 + (32 * _3025) + 32 <= return_data.size
                                        idx = 0
                                        s = _3007 + _3016 + 32
                                        t = _3007 + ceil32(return_data.size) + 32
                                        while idx < _3025:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                else:
                    if buyBackAddress != this.address:
                        if mem[(32 * _664 - 1) + (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160] and slippageFactor > -1 / mem[(32 * _664 - 1) + (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160]:
                            revert with 'NH{q', 17
                        if block.timestamp > -601:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = mem[(32 * _664 - 1) + (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160] * slippageFactor / 1000
                        mem[mem[64] + 68] = 160
                        _1068 = mem[ceil32(return_data.size) + 96]
                        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = mem[64] + 196
                        while idx < _1068:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 600
                        require ext_code.size(uniRouterAddress)
                        call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _1068) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1338 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1350 = mem[_1338]
                        require mem[_1338] <= test266151307()
                        require _1338 + mem[_1338] + 31 < _1338 + return_data.size
                        _1359 = mem[_1338 + mem[_1338]]
                        if mem[_1338 + mem[_1338]] > test266151307():
                            revert with 'NH{q', 65
                        if _1338 + ceil32(return_data.size) + floor32(mem[_1338 + mem[_1338]]) + 1 > test266151307() or floor32(mem[_1338 + mem[_1338]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1338 + ceil32(return_data.size) + floor32(mem[_1338 + mem[_1338]]) + 1
                        mem[_1338 + ceil32(return_data.size)] = _1359
                        require _1350 + (32 * _1359) + 32 <= return_data.size
                        idx = 0
                        s = _1338 + _1350 + 32
                        t = _1338 + ceil32(return_data.size) + 32
                        while idx < _1359:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(token1Address)
                        staticcall token1Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1638 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1647 = mem[_1638]
                        require mem[_1638] == mem[_1638]
                        if mem[_1638] > 0:
                            if token1Address != earnedAddress:
                                _1662 = mem[64]
                                mem[64] = mem[64] + (32 * token1ToEarnedPath.length) + 32
                                mem[_1662] = token1ToEarnedPath.length
                                if not token1ToEarnedPath.length:
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1647
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = token1ToEarnedPath.length
                                    idx = 0
                                    s = _1662 + 32
                                    t = mem[64] + 100
                                    while idx < token1ToEarnedPath.length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniRouterAddress)
                                    staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args _1647, Array(len=token1ToEarnedPath.length, data=mem[mem[64] + 100 len 32 * token1ToEarnedPath.length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2004 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2010 = mem[_2004]
                                    require mem[_2004] <= test266151307()
                                    require _2004 + mem[_2004] + 31 < _2004 + return_data.size
                                    _2016 = mem[_2004 + mem[_2004]]
                                    if mem[_2004 + mem[_2004]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _2004 + ceil32(return_data.size) + floor32(mem[_2004 + mem[_2004]]) + 1 > test266151307() or floor32(mem[_2004 + mem[_2004]]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _2004 + ceil32(return_data.size) + floor32(mem[_2004 + mem[_2004]]) + 1
                                    mem[_2004 + ceil32(return_data.size)] = _2016
                                    require _2010 + (32 * _2016) + 32 <= return_data.size
                                    idx = 0
                                    s = _2004 + _2010 + 32
                                    t = _2004 + ceil32(return_data.size) + 32
                                    while idx < _2016:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _2016 < 1:
                                        revert with 'NH{q', 17
                                    if _2016 - 1 >= _2016:
                                        revert with 'NH{q', 50
                                    if mem[_1662] < 1:
                                        revert with 'NH{q', 17
                                    if mem[_1662] - 1 >= mem[_1662]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * mem[_1662] - 1) + _1662 + 44 len 20] != sub_927ac464Address:
                                        if mem[(32 * _2016 - 1) + _2004 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _2016 - 1) + _2004 + ceil32(return_data.size) + 32]:
                                            revert with 'NH{q', 17
                                        if block.timestamp > -601:
                                            revert with 'NH{q', 17
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _1647
                                        mem[mem[64] + 36] = mem[(32 * _2016 - 1) + _2004 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                        mem[mem[64] + 68] = 160
                                        _2398 = mem[_1662]
                                        mem[mem[64] + 164] = mem[_1662]
                                        idx = 0
                                        s = _1662 + 32
                                        t = mem[64] + 196
                                        while idx < _2398:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = block.timestamp + 600
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _1647, mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _2398) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2684 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2705 = mem[_2684]
                                        require mem[_2684] <= test266151307()
                                        require _2684 + mem[_2684] + 31 < _2684 + return_data.size
                                        _2723 = mem[_2684 + mem[_2684]]
                                        if mem[_2684 + mem[_2684]] > test266151307():
                                            revert with 'NH{q', 65
                                        if _2684 + ceil32(return_data.size) + floor32(mem[_2684 + mem[_2684]]) + 1 > test266151307() or floor32(mem[_2684 + mem[_2684]]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = _2684 + ceil32(return_data.size) + floor32(mem[_2684 + mem[_2684]]) + 1
                                        mem[_2684 + ceil32(return_data.size)] = _2723
                                        require _2705 + (32 * _2723) + 32 <= return_data.size
                                        idx = 0
                                        s = _2684 + _2705 + 32
                                        t = _2684 + ceil32(return_data.size) + 32
                                        while idx < _2723:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                    else:
                                        if buyBackAddress != this.address:
                                            if mem[(32 * _2016 - 1) + _2004 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _2016 - 1) + _2004 + ceil32(return_data.size) + 32]:
                                                revert with 'NH{q', 17
                                            if block.timestamp > -601:
                                                revert with 'NH{q', 17
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _1647
                                            mem[mem[64] + 36] = mem[(32 * _2016 - 1) + _2004 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                            mem[mem[64] + 68] = 160
                                            _2406 = mem[_1662]
                                            mem[mem[64] + 164] = mem[_1662]
                                            idx = 0
                                            s = _1662 + 32
                                            t = mem[64] + 196
                                            while idx < _2406:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = block.timestamp + 600
                                            require ext_code.size(uniRouterAddress)
                                            call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args _1647, mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _2406) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2685 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2706 = mem[_2685]
                                            require mem[_2685] <= test266151307()
                                            require _2685 + mem[_2685] + 31 < _2685 + return_data.size
                                            _2724 = mem[_2685 + mem[_2685]]
                                            if mem[_2685 + mem[_2685]] > test266151307():
                                                revert with 'NH{q', 65
                                            if _2685 + ceil32(return_data.size) + floor32(mem[_2685 + mem[_2685]]) + 1 > test266151307() or floor32(mem[_2685 + mem[_2685]]) + 1 < 0:
                                                revert with 'NH{q', 65
                                            mem[64] = _2685 + ceil32(return_data.size) + floor32(mem[_2685 + mem[_2685]]) + 1
                                            mem[_2685 + ceil32(return_data.size)] = _2724
                                            require _2706 + (32 * _2724) + 32 <= return_data.size
                                            idx = 0
                                            s = _2685 + _2706 + 32
                                            t = _2685 + ceil32(return_data.size) + 32
                                            while idx < _2724:
                                                require mem[s] == mem[s]
                                                mem[t] = mem[s]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                        else:
                                            if burnedAmount > -mem[(32 * _2016 - 1) + _2004 + ceil32(return_data.size) + 32] - 1:
                                                revert with 'NH{q', 17
                                            burnedAmount += mem[(32 * _2016 - 1) + _2004 + ceil32(return_data.size) + 32]
                                            if mem[(32 * _2016 - 1) + _2004 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _2016 - 1) + _2004 + ceil32(return_data.size) + 32]:
                                                revert with 'NH{q', 17
                                            if block.timestamp > -601:
                                                revert with 'NH{q', 17
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _1647
                                            mem[mem[64] + 36] = mem[(32 * _2016 - 1) + _2004 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                            mem[mem[64] + 68] = 160
                                            _2424 = mem[_1662]
                                            mem[mem[64] + 164] = mem[_1662]
                                            idx = 0
                                            s = _1662 + 32
                                            t = mem[64] + 196
                                            while idx < _2424:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = block.timestamp + 600
                                            require ext_code.size(uniRouterAddress)
                                            call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args _1647, mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _2424) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2686 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2707 = mem[_2686]
                                            require mem[_2686] <= test266151307()
                                            require _2686 + mem[_2686] + 31 < _2686 + return_data.size
                                            _2725 = mem[_2686 + mem[_2686]]
                                            if mem[_2686 + mem[_2686]] > test266151307():
                                                revert with 'NH{q', 65
                                            if _2686 + ceil32(return_data.size) + floor32(mem[_2686 + mem[_2686]]) + 1 > test266151307() or floor32(mem[_2686 + mem[_2686]]) + 1 < 0:
                                                revert with 'NH{q', 65
                                            mem[64] = _2686 + ceil32(return_data.size) + floor32(mem[_2686 + mem[_2686]]) + 1
                                            mem[_2686 + ceil32(return_data.size)] = _2725
                                            require _2707 + (32 * _2725) + 32 <= return_data.size
                                            idx = 0
                                            s = _2686 + _2707 + 32
                                            t = _2686 + ceil32(return_data.size) + 32
                                            while idx < _2725:
                                                require mem[s] == mem[s]
                                                mem[t] = mem[s]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                else:
                                    mem[0] = 30
                                    mem[_1662 + 32] = address(token1ToEarnedPath.field_0)
                                    idx = _1662 + 32
                                    s = 0
                                    while _1662 + (32 * token1ToEarnedPath.length) > idx:
                                        mem[idx + 32] = token1ToEarnedPath[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1647
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = token1ToEarnedPath.length
                                    idx = 0
                                    s = _1662 + 32
                                    t = mem[64] + 100
                                    while idx < token1ToEarnedPath.length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniRouterAddress)
                                    staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args _1647, Array(len=token1ToEarnedPath.length, data=mem[mem[64] + 100 len 32 * token1ToEarnedPath.length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2646 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2649 = mem[_2646]
                                    require mem[_2646] <= test266151307()
                                    require _2646 + mem[_2646] + 31 < _2646 + return_data.size
                                    _2652 = mem[_2646 + mem[_2646]]
                                    if mem[_2646 + mem[_2646]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _2646 + ceil32(return_data.size) + floor32(mem[_2646 + mem[_2646]]) + 1 > test266151307() or floor32(mem[_2646 + mem[_2646]]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _2646 + ceil32(return_data.size) + floor32(mem[_2646 + mem[_2646]]) + 1
                                    mem[_2646 + ceil32(return_data.size)] = _2652
                                    require _2649 + (32 * _2652) + 32 <= return_data.size
                                    idx = 0
                                    s = _2646 + _2649 + 32
                                    t = _2646 + ceil32(return_data.size) + 32
                                    while idx < _2652:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _2652 < 1:
                                        revert with 'NH{q', 17
                                    if _2652 - 1 >= _2652:
                                        revert with 'NH{q', 50
                                    _2896 = mem[(32 * _2652 - 1) + _2646 + ceil32(return_data.size) + 32]
                                    if mem[_1662] < 1:
                                        revert with 'NH{q', 17
                                    if mem[_1662] - 1 >= mem[_1662]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * mem[_1662] - 1) + _1662 + 44 len 20] != sub_927ac464Address:
                                        if mem[(32 * _2652 - 1) + _2646 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _2652 - 1) + _2646 + ceil32(return_data.size) + 32]:
                                            revert with 'NH{q', 17
                                        if block.timestamp > -601:
                                            revert with 'NH{q', 17
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _1647
                                        mem[mem[64] + 36] = _2896 * slippageFactor / 1000
                                        mem[mem[64] + 68] = 160
                                        _2914 = mem[_1662]
                                        mem[mem[64] + 164] = mem[_1662]
                                        idx = 0
                                        s = _1662 + 32
                                        t = mem[64] + 196
                                        while idx < _2914:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = block.timestamp + 600
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _1647, _2896 * slippageFactor / 1000, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _2914) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3008 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3017 = mem[_3008]
                                        require mem[_3008] <= test266151307()
                                        require _3008 + mem[_3008] + 31 < _3008 + return_data.size
                                        _3026 = mem[_3008 + mem[_3008]]
                                        if mem[_3008 + mem[_3008]] > test266151307():
                                            revert with 'NH{q', 65
                                        if _3008 + ceil32(return_data.size) + floor32(mem[_3008 + mem[_3008]]) + 1 > test266151307() or floor32(mem[_3008 + mem[_3008]]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = _3008 + ceil32(return_data.size) + floor32(mem[_3008 + mem[_3008]]) + 1
                                        mem[_3008 + ceil32(return_data.size)] = _3026
                                        require _3017 + (32 * _3026) + 32 <= return_data.size
                                        idx = 0
                                        s = _3008 + _3017 + 32
                                        t = _3008 + ceil32(return_data.size) + 32
                                        while idx < _3026:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                    else:
                                        if buyBackAddress != this.address:
                                            if mem[(32 * _2652 - 1) + _2646 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _2652 - 1) + _2646 + ceil32(return_data.size) + 32]:
                                                revert with 'NH{q', 17
                                            if block.timestamp > -601:
                                                revert with 'NH{q', 17
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _1647
                                            mem[mem[64] + 36] = _2896 * slippageFactor / 1000
                                            mem[mem[64] + 68] = 160
                                            _2919 = mem[_1662]
                                            mem[mem[64] + 164] = mem[_1662]
                                            idx = 0
                                            s = _1662 + 32
                                            t = mem[64] + 196
                                            while idx < _2919:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = block.timestamp + 600
                                            require ext_code.size(uniRouterAddress)
                                            call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args _1647, _2896 * slippageFactor / 1000, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _2919) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3009 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3018 = mem[_3009]
                                            require mem[_3009] <= test266151307()
                                            require _3009 + mem[_3009] + 31 < _3009 + return_data.size
                                            _3027 = mem[_3009 + mem[_3009]]
                                            if mem[_3009 + mem[_3009]] > test266151307():
                                                revert with 'NH{q', 65
                                            if _3009 + ceil32(return_data.size) + floor32(mem[_3009 + mem[_3009]]) + 1 > test266151307() or floor32(mem[_3009 + mem[_3009]]) + 1 < 0:
                                                revert with 'NH{q', 65
                                            mem[64] = _3009 + ceil32(return_data.size) + floor32(mem[_3009 + mem[_3009]]) + 1
                                            mem[_3009 + ceil32(return_data.size)] = _3027
                                            require _3018 + (32 * _3027) + 32 <= return_data.size
                                            idx = 0
                                            s = _3009 + _3018 + 32
                                            t = _3009 + ceil32(return_data.size) + 32
                                            while idx < _3027:
                                                require mem[s] == mem[s]
                                                mem[t] = mem[s]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                        else:
                                            if burnedAmount > -mem[(32 * _2652 - 1) + _2646 + ceil32(return_data.size) + 32] - 1:
                                                revert with 'NH{q', 17
                                            burnedAmount += mem[(32 * _2652 - 1) + _2646 + ceil32(return_data.size) + 32]
                                            if mem[(32 * _2652 - 1) + _2646 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _2652 - 1) + _2646 + ceil32(return_data.size) + 32]:
                                                revert with 'NH{q', 17
                                            if block.timestamp > -601:
                                                revert with 'NH{q', 17
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _1647
                                            mem[mem[64] + 36] = _2896 * slippageFactor / 1000
                                            mem[mem[64] + 68] = 160
                                            _2928 = mem[_1662]
                                            mem[mem[64] + 164] = mem[_1662]
                                            idx = 0
                                            s = _1662 + 32
                                            t = mem[64] + 196
                                            while idx < _2928:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = block.timestamp + 600
                                            require ext_code.size(uniRouterAddress)
                                            call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args _1647, _2896 * slippageFactor / 1000, 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _2928) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3010 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3019 = mem[_3010]
                                            require mem[_3010] <= test266151307()
                                            require _3010 + mem[_3010] + 31 < _3010 + return_data.size
                                            _3028 = mem[_3010 + mem[_3010]]
                                            if mem[_3010 + mem[_3010]] > test266151307():
                                                revert with 'NH{q', 65
                                            if _3010 + ceil32(return_data.size) + floor32(mem[_3010 + mem[_3010]]) + 1 > test266151307() or floor32(mem[_3010 + mem[_3010]]) + 1 < 0:
                                                revert with 'NH{q', 65
                                            mem[64] = _3010 + ceil32(return_data.size) + floor32(mem[_3010 + mem[_3010]]) + 1
                                            mem[_3010 + ceil32(return_data.size)] = _3028
                                            require _3019 + (32 * _3028) + 32 <= return_data.size
                                            idx = 0
                                            s = _3010 + _3019 + 32
                                            t = _3010 + ceil32(return_data.size) + 32
                                            while idx < _3028:
                                                require mem[s] == mem[s]
                                                mem[t] = mem[s]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                    else:
                        if burnedAmount > -mem[(32 * _664 - 1) + (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160] - 1:
                            revert with 'NH{q', 17
                        burnedAmount += mem[(32 * _664 - 1) + (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160]
                        if mem[(32 * _664 - 1) + (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160] and slippageFactor > -1 / mem[(32 * _664 - 1) + (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160]:
                            revert with 'NH{q', 17
                        if block.timestamp > -601:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = mem[(32 * _664 - 1) + (2 * ceil32(return_data.size)) + (32 * token0ToEarnedPath.length) + 160] * slippageFactor / 1000
                        mem[mem[64] + 68] = 160
                        _1083 = mem[ceil32(return_data.size) + 96]
                        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = mem[64] + 196
                        while idx < _1083:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 600
                        require ext_code.size(uniRouterAddress)
                        call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _1083) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1339 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1351 = mem[_1339]
                        require mem[_1339] <= test266151307()
                        require _1339 + mem[_1339] + 31 < _1339 + return_data.size
                        _1360 = mem[_1339 + mem[_1339]]
                        if mem[_1339 + mem[_1339]] > test266151307():
                            revert with 'NH{q', 65
                        if _1339 + ceil32(return_data.size) + floor32(mem[_1339 + mem[_1339]]) + 1 > test266151307() or floor32(mem[_1339 + mem[_1339]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1339 + ceil32(return_data.size) + floor32(mem[_1339 + mem[_1339]]) + 1
                        mem[_1339 + ceil32(return_data.size)] = _1360
                        require _1351 + (32 * _1360) + 32 <= return_data.size
                        idx = 0
                        s = _1339 + _1351 + 32
                        t = _1339 + ceil32(return_data.size) + 32
                        while idx < _1360:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(token1Address)
                        staticcall token1Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1639 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1648 = mem[_1639]
                        require mem[_1639] == mem[_1639]
                        if mem[_1639] > 0:
                            if token1Address != earnedAddress:
                                _1663 = mem[64]
                                mem[64] = mem[64] + (32 * token1ToEarnedPath.length) + 32
                                mem[_1663] = token1ToEarnedPath.length
                                if not token1ToEarnedPath.length:
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1648
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = token1ToEarnedPath.length
                                    idx = 0
                                    s = _1663 + 32
                                    t = mem[64] + 100
                                    while idx < token1ToEarnedPath.length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniRouterAddress)
                                    staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args _1648, Array(len=token1ToEarnedPath.length, data=mem[mem[64] + 100 len 32 * token1ToEarnedPath.length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2005 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2011 = mem[_2005]
                                    require mem[_2005] <= test266151307()
                                    require _2005 + mem[_2005] + 31 < _2005 + return_data.size
                                    _2017 = mem[_2005 + mem[_2005]]
                                    if mem[_2005 + mem[_2005]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _2005 + ceil32(return_data.size) + floor32(mem[_2005 + mem[_2005]]) + 1 > test266151307() or floor32(mem[_2005 + mem[_2005]]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _2005 + ceil32(return_data.size) + floor32(mem[_2005 + mem[_2005]]) + 1
                                    mem[_2005 + ceil32(return_data.size)] = _2017
                                    require _2011 + (32 * _2017) + 32 <= return_data.size
                                    idx = 0
                                    s = _2005 + _2011 + 32
                                    t = _2005 + ceil32(return_data.size) + 32
                                    while idx < _2017:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _2017 < 1:
                                        revert with 'NH{q', 17
                                    if _2017 - 1 >= _2017:
                                        revert with 'NH{q', 50
                                    if mem[_1663] < 1:
                                        revert with 'NH{q', 17
                                    if mem[_1663] - 1 >= mem[_1663]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * mem[_1663] - 1) + _1663 + 44 len 20] != sub_927ac464Address:
                                        if mem[(32 * _2017 - 1) + _2005 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _2017 - 1) + _2005 + ceil32(return_data.size) + 32]:
                                            revert with 'NH{q', 17
                                        if block.timestamp > -601:
                                            revert with 'NH{q', 17
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _1648
                                        mem[mem[64] + 36] = mem[(32 * _2017 - 1) + _2005 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                        mem[mem[64] + 68] = 160
                                        _2400 = mem[_1663]
                                        mem[mem[64] + 164] = mem[_1663]
                                        idx = 0
                                        s = _1663 + 32
                                        t = mem[64] + 196
                                        while idx < _2400:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = block.timestamp + 600
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _1648, mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _2400) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2687 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2708 = mem[_2687]
                                        require mem[_2687] <= test266151307()
                                        require _2687 + mem[_2687] + 31 < _2687 + return_data.size
                                        _2726 = mem[_2687 + mem[_2687]]
                                        if mem[_2687 + mem[_2687]] > test266151307():
                                            revert with 'NH{q', 65
                                        if _2687 + ceil32(return_data.size) + floor32(mem[_2687 + mem[_2687]]) + 1 > test266151307() or floor32(mem[_2687 + mem[_2687]]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = _2687 + ceil32(return_data.size) + floor32(mem[_2687 + mem[_2687]]) + 1
                                        mem[_2687 + ceil32(return_data.size)] = _2726
                                        require _2708 + (32 * _2726) + 32 <= return_data.size
                                        idx = 0
                                        s = _2687 + _2708 + 32
                                        t = _2687 + ceil32(return_data.size) + 32
                                        while idx < _2726:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                    else:
                                        if buyBackAddress != this.address:
                                            if mem[(32 * _2017 - 1) + _2005 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _2017 - 1) + _2005 + ceil32(return_data.size) + 32]:
                                                revert with 'NH{q', 17
                                            if block.timestamp > -601:
                                                revert with 'NH{q', 17
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _1648
                                            mem[mem[64] + 36] = mem[(32 * _2017 - 1) + _2005 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                            mem[mem[64] + 68] = 160
                                            _2407 = mem[_1663]
                                            mem[mem[64] + 164] = mem[_1663]
                                            idx = 0
                                            s = _1663 + 32
                                            t = mem[64] + 196
                                            while idx < _2407:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = block.timestamp + 600
                                            require ext_code.size(uniRouterAddress)
                                            call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args _1648, mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _2407) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2688 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2709 = mem[_2688]
                                            require mem[_2688] <= test266151307()
                                            require _2688 + mem[_2688] + 31 < _2688 + return_data.size
                                            _2727 = mem[_2688 + mem[_2688]]
                                            if mem[_2688 + mem[_2688]] > test266151307():
                                                revert with 'NH{q', 65
                                            if _2688 + ceil32(return_data.size) + floor32(mem[_2688 + mem[_2688]]) + 1 > test266151307() or floor32(mem[_2688 + mem[_2688]]) + 1 < 0:
                                                revert with 'NH{q', 65
                                            mem[64] = _2688 + ceil32(return_data.size) + floor32(mem[_2688 + mem[_2688]]) + 1
                                            mem[_2688 + ceil32(return_data.size)] = _2727
                                            require _2709 + (32 * _2727) + 32 <= return_data.size
                                            idx = 0
                                            s = _2688 + _2709 + 32
                                            t = _2688 + ceil32(return_data.size) + 32
                                            while idx < _2727:
                                                require mem[s] == mem[s]
                                                mem[t] = mem[s]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                        else:
                                            if burnedAmount > -mem[(32 * _2017 - 1) + _2005 + ceil32(return_data.size) + 32] - 1:
                                                revert with 'NH{q', 17
                                            burnedAmount += mem[(32 * _2017 - 1) + _2005 + ceil32(return_data.size) + 32]
                                            if mem[(32 * _2017 - 1) + _2005 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _2017 - 1) + _2005 + ceil32(return_data.size) + 32]:
                                                revert with 'NH{q', 17
                                            if block.timestamp > -601:
                                                revert with 'NH{q', 17
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _1648
                                            mem[mem[64] + 36] = mem[(32 * _2017 - 1) + _2005 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                            mem[mem[64] + 68] = 160
                                            _2425 = mem[_1663]
                                            mem[mem[64] + 164] = mem[_1663]
                                            idx = 0
                                            s = _1663 + 32
                                            t = mem[64] + 196
                                            while idx < _2425:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = block.timestamp + 600
                                            require ext_code.size(uniRouterAddress)
                                            call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args _1648, mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _2425) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2689 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2710 = mem[_2689]
                                            require mem[_2689] <= test266151307()
                                            require _2689 + mem[_2689] + 31 < _2689 + return_data.size
                                            _2728 = mem[_2689 + mem[_2689]]
                                            if mem[_2689 + mem[_2689]] > test266151307():
                                                revert with 'NH{q', 65
                                            if _2689 + ceil32(return_data.size) + floor32(mem[_2689 + mem[_2689]]) + 1 > test266151307() or floor32(mem[_2689 + mem[_2689]]) + 1 < 0:
                                                revert with 'NH{q', 65
                                            mem[64] = _2689 + ceil32(return_data.size) + floor32(mem[_2689 + mem[_2689]]) + 1
                                            mem[_2689 + ceil32(return_data.size)] = _2728
                                            require _2710 + (32 * _2728) + 32 <= return_data.size
                                            idx = 0
                                            s = _2689 + _2710 + 32
                                            t = _2689 + ceil32(return_data.size) + 32
                                            while idx < _2728:
                                                require mem[s] == mem[s]
                                                mem[t] = mem[s]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                else:
                                    mem[0] = 30
                                    mem[_1663 + 32] = address(token1ToEarnedPath.field_0)
                                    idx = _1663 + 32
                                    s = 0
                                    while _1663 + (32 * token1ToEarnedPath.length) > idx:
                                        mem[idx + 32] = token1ToEarnedPath[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1648
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = token1ToEarnedPath.length
                                    idx = 0
                                    s = _1663 + 32
                                    t = mem[64] + 100
                                    while idx < token1ToEarnedPath.length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniRouterAddress)
                                    staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args _1648, Array(len=token1ToEarnedPath.length, data=mem[mem[64] + 100 len 32 * token1ToEarnedPath.length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2647 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2650 = mem[_2647]
                                    require mem[_2647] <= test266151307()
                                    require _2647 + mem[_2647] + 31 < _2647 + return_data.size
                                    _2653 = mem[_2647 + mem[_2647]]
                                    if mem[_2647 + mem[_2647]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _2647 + ceil32(return_data.size) + floor32(mem[_2647 + mem[_2647]]) + 1 > test266151307() or floor32(mem[_2647 + mem[_2647]]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _2647 + ceil32(return_data.size) + floor32(mem[_2647 + mem[_2647]]) + 1
                                    mem[_2647 + ceil32(return_data.size)] = _2653
                                    require _2650 + (32 * _2653) + 32 <= return_data.size
                                    idx = 0
                                    s = _2647 + _2650 + 32
                                    t = _2647 + ceil32(return_data.size) + 32
                                    while idx < _2653:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _2653 < 1:
                                        revert with 'NH{q', 17
                                    if _2653 - 1 >= _2653:
                                        revert with 'NH{q', 50
                                    if mem[_1663] < 1:
                                        revert with 'NH{q', 17
                                    if mem[_1663] - 1 >= mem[_1663]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * mem[_1663] - 1) + _1663 + 44 len 20] != sub_927ac464Address:
                                        if mem[(32 * _2653 - 1) + _2647 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _2653 - 1) + _2647 + ceil32(return_data.size) + 32]:
                                            revert with 'NH{q', 17
                                        if block.timestamp > -601:
                                            revert with 'NH{q', 17
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _1648
                                        mem[mem[64] + 36] = mem[(32 * _2653 - 1) + _2647 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                        mem[mem[64] + 68] = 160
                                        _2916 = mem[_1663]
                                        mem[mem[64] + 164] = mem[_1663]
                                        idx = 0
                                        s = _1663 + 32
                                        t = mem[64] + 196
                                        while idx < _2916:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = block.timestamp + 600
                                        require ext_code.size(uniRouterAddress)
                                        call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _1648, mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _2916) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3011 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3020 = mem[_3011]
                                        require mem[_3011] <= test266151307()
                                        require _3011 + mem[_3011] + 31 < _3011 + return_data.size
                                        _3029 = mem[_3011 + mem[_3011]]
                                        if mem[_3011 + mem[_3011]] > test266151307():
                                            revert with 'NH{q', 65
                                        if _3011 + ceil32(return_data.size) + floor32(mem[_3011 + mem[_3011]]) + 1 > test266151307() or floor32(mem[_3011 + mem[_3011]]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = _3011 + ceil32(return_data.size) + floor32(mem[_3011 + mem[_3011]]) + 1
                                        mem[_3011 + ceil32(return_data.size)] = _3029
                                        require _3020 + (32 * _3029) + 32 <= return_data.size
                                        idx = 0
                                        s = _3011 + _3020 + 32
                                        t = _3011 + ceil32(return_data.size) + 32
                                        while idx < _3029:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                    else:
                                        if buyBackAddress != this.address:
                                            if mem[(32 * _2653 - 1) + _2647 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _2653 - 1) + _2647 + ceil32(return_data.size) + 32]:
                                                revert with 'NH{q', 17
                                            if block.timestamp > -601:
                                                revert with 'NH{q', 17
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _1648
                                            mem[mem[64] + 36] = mem[(32 * _2653 - 1) + _2647 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                            mem[mem[64] + 68] = 160
                                            _2920 = mem[_1663]
                                            mem[mem[64] + 164] = mem[_1663]
                                            idx = 0
                                            s = _1663 + 32
                                            t = mem[64] + 196
                                            while idx < _2920:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = block.timestamp + 600
                                            require ext_code.size(uniRouterAddress)
                                            call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args _1648, mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _2920) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3012 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3021 = mem[_3012]
                                            require mem[_3012] <= test266151307()
                                            require _3012 + mem[_3012] + 31 < _3012 + return_data.size
                                            _3030 = mem[_3012 + mem[_3012]]
                                            if mem[_3012 + mem[_3012]] > test266151307():
                                                revert with 'NH{q', 65
                                            if _3012 + ceil32(return_data.size) + floor32(mem[_3012 + mem[_3012]]) + 1 > test266151307() or floor32(mem[_3012 + mem[_3012]]) + 1 < 0:
                                                revert with 'NH{q', 65
                                            mem[64] = _3012 + ceil32(return_data.size) + floor32(mem[_3012 + mem[_3012]]) + 1
                                            mem[_3012 + ceil32(return_data.size)] = _3030
                                            require _3021 + (32 * _3030) + 32 <= return_data.size
                                            idx = 0
                                            s = _3012 + _3021 + 32
                                            t = _3012 + ceil32(return_data.size) + 32
                                            while idx < _3030:
                                                require mem[s] == mem[s]
                                                mem[t] = mem[s]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                        else:
                                            if burnedAmount > -mem[(32 * _2653 - 1) + _2647 + ceil32(return_data.size) + 32] - 1:
                                                revert with 'NH{q', 17
                                            burnedAmount += mem[(32 * _2653 - 1) + _2647 + ceil32(return_data.size) + 32]
                                            if mem[(32 * _2653 - 1) + _2647 + ceil32(return_data.size) + 32] and slippageFactor > -1 / mem[(32 * _2653 - 1) + _2647 + ceil32(return_data.size) + 32]:
                                                revert with 'NH{q', 17
                                            if block.timestamp > -601:
                                                revert with 'NH{q', 17
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _1648
                                            mem[mem[64] + 36] = mem[(32 * _2653 - 1) + _2647 + ceil32(return_data.size) + 32] * slippageFactor / 1000
                                            mem[mem[64] + 68] = 160
                                            _2929 = mem[_1663]
                                            mem[mem[64] + 164] = mem[_1663]
                                            idx = 0
                                            s = _1663 + 32
                                            t = mem[64] + 196
                                            while idx < _2929:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = block.timestamp + 600
                                            require ext_code.size(uniRouterAddress)
                                            call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args _1648, mem[mem[64] + 36], 160, address(this.address), block.timestamp + 600, mem[mem[64] + 164 len (32 * _2929) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3013 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _3022 = mem[_3013]
                                            require mem[_3013] <= test266151307()
                                            require _3013 + mem[_3013] + 31 < _3013 + return_data.size
                                            _3031 = mem[_3013 + mem[_3013]]
                                            if mem[_3013 + mem[_3013]] > test266151307():
                                                revert with 'NH{q', 65
                                            if _3013 + ceil32(return_data.size) + floor32(mem[_3013 + mem[_3013]]) + 1 > test266151307() or floor32(mem[_3013 + mem[_3013]]) + 1 < 0:
                                                revert with 'NH{q', 65
                                            mem[64] = _3013 + ceil32(return_data.size) + floor32(mem[_3013 + mem[_3013]]) + 1
                                            mem[_3013 + ceil32(return_data.size)] = _3031
                                            require _3022 + (32 * _3031) + 32 <= return_data.size
                                            idx = 0
                                            s = _3013 + _3022 + 32
                                            t = _3013 + ceil32(return_data.size) + 32
                                            while idx < _3031:
                                                require mem[s] == mem[s]
                                                mem[t] = mem[s]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
    stor1 = 1
}



}
