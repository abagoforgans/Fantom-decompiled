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
    _10 = mem[96 len 4], address(this.address) << 64
    require mem[96 len 4], address(this.address) << 64 <= test266151307()
    require mem[96 len 4], address(this.address) << 64 + 127 < return_data.size + 96
    _11 = mem[mem[96 len 4], address(this.address) << 64 + 96]
    require mem[mem[96 len 4], address(this.address) << 64 + 96] <= test266151307()
    require ceil32(return_data.size) + (32 * mem[mem[96 len 4], address(this.address) << 64 + 96]) + 128 <= test266151307() and (32 * mem[mem[96 len 4], address(this.address) << 64 + 96]) + 32 >= 0
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], address(this.address) << 64 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _11
    require _10 + (64 * _11) + 32 <= return_data.size
    idx = 0
    s = _10 + 128
    t = ceil32(return_data.size) + 128
    while idx < _11:
        require return_data.size + -s + 96 >= 64
        _317 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require mem[s] == mem[s + 12 len 20]
        mem[_317] = mem[s]
        require mem[s + 32] == mem[s + 32]
        mem[_317 + 32] = mem[s + 32]
        mem[t] = _317
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    mem[mem[64]] = 0xe9fad8ee00000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_bc70cd8cAddress)
    call sub_bc70cd8cAddress.exit() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _708 = mem[ceil32(return_data.size) + 96]
    idx = 0
    while idx < _708:
        require idx < mem[ceil32(return_data.size) + 96]
        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 12 len 20] != sub_3a459295Address:
            require idx < mem[ceil32(return_data.size) + 96]
            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] > 0:
                require idx < mem[ceil32(return_data.size) + 96]
                _718 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_718))
                staticcall address(_718).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _724 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _725 = mem[_724]
                require mem[_724] == mem[_724]
                require idx < mem[ceil32(return_data.size) + 96]
                require ext_code.size(mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 12 len 20])
                staticcall mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 12 len 20].UNDERLYING_ASSET_ADDRESS() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _738 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _740 = mem[_738]
                require mem[_738] == mem[_738 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + 96]
                _747 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
                mem[mem[64]] = 0x69328dec00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_747)
                mem[mem[64] + 36] = _725
                mem[mem[64] + 68] = this.address
                require ext_code.size(sub_1172cd2bAddress)
                call sub_1172cd2bAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(_747), _725, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(_740) != sub_7edd3da5Address:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = uniRouterAddress
                    require ext_code.size(address(_740))
                    staticcall address(_740).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), uniRouterAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _777 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _781 = mem[_777]
                    require mem[_777] == mem[_777]
                    if mem[_777] + _725 < mem[_777]:
                        revert with 0, 'SafeMath: addition overflow'
                    _790 = mem[64]
                    mem[mem[64] + 36] = uniRouterAddress
                    mem[mem[64] + 68] = _781 + _725
                    _802 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_802 + 32] = mem[_802 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[64] = _790 + 164
                    mem[_790 + 100] = 32
                    mem[_790 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(address(_740)) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _826 = mem[_802]
                    s = 0
                    while s < _826:
                        mem[_790 + s + 164] = mem[_802 + s + 32]
                        _708 = mem[ceil32(return_data.size) + 96]
                        s = s + 32
                        continue 
                    if ceil32(_826) <= _826:
                        call address(_740).mem[_790 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_790 + 168 len _826 - 4]
                        if return_data.size:
                            mem[_790 + 164] = return_data.size
                            mem[_790 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_790 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_790 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_790 + ceil32(return_data.size) + idx + 233] = mem[_790 + idx + 132]
                                    _708 = mem[ceil32(return_data.size) + 96]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_790 + ceil32(return_data.size) + 233]
                            if return_data.size <= 0:
                                mem[_790 + ceil32(return_data.size) + 165] = 2
                                mem[_790 + ceil32(return_data.size) + 197] = address(_740)
                                mem[_790 + ceil32(return_data.size) + 229] = sub_7edd3da5Address
                                mem[_790 + ceil32(return_data.size) + 261] = 26
                                mem[_790 + ceil32(return_data.size) + 293] = 'SafeMath: division by zero'
                                mem[_790 + ceil32(return_data.size) + 325] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_790 + ceil32(return_data.size) + 329] = _725 / 2
                                mem[_790 + ceil32(return_data.size) + 361] = 64
                                mem[_790 + ceil32(return_data.size) + 393] = 2
                                s = 0
                                t = _790 + ceil32(return_data.size) + 197
                                u = _790 + ceil32(return_data.size) + 425
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _708 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, _725), Array(len=2, data=mem[_790 + ceil32(return_data.size) + 425 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_790 + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _790 + ceil32(return_data.size) + ceil32(return_data.size) + 325
                                require return_data.size >= 32
                                _1785 = mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32
                                require mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32 <= test266151307()
                                require _790 + ceil32(return_data.size) + mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32 + 356 < _790 + ceil32(return_data.size) + return_data.size + 325
                                _1806 = mem[_790 + ceil32(return_data.size) + mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32 + 325]
                                require mem[_790 + ceil32(return_data.size) + mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32 + 325] <= test266151307()
                                require _790 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_790 + ceil32(return_data.size) + mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32 + 325]) + 357 <= test266151307() and (32 * mem[_790 + ceil32(return_data.size) + mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32 + 325]) + 32 >= 0
                                mem[64] = _790 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_790 + ceil32(return_data.size) + mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32 + 325]) + 357
                                mem[_790 + ceil32(return_data.size) + ceil32(return_data.size) + 325] = _1806
                                require _1785 + (32 * _1806) + 32 <= return_data.size
                                s = 0
                                t = _790 + ceil32(return_data.size) + _1785 + 357
                                u = _790 + ceil32(return_data.size) + ceil32(return_data.size) + 357
                                while s < _1806:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _708 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                _2218 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2218] = 30
                                mem[_2218 + 32] = 'SafeMath: subtraction overflow'
                                if 1 > _1806:
                                    _2226 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_2226 + idx + 68] = mem[_2218 + idx + 32]
                                        _708 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_2226 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2226 + -mem[64] + 100
                                require _1806 - 1 < _1806
                                _2246 = mem[(32 * _1806 - 1) + _790 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                if not mem[(32 * _1806 - 1) + _790 + ceil32(return_data.size) + ceil32(return_data.size) + 357]:
                                    _2270 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2270] = 26
                                    mem[_2270 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _725 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _790 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _708 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _725), 0, 160, address(this.address), block.timestamp + sub_1b61e055, 2, mem[mem[64] + 196 len 64]
                                else:
                                    require mem[(32 * _1806 - 1) + _790 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                    if mem[(32 * _1806 - 1) + _790 + ceil32(return_data.size) + ceil32(return_data.size) + 357] * slippageFactor / mem[(32 * _1806 - 1) + _790 + ceil32(return_data.size) + ceil32(return_data.size) + 357] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _2286 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2286] = 26
                                    mem[_2286 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _725 / 2
                                    mem[mem[64] + 36] = _2246 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _790 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _708 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _725), _2246 * slippageFactor / 1000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + sub_1b61e055
                            else:
                                require return_data.size >= 32
                                require mem[_790 + 196] == bool(mem[_790 + 196])
                                if not mem[_790 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_790 + ceil32(return_data.size) + 165] = 2
                                mem[_790 + ceil32(return_data.size) + 197] = address(_740)
                                mem[_790 + ceil32(return_data.size) + 229] = sub_7edd3da5Address
                                mem[_790 + ceil32(return_data.size) + 261] = 26
                                mem[_790 + ceil32(return_data.size) + 293] = 'SafeMath: division by zero'
                                mem[_790 + ceil32(return_data.size) + 325] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_790 + ceil32(return_data.size) + 329] = _725 / 2
                                mem[_790 + ceil32(return_data.size) + 361] = 64
                                mem[_790 + ceil32(return_data.size) + 393] = 2
                                s = 0
                                t = _790 + ceil32(return_data.size) + 197
                                u = _790 + ceil32(return_data.size) + 425
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _708 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, _725), Array(len=2, data=mem[_790 + ceil32(return_data.size) + 425 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_790 + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _790 + ceil32(return_data.size) + ceil32(return_data.size) + 325
                                require return_data.size >= 32
                                _1786 = mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32
                                require mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32 <= test266151307()
                                require _790 + ceil32(return_data.size) + mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32 + 356 < _790 + ceil32(return_data.size) + return_data.size + 325
                                _1807 = mem[_790 + ceil32(return_data.size) + mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32 + 325]
                                require mem[_790 + ceil32(return_data.size) + mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32 + 325] <= test266151307()
                                require _790 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_790 + ceil32(return_data.size) + mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32 + 325]) + 357 <= test266151307() and (32 * mem[_790 + ceil32(return_data.size) + mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32 + 325]) + 32 >= 0
                                mem[64] = _790 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_790 + ceil32(return_data.size) + mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32 + 325]) + 357
                                mem[_790 + ceil32(return_data.size) + ceil32(return_data.size) + 325] = _1807
                                require _1786 + (32 * _1807) + 32 <= return_data.size
                                s = 0
                                t = _790 + ceil32(return_data.size) + _1786 + 357
                                u = _790 + ceil32(return_data.size) + ceil32(return_data.size) + 357
                                while s < _1807:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _708 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                _2219 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2219] = 30
                                mem[_2219 + 32] = 'SafeMath: subtraction overflow'
                                if 1 > _1807:
                                    _2227 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_2227 + idx + 68] = mem[_2219 + idx + 32]
                                        _708 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_2227 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2227 + -mem[64] + 100
                                require _1807 - 1 < _1807
                                _2248 = mem[(32 * _1807 - 1) + _790 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                if not mem[(32 * _1807 - 1) + _790 + ceil32(return_data.size) + ceil32(return_data.size) + 357]:
                                    _2271 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2271] = 26
                                    mem[_2271 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _725 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _790 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _708 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _725), 0, 160, address(this.address), block.timestamp + sub_1b61e055, 2, mem[mem[64] + 196 len 64]
                                else:
                                    require mem[(32 * _1807 - 1) + _790 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                    if mem[(32 * _1807 - 1) + _790 + ceil32(return_data.size) + ceil32(return_data.size) + 357] * slippageFactor / mem[(32 * _1807 - 1) + _790 + ceil32(return_data.size) + ceil32(return_data.size) + 357] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _2287 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2287] = 26
                                    mem[_2287 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _725 / 2
                                    mem[mem[64] + 36] = _2248 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _790 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _708 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _725), _2248 * slippageFactor / 1000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + sub_1b61e055
                        else:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_790 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_790 + 168] = 32
                                mem[_790 + 200] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_790 + idx + 232] = mem[_790 + idx + 132]
                                    _708 = mem[ceil32(return_data.size) + 96]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_790 + 232]
                            if mem[96] <= 0:
                                mem[_790 + 164] = 2
                                mem[_790 + 196] = address(_740)
                                mem[_790 + 228] = sub_7edd3da5Address
                                mem[64] = _790 + 324
                                mem[_790 + 260] = 26
                                mem[_790 + 292] = 'SafeMath: division by zero'
                                mem[_790 + 324] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_790 + 328] = _725 / 2
                                mem[_790 + 360] = 64
                                mem[_790 + 392] = 2
                                s = 0
                                t = _790 + 196
                                u = _790 + 424
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _708 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _790 + -mem[64] + 484]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1768 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1782 = mem[_1768]
                                require mem[_1768] <= test266151307()
                                require _1768 + mem[_1768] + 31 < _1768 + return_data.size
                                _1804 = mem[_1768 + mem[_1768]]
                                require mem[_1768 + mem[_1768]] <= test266151307()
                                require _1768 + ceil32(return_data.size) + (32 * mem[_1768 + mem[_1768]]) + 32 <= test266151307() and (32 * mem[_1768 + mem[_1768]]) + 32 >= 0
                                mem[64] = _1768 + ceil32(return_data.size) + (32 * mem[_1768 + mem[_1768]]) + 32
                                mem[_1768 + ceil32(return_data.size)] = _1804
                                require _1782 + (32 * _1804) + 32 <= return_data.size
                                s = 0
                                t = _1768 + _1782 + 32
                                u = _1768 + ceil32(return_data.size) + 32
                                while s < _1804:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _708 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                _2216 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2216] = 30
                                mem[_2216 + 32] = 'SafeMath: subtraction overflow'
                                if 1 > _1804:
                                    _2224 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_2224 + idx + 68] = mem[_2216 + idx + 32]
                                        _708 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_2224 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2224 + -mem[64] + 100
                                require _1804 - 1 < _1804
                                _2242 = mem[(32 * _1804 - 1) + _1768 + ceil32(return_data.size) + 32]
                                if not mem[(32 * _1804 - 1) + _1768 + ceil32(return_data.size) + 32]:
                                    _2268 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2268] = 26
                                    mem[_2268 + 32] = 'SafeMath: division by zero'
                                    _2297 = mem[64]
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _725 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    _2342 = mem[_790 + 164]
                                    mem[mem[64] + 164] = mem[_790 + 164]
                                    s = 0
                                    t = _790 + 196
                                    u = mem[64] + 196
                                    while s < _2342:
                                        mem[u] = mem[t + 12 len 20]
                                        _708 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_2297 + 100] = this.address
                                    mem[_2297 + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2297 + (32 * _2342) + -mem[64] + 192]
                                else:
                                    require mem[(32 * _1804 - 1) + _1768 + ceil32(return_data.size) + 32]
                                    if mem[(32 * _1804 - 1) + _1768 + ceil32(return_data.size) + 32] * slippageFactor / mem[(32 * _1804 - 1) + _1768 + ceil32(return_data.size) + 32] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _2284 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2284] = 26
                                    mem[_2284 + 32] = 'SafeMath: division by zero'
                                    _2312 = mem[64]
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _725 / 2
                                    mem[mem[64] + 36] = _2242 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    _2352 = mem[_790 + 164]
                                    mem[mem[64] + 164] = mem[_790 + 164]
                                    s = 0
                                    t = _790 + 196
                                    u = mem[64] + 196
                                    while s < _2352:
                                        mem[u] = mem[t + 12 len 20]
                                        _708 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_2312 + 100] = this.address
                                    mem[_2312 + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2312 + (32 * _2352) + -mem[64] + 192]
                            else:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_790 + 164] = 2
                                mem[_790 + 196] = address(_740)
                                mem[_790 + 228] = sub_7edd3da5Address
                                mem[64] = _790 + 324
                                mem[_790 + 260] = 26
                                mem[_790 + 292] = 'SafeMath: division by zero'
                                mem[_790 + 324] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_790 + 328] = _725 / 2
                                mem[_790 + 360] = 64
                                mem[_790 + 392] = 2
                                s = 0
                                t = _790 + 196
                                u = _790 + 424
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _708 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _790 + -mem[64] + 484]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1769 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1783 = mem[_1769]
                                require mem[_1769] <= test266151307()
                                require _1769 + mem[_1769] + 31 < _1769 + return_data.size
                                _1805 = mem[_1769 + mem[_1769]]
                                require mem[_1769 + mem[_1769]] <= test266151307()
                                require _1769 + ceil32(return_data.size) + (32 * mem[_1769 + mem[_1769]]) + 32 <= test266151307() and (32 * mem[_1769 + mem[_1769]]) + 32 >= 0
                                mem[64] = _1769 + ceil32(return_data.size) + (32 * mem[_1769 + mem[_1769]]) + 32
                                mem[_1769 + ceil32(return_data.size)] = _1805
                                require _1783 + (32 * _1805) + 32 <= return_data.size
                                s = 0
                                t = _1769 + _1783 + 32
                                u = _1769 + ceil32(return_data.size) + 32
                                while s < _1805:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _708 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                _2217 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2217] = 30
                                mem[_2217 + 32] = 'SafeMath: subtraction overflow'
                                if 1 > _1805:
                                    _2225 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_2225 + idx + 68] = mem[_2217 + idx + 32]
                                        _708 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_2225 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2225 + -mem[64] + 100
                                require _1805 - 1 < _1805
                                _2244 = mem[(32 * _1805 - 1) + _1769 + ceil32(return_data.size) + 32]
                                if not mem[(32 * _1805 - 1) + _1769 + ceil32(return_data.size) + 32]:
                                    _2269 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2269] = 26
                                    mem[_2269 + 32] = 'SafeMath: division by zero'
                                    _2299 = mem[64]
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _725 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    _2343 = mem[_790 + 164]
                                    mem[mem[64] + 164] = mem[_790 + 164]
                                    s = 0
                                    t = _790 + 196
                                    u = mem[64] + 196
                                    while s < _2343:
                                        mem[u] = mem[t + 12 len 20]
                                        _708 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_2299 + 100] = this.address
                                    mem[_2299 + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2299 + (32 * _2343) + -mem[64] + 192]
                                else:
                                    require mem[(32 * _1805 - 1) + _1769 + ceil32(return_data.size) + 32]
                                    if mem[(32 * _1805 - 1) + _1769 + ceil32(return_data.size) + 32] * slippageFactor / mem[(32 * _1805 - 1) + _1769 + ceil32(return_data.size) + 32] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _2285 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2285] = 26
                                    mem[_2285 + 32] = 'SafeMath: division by zero'
                                    _2314 = mem[64]
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _725 / 2
                                    mem[mem[64] + 36] = _2244 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    _2353 = mem[_790 + 164]
                                    mem[mem[64] + 164] = mem[_790 + 164]
                                    s = 0
                                    t = _790 + 196
                                    u = mem[64] + 196
                                    while s < _2353:
                                        mem[u] = mem[t + 12 len 20]
                                        _708 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_2314 + 100] = this.address
                                    mem[_2314 + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2314 + (32 * _2353) + -mem[64] + 192]
                    else:
                        mem[_790 + _826 + 164] = 0
                        call address(_740).mem[_790 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_790 + 168 len _826 - 4]
                        if return_data.size:
                            mem[_790 + 164] = return_data.size
                            mem[_790 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_790 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_790 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_790 + ceil32(return_data.size) + idx + 233] = mem[_790 + idx + 132]
                                    _708 = mem[ceil32(return_data.size) + 96]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_790 + ceil32(return_data.size) + 233]
                            if return_data.size <= 0:
                                mem[_790 + ceil32(return_data.size) + 165] = 2
                                mem[_790 + ceil32(return_data.size) + 197] = address(_740)
                                mem[_790 + ceil32(return_data.size) + 229] = sub_7edd3da5Address
                                mem[_790 + ceil32(return_data.size) + 261] = 26
                                mem[_790 + ceil32(return_data.size) + 293] = 'SafeMath: division by zero'
                                mem[_790 + ceil32(return_data.size) + 325] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_790 + ceil32(return_data.size) + 329] = _725 / 2
                                mem[_790 + ceil32(return_data.size) + 361] = 64
                                mem[_790 + ceil32(return_data.size) + 393] = 2
                                s = 0
                                t = _790 + ceil32(return_data.size) + 197
                                u = _790 + ceil32(return_data.size) + 425
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _708 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, _725), Array(len=2, data=mem[_790 + ceil32(return_data.size) + 425 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_790 + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _790 + ceil32(return_data.size) + ceil32(return_data.size) + 325
                                require return_data.size >= 32
                                _1791 = mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32
                                require mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32 <= test266151307()
                                require _790 + ceil32(return_data.size) + mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32 + 356 < _790 + ceil32(return_data.size) + return_data.size + 325
                                _1810 = mem[_790 + ceil32(return_data.size) + mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32 + 325]
                                require mem[_790 + ceil32(return_data.size) + mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32 + 325] <= test266151307()
                                require _790 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_790 + ceil32(return_data.size) + mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32 + 325]) + 357 <= test266151307() and (32 * mem[_790 + ceil32(return_data.size) + mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32 + 325]) + 32 >= 0
                                mem[64] = _790 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_790 + ceil32(return_data.size) + mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32 + 325]) + 357
                                mem[_790 + ceil32(return_data.size) + ceil32(return_data.size) + 325] = _1810
                                require _1791 + (32 * _1810) + 32 <= return_data.size
                                s = 0
                                t = _790 + ceil32(return_data.size) + _1791 + 357
                                u = _790 + ceil32(return_data.size) + ceil32(return_data.size) + 357
                                while s < _1810:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _708 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                _2222 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2222] = 30
                                mem[_2222 + 32] = 'SafeMath: subtraction overflow'
                                if 1 > _1810:
                                    _2230 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_2230 + idx + 68] = mem[_2222 + idx + 32]
                                        _708 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_2230 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2230 + -mem[64] + 100
                                require _1810 - 1 < _1810
                                _2254 = mem[(32 * _1810 - 1) + _790 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                if not mem[(32 * _1810 - 1) + _790 + ceil32(return_data.size) + ceil32(return_data.size) + 357]:
                                    _2274 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2274] = 26
                                    mem[_2274 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _725 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _790 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _708 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _725), 0, 160, address(this.address), block.timestamp + sub_1b61e055, 2, mem[mem[64] + 196 len 64]
                                else:
                                    require mem[(32 * _1810 - 1) + _790 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                    if mem[(32 * _1810 - 1) + _790 + ceil32(return_data.size) + ceil32(return_data.size) + 357] * slippageFactor / mem[(32 * _1810 - 1) + _790 + ceil32(return_data.size) + ceil32(return_data.size) + 357] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _2290 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2290] = 26
                                    mem[_2290 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _725 / 2
                                    mem[mem[64] + 36] = _2254 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _790 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _708 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _725), _2254 * slippageFactor / 1000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + sub_1b61e055
                            else:
                                require return_data.size >= 32
                                require mem[_790 + 196] == bool(mem[_790 + 196])
                                if not mem[_790 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_790 + ceil32(return_data.size) + 165] = 2
                                mem[_790 + ceil32(return_data.size) + 197] = address(_740)
                                mem[_790 + ceil32(return_data.size) + 229] = sub_7edd3da5Address
                                mem[_790 + ceil32(return_data.size) + 261] = 26
                                mem[_790 + ceil32(return_data.size) + 293] = 'SafeMath: division by zero'
                                mem[_790 + ceil32(return_data.size) + 325] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_790 + ceil32(return_data.size) + 329] = _725 / 2
                                mem[_790 + ceil32(return_data.size) + 361] = 64
                                mem[_790 + ceil32(return_data.size) + 393] = 2
                                s = 0
                                t = _790 + ceil32(return_data.size) + 197
                                u = _790 + ceil32(return_data.size) + 425
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _708 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, _725), Array(len=2, data=mem[_790 + ceil32(return_data.size) + 425 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_790 + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _790 + ceil32(return_data.size) + ceil32(return_data.size) + 325
                                require return_data.size >= 32
                                _1792 = mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32
                                require mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32 <= test266151307()
                                require _790 + ceil32(return_data.size) + mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32 + 356 < _790 + ceil32(return_data.size) + return_data.size + 325
                                _1811 = mem[_790 + ceil32(return_data.size) + mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32 + 325]
                                require mem[_790 + ceil32(return_data.size) + mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32 + 325] <= test266151307()
                                require _790 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_790 + ceil32(return_data.size) + mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32 + 325]) + 357 <= test266151307() and (32 * mem[_790 + ceil32(return_data.size) + mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32 + 325]) + 32 >= 0
                                mem[64] = _790 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_790 + ceil32(return_data.size) + mem[_790 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _725) >> 32 + 325]) + 357
                                mem[_790 + ceil32(return_data.size) + ceil32(return_data.size) + 325] = _1811
                                require _1792 + (32 * _1811) + 32 <= return_data.size
                                s = 0
                                t = _790 + ceil32(return_data.size) + _1792 + 357
                                u = _790 + ceil32(return_data.size) + ceil32(return_data.size) + 357
                                while s < _1811:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _708 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                _2223 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2223] = 30
                                mem[_2223 + 32] = 'SafeMath: subtraction overflow'
                                if 1 > _1811:
                                    _2231 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_2231 + idx + 68] = mem[_2223 + idx + 32]
                                        _708 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_2231 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2231 + -mem[64] + 100
                                require _1811 - 1 < _1811
                                _2256 = mem[(32 * _1811 - 1) + _790 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                if not mem[(32 * _1811 - 1) + _790 + ceil32(return_data.size) + ceil32(return_data.size) + 357]:
                                    _2275 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2275] = 26
                                    mem[_2275 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _725 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _790 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _708 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _725), 0, 160, address(this.address), block.timestamp + sub_1b61e055, 2, mem[mem[64] + 196 len 64]
                                else:
                                    require mem[(32 * _1811 - 1) + _790 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                    if mem[(32 * _1811 - 1) + _790 + ceil32(return_data.size) + ceil32(return_data.size) + 357] * slippageFactor / mem[(32 * _1811 - 1) + _790 + ceil32(return_data.size) + ceil32(return_data.size) + 357] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _2291 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2291] = 26
                                    mem[_2291 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _725 / 2
                                    mem[mem[64] + 36] = _2256 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _790 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _708 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _725), _2256 * slippageFactor / 1000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + sub_1b61e055
                        else:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_790 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_790 + 168] = 32
                                mem[_790 + 200] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_790 + idx + 232] = mem[_790 + idx + 132]
                                    _708 = mem[ceil32(return_data.size) + 96]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_790 + 232]
                            if mem[96] <= 0:
                                mem[_790 + 164] = 2
                                mem[_790 + 196] = address(_740)
                                mem[_790 + 228] = sub_7edd3da5Address
                                mem[64] = _790 + 324
                                mem[_790 + 260] = 26
                                mem[_790 + 292] = 'SafeMath: division by zero'
                                mem[_790 + 324] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_790 + 328] = _725 / 2
                                mem[_790 + 360] = 64
                                mem[_790 + 392] = 2
                                s = 0
                                t = _790 + 196
                                u = _790 + 424
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _708 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _790 + -mem[64] + 484]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1772 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1788 = mem[_1772]
                                require mem[_1772] <= test266151307()
                                require _1772 + mem[_1772] + 31 < _1772 + return_data.size
                                _1808 = mem[_1772 + mem[_1772]]
                                require mem[_1772 + mem[_1772]] <= test266151307()
                                require _1772 + ceil32(return_data.size) + (32 * mem[_1772 + mem[_1772]]) + 32 <= test266151307() and (32 * mem[_1772 + mem[_1772]]) + 32 >= 0
                                mem[64] = _1772 + ceil32(return_data.size) + (32 * mem[_1772 + mem[_1772]]) + 32
                                mem[_1772 + ceil32(return_data.size)] = _1808
                                require _1788 + (32 * _1808) + 32 <= return_data.size
                                s = 0
                                t = _1772 + _1788 + 32
                                u = _1772 + ceil32(return_data.size) + 32
                                while s < _1808:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _708 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                _2220 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2220] = 30
                                mem[_2220 + 32] = 'SafeMath: subtraction overflow'
                                if 1 > _1808:
                                    _2228 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_2228 + idx + 68] = mem[_2220 + idx + 32]
                                        _708 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_2228 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2228 + -mem[64] + 100
                                require _1808 - 1 < _1808
                                _2250 = mem[(32 * _1808 - 1) + _1772 + ceil32(return_data.size) + 32]
                                if not mem[(32 * _1808 - 1) + _1772 + ceil32(return_data.size) + 32]:
                                    _2272 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2272] = 26
                                    mem[_2272 + 32] = 'SafeMath: division by zero'
                                    _2305 = mem[64]
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _725 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    _2346 = mem[_790 + 164]
                                    mem[mem[64] + 164] = mem[_790 + 164]
                                    s = 0
                                    t = _790 + 196
                                    u = mem[64] + 196
                                    while s < _2346:
                                        mem[u] = mem[t + 12 len 20]
                                        _708 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_2305 + 100] = this.address
                                    mem[_2305 + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2305 + (32 * _2346) + -mem[64] + 192]
                                else:
                                    require mem[(32 * _1808 - 1) + _1772 + ceil32(return_data.size) + 32]
                                    if mem[(32 * _1808 - 1) + _1772 + ceil32(return_data.size) + 32] * slippageFactor / mem[(32 * _1808 - 1) + _1772 + ceil32(return_data.size) + 32] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _2288 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2288] = 26
                                    mem[_2288 + 32] = 'SafeMath: division by zero'
                                    _2320 = mem[64]
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _725 / 2
                                    mem[mem[64] + 36] = _2250 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    _2356 = mem[_790 + 164]
                                    mem[mem[64] + 164] = mem[_790 + 164]
                                    s = 0
                                    t = _790 + 196
                                    u = mem[64] + 196
                                    while s < _2356:
                                        mem[u] = mem[t + 12 len 20]
                                        _708 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_2320 + 100] = this.address
                                    mem[_2320 + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2320 + (32 * _2356) + -mem[64] + 192]
                            else:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_790 + 164] = 2
                                mem[_790 + 196] = address(_740)
                                mem[_790 + 228] = sub_7edd3da5Address
                                mem[64] = _790 + 324
                                mem[_790 + 260] = 26
                                mem[_790 + 292] = 'SafeMath: division by zero'
                                mem[_790 + 324] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_790 + 328] = _725 / 2
                                mem[_790 + 360] = 64
                                mem[_790 + 392] = 2
                                s = 0
                                t = _790 + 196
                                u = _790 + 424
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _708 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _790 + -mem[64] + 484]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1773 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1789 = mem[_1773]
                                require mem[_1773] <= test266151307()
                                require _1773 + mem[_1773] + 31 < _1773 + return_data.size
                                _1809 = mem[_1773 + mem[_1773]]
                                require mem[_1773 + mem[_1773]] <= test266151307()
                                require _1773 + ceil32(return_data.size) + (32 * mem[_1773 + mem[_1773]]) + 32 <= test266151307() and (32 * mem[_1773 + mem[_1773]]) + 32 >= 0
                                mem[64] = _1773 + ceil32(return_data.size) + (32 * mem[_1773 + mem[_1773]]) + 32
                                mem[_1773 + ceil32(return_data.size)] = _1809
                                require _1789 + (32 * _1809) + 32 <= return_data.size
                                s = 0
                                t = _1773 + _1789 + 32
                                u = _1773 + ceil32(return_data.size) + 32
                                while s < _1809:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _708 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                _2221 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2221] = 30
                                mem[_2221 + 32] = 'SafeMath: subtraction overflow'
                                if 1 > _1809:
                                    _2229 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_2229 + idx + 68] = mem[_2221 + idx + 32]
                                        _708 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_2229 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2229 + -mem[64] + 100
                                require _1809 - 1 < _1809
                                _2252 = mem[(32 * _1809 - 1) + _1773 + ceil32(return_data.size) + 32]
                                if not mem[(32 * _1809 - 1) + _1773 + ceil32(return_data.size) + 32]:
                                    _2273 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2273] = 26
                                    mem[_2273 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _725 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    _2347 = mem[_790 + 164]
                                    mem[mem[64] + 164] = mem[_790 + 164]
                                    s = 0
                                    t = _790 + 196
                                    u = mem[64] + 196
                                    while s < _2347:
                                        mem[u] = mem[t + 12 len 20]
                                        _708 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _725), 0, 160, address(this.address), block.timestamp + sub_1b61e055, mem[mem[64] + 164 len (32 * _2347) + 32]
                                else:
                                    require mem[(32 * _1809 - 1) + _1773 + ceil32(return_data.size) + 32]
                                    if mem[(32 * _1809 - 1) + _1773 + ceil32(return_data.size) + 32] * slippageFactor / mem[(32 * _1809 - 1) + _1773 + ceil32(return_data.size) + 32] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _2289 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2289] = 26
                                    mem[_2289 + 32] = 'SafeMath: division by zero'
                                    _2322 = mem[64]
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _725 / 2
                                    mem[mem[64] + 36] = _2252 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    _2357 = mem[_790 + 164]
                                    mem[mem[64] + 164] = mem[_790 + 164]
                                    s = 0
                                    t = _790 + 196
                                    u = mem[64] + 196
                                    while s < _2357:
                                        mem[u] = mem[t + 12 len 20]
                                        _708 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_2322 + 100] = this.address
                                    mem[_2322 + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2322 + (32 * _2357) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        _708 = mem[ceil32(return_data.size) + 96]
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
    _721 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _722 = mem[_721]
    require mem[_721] == mem[_721]
    if mem[_721] <= 0:
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
        _741 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _743 = mem[_741]
        require mem[_741] == mem[_741]
        if wantLockedTotal + mem[_741] < wantLockedTotal:
            revert with 0, 'SafeMath: addition overflow'
        wantLockedTotal += mem[_741]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = sub_1172cd2bAddress
        require ext_code.size(wantAddress)
        staticcall wantAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), sub_1172cd2bAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _760 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _762 = mem[_760]
        require mem[_760] == mem[_760]
        if mem[_760] + _743 < mem[_760]:
            revert with 0, 'SafeMath: addition overflow'
        _771 = mem[64]
        mem[mem[64] + 36] = sub_1172cd2bAddress
        mem[mem[64] + 68] = _762 + _743
        _785 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
        mem[64] = mem[64] + 164
        mem[_771 + 100] = 32
        mem[_771 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(wantAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        _795 = mem[_785]
        mem[_771 + 164 len ceil32(mem[_785])] = mem[_785 + 32 len ceil32(mem[_785])]
        if ceil32(_795) > _795:
            mem[_771 + _795 + 164] = 0
        call wantAddress with:
             gas gas_remaining wei
            args mem[_771 + 168 len _795 - 4]
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
            mem[_771 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[_771 + 196] == bool(mem[_771 + 196])
                if not mem[_771 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(sub_1172cd2bAddress)
        call sub_1172cd2bAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
             gas gas_remaining wei
            args wantAddress, _743, address(this.address), 0
    else:
        _726 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_726]
        mem[_726 + 32] = sub_7edd3da5Address
        require 1 < mem[_726]
        mem[_726 + 64] = wantAddress
        mem[64] = _726 + 160
        mem[_726 + 96] = 26
        mem[_726 + 128] = 'SafeMath: division by zero'
        mem[_726 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_726 + 164] = _722 / 2
        mem[_726 + 196] = 64
        mem[_726 + 228] = mem[_726]
        idx = 0
        s = _726 + 32
        t = _726 + 260
        while idx < mem[_726]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(uniRouterAddress)
        staticcall uniRouterAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _726 + (32 * mem[_726]) + -mem[64] + 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1146 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1153 = mem[_1146]
        require mem[_1146] <= test266151307()
        require _1146 + mem[_1146] + 31 < _1146 + return_data.size
        _1165 = mem[_1146 + mem[_1146]]
        require mem[_1146 + mem[_1146]] <= test266151307()
        require _1146 + ceil32(return_data.size) + (32 * mem[_1146 + mem[_1146]]) + 32 <= test266151307() and (32 * mem[_1146 + mem[_1146]]) + 32 >= 0
        mem[64] = _1146 + ceil32(return_data.size) + (32 * mem[_1146 + mem[_1146]]) + 32
        mem[_1146 + ceil32(return_data.size)] = _1165
        require _1153 + (32 * _1165) + 32 <= return_data.size
        idx = 0
        s = _1146 + _1153 + 32
        t = _1146 + ceil32(return_data.size) + 32
        while idx < _1165:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _1767 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1767] = 30
        mem[_1767 + 32] = 'SafeMath: subtraction overflow'
        if 1 > _1165:
            revert with 0, 'SafeMath: subtraction overflow', 0
        require _1165 - 1 < _1165
        _1802 = mem[(32 * _1165 - 1) + _1146 + ceil32(return_data.size) + 32]
        if not mem[(32 * _1165 - 1) + _1146 + ceil32(return_data.size) + 32]:
            _1813 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1813] = 26
            mem[_1813 + 32] = 'SafeMath: division by zero'
            _1825 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _722 / 2
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _1885 = mem[_726]
            mem[mem[64] + 164] = mem[_726]
            idx = 0
            s = _726 + 32
            t = mem[64] + 196
            while idx < _1885:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1825 + 100] = this.address
            mem[_1825 + 132] = block.timestamp + sub_1b61e055
            require ext_code.size(uniRouterAddress)
            call uniRouterAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1825 + (32 * _1885) + -mem[64] + 192]
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
            _2341 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2351 = mem[_2341]
            require mem[_2341] == mem[_2341]
            if wantLockedTotal + mem[_2341] < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += mem[_2341]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = sub_1172cd2bAddress
            require ext_code.size(wantAddress)
            staticcall wantAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), sub_1172cd2bAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2401 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2403 = mem[_2401]
            require mem[_2401] == mem[_2401]
            if mem[_2401] + _2351 < mem[_2401]:
                revert with 0, 'SafeMath: addition overflow'
            _2407 = mem[64]
            mem[mem[64] + 36] = sub_1172cd2bAddress
            mem[mem[64] + 68] = _2403 + _2351
            _2412 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
            mem[64] = mem[64] + 164
            mem[_2407 + 100] = 32
            mem[_2407 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            _2424 = mem[_2412]
            mem[_2407 + 164 len ceil32(mem[_2412])] = mem[_2412 + 32 len ceil32(mem[_2412])]
            if ceil32(_2424) > _2424:
                mem[_2407 + _2424 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_2407 + 168 len _2424 - 4]
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
                mem[_2407 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_2407 + 196] == bool(mem[_2407 + 196])
                    if not mem[_2407 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(sub_1172cd2bAddress)
            call sub_1172cd2bAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                 gas gas_remaining wei
                args wantAddress, _2351, address(this.address), 0
        else:
            require mem[(32 * _1165 - 1) + _1146 + ceil32(return_data.size) + 32]
            if mem[(32 * _1165 - 1) + _1146 + ceil32(return_data.size) + 32] * slippageFactor / mem[(32 * _1165 - 1) + _1146 + ceil32(return_data.size) + 32] != slippageFactor:
                revert with 0, 'SafeMath: multiplication overflow'
            _1823 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1823] = 26
            mem[_1823 + 32] = 'SafeMath: division by zero'
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _722 / 2
            mem[mem[64] + 36] = _1802 * slippageFactor / 1000
            mem[mem[64] + 68] = 160
            _1894 = mem[_726]
            mem[mem[64] + 164] = mem[_726]
            idx = 0
            s = _726 + 32
            t = mem[64] + 196
            while idx < _1894:
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
                args Mask(255, 1, _722), _1802 * slippageFactor / 1000, 160, address(this.address), block.timestamp + sub_1b61e055, mem[mem[64] + 164 len (32 * _1894) + 32]
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
            _2340 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2350 = mem[_2340]
            require mem[_2340] == mem[_2340]
            if wantLockedTotal + mem[_2340] < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += mem[_2340]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = sub_1172cd2bAddress
            require ext_code.size(wantAddress)
            staticcall wantAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), sub_1172cd2bAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2400 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2402 = mem[_2400]
            require mem[_2400] == mem[_2400]
            if mem[_2400] + _2350 < mem[_2400]:
                revert with 0, 'SafeMath: addition overflow'
            _2406 = mem[64]
            mem[mem[64] + 36] = sub_1172cd2bAddress
            mem[mem[64] + 68] = _2402 + _2350
            _2410 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
            mem[64] = mem[64] + 164
            mem[_2406 + 100] = 32
            mem[_2406 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            _2422 = mem[_2410]
            mem[_2406 + 164 len ceil32(mem[_2410])] = mem[_2410 + 32 len ceil32(mem[_2410])]
            if ceil32(_2422) > _2422:
                mem[_2406 + _2422 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_2406 + 168 len _2422 - 4]
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
                mem[_2406 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_2406 + 196] == bool(mem[_2406 + 196])
                    if not mem[_2406 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(sub_1172cd2bAddress)
            call sub_1172cd2bAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                 gas gas_remaining wei
                args wantAddress, _2350, address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}



}
