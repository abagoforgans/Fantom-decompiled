contract main {




// =====================  Runtime code  =====================


#
#  - deposit(address arg1, uint256 arg2)
#  - inCaseTokensGetStuck(address arg1, uint256 arg2, address arg3)
#  - withdraw(address arg1, uint256 arg2)
#
const controllerFeeUL = 300

const controllerFeeMax = 10000

const buyBackRateMax = 10000

const withdrawFeeFactorMax = 10000

const buyBackAddress = 57005

const sub_7c717c09(?) = 9500

const withdrawFeeFactorLL = 9950

const sub_a613a28a(?) = 10000

const buyBackRateUL = 800

const slippageFactorUL = 995

const entranceFeeFactorLL = 9950

const entranceFeeFactorMax = 10000


address owner;
uint256 stor1;
uint8 stor2;
uint8 stor2; offset 8
uint8 stor2; offset 16
uint32 stor2;
address sub_1172cd2bAddress; offset 24
uint256 stor2;
address sub_bc70cd8cAddress;
address wantAddress;
address sub_3a459295Address;
address uniRouterAddress;
uint256 sub_1b61e055;
address sub_7edd3da5Address;
address sub_88f9e800Address;
address sub_b3ed4599Address;
address govAddress;
uint256 lastEarnBlock;
uint256 wantLockedTotal;
uint256 sharesTotal;
uint256 controllerFee;
uint256 buyBackRate;
uint256 entranceFeeFactor;
uint256 sub_25c7ce6b;
uint256 withdrawFeeFactor;
uint256 slippageFactor;

function sub_0ddea8c3(?) payable {
    return bool(uint8(stor2.field_8))
}

function lastEarnBlock() payable {
    return lastEarnBlock
}

function sub_1172cd2b(?) payable {
    return sub_1172cd2bAddress
}

function entranceFeeFactor() payable {
    return entranceFeeFactor
}

function buyBackRate() payable {
    return buyBackRate
}

function sub_1b61e055(?) payable {
    return sub_1b61e055
}

function sub_25c7ce6b(?) payable {
    return sub_25c7ce6b
}

function sub_3a459295(?) payable {
    return sub_3a459295Address
}

function wantLockedTotal() payable {
    return wantLockedTotal
}

function sharesTotal() payable {
    return sharesTotal
}

function govAddress() payable {
    return govAddress
}

function paused() payable {
    return bool(uint8(stor2.field_0))
}

function withdrawFeeFactor() payable {
    return withdrawFeeFactor
}

function uniRouterAddress() payable {
    return uniRouterAddress
}

function sub_7edd3da5(?) payable {
    return sub_7edd3da5Address
}

function controllerFee() payable {
    return controllerFee
}

function sub_88f9e800(?) payable {
    return sub_88f9e800Address
}

function owner() payable {
    return owner
}

function sub_b3ed4599(?) payable {
    return sub_b3ed4599Address
}

function sub_bc70cd8c(?) payable {
    return sub_bc70cd8cAddress
}

function isAutoComp() payable {
    return bool(uint8(stor2.field_16))
}

function wantAddress() payable {
    return wantAddress
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
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    govAddress = arg1
}

function pause() payable {
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    uint8(stor2.field_0) = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if not uint8(stor2.field_0):
        revert with 0, 'Pausable: not paused'
    uint8(stor2.field_0) = 0
    emit Unpaused(msg.sender);
}

function setControllerFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 > 300:
        revert with 0, 'too high'
    controllerFee = arg1
}

function setbuyBackRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if buyBackRate > 800:
        revert with 0, 'too high'
    buyBackRate = arg1
}

function setDepositFeeFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 <= 9500:
        revert with 0, '!safe - too low'
    if arg1 > 10000:
        revert with 0, '!safe - too high'
    sub_25c7ce6b = arg1
}

function setEntranceFeeFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 <= 9950:
        revert with 0, '!safe - too low'
    if arg1 > 10000:
        revert with 0, '!safe - too high'
    entranceFeeFactor = arg1
}

function setWithdrawFeeFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 <= 9950:
        revert with 0, '!safe - too low'
    if arg1 > 10000:
        revert with 0, '!safe - too high'
    withdrawFeeFactor = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function farm() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not uint8(stor2.field_16):
        revert with 0, '!isAutoComp'
    mem[100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if wantLockedTotal + ext_call.return_data[0] < wantLockedTotal:
        revert with 0, 'SafeMath: addition overflow'
    wantLockedTotal += ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = sub_1172cd2bAddress
    require ext_code.size(wantAddress)
    staticcall wantAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), sub_1172cd2bAddress
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    mem[(2 * ceil32(return_data.size)) + 132] = sub_1172cd2bAddress
    mem[(2 * ceil32(return_data.size)) + 164] = 2 * ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor2.field_0)
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(wantAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), 2 * ext_call.return_data[0], 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call wantAddress with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), 2 * ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), 2 * ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
            if not mem[(2 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(sub_1172cd2bAddress)
    call sub_1172cd2bAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
         gas gas_remaining wei
        args wantAddress, ext_call.return_data[0], address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function earn() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    if not uint8(stor2.field_16):
        revert with 0, '!isAutoComp'
    require ext_code.size(sub_bc70cd8cAddress)
    call sub_bc70cd8cAddress.exit() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96] = 0xdc01f60d00000000000000000000000000000000000000000000000000000000
    mem[100] = this.address
    require ext_code.size(sub_bc70cd8cAddress)
    staticcall sub_bc70cd8cAddress.claimableRewards(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _12 = mem[96 len 4], address(this.address) << 64
    require mem[96 len 4], address(this.address) << 64 <= test266151307()
    require mem[96 len 4], address(this.address) << 64 + 127 < return_data.size + 96
    _13 = mem[mem[96 len 4], address(this.address) << 64 + 96]
    require mem[mem[96 len 4], address(this.address) << 64 + 96] <= test266151307()
    require ceil32(return_data.size) + (32 * mem[mem[96 len 4], address(this.address) << 64 + 96]) + 128 <= test266151307() and (32 * mem[mem[96 len 4], address(this.address) << 64 + 96]) + 32 >= 0
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], address(this.address) << 64 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _13
    require _12 + (64 * _13) + 32 <= return_data.size
    idx = 0
    s = _12 + 128
    t = ceil32(return_data.size) + 128
    while idx < _13:
        require return_data.size + -s + 96 >= 64
        _224 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require mem[s] == mem[s + 12 len 20]
        mem[_224] = mem[s]
        require mem[s + 32] == mem[s + 32]
        mem[_224 + 32] = mem[s + 32]
        mem[t] = _224
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    _545 = mem[ceil32(return_data.size) + 96]
    idx = 0
    while idx < _545:
        require idx < mem[ceil32(return_data.size) + 96]
        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 12 len 20] != sub_3a459295Address:
            require idx < mem[ceil32(return_data.size) + 96]
            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] > 0:
                require idx < mem[ceil32(return_data.size) + 96]
                _555 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_555))
                staticcall address(_555).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _561 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _562 = mem[_561]
                require mem[_561] == mem[_561]
                require idx < mem[ceil32(return_data.size) + 96]
                require ext_code.size(mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 12 len 20])
                staticcall mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 12 len 20].UNDERLYING_ASSET_ADDRESS() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _572 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _574 = mem[_572]
                require mem[_572] == mem[_572 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + 96]
                _578 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
                mem[mem[64]] = 0x69328dec00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_578)
                mem[mem[64] + 36] = _562
                mem[mem[64] + 68] = this.address
                require ext_code.size(sub_1172cd2bAddress)
                call sub_1172cd2bAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(_578), _562, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(_574) != sub_7edd3da5Address:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = uniRouterAddress
                    require ext_code.size(address(_574))
                    staticcall address(_574).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), uniRouterAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _600 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _603 = mem[_600]
                    require mem[_600] == mem[_600]
                    if mem[_600] + _562 < mem[_600]:
                        revert with 0, 'SafeMath: addition overflow'
                    _609 = mem[64]
                    mem[mem[64] + 36] = uniRouterAddress
                    mem[mem[64] + 68] = _603 + _562
                    _614 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_614 + 32] = mem[_614 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[64] = _609 + 164
                    mem[_609 + 100] = 32
                    mem[_609 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(address(_574)) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _622 = mem[_614]
                    s = 0
                    while s < _622:
                        mem[_609 + s + 164] = mem[_614 + s + 32]
                        _545 = mem[ceil32(return_data.size) + 96]
                        s = s + 32
                        continue 
                    if ceil32(_622) <= _622:
                        call address(_574).mem[_609 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_609 + 168 len _622 - 4]
                        if return_data.size:
                            mem[_609 + 164] = return_data.size
                            mem[_609 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_609 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_609 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_609 + ceil32(return_data.size) + idx + 233] = mem[_609 + idx + 132]
                                    _545 = mem[ceil32(return_data.size) + 96]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_609 + ceil32(return_data.size) + 233]
                            if return_data.size <= 0:
                                mem[_609 + ceil32(return_data.size) + 165] = 2
                                mem[_609 + ceil32(return_data.size) + 197] = address(_574)
                                mem[_609 + ceil32(return_data.size) + 229] = sub_7edd3da5Address
                                mem[_609 + ceil32(return_data.size) + 261] = 26
                                mem[_609 + ceil32(return_data.size) + 293] = 'SafeMath: division by zero'
                                mem[_609 + ceil32(return_data.size) + 325] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_609 + ceil32(return_data.size) + 329] = _562 / 2
                                mem[_609 + ceil32(return_data.size) + 361] = 64
                                mem[_609 + ceil32(return_data.size) + 393] = 2
                                s = 0
                                t = _609 + ceil32(return_data.size) + 197
                                u = _609 + ceil32(return_data.size) + 425
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _545 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, _562), Array(len=2, data=mem[_609 + ceil32(return_data.size) + 425 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_609 + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _609 + ceil32(return_data.size) + ceil32(return_data.size) + 325
                                require return_data.size >= 32
                                _1454 = mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32
                                require mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 <= test266151307()
                                require _609 + ceil32(return_data.size) + mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 + 356 < _609 + ceil32(return_data.size) + return_data.size + 325
                                _1471 = mem[_609 + ceil32(return_data.size) + mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 + 325]
                                require mem[_609 + ceil32(return_data.size) + mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 + 325] <= test266151307()
                                require _609 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_609 + ceil32(return_data.size) + mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 + 325]) + 357 <= test266151307() and (32 * mem[_609 + ceil32(return_data.size) + mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 + 325]) + 32 >= 0
                                mem[64] = _609 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_609 + ceil32(return_data.size) + mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 + 325]) + 357
                                mem[_609 + ceil32(return_data.size) + ceil32(return_data.size) + 325] = mem[_609 + ceil32(return_data.size) + mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 + 325]
                                require _1454 + (32 * _1471) + 32 <= return_data.size
                                s = 0
                                t = _609 + ceil32(return_data.size) + _1454 + 357
                                u = _609 + ceil32(return_data.size) + ceil32(return_data.size) + 357
                                while s < _1471:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _545 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                _1883 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1883] = 30
                                mem[_1883 + 32] = 'SafeMath: subtraction overflow'
                                if 1 > _1471:
                                    _1891 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1891 + idx + 68] = mem[_1883 + idx + 32]
                                        _545 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_1891 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1891 + -mem[64] + 100
                                require _1471 - 1 < _1471
                                _1911 = mem[(32 * _1471 - 1) + _609 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                if not mem[(32 * _1471 - 1) + _609 + ceil32(return_data.size) + ceil32(return_data.size) + 357]:
                                    _1935 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1935] = 26
                                    mem[_1935 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _562 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _609 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _545 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _562), 0, 160, address(this.address), block.timestamp + sub_1b61e055, 2, mem[mem[64] + 196 len 64]
                                else:
                                    require mem[(32 * _1471 - 1) + _609 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                    if mem[(32 * _1471 - 1) + _609 + ceil32(return_data.size) + ceil32(return_data.size) + 357] * slippageFactor / mem[(32 * _1471 - 1) + _609 + ceil32(return_data.size) + ceil32(return_data.size) + 357] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _1951 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1951] = 26
                                    mem[_1951 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _562 / 2
                                    mem[mem[64] + 36] = _1911 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _609 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _545 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _562), _1911 * slippageFactor / 1000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + sub_1b61e055
                            else:
                                require return_data.size >= 32
                                require mem[_609 + 196] == bool(mem[_609 + 196])
                                if not mem[_609 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_609 + ceil32(return_data.size) + 165] = 2
                                mem[_609 + ceil32(return_data.size) + 197] = address(_574)
                                mem[_609 + ceil32(return_data.size) + 229] = sub_7edd3da5Address
                                mem[_609 + ceil32(return_data.size) + 261] = 26
                                mem[_609 + ceil32(return_data.size) + 293] = 'SafeMath: division by zero'
                                mem[_609 + ceil32(return_data.size) + 325] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_609 + ceil32(return_data.size) + 329] = _562 / 2
                                mem[_609 + ceil32(return_data.size) + 361] = 64
                                mem[_609 + ceil32(return_data.size) + 393] = 2
                                s = 0
                                t = _609 + ceil32(return_data.size) + 197
                                u = _609 + ceil32(return_data.size) + 425
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _545 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, _562), Array(len=2, data=mem[_609 + ceil32(return_data.size) + 425 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_609 + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _609 + ceil32(return_data.size) + ceil32(return_data.size) + 325
                                require return_data.size >= 32
                                _1455 = mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32
                                require mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 <= test266151307()
                                require _609 + ceil32(return_data.size) + mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 + 356 < _609 + ceil32(return_data.size) + return_data.size + 325
                                _1472 = mem[_609 + ceil32(return_data.size) + mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 + 325]
                                require mem[_609 + ceil32(return_data.size) + mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 + 325] <= test266151307()
                                require _609 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_609 + ceil32(return_data.size) + mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 + 325]) + 357 <= test266151307() and (32 * mem[_609 + ceil32(return_data.size) + mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 + 325]) + 32 >= 0
                                mem[64] = _609 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_609 + ceil32(return_data.size) + mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 + 325]) + 357
                                mem[_609 + ceil32(return_data.size) + ceil32(return_data.size) + 325] = mem[_609 + ceil32(return_data.size) + mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 + 325]
                                require _1455 + (32 * _1472) + 32 <= return_data.size
                                s = 0
                                t = _609 + ceil32(return_data.size) + _1455 + 357
                                u = _609 + ceil32(return_data.size) + ceil32(return_data.size) + 357
                                while s < _1472:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _545 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                _1884 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1884] = 30
                                mem[_1884 + 32] = 'SafeMath: subtraction overflow'
                                if 1 > _1472:
                                    _1892 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1892 + idx + 68] = mem[_1884 + idx + 32]
                                        _545 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_1892 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1892 + -mem[64] + 100
                                require _1472 - 1 < _1472
                                _1913 = mem[(32 * _1472 - 1) + _609 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                if not mem[(32 * _1472 - 1) + _609 + ceil32(return_data.size) + ceil32(return_data.size) + 357]:
                                    _1936 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1936] = 26
                                    mem[_1936 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _562 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _609 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _545 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _562), 0, 160, address(this.address), block.timestamp + sub_1b61e055, 2, mem[mem[64] + 196 len 64]
                                else:
                                    require mem[(32 * _1472 - 1) + _609 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                    if mem[(32 * _1472 - 1) + _609 + ceil32(return_data.size) + ceil32(return_data.size) + 357] * slippageFactor / mem[(32 * _1472 - 1) + _609 + ceil32(return_data.size) + ceil32(return_data.size) + 357] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _1952 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1952] = 26
                                    mem[_1952 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _562 / 2
                                    mem[mem[64] + 36] = _1913 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _609 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _545 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _562), _1913 * slippageFactor / 1000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + sub_1b61e055
                        else:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_609 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_609 + 168] = 32
                                mem[_609 + 200] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_609 + idx + 232] = mem[_609 + idx + 132]
                                    _545 = mem[ceil32(return_data.size) + 96]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_609 + 232]
                            if mem[96] <= 0:
                                mem[_609 + 164] = 2
                                mem[_609 + 196] = address(_574)
                                mem[_609 + 228] = sub_7edd3da5Address
                                mem[64] = _609 + 324
                                mem[_609 + 260] = 26
                                mem[_609 + 292] = 'SafeMath: division by zero'
                                mem[_609 + 324] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_609 + 328] = _562 / 2
                                mem[_609 + 360] = 64
                                mem[_609 + 392] = 2
                                s = 0
                                t = _609 + 196
                                u = _609 + 424
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _545 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _609 + -mem[64] + 484]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1441 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1451 = mem[_1441]
                                require mem[_1441] <= test266151307()
                                require _1441 + mem[_1441] + 31 < _1441 + return_data.size
                                _1469 = mem[_1441 + mem[_1441]]
                                require mem[_1441 + mem[_1441]] <= test266151307()
                                require _1441 + ceil32(return_data.size) + (32 * mem[_1441 + mem[_1441]]) + 32 <= test266151307() and (32 * mem[_1441 + mem[_1441]]) + 32 >= 0
                                mem[64] = _1441 + ceil32(return_data.size) + (32 * mem[_1441 + mem[_1441]]) + 32
                                mem[_1441 + ceil32(return_data.size)] = _1469
                                require _1451 + (32 * _1469) + 32 <= return_data.size
                                s = 0
                                t = _1441 + _1451 + 32
                                u = _1441 + ceil32(return_data.size) + 32
                                while s < _1469:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _545 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                _1881 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1881] = 30
                                mem[_1881 + 32] = 'SafeMath: subtraction overflow'
                                if 1 > _1469:
                                    _1889 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1889 + idx + 68] = mem[_1881 + idx + 32]
                                        _545 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_1889 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1889 + -mem[64] + 100
                                require _1469 - 1 < _1469
                                _1907 = mem[(32 * _1469 - 1) + _1441 + ceil32(return_data.size) + 32]
                                if not mem[(32 * _1469 - 1) + _1441 + ceil32(return_data.size) + 32]:
                                    _1933 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1933] = 26
                                    mem[_1933 + 32] = 'SafeMath: division by zero'
                                    _1962 = mem[64]
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _562 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    _2007 = mem[_609 + 164]
                                    mem[mem[64] + 164] = mem[_609 + 164]
                                    s = 0
                                    t = _609 + 196
                                    u = mem[64] + 196
                                    while s < _2007:
                                        mem[u] = mem[t + 12 len 20]
                                        _545 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_1962 + 100] = this.address
                                    mem[_1962 + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1962 + (32 * _2007) + -mem[64] + 192]
                                else:
                                    require mem[(32 * _1469 - 1) + _1441 + ceil32(return_data.size) + 32]
                                    if mem[(32 * _1469 - 1) + _1441 + ceil32(return_data.size) + 32] * slippageFactor / mem[(32 * _1469 - 1) + _1441 + ceil32(return_data.size) + 32] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _1949 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1949] = 26
                                    mem[_1949 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _562 / 2
                                    mem[mem[64] + 36] = _1907 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    _2017 = mem[_609 + 164]
                                    mem[mem[64] + 164] = mem[_609 + 164]
                                    s = 0
                                    t = _609 + 196
                                    u = mem[64] + 196
                                    while s < _2017:
                                        mem[u] = mem[t + 12 len 20]
                                        _545 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _562), _1907 * slippageFactor / 1000, 160, address(this.address), block.timestamp + sub_1b61e055, mem[mem[64] + 164 len (32 * _2017) + 32]
                            else:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_609 + 164] = 2
                                mem[_609 + 196] = address(_574)
                                mem[_609 + 228] = sub_7edd3da5Address
                                mem[64] = _609 + 324
                                mem[_609 + 260] = 26
                                mem[_609 + 292] = 'SafeMath: division by zero'
                                mem[_609 + 324] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_609 + 328] = _562 / 2
                                mem[_609 + 360] = 64
                                mem[_609 + 392] = 2
                                s = 0
                                t = _609 + 196
                                u = _609 + 424
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _545 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _609 + -mem[64] + 484]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1442 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1452 = mem[_1442]
                                require mem[_1442] <= test266151307()
                                require _1442 + mem[_1442] + 31 < _1442 + return_data.size
                                _1470 = mem[_1442 + mem[_1442]]
                                require mem[_1442 + mem[_1442]] <= test266151307()
                                require _1442 + ceil32(return_data.size) + (32 * mem[_1442 + mem[_1442]]) + 32 <= test266151307() and (32 * mem[_1442 + mem[_1442]]) + 32 >= 0
                                mem[64] = _1442 + ceil32(return_data.size) + (32 * mem[_1442 + mem[_1442]]) + 32
                                mem[_1442 + ceil32(return_data.size)] = _1470
                                require _1452 + (32 * _1470) + 32 <= return_data.size
                                s = 0
                                t = _1442 + _1452 + 32
                                u = _1442 + ceil32(return_data.size) + 32
                                while s < _1470:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _545 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                _1882 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1882] = 30
                                mem[_1882 + 32] = 'SafeMath: subtraction overflow'
                                if 1 > _1470:
                                    _1890 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1890 + idx + 68] = mem[_1882 + idx + 32]
                                        _545 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_1890 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1890 + -mem[64] + 100
                                require _1470 - 1 < _1470
                                _1909 = mem[(32 * _1470 - 1) + _1442 + ceil32(return_data.size) + 32]
                                if not mem[(32 * _1470 - 1) + _1442 + ceil32(return_data.size) + 32]:
                                    _1934 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1934] = 26
                                    mem[_1934 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _562 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    _2008 = mem[_609 + 164]
                                    mem[mem[64] + 164] = mem[_609 + 164]
                                    s = 0
                                    t = _609 + 196
                                    u = mem[64] + 196
                                    while s < _2008:
                                        mem[u] = mem[t + 12 len 20]
                                        _545 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _562), 0, 160, address(this.address), block.timestamp + sub_1b61e055, mem[mem[64] + 164 len (32 * _2008) + 32]
                                else:
                                    require mem[(32 * _1470 - 1) + _1442 + ceil32(return_data.size) + 32]
                                    if mem[(32 * _1470 - 1) + _1442 + ceil32(return_data.size) + 32] * slippageFactor / mem[(32 * _1470 - 1) + _1442 + ceil32(return_data.size) + 32] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _1950 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1950] = 26
                                    mem[_1950 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _562 / 2
                                    mem[mem[64] + 36] = _1909 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    _2018 = mem[_609 + 164]
                                    mem[mem[64] + 164] = mem[_609 + 164]
                                    s = 0
                                    t = _609 + 196
                                    u = mem[64] + 196
                                    while s < _2018:
                                        mem[u] = mem[t + 12 len 20]
                                        _545 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _562), _1909 * slippageFactor / 1000, 160, address(this.address), block.timestamp + sub_1b61e055, mem[mem[64] + 164 len (32 * _2018) + 32]
                    else:
                        mem[_609 + _622 + 164] = 0
                        call address(_574).mem[_609 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_609 + 168 len _622 - 4]
                        if return_data.size:
                            mem[_609 + 164] = return_data.size
                            mem[_609 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_609 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_609 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_609 + ceil32(return_data.size) + idx + 233] = mem[_609 + idx + 132]
                                    _545 = mem[ceil32(return_data.size) + 96]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_609 + ceil32(return_data.size) + 233]
                            if return_data.size <= 0:
                                mem[_609 + ceil32(return_data.size) + 165] = 2
                                mem[_609 + ceil32(return_data.size) + 197] = address(_574)
                                mem[_609 + ceil32(return_data.size) + 229] = sub_7edd3da5Address
                                mem[_609 + ceil32(return_data.size) + 261] = 26
                                mem[_609 + ceil32(return_data.size) + 293] = 'SafeMath: division by zero'
                                mem[_609 + ceil32(return_data.size) + 325] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_609 + ceil32(return_data.size) + 329] = _562 / 2
                                mem[_609 + ceil32(return_data.size) + 361] = 64
                                mem[_609 + ceil32(return_data.size) + 393] = 2
                                s = 0
                                t = _609 + ceil32(return_data.size) + 197
                                u = _609 + ceil32(return_data.size) + 425
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _545 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, _562), Array(len=2, data=mem[_609 + ceil32(return_data.size) + 425 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_609 + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _609 + ceil32(return_data.size) + ceil32(return_data.size) + 325
                                require return_data.size >= 32
                                _1460 = mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32
                                require mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 <= test266151307()
                                require _609 + ceil32(return_data.size) + mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 + 356 < _609 + ceil32(return_data.size) + return_data.size + 325
                                _1475 = mem[_609 + ceil32(return_data.size) + mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 + 325]
                                require mem[_609 + ceil32(return_data.size) + mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 + 325] <= test266151307()
                                require _609 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_609 + ceil32(return_data.size) + mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 + 325]) + 357 <= test266151307() and (32 * mem[_609 + ceil32(return_data.size) + mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 + 325]) + 32 >= 0
                                mem[64] = _609 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_609 + ceil32(return_data.size) + mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 + 325]) + 357
                                mem[_609 + ceil32(return_data.size) + ceil32(return_data.size) + 325] = mem[_609 + ceil32(return_data.size) + mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 + 325]
                                require _1460 + (32 * _1475) + 32 <= return_data.size
                                s = 0
                                t = _609 + ceil32(return_data.size) + _1460 + 357
                                u = _609 + ceil32(return_data.size) + ceil32(return_data.size) + 357
                                while s < _1475:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _545 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                _1887 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1887] = 30
                                mem[_1887 + 32] = 'SafeMath: subtraction overflow'
                                if 1 > _1475:
                                    _1895 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1895 + idx + 68] = mem[_1887 + idx + 32]
                                        _545 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_1895 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1895 + -mem[64] + 100
                                require _1475 - 1 < _1475
                                _1919 = mem[(32 * _1475 - 1) + _609 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                if not mem[(32 * _1475 - 1) + _609 + ceil32(return_data.size) + ceil32(return_data.size) + 357]:
                                    _1939 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1939] = 26
                                    mem[_1939 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _562 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _609 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _545 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _562), 0, 160, address(this.address), block.timestamp + sub_1b61e055, 2, mem[mem[64] + 196 len 64]
                                else:
                                    require mem[(32 * _1475 - 1) + _609 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                    if mem[(32 * _1475 - 1) + _609 + ceil32(return_data.size) + ceil32(return_data.size) + 357] * slippageFactor / mem[(32 * _1475 - 1) + _609 + ceil32(return_data.size) + ceil32(return_data.size) + 357] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _1955 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1955] = 26
                                    mem[_1955 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _562 / 2
                                    mem[mem[64] + 36] = _1919 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _609 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _545 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _562), _1919 * slippageFactor / 1000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + sub_1b61e055
                            else:
                                require return_data.size >= 32
                                require mem[_609 + 196] == bool(mem[_609 + 196])
                                if not mem[_609 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_609 + ceil32(return_data.size) + 165] = 2
                                mem[_609 + ceil32(return_data.size) + 197] = address(_574)
                                mem[_609 + ceil32(return_data.size) + 229] = sub_7edd3da5Address
                                mem[_609 + ceil32(return_data.size) + 261] = 26
                                mem[_609 + ceil32(return_data.size) + 293] = 'SafeMath: division by zero'
                                mem[_609 + ceil32(return_data.size) + 325] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_609 + ceil32(return_data.size) + 329] = _562 / 2
                                mem[_609 + ceil32(return_data.size) + 361] = 64
                                mem[_609 + ceil32(return_data.size) + 393] = 2
                                s = 0
                                t = _609 + ceil32(return_data.size) + 197
                                u = _609 + ceil32(return_data.size) + 425
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _545 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, _562), Array(len=2, data=mem[_609 + ceil32(return_data.size) + 425 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_609 + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _609 + ceil32(return_data.size) + ceil32(return_data.size) + 325
                                require return_data.size >= 32
                                _1461 = mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32
                                require mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 <= test266151307()
                                require _609 + ceil32(return_data.size) + mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 + 356 < _609 + ceil32(return_data.size) + return_data.size + 325
                                _1476 = mem[_609 + ceil32(return_data.size) + mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 + 325]
                                require mem[_609 + ceil32(return_data.size) + mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 + 325] <= test266151307()
                                require _609 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_609 + ceil32(return_data.size) + mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 + 325]) + 357 <= test266151307() and (32 * mem[_609 + ceil32(return_data.size) + mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 + 325]) + 32 >= 0
                                mem[64] = _609 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_609 + ceil32(return_data.size) + mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 + 325]) + 357
                                mem[_609 + ceil32(return_data.size) + ceil32(return_data.size) + 325] = mem[_609 + ceil32(return_data.size) + mem[_609 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _562) >> 32 + 325]
                                require _1461 + (32 * _1476) + 32 <= return_data.size
                                s = 0
                                t = _609 + ceil32(return_data.size) + _1461 + 357
                                u = _609 + ceil32(return_data.size) + ceil32(return_data.size) + 357
                                while s < _1476:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _545 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                _1888 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1888] = 30
                                mem[_1888 + 32] = 'SafeMath: subtraction overflow'
                                if 1 > _1476:
                                    _1896 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1896 + idx + 68] = mem[_1888 + idx + 32]
                                        _545 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_1896 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1896 + -mem[64] + 100
                                require _1476 - 1 < _1476
                                _1921 = mem[(32 * _1476 - 1) + _609 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                if not mem[(32 * _1476 - 1) + _609 + ceil32(return_data.size) + ceil32(return_data.size) + 357]:
                                    _1940 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1940] = 26
                                    mem[_1940 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _562 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _609 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _545 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _562), 0, 160, address(this.address), block.timestamp + sub_1b61e055, 2, mem[mem[64] + 196 len 64]
                                else:
                                    require mem[(32 * _1476 - 1) + _609 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                    if mem[(32 * _1476 - 1) + _609 + ceil32(return_data.size) + ceil32(return_data.size) + 357] * slippageFactor / mem[(32 * _1476 - 1) + _609 + ceil32(return_data.size) + ceil32(return_data.size) + 357] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _1956 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1956] = 26
                                    mem[_1956 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _562 / 2
                                    mem[mem[64] + 36] = _1921 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _609 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _545 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _562), _1921 * slippageFactor / 1000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + sub_1b61e055
                        else:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_609 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_609 + 168] = 32
                                mem[_609 + 200] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_609 + idx + 232] = mem[_609 + idx + 132]
                                    _545 = mem[ceil32(return_data.size) + 96]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_609 + 232]
                            if mem[96] <= 0:
                                mem[_609 + 164] = 2
                                mem[_609 + 196] = address(_574)
                                mem[_609 + 228] = sub_7edd3da5Address
                                mem[64] = _609 + 324
                                mem[_609 + 260] = 26
                                mem[_609 + 292] = 'SafeMath: division by zero'
                                mem[_609 + 324] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_609 + 328] = _562 / 2
                                mem[_609 + 360] = 64
                                mem[_609 + 392] = 2
                                s = 0
                                t = _609 + 196
                                u = _609 + 424
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _545 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _609 + -mem[64] + 484]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1445 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1457 = mem[_1445]
                                require mem[_1445] <= test266151307()
                                require _1445 + mem[_1445] + 31 < _1445 + return_data.size
                                _1473 = mem[_1445 + mem[_1445]]
                                require mem[_1445 + mem[_1445]] <= test266151307()
                                require _1445 + ceil32(return_data.size) + (32 * mem[_1445 + mem[_1445]]) + 32 <= test266151307() and (32 * mem[_1445 + mem[_1445]]) + 32 >= 0
                                mem[64] = _1445 + ceil32(return_data.size) + (32 * mem[_1445 + mem[_1445]]) + 32
                                mem[_1445 + ceil32(return_data.size)] = _1473
                                require _1457 + (32 * _1473) + 32 <= return_data.size
                                s = 0
                                t = _1445 + _1457 + 32
                                u = _1445 + ceil32(return_data.size) + 32
                                while s < _1473:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _545 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                _1885 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1885] = 30
                                mem[_1885 + 32] = 'SafeMath: subtraction overflow'
                                if 1 > _1473:
                                    _1893 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1893 + idx + 68] = mem[_1885 + idx + 32]
                                        _545 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_1893 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1893 + -mem[64] + 100
                                require _1473 - 1 < _1473
                                _1915 = mem[(32 * _1473 - 1) + _1445 + ceil32(return_data.size) + 32]
                                if not mem[(32 * _1473 - 1) + _1445 + ceil32(return_data.size) + 32]:
                                    _1937 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1937] = 26
                                    mem[_1937 + 32] = 'SafeMath: division by zero'
                                    _1970 = mem[64]
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _562 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    _2011 = mem[_609 + 164]
                                    mem[mem[64] + 164] = mem[_609 + 164]
                                    s = 0
                                    t = _609 + 196
                                    u = mem[64] + 196
                                    while s < _2011:
                                        mem[u] = mem[t + 12 len 20]
                                        _545 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_1970 + 100] = this.address
                                    mem[_1970 + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1970 + (32 * _2011) + -mem[64] + 192]
                                else:
                                    require mem[(32 * _1473 - 1) + _1445 + ceil32(return_data.size) + 32]
                                    if mem[(32 * _1473 - 1) + _1445 + ceil32(return_data.size) + 32] * slippageFactor / mem[(32 * _1473 - 1) + _1445 + ceil32(return_data.size) + 32] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _1953 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1953] = 26
                                    mem[_1953 + 32] = 'SafeMath: division by zero'
                                    _1985 = mem[64]
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _562 / 2
                                    mem[mem[64] + 36] = _1915 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    _2021 = mem[_609 + 164]
                                    mem[mem[64] + 164] = mem[_609 + 164]
                                    s = 0
                                    t = _609 + 196
                                    u = mem[64] + 196
                                    while s < _2021:
                                        mem[u] = mem[t + 12 len 20]
                                        _545 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_1985 + 100] = this.address
                                    mem[_1985 + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1985 + (32 * _2021) + -mem[64] + 192]
                            else:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_609 + 164] = 2
                                mem[_609 + 196] = address(_574)
                                mem[_609 + 228] = sub_7edd3da5Address
                                mem[64] = _609 + 324
                                mem[_609 + 260] = 26
                                mem[_609 + 292] = 'SafeMath: division by zero'
                                mem[_609 + 324] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_609 + 328] = _562 / 2
                                mem[_609 + 360] = 64
                                mem[_609 + 392] = 2
                                s = 0
                                t = _609 + 196
                                u = _609 + 424
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _545 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _609 + -mem[64] + 484]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1446 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1458 = mem[_1446]
                                require mem[_1446] <= test266151307()
                                require _1446 + mem[_1446] + 31 < _1446 + return_data.size
                                _1474 = mem[_1446 + mem[_1446]]
                                require mem[_1446 + mem[_1446]] <= test266151307()
                                require _1446 + ceil32(return_data.size) + (32 * mem[_1446 + mem[_1446]]) + 32 <= test266151307() and (32 * mem[_1446 + mem[_1446]]) + 32 >= 0
                                mem[64] = _1446 + ceil32(return_data.size) + (32 * mem[_1446 + mem[_1446]]) + 32
                                mem[_1446 + ceil32(return_data.size)] = _1474
                                require _1458 + (32 * _1474) + 32 <= return_data.size
                                s = 0
                                t = _1446 + _1458 + 32
                                u = _1446 + ceil32(return_data.size) + 32
                                while s < _1474:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _545 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                _1886 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1886] = 30
                                mem[_1886 + 32] = 'SafeMath: subtraction overflow'
                                if 1 > _1474:
                                    _1894 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1894 + idx + 68] = mem[_1886 + idx + 32]
                                        _545 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_1894 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1894 + -mem[64] + 100
                                require _1474 - 1 < _1474
                                _1917 = mem[(32 * _1474 - 1) + _1446 + ceil32(return_data.size) + 32]
                                if not mem[(32 * _1474 - 1) + _1446 + ceil32(return_data.size) + 32]:
                                    _1938 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1938] = 26
                                    mem[_1938 + 32] = 'SafeMath: division by zero'
                                    _1972 = mem[64]
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _562 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    _2012 = mem[_609 + 164]
                                    mem[mem[64] + 164] = mem[_609 + 164]
                                    s = 0
                                    t = _609 + 196
                                    u = mem[64] + 196
                                    while s < _2012:
                                        mem[u] = mem[t + 12 len 20]
                                        _545 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_1972 + 100] = this.address
                                    mem[_1972 + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1972 + (32 * _2012) + -mem[64] + 192]
                                else:
                                    require mem[(32 * _1474 - 1) + _1446 + ceil32(return_data.size) + 32]
                                    if mem[(32 * _1474 - 1) + _1446 + ceil32(return_data.size) + 32] * slippageFactor / mem[(32 * _1474 - 1) + _1446 + ceil32(return_data.size) + 32] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _1954 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1954] = 26
                                    mem[_1954 + 32] = 'SafeMath: division by zero'
                                    _1987 = mem[64]
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _562 / 2
                                    mem[mem[64] + 36] = _1917 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    _2022 = mem[_609 + 164]
                                    mem[mem[64] + 164] = mem[_609 + 164]
                                    s = 0
                                    t = _609 + 196
                                    u = mem[64] + 196
                                    while s < _2022:
                                        mem[u] = mem[t + 12 len 20]
                                        _545 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_1987 + 100] = this.address
                                    mem[_1987 + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1987 + (32 * _2022) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        _545 = mem[ceil32(return_data.size) + 96]
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(sub_7edd3da5Address)
    staticcall sub_7edd3da5Address.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _558 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _559 = mem[_558]
    require mem[_558] == mem[_558]
    _563 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    require 0 < mem[_563]
    mem[_563 + 32] = sub_7edd3da5Address
    require 1 < mem[_563]
    mem[_563 + 64] = wantAddress
    mem[64] = _563 + 160
    mem[_563 + 96] = 26
    mem[_563 + 128] = 'SafeMath: division by zero'
    mem[_563 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_563 + 164] = _559 / 2
    mem[_563 + 196] = 64
    mem[_563 + 228] = mem[_563]
    idx = 0
    s = _563 + 32
    t = _563 + 260
    while idx < mem[_563]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(uniRouterAddress)
    staticcall uniRouterAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _563 + (32 * mem[_563]) + -mem[64] + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _890 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _894 = mem[_890]
    require mem[_890] <= test266151307()
    require _890 + mem[_890] + 31 < _890 + return_data.size
    _898 = mem[_890 + mem[_890]]
    require mem[_890 + mem[_890]] <= test266151307()
    require _890 + ceil32(return_data.size) + (32 * mem[_890 + mem[_890]]) + 32 <= test266151307() and (32 * mem[_890 + mem[_890]]) + 32 >= 0
    mem[64] = _890 + ceil32(return_data.size) + (32 * mem[_890 + mem[_890]]) + 32
    mem[_890 + ceil32(return_data.size)] = _898
    require _894 + (32 * _898) + 32 <= return_data.size
    idx = 0
    s = _890 + _894 + 32
    t = _890 + ceil32(return_data.size) + 32
    while idx < _898:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _1440 = mem[64]
    mem[64] = mem[64] + 64
    mem[_1440] = 30
    mem[_1440 + 32] = 'SafeMath: subtraction overflow'
    if 1 > _898:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require _898 - 1 < _898
    _1467 = mem[(32 * _898 - 1) + _890 + ceil32(return_data.size) + 32]
    if not mem[(32 * _898 - 1) + _890 + ceil32(return_data.size) + 32]:
        _1478 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1478] = 26
        mem[_1478 + 32] = 'SafeMath: division by zero'
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _559 / 2
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _1550 = mem[_563]
        mem[mem[64] + 164] = mem[_563]
        idx = 0
        s = _563 + 32
        t = mem[64] + 196
        while idx < _1550:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + sub_1b61e055
        require ext_code.size(uniRouterAddress)
        call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args Mask(255, 1, _559), 0, 160, address(this.address), block.timestamp + sub_1b61e055, mem[mem[64] + 164 len (32 * _1550) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        lastEarnBlock = block.number
        if not uint8(stor2.field_16):
            revert with 0, '!isAutoComp'
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2006 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2016 = mem[_2006]
        require mem[_2006] == mem[_2006]
        if wantLockedTotal + mem[_2006] < wantLockedTotal:
            revert with 0, 'SafeMath: addition overflow'
        wantLockedTotal += mem[_2006]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = sub_1172cd2bAddress
        require ext_code.size(wantAddress)
        staticcall wantAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), sub_1172cd2bAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2066 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2068 = mem[_2066]
        require mem[_2066] == mem[_2066]
        if mem[_2066] + _2016 < mem[_2066]:
            revert with 0, 'SafeMath: addition overflow'
        _2072 = mem[64]
        mem[mem[64] + 36] = sub_1172cd2bAddress
        mem[mem[64] + 68] = _2068 + _2016
        _2077 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
        mem[64] = mem[64] + 164
        mem[_2072 + 100] = 32
        mem[_2072 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(wantAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        _2089 = mem[_2077]
        mem[_2072 + 164 len ceil32(mem[_2077])] = mem[_2077 + 32 len ceil32(mem[_2077])]
        var241001 = ceil32(_2089)
        if ceil32(_2089) > _2089:
            mem[_2072 + _2089 + 164] = 0
        call wantAddress with:
             gas gas_remaining wei
            args mem[_2072 + 168 len _2089 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96] > 0:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_2072 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[_2072 + 196] == bool(mem[_2072 + 196])
                if not mem[_2072 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(sub_1172cd2bAddress)
        call sub_1172cd2bAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
             gas gas_remaining wei
            args wantAddress, _2016, address(this.address), 0
    else:
        require mem[(32 * _898 - 1) + _890 + ceil32(return_data.size) + 32]
        if mem[(32 * _898 - 1) + _890 + ceil32(return_data.size) + 32] * slippageFactor / mem[(32 * _898 - 1) + _890 + ceil32(return_data.size) + 32] != slippageFactor:
            revert with 0, 'SafeMath: multiplication overflow'
        _1488 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1488] = 26
        mem[_1488 + 32] = 'SafeMath: division by zero'
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _559 / 2
        mem[mem[64] + 36] = _1467 * slippageFactor / 1000
        mem[mem[64] + 68] = 160
        _1559 = mem[_563]
        mem[mem[64] + 164] = mem[_563]
        idx = 0
        s = _563 + 32
        t = mem[64] + 196
        while idx < _1559:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + sub_1b61e055
        require ext_code.size(uniRouterAddress)
        call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args Mask(255, 1, _559), _1467 * slippageFactor / 1000, 160, address(this.address), block.timestamp + sub_1b61e055, mem[mem[64] + 164 len (32 * _1559) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        lastEarnBlock = block.number
        if not uint8(stor2.field_16):
            revert with 0, '!isAutoComp'
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2005 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2015 = mem[_2005]
        require mem[_2005] == mem[_2005]
        if wantLockedTotal + mem[_2005] < wantLockedTotal:
            revert with 0, 'SafeMath: addition overflow'
        wantLockedTotal += mem[_2005]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = sub_1172cd2bAddress
        require ext_code.size(wantAddress)
        staticcall wantAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), sub_1172cd2bAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2065 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2067 = mem[_2065]
        require mem[_2065] == mem[_2065]
        if mem[_2065] + _2015 < mem[_2065]:
            revert with 0, 'SafeMath: addition overflow'
        _2071 = mem[64]
        mem[mem[64] + 36] = sub_1172cd2bAddress
        mem[mem[64] + 68] = _2067 + _2015
        _2075 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
        mem[64] = mem[64] + 164
        mem[_2071 + 100] = 32
        mem[_2071 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(wantAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        _2087 = mem[_2075]
        mem[_2071 + 164 len ceil32(mem[_2075])] = mem[_2075 + 32 len ceil32(mem[_2075])]
        if ceil32(_2087) > _2087:
            mem[_2071 + _2087 + 164] = 0
        call wantAddress with:
             gas gas_remaining wei
            args mem[_2071 + 168 len _2087 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96] > 0:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_2071 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[_2071 + 196] == bool(mem[_2071 + 196])
                if not mem[_2071 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(sub_1172cd2bAddress)
        call sub_1172cd2bAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
             gas gas_remaining wei
            args wantAddress, _2015, address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}



}
