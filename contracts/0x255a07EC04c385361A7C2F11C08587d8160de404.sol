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
        _316 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require mem[s] == mem[s + 12 len 20]
        mem[_316] = mem[s]
        require mem[s + 32] == mem[s + 32]
        mem[_316 + 32] = mem[s + 32]
        mem[t] = _316
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
    _704 = mem[ceil32(return_data.size) + 96]
    idx = 0
    while idx < _704:
        require idx < mem[ceil32(return_data.size) + 96]
        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 12 len 20] != sub_3a459295Address:
            require idx < mem[ceil32(return_data.size) + 96]
            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] > 0:
                require idx < mem[ceil32(return_data.size) + 96]
                _714 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_714))
                staticcall address(_714).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _720 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _721 = mem[_720]
                require mem[_720] == mem[_720]
                require idx < mem[ceil32(return_data.size) + 96]
                require ext_code.size(mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 12 len 20])
                staticcall mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 12 len 20].UNDERLYING_ASSET_ADDRESS() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _734 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _736 = mem[_734]
                require mem[_734] == mem[_734 + 12 len 20]
                mem[mem[64]] = 0x69328dec00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_736)
                mem[mem[64] + 36] = _721
                mem[mem[64] + 68] = this.address
                require ext_code.size(sub_1172cd2bAddress)
                call sub_1172cd2bAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(_736), _721, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(_736) != sub_7edd3da5Address:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = uniRouterAddress
                    require ext_code.size(address(_736))
                    staticcall address(_736).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), uniRouterAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _769 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _772 = mem[_769]
                    require mem[_769] == mem[_769]
                    if mem[_769] + _721 < mem[_769]:
                        revert with 0, 'SafeMath: addition overflow'
                    _783 = mem[64]
                    mem[mem[64] + 36] = uniRouterAddress
                    mem[mem[64] + 68] = _772 + _721
                    _795 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_795 + 32] = mem[_795 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[64] = _783 + 164
                    mem[_783 + 100] = 32
                    mem[_783 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(address(_736)) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _818 = mem[_795]
                    s = 0
                    while s < _818:
                        mem[_783 + s + 164] = mem[_795 + s + 32]
                        _704 = mem[ceil32(return_data.size) + 96]
                        s = s + 32
                        continue 
                    if ceil32(_818) <= _818:
                        call address(_736).mem[_783 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_783 + 168 len _818 - 4]
                        if return_data.size:
                            mem[_783 + 164] = return_data.size
                            mem[_783 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_783 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_783 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_783 + ceil32(return_data.size) + idx + 233] = mem[_783 + idx + 132]
                                    _704 = mem[ceil32(return_data.size) + 96]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_783 + ceil32(return_data.size) + 233]
                            if return_data.size <= 0:
                                mem[_783 + ceil32(return_data.size) + 165] = 2
                                mem[_783 + ceil32(return_data.size) + 197] = address(_736)
                                mem[_783 + ceil32(return_data.size) + 229] = sub_7edd3da5Address
                                mem[_783 + ceil32(return_data.size) + 261] = 26
                                mem[_783 + ceil32(return_data.size) + 293] = 'SafeMath: division by zero'
                                mem[_783 + ceil32(return_data.size) + 325] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_783 + ceil32(return_data.size) + 329] = _721 / 2
                                mem[_783 + ceil32(return_data.size) + 361] = 64
                                mem[_783 + ceil32(return_data.size) + 393] = 2
                                s = 0
                                t = _783 + ceil32(return_data.size) + 197
                                u = _783 + ceil32(return_data.size) + 425
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _704 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, _721), Array(len=2, data=mem[_783 + ceil32(return_data.size) + 425 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_783 + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _783 + ceil32(return_data.size) + ceil32(return_data.size) + 325
                                require return_data.size >= 32
                                _1784 = mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32
                                require mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 <= test266151307()
                                require _783 + ceil32(return_data.size) + mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 + 356 < _783 + ceil32(return_data.size) + return_data.size + 325
                                _1805 = mem[_783 + ceil32(return_data.size) + mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 + 325]
                                require mem[_783 + ceil32(return_data.size) + mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 + 325] <= test266151307()
                                require _783 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_783 + ceil32(return_data.size) + mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 + 325]) + 357 <= test266151307() and (32 * mem[_783 + ceil32(return_data.size) + mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 + 325]) + 32 >= 0
                                mem[64] = _783 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_783 + ceil32(return_data.size) + mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 + 325]) + 357
                                mem[_783 + ceil32(return_data.size) + ceil32(return_data.size) + 325] = mem[_783 + ceil32(return_data.size) + mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 + 325]
                                require _1784 + (32 * _1805) + 32 <= return_data.size
                                s = 0
                                t = _783 + ceil32(return_data.size) + _1784 + 357
                                u = _783 + ceil32(return_data.size) + ceil32(return_data.size) + 357
                                while s < _1805:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _704 = mem[ceil32(return_data.size) + 96]
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
                                        _704 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_2225 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2225 + -mem[64] + 100
                                require _1805 - 1 < _1805
                                _2245 = mem[(32 * _1805 - 1) + _783 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                if not mem[(32 * _1805 - 1) + _783 + ceil32(return_data.size) + ceil32(return_data.size) + 357]:
                                    _2269 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2269] = 26
                                    mem[_2269 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _721 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _783 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _704 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _721), 0, 160, address(this.address), block.timestamp + sub_1b61e055, 2, mem[mem[64] + 196 len 64]
                                else:
                                    require mem[(32 * _1805 - 1) + _783 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                    if mem[(32 * _1805 - 1) + _783 + ceil32(return_data.size) + ceil32(return_data.size) + 357] * slippageFactor / mem[(32 * _1805 - 1) + _783 + ceil32(return_data.size) + ceil32(return_data.size) + 357] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _2285 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2285] = 26
                                    mem[_2285 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _721 / 2
                                    mem[mem[64] + 36] = _2245 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _783 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _704 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _721), _2245 * slippageFactor / 1000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + sub_1b61e055
                            else:
                                require return_data.size >= 32
                                require mem[_783 + 196] == bool(mem[_783 + 196])
                                if not mem[_783 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_783 + ceil32(return_data.size) + 165] = 2
                                mem[_783 + ceil32(return_data.size) + 197] = address(_736)
                                mem[_783 + ceil32(return_data.size) + 229] = sub_7edd3da5Address
                                mem[_783 + ceil32(return_data.size) + 261] = 26
                                mem[_783 + ceil32(return_data.size) + 293] = 'SafeMath: division by zero'
                                mem[_783 + ceil32(return_data.size) + 325] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_783 + ceil32(return_data.size) + 329] = _721 / 2
                                mem[_783 + ceil32(return_data.size) + 361] = 64
                                mem[_783 + ceil32(return_data.size) + 393] = 2
                                s = 0
                                t = _783 + ceil32(return_data.size) + 197
                                u = _783 + ceil32(return_data.size) + 425
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _704 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, _721), Array(len=2, data=mem[_783 + ceil32(return_data.size) + 425 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_783 + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _783 + ceil32(return_data.size) + ceil32(return_data.size) + 325
                                require return_data.size >= 32
                                _1785 = mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32
                                require mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 <= test266151307()
                                require _783 + ceil32(return_data.size) + mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 + 356 < _783 + ceil32(return_data.size) + return_data.size + 325
                                _1806 = mem[_783 + ceil32(return_data.size) + mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 + 325]
                                require mem[_783 + ceil32(return_data.size) + mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 + 325] <= test266151307()
                                require _783 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_783 + ceil32(return_data.size) + mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 + 325]) + 357 <= test266151307() and (32 * mem[_783 + ceil32(return_data.size) + mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 + 325]) + 32 >= 0
                                mem[64] = _783 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_783 + ceil32(return_data.size) + mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 + 325]) + 357
                                mem[_783 + ceil32(return_data.size) + ceil32(return_data.size) + 325] = mem[_783 + ceil32(return_data.size) + mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 + 325]
                                require _1785 + (32 * _1806) + 32 <= return_data.size
                                s = 0
                                t = _783 + ceil32(return_data.size) + _1785 + 357
                                u = _783 + ceil32(return_data.size) + ceil32(return_data.size) + 357
                                while s < _1806:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _704 = mem[ceil32(return_data.size) + 96]
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
                                        _704 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_2226 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2226 + -mem[64] + 100
                                require _1806 - 1 < _1806
                                _2247 = mem[(32 * _1806 - 1) + _783 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                if not mem[(32 * _1806 - 1) + _783 + ceil32(return_data.size) + ceil32(return_data.size) + 357]:
                                    _2270 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2270] = 26
                                    mem[_2270 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _721 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _783 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _704 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _721), 0, 160, address(this.address), block.timestamp + sub_1b61e055, 2, mem[mem[64] + 196 len 64]
                                else:
                                    require mem[(32 * _1806 - 1) + _783 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                    if mem[(32 * _1806 - 1) + _783 + ceil32(return_data.size) + ceil32(return_data.size) + 357] * slippageFactor / mem[(32 * _1806 - 1) + _783 + ceil32(return_data.size) + ceil32(return_data.size) + 357] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _2286 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2286] = 26
                                    mem[_2286 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _721 / 2
                                    mem[mem[64] + 36] = _2247 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _783 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _704 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _721), _2247 * slippageFactor / 1000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + sub_1b61e055
                        else:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_783 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_783 + 168] = 32
                                mem[_783 + 200] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_783 + idx + 232] = mem[_783 + idx + 132]
                                    _704 = mem[ceil32(return_data.size) + 96]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_783 + 232]
                            if mem[96] <= 0:
                                mem[_783 + 164] = 2
                                mem[_783 + 196] = address(_736)
                                mem[_783 + 228] = sub_7edd3da5Address
                                mem[64] = _783 + 324
                                mem[_783 + 260] = 26
                                mem[_783 + 292] = 'SafeMath: division by zero'
                                mem[_783 + 324] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_783 + 328] = _721 / 2
                                mem[_783 + 360] = 64
                                mem[_783 + 392] = 2
                                s = 0
                                t = _783 + 196
                                u = _783 + 424
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _704 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _783 + -mem[64] + 484]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1767 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1781 = mem[_1767]
                                require mem[_1767] <= test266151307()
                                require _1767 + mem[_1767] + 31 < _1767 + return_data.size
                                _1803 = mem[_1767 + mem[_1767]]
                                require mem[_1767 + mem[_1767]] <= test266151307()
                                require _1767 + ceil32(return_data.size) + (32 * mem[_1767 + mem[_1767]]) + 32 <= test266151307() and (32 * mem[_1767 + mem[_1767]]) + 32 >= 0
                                mem[64] = _1767 + ceil32(return_data.size) + (32 * mem[_1767 + mem[_1767]]) + 32
                                mem[_1767 + ceil32(return_data.size)] = _1803
                                require _1781 + (32 * _1803) + 32 <= return_data.size
                                s = 0
                                t = _1767 + _1781 + 32
                                u = _1767 + ceil32(return_data.size) + 32
                                while s < _1803:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _704 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                _2215 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2215] = 30
                                mem[_2215 + 32] = 'SafeMath: subtraction overflow'
                                if 1 > _1803:
                                    _2223 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_2223 + idx + 68] = mem[_2215 + idx + 32]
                                        _704 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_2223 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2223 + -mem[64] + 100
                                require _1803 - 1 < _1803
                                _2241 = mem[(32 * _1803 - 1) + _1767 + ceil32(return_data.size) + 32]
                                if not mem[(32 * _1803 - 1) + _1767 + ceil32(return_data.size) + 32]:
                                    _2267 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2267] = 26
                                    mem[_2267 + 32] = 'SafeMath: division by zero'
                                    _2296 = mem[64]
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _721 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    _2341 = mem[_783 + 164]
                                    mem[mem[64] + 164] = mem[_783 + 164]
                                    s = 0
                                    t = _783 + 196
                                    u = mem[64] + 196
                                    while s < _2341:
                                        mem[u] = mem[t + 12 len 20]
                                        _704 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_2296 + 100] = this.address
                                    mem[_2296 + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2296 + (32 * _2341) + -mem[64] + 192]
                                else:
                                    require mem[(32 * _1803 - 1) + _1767 + ceil32(return_data.size) + 32]
                                    if mem[(32 * _1803 - 1) + _1767 + ceil32(return_data.size) + 32] * slippageFactor / mem[(32 * _1803 - 1) + _1767 + ceil32(return_data.size) + 32] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _2283 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2283] = 26
                                    mem[_2283 + 32] = 'SafeMath: division by zero'
                                    _2311 = mem[64]
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _721 / 2
                                    mem[mem[64] + 36] = _2241 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    _2351 = mem[_783 + 164]
                                    mem[mem[64] + 164] = mem[_783 + 164]
                                    s = 0
                                    t = _783 + 196
                                    u = mem[64] + 196
                                    while s < _2351:
                                        mem[u] = mem[t + 12 len 20]
                                        _704 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_2311 + 100] = this.address
                                    mem[_2311 + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2311 + (32 * _2351) + -mem[64] + 192]
                            else:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_783 + 164] = 2
                                mem[_783 + 196] = address(_736)
                                mem[_783 + 228] = sub_7edd3da5Address
                                mem[64] = _783 + 324
                                mem[_783 + 260] = 26
                                mem[_783 + 292] = 'SafeMath: division by zero'
                                mem[_783 + 324] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_783 + 328] = _721 / 2
                                mem[_783 + 360] = 64
                                mem[_783 + 392] = 2
                                s = 0
                                t = _783 + 196
                                u = _783 + 424
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _704 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _783 + -mem[64] + 484]
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
                                    _704 = mem[ceil32(return_data.size) + 96]
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
                                        _704 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_2224 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2224 + -mem[64] + 100
                                require _1804 - 1 < _1804
                                _2243 = mem[(32 * _1804 - 1) + _1768 + ceil32(return_data.size) + 32]
                                if not mem[(32 * _1804 - 1) + _1768 + ceil32(return_data.size) + 32]:
                                    _2268 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2268] = 26
                                    mem[_2268 + 32] = 'SafeMath: division by zero'
                                    _2298 = mem[64]
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _721 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    _2342 = mem[_783 + 164]
                                    mem[mem[64] + 164] = mem[_783 + 164]
                                    s = 0
                                    t = _783 + 196
                                    u = mem[64] + 196
                                    while s < _2342:
                                        mem[u] = mem[t + 12 len 20]
                                        _704 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_2298 + 100] = this.address
                                    mem[_2298 + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2298 + (32 * _2342) + -mem[64] + 192]
                                else:
                                    require mem[(32 * _1804 - 1) + _1768 + ceil32(return_data.size) + 32]
                                    if mem[(32 * _1804 - 1) + _1768 + ceil32(return_data.size) + 32] * slippageFactor / mem[(32 * _1804 - 1) + _1768 + ceil32(return_data.size) + 32] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _2284 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2284] = 26
                                    mem[_2284 + 32] = 'SafeMath: division by zero'
                                    _2313 = mem[64]
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _721 / 2
                                    mem[mem[64] + 36] = _2243 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    _2352 = mem[_783 + 164]
                                    mem[mem[64] + 164] = mem[_783 + 164]
                                    s = 0
                                    t = _783 + 196
                                    u = mem[64] + 196
                                    while s < _2352:
                                        mem[u] = mem[t + 12 len 20]
                                        _704 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_2313 + 100] = this.address
                                    mem[_2313 + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2313 + (32 * _2352) + -mem[64] + 192]
                    else:
                        mem[_783 + _818 + 164] = 0
                        call address(_736).mem[_783 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_783 + 168 len _818 - 4]
                        if return_data.size:
                            mem[_783 + 164] = return_data.size
                            mem[_783 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_783 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_783 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_783 + ceil32(return_data.size) + idx + 233] = mem[_783 + idx + 132]
                                    _704 = mem[ceil32(return_data.size) + 96]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_783 + ceil32(return_data.size) + 233]
                            if return_data.size <= 0:
                                mem[_783 + ceil32(return_data.size) + 165] = 2
                                mem[_783 + ceil32(return_data.size) + 197] = address(_736)
                                mem[_783 + ceil32(return_data.size) + 229] = sub_7edd3da5Address
                                mem[_783 + ceil32(return_data.size) + 261] = 26
                                mem[_783 + ceil32(return_data.size) + 293] = 'SafeMath: division by zero'
                                mem[_783 + ceil32(return_data.size) + 325] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_783 + ceil32(return_data.size) + 329] = _721 / 2
                                mem[_783 + ceil32(return_data.size) + 361] = 64
                                mem[_783 + ceil32(return_data.size) + 393] = 2
                                s = 0
                                t = _783 + ceil32(return_data.size) + 197
                                u = _783 + ceil32(return_data.size) + 425
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _704 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, _721), Array(len=2, data=mem[_783 + ceil32(return_data.size) + 425 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_783 + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _783 + ceil32(return_data.size) + ceil32(return_data.size) + 325
                                require return_data.size >= 32
                                _1790 = mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32
                                require mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 <= test266151307()
                                require _783 + ceil32(return_data.size) + mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 + 356 < _783 + ceil32(return_data.size) + return_data.size + 325
                                _1809 = mem[_783 + ceil32(return_data.size) + mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 + 325]
                                require mem[_783 + ceil32(return_data.size) + mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 + 325] <= test266151307()
                                require _783 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_783 + ceil32(return_data.size) + mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 + 325]) + 357 <= test266151307() and (32 * mem[_783 + ceil32(return_data.size) + mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 + 325]) + 32 >= 0
                                mem[64] = _783 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_783 + ceil32(return_data.size) + mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 + 325]) + 357
                                mem[_783 + ceil32(return_data.size) + ceil32(return_data.size) + 325] = mem[_783 + ceil32(return_data.size) + mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 + 325]
                                require _1790 + (32 * _1809) + 32 <= return_data.size
                                s = 0
                                t = _783 + ceil32(return_data.size) + _1790 + 357
                                u = _783 + ceil32(return_data.size) + ceil32(return_data.size) + 357
                                while s < _1809:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _704 = mem[ceil32(return_data.size) + 96]
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
                                        _704 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_2229 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2229 + -mem[64] + 100
                                require _1809 - 1 < _1809
                                _2253 = mem[(32 * _1809 - 1) + _783 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                if not mem[(32 * _1809 - 1) + _783 + ceil32(return_data.size) + ceil32(return_data.size) + 357]:
                                    _2273 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2273] = 26
                                    mem[_2273 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _721 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _783 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _704 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _721), 0, 160, address(this.address), block.timestamp + sub_1b61e055, 2, mem[mem[64] + 196 len 64]
                                else:
                                    require mem[(32 * _1809 - 1) + _783 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                    if mem[(32 * _1809 - 1) + _783 + ceil32(return_data.size) + ceil32(return_data.size) + 357] * slippageFactor / mem[(32 * _1809 - 1) + _783 + ceil32(return_data.size) + ceil32(return_data.size) + 357] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _2289 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2289] = 26
                                    mem[_2289 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _721 / 2
                                    mem[mem[64] + 36] = _2253 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _783 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _704 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _721), _2253 * slippageFactor / 1000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + sub_1b61e055
                            else:
                                require return_data.size >= 32
                                require mem[_783 + 196] == bool(mem[_783 + 196])
                                if not mem[_783 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_783 + ceil32(return_data.size) + 165] = 2
                                mem[_783 + ceil32(return_data.size) + 197] = address(_736)
                                mem[_783 + ceil32(return_data.size) + 229] = sub_7edd3da5Address
                                mem[_783 + ceil32(return_data.size) + 261] = 26
                                mem[_783 + ceil32(return_data.size) + 293] = 'SafeMath: division by zero'
                                mem[_783 + ceil32(return_data.size) + 325] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_783 + ceil32(return_data.size) + 329] = _721 / 2
                                mem[_783 + ceil32(return_data.size) + 361] = 64
                                mem[_783 + ceil32(return_data.size) + 393] = 2
                                s = 0
                                t = _783 + ceil32(return_data.size) + 197
                                u = _783 + ceil32(return_data.size) + 425
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _704 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, _721), Array(len=2, data=mem[_783 + ceil32(return_data.size) + 425 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_783 + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _783 + ceil32(return_data.size) + ceil32(return_data.size) + 325
                                require return_data.size >= 32
                                _1791 = mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32
                                require mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 <= test266151307()
                                require _783 + ceil32(return_data.size) + mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 + 356 < _783 + ceil32(return_data.size) + return_data.size + 325
                                _1810 = mem[_783 + ceil32(return_data.size) + mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 + 325]
                                require mem[_783 + ceil32(return_data.size) + mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 + 325] <= test266151307()
                                require _783 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_783 + ceil32(return_data.size) + mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 + 325]) + 357 <= test266151307() and (32 * mem[_783 + ceil32(return_data.size) + mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 + 325]) + 32 >= 0
                                mem[64] = _783 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_783 + ceil32(return_data.size) + mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 + 325]) + 357
                                mem[_783 + ceil32(return_data.size) + ceil32(return_data.size) + 325] = mem[_783 + ceil32(return_data.size) + mem[_783 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _721) >> 32 + 325]
                                require _1791 + (32 * _1810) + 32 <= return_data.size
                                s = 0
                                t = _783 + ceil32(return_data.size) + _1791 + 357
                                u = _783 + ceil32(return_data.size) + ceil32(return_data.size) + 357
                                while s < _1810:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _704 = mem[ceil32(return_data.size) + 96]
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
                                        _704 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_2230 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2230 + -mem[64] + 100
                                require _1810 - 1 < _1810
                                _2255 = mem[(32 * _1810 - 1) + _783 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                if not mem[(32 * _1810 - 1) + _783 + ceil32(return_data.size) + ceil32(return_data.size) + 357]:
                                    _2274 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2274] = 26
                                    mem[_2274 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _721 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _783 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _704 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _721), 0, 160, address(this.address), block.timestamp + sub_1b61e055, 2, mem[mem[64] + 196 len 64]
                                else:
                                    require mem[(32 * _1810 - 1) + _783 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                    if mem[(32 * _1810 - 1) + _783 + ceil32(return_data.size) + ceil32(return_data.size) + 357] * slippageFactor / mem[(32 * _1810 - 1) + _783 + ceil32(return_data.size) + ceil32(return_data.size) + 357] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _2290 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2290] = 26
                                    mem[_2290 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _721 / 2
                                    mem[mem[64] + 36] = _2255 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _783 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _704 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _721), _2255 * slippageFactor / 1000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + sub_1b61e055
                        else:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_783 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_783 + 168] = 32
                                mem[_783 + 200] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_783 + idx + 232] = mem[_783 + idx + 132]
                                    _704 = mem[ceil32(return_data.size) + 96]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_783 + 232]
                            if mem[96] <= 0:
                                mem[_783 + 164] = 2
                                mem[_783 + 196] = address(_736)
                                mem[_783 + 228] = sub_7edd3da5Address
                                mem[64] = _783 + 324
                                mem[_783 + 260] = 26
                                mem[_783 + 292] = 'SafeMath: division by zero'
                                mem[_783 + 324] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_783 + 328] = _721 / 2
                                mem[_783 + 360] = 64
                                mem[_783 + 392] = 2
                                s = 0
                                t = _783 + 196
                                u = _783 + 424
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _704 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _783 + -mem[64] + 484]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1771 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1787 = mem[_1771]
                                require mem[_1771] <= test266151307()
                                require _1771 + mem[_1771] + 31 < _1771 + return_data.size
                                _1807 = mem[_1771 + mem[_1771]]
                                require mem[_1771 + mem[_1771]] <= test266151307()
                                require _1771 + ceil32(return_data.size) + (32 * mem[_1771 + mem[_1771]]) + 32 <= test266151307() and (32 * mem[_1771 + mem[_1771]]) + 32 >= 0
                                mem[64] = _1771 + ceil32(return_data.size) + (32 * mem[_1771 + mem[_1771]]) + 32
                                mem[_1771 + ceil32(return_data.size)] = _1807
                                require _1787 + (32 * _1807) + 32 <= return_data.size
                                s = 0
                                t = _1771 + _1787 + 32
                                u = _1771 + ceil32(return_data.size) + 32
                                while s < _1807:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _704 = mem[ceil32(return_data.size) + 96]
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
                                        _704 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_2227 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2227 + -mem[64] + 100
                                require _1807 - 1 < _1807
                                _2249 = mem[(32 * _1807 - 1) + _1771 + ceil32(return_data.size) + 32]
                                if not mem[(32 * _1807 - 1) + _1771 + ceil32(return_data.size) + 32]:
                                    _2271 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2271] = 26
                                    mem[_2271 + 32] = 'SafeMath: division by zero'
                                    _2304 = mem[64]
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _721 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    _2345 = mem[_783 + 164]
                                    mem[mem[64] + 164] = mem[_783 + 164]
                                    s = 0
                                    t = _783 + 196
                                    u = mem[64] + 196
                                    while s < _2345:
                                        mem[u] = mem[t + 12 len 20]
                                        _704 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_2304 + 100] = this.address
                                    mem[_2304 + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2304 + (32 * _2345) + -mem[64] + 192]
                                else:
                                    require mem[(32 * _1807 - 1) + _1771 + ceil32(return_data.size) + 32]
                                    if mem[(32 * _1807 - 1) + _1771 + ceil32(return_data.size) + 32] * slippageFactor / mem[(32 * _1807 - 1) + _1771 + ceil32(return_data.size) + 32] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _2287 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2287] = 26
                                    mem[_2287 + 32] = 'SafeMath: division by zero'
                                    _2319 = mem[64]
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _721 / 2
                                    mem[mem[64] + 36] = _2249 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    _2355 = mem[_783 + 164]
                                    mem[mem[64] + 164] = mem[_783 + 164]
                                    s = 0
                                    t = _783 + 196
                                    u = mem[64] + 196
                                    while s < _2355:
                                        mem[u] = mem[t + 12 len 20]
                                        _704 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_2319 + 100] = this.address
                                    mem[_2319 + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2319 + (32 * _2355) + -mem[64] + 192]
                            else:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_783 + 164] = 2
                                mem[_783 + 196] = address(_736)
                                mem[_783 + 228] = sub_7edd3da5Address
                                mem[64] = _783 + 324
                                mem[_783 + 260] = 26
                                mem[_783 + 292] = 'SafeMath: division by zero'
                                mem[_783 + 324] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_783 + 328] = _721 / 2
                                mem[_783 + 360] = 64
                                mem[_783 + 392] = 2
                                s = 0
                                t = _783 + 196
                                u = _783 + 424
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _704 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _783 + -mem[64] + 484]
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
                                    _704 = mem[ceil32(return_data.size) + 96]
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
                                        _704 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_2228 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2228 + -mem[64] + 100
                                require _1808 - 1 < _1808
                                _2251 = mem[(32 * _1808 - 1) + _1772 + ceil32(return_data.size) + 32]
                                if not mem[(32 * _1808 - 1) + _1772 + ceil32(return_data.size) + 32]:
                                    _2272 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2272] = 26
                                    mem[_2272 + 32] = 'SafeMath: division by zero'
                                    _2306 = mem[64]
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _721 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    _2346 = mem[_783 + 164]
                                    mem[mem[64] + 164] = mem[_783 + 164]
                                    s = 0
                                    t = _783 + 196
                                    u = mem[64] + 196
                                    while s < _2346:
                                        mem[u] = mem[t + 12 len 20]
                                        _704 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_2306 + 100] = this.address
                                    mem[_2306 + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2306 + (32 * _2346) + -mem[64] + 192]
                                else:
                                    require mem[(32 * _1808 - 1) + _1772 + ceil32(return_data.size) + 32]
                                    if mem[(32 * _1808 - 1) + _1772 + ceil32(return_data.size) + 32] * slippageFactor / mem[(32 * _1808 - 1) + _1772 + ceil32(return_data.size) + 32] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _2288 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2288] = 26
                                    mem[_2288 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _721 / 2
                                    mem[mem[64] + 36] = _2251 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    _2356 = mem[_783 + 164]
                                    mem[mem[64] + 164] = mem[_783 + 164]
                                    s = 0
                                    t = _783 + 196
                                    u = mem[64] + 196
                                    while s < _2356:
                                        mem[u] = mem[t + 12 len 20]
                                        _704 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _721), _2251 * slippageFactor / 1000, 160, address(this.address), block.timestamp + sub_1b61e055, mem[mem[64] + 164 len (32 * _2356) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        _704 = mem[ceil32(return_data.size) + 96]
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
    _717 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _718 = mem[_717]
    require mem[_717] == mem[_717]
    if mem[_717] <= 0:
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
        _737 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _739 = mem[_737]
        require mem[_737] == mem[_737]
        if wantLockedTotal + mem[_737] < wantLockedTotal:
            revert with 0, 'SafeMath: addition overflow'
        wantLockedTotal += mem[_737]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = sub_1172cd2bAddress
        require ext_code.size(wantAddress)
        staticcall wantAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), sub_1172cd2bAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _753 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _755 = mem[_753]
        require mem[_753] == mem[_753]
        if mem[_753] + _739 < mem[_753]:
            revert with 0, 'SafeMath: addition overflow'
        _764 = mem[64]
        mem[mem[64] + 36] = sub_1172cd2bAddress
        mem[mem[64] + 68] = _755 + _739
        _778 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
        mem[64] = mem[64] + 164
        mem[_764 + 100] = 32
        mem[_764 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(wantAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        _789 = mem[_778]
        mem[_764 + 164 len ceil32(mem[_778])] = mem[_778 + 32 len ceil32(mem[_778])]
        if ceil32(_789) > _789:
            mem[_764 + _789 + 164] = 0
        call wantAddress with:
             gas gas_remaining wei
            args mem[_764 + 168 len _789 - 4]
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
            mem[_764 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[_764 + 196] == bool(mem[_764 + 196])
                if not mem[_764 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(sub_1172cd2bAddress)
        call sub_1172cd2bAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
             gas gas_remaining wei
            args wantAddress, _739, address(this.address), 0
    else:
        _722 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_722]
        mem[_722 + 32] = sub_7edd3da5Address
        require 1 < mem[_722]
        mem[_722 + 64] = wantAddress
        mem[64] = _722 + 160
        mem[_722 + 96] = 26
        mem[_722 + 128] = 'SafeMath: division by zero'
        mem[_722 + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_722 + 164] = _718 / 2
        mem[_722 + 196] = 64
        mem[_722 + 228] = mem[_722]
        idx = 0
        s = _722 + 32
        t = _722 + 260
        while idx < mem[_722]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(uniRouterAddress)
        staticcall uniRouterAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _722 + (32 * mem[_722]) + -mem[64] + 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1145 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1152 = mem[_1145]
        require mem[_1145] <= test266151307()
        require _1145 + mem[_1145] + 31 < _1145 + return_data.size
        _1164 = mem[_1145 + mem[_1145]]
        require mem[_1145 + mem[_1145]] <= test266151307()
        require _1145 + ceil32(return_data.size) + (32 * mem[_1145 + mem[_1145]]) + 32 <= test266151307() and (32 * mem[_1145 + mem[_1145]]) + 32 >= 0
        mem[64] = _1145 + ceil32(return_data.size) + (32 * mem[_1145 + mem[_1145]]) + 32
        mem[_1145 + ceil32(return_data.size)] = _1164
        require _1152 + (32 * _1164) + 32 <= return_data.size
        idx = 0
        s = _1145 + _1152 + 32
        t = _1145 + ceil32(return_data.size) + 32
        while idx < _1164:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _1766 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1766] = 30
        mem[_1766 + 32] = 'SafeMath: subtraction overflow'
        if 1 > _1164:
            revert with 0, 'SafeMath: subtraction overflow', 0
        require _1164 - 1 < _1164
        _1801 = mem[(32 * _1164 - 1) + _1145 + ceil32(return_data.size) + 32]
        if not mem[(32 * _1164 - 1) + _1145 + ceil32(return_data.size) + 32]:
            _1812 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1812] = 26
            mem[_1812 + 32] = 'SafeMath: division by zero'
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _718 / 2
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _1884 = mem[_722]
            mem[mem[64] + 164] = mem[_722]
            idx = 0
            s = _722 + 32
            t = mem[64] + 196
            while idx < _1884:
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
                args Mask(255, 1, _718), 0, 160, address(this.address), block.timestamp + sub_1b61e055, mem[mem[64] + 164 len (32 * _1884) + 32]
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
            _2411 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
            mem[64] = mem[64] + 164
            mem[_2406 + 100] = 32
            mem[_2406 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            _2423 = mem[_2411]
            mem[_2406 + 164 len ceil32(mem[_2411])] = mem[_2411 + 32 len ceil32(mem[_2411])]
            if ceil32(_2423) > _2423:
                mem[_2406 + _2423 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_2406 + 168 len _2423 - 4]
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
        else:
            require mem[(32 * _1164 - 1) + _1145 + ceil32(return_data.size) + 32]
            if mem[(32 * _1164 - 1) + _1145 + ceil32(return_data.size) + 32] * slippageFactor / mem[(32 * _1164 - 1) + _1145 + ceil32(return_data.size) + 32] != slippageFactor:
                revert with 0, 'SafeMath: multiplication overflow'
            _1822 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1822] = 26
            mem[_1822 + 32] = 'SafeMath: division by zero'
            _1833 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _718 / 2
            mem[mem[64] + 36] = _1801 * slippageFactor / 1000
            mem[mem[64] + 68] = 160
            _1893 = mem[_722]
            mem[mem[64] + 164] = mem[_722]
            idx = 0
            s = _722 + 32
            t = mem[64] + 196
            while idx < _1893:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1833 + 100] = this.address
            mem[_1833 + 132] = block.timestamp + sub_1b61e055
            require ext_code.size(uniRouterAddress)
            call uniRouterAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1833 + (32 * _1893) + -mem[64] + 192]
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
            _2339 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2349 = mem[_2339]
            require mem[_2339] == mem[_2339]
            if wantLockedTotal + mem[_2339] < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += mem[_2339]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = sub_1172cd2bAddress
            require ext_code.size(wantAddress)
            staticcall wantAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), sub_1172cd2bAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2399 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2401 = mem[_2399]
            require mem[_2399] == mem[_2399]
            if mem[_2399] + _2349 < mem[_2399]:
                revert with 0, 'SafeMath: addition overflow'
            _2405 = mem[64]
            mem[mem[64] + 36] = sub_1172cd2bAddress
            mem[mem[64] + 68] = _2401 + _2349
            _2409 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
            mem[64] = mem[64] + 164
            mem[_2405 + 100] = 32
            mem[_2405 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            _2421 = mem[_2409]
            mem[_2405 + 164 len ceil32(mem[_2409])] = mem[_2409 + 32 len ceil32(mem[_2409])]
            if ceil32(_2421) > _2421:
                mem[_2405 + _2421 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_2405 + 168 len _2421 - 4]
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
                mem[_2405 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_2405 + 196] == bool(mem[_2405 + 196])
                    if not mem[_2405 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(sub_1172cd2bAddress)
            call sub_1172cd2bAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                 gas gas_remaining wei
                args wantAddress, _2349, address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}



}
