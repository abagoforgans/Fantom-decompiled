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
        _522 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require mem[s] == mem[s + 12 len 20]
        mem[_522] = mem[s]
        require mem[s + 32] == mem[s + 32]
        mem[_522 + 32] = mem[s + 32]
        mem[t] = _522
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
    _1171 = mem[ceil32(return_data.size) + 96]
    idx = 0
    while idx < _1171:
        require idx < mem[ceil32(return_data.size) + 96]
        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 12 len 20] != sub_3a459295Address:
            require idx < mem[ceil32(return_data.size) + 96]
            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] > 0:
                require idx < mem[ceil32(return_data.size) + 96]
                _1181 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1181))
                staticcall address(_1181).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1187 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1188 = mem[_1187]
                require mem[_1187] == mem[_1187]
                require idx < mem[ceil32(return_data.size) + 96]
                require ext_code.size(mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 12 len 20])
                staticcall mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 12 len 20].UNDERLYING_ASSET_ADDRESS() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1198 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1200 = mem[_1198]
                require mem[_1198] == mem[_1198 + 12 len 20]
                mem[mem[64]] = 0x69328dec00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_1200)
                mem[mem[64] + 36] = _1188
                mem[mem[64] + 68] = this.address
                require ext_code.size(sub_1172cd2bAddress)
                call sub_1172cd2bAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(_1200), _1188, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(_1200) != sub_7edd3da5Address:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = uniRouterAddress
                    require ext_code.size(address(_1200))
                    staticcall address(_1200).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), uniRouterAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1231 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1233 = mem[_1231]
                    require mem[_1231] == mem[_1231]
                    if mem[_1231] + _1188 < mem[_1231]:
                        revert with 0, 'SafeMath: addition overflow'
                    _1265 = mem[64]
                    mem[mem[64] + 36] = uniRouterAddress
                    mem[mem[64] + 68] = _1233 + _1188
                    _1309 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1309 + 32] = mem[_1309 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[64] = _1265 + 164
                    mem[_1265 + 100] = 32
                    mem[_1265 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(address(_1200)) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _1361 = mem[_1309]
                    s = 0
                    while s < _1361:
                        mem[_1265 + s + 164] = mem[_1309 + s + 32]
                        _1171 = mem[ceil32(return_data.size) + 96]
                        s = s + 32
                        continue 
                    if ceil32(_1361) <= _1361:
                        call address(_1200).mem[_1265 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1265 + 168 len _1361 - 4]
                        if return_data.size:
                            mem[_1265 + 164] = return_data.size
                            mem[_1265 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1265 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1265 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_1265 + ceil32(return_data.size) + idx + 233] = mem[_1265 + idx + 132]
                                    _1171 = mem[ceil32(return_data.size) + 96]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1265 + ceil32(return_data.size) + 233]
                            if return_data.size <= 0:
                                mem[_1265 + ceil32(return_data.size) + 165] = 2
                                mem[_1265 + ceil32(return_data.size) + 197] = address(_1200)
                                mem[_1265 + ceil32(return_data.size) + 229] = sub_7edd3da5Address
                                mem[_1265 + ceil32(return_data.size) + 261] = 26
                                mem[_1265 + ceil32(return_data.size) + 293] = 'SafeMath: division by zero'
                                mem[_1265 + ceil32(return_data.size) + 325] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_1265 + ceil32(return_data.size) + 329] = _1188 / 2
                                mem[_1265 + ceil32(return_data.size) + 361] = 64
                                mem[_1265 + ceil32(return_data.size) + 393] = 2
                                s = 0
                                t = _1265 + ceil32(return_data.size) + 197
                                u = _1265 + ceil32(return_data.size) + 425
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _1171 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, _1188), Array(len=2, data=mem[_1265 + ceil32(return_data.size) + 425 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1265 + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _1265 + ceil32(return_data.size) + ceil32(return_data.size) + 325
                                require return_data.size >= 32
                                _3040 = mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32
                                require mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 <= test266151307()
                                require _1265 + ceil32(return_data.size) + mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 + 356 < _1265 + ceil32(return_data.size) + return_data.size + 325
                                _3070 = mem[_1265 + ceil32(return_data.size) + mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 + 325]
                                require mem[_1265 + ceil32(return_data.size) + mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 + 325] <= test266151307()
                                require _1265 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1265 + ceil32(return_data.size) + mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 + 325]) + 357 <= test266151307() and (32 * mem[_1265 + ceil32(return_data.size) + mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 + 325]) + 32 >= 0
                                mem[64] = _1265 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1265 + ceil32(return_data.size) + mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 + 325]) + 357
                                mem[_1265 + ceil32(return_data.size) + ceil32(return_data.size) + 325] = mem[_1265 + ceil32(return_data.size) + mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 + 325]
                                require _3040 + (32 * _3070) + 32 <= return_data.size
                                s = 0
                                t = _1265 + ceil32(return_data.size) + _3040 + 357
                                u = _1265 + ceil32(return_data.size) + ceil32(return_data.size) + 357
                                while s < _3070:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _1171 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                _4910 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4910] = 30
                                mem[_4910 + 32] = 'SafeMath: subtraction overflow'
                                if 1 > _3070:
                                    _4926 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_4926 + idx + 68] = mem[_4910 + idx + 32]
                                        _1171 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_4926 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4926 + -mem[64] + 100
                                require _3070 - 1 < _3070
                                _4968 = mem[(32 * _3070 - 1) + _1265 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                if not mem[(32 * _3070 - 1) + _1265 + ceil32(return_data.size) + ceil32(return_data.size) + 357]:
                                    _5006 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5006] = 26
                                    mem[_5006 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1188 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _1265 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _1171 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _1188), 0, 160, address(this.address), block.timestamp + sub_1b61e055, 2, mem[mem[64] + 196 len 64]
                                else:
                                    require mem[(32 * _3070 - 1) + _1265 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                    if mem[(32 * _3070 - 1) + _1265 + ceil32(return_data.size) + ceil32(return_data.size) + 357] * slippageFactor / mem[(32 * _3070 - 1) + _1265 + ceil32(return_data.size) + ceil32(return_data.size) + 357] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _5038 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5038] = 26
                                    mem[_5038 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1188 / 2
                                    mem[mem[64] + 36] = _4968 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _1265 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _1171 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _1188), _4968 * slippageFactor / 1000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + sub_1b61e055
                            else:
                                require return_data.size >= 32
                                require mem[_1265 + 196] == bool(mem[_1265 + 196])
                                if not mem[_1265 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_1265 + ceil32(return_data.size) + 165] = 2
                                mem[_1265 + ceil32(return_data.size) + 197] = address(_1200)
                                mem[_1265 + ceil32(return_data.size) + 229] = sub_7edd3da5Address
                                mem[_1265 + ceil32(return_data.size) + 261] = 26
                                mem[_1265 + ceil32(return_data.size) + 293] = 'SafeMath: division by zero'
                                mem[_1265 + ceil32(return_data.size) + 325] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_1265 + ceil32(return_data.size) + 329] = _1188 / 2
                                mem[_1265 + ceil32(return_data.size) + 361] = 64
                                mem[_1265 + ceil32(return_data.size) + 393] = 2
                                s = 0
                                t = _1265 + ceil32(return_data.size) + 197
                                u = _1265 + ceil32(return_data.size) + 425
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _1171 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, _1188), Array(len=2, data=mem[_1265 + ceil32(return_data.size) + 425 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1265 + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _1265 + ceil32(return_data.size) + ceil32(return_data.size) + 325
                                require return_data.size >= 32
                                _3041 = mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32
                                require mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 <= test266151307()
                                require _1265 + ceil32(return_data.size) + mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 + 356 < _1265 + ceil32(return_data.size) + return_data.size + 325
                                _3071 = mem[_1265 + ceil32(return_data.size) + mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 + 325]
                                require mem[_1265 + ceil32(return_data.size) + mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 + 325] <= test266151307()
                                require _1265 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1265 + ceil32(return_data.size) + mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 + 325]) + 357 <= test266151307() and (32 * mem[_1265 + ceil32(return_data.size) + mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 + 325]) + 32 >= 0
                                mem[64] = _1265 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1265 + ceil32(return_data.size) + mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 + 325]) + 357
                                mem[_1265 + ceil32(return_data.size) + ceil32(return_data.size) + 325] = mem[_1265 + ceil32(return_data.size) + mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 + 325]
                                require _3041 + (32 * _3071) + 32 <= return_data.size
                                s = 0
                                t = _1265 + ceil32(return_data.size) + _3041 + 357
                                u = _1265 + ceil32(return_data.size) + ceil32(return_data.size) + 357
                                while s < _3071:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _1171 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                _4911 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4911] = 30
                                mem[_4911 + 32] = 'SafeMath: subtraction overflow'
                                if 1 > _3071:
                                    _4927 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_4927 + idx + 68] = mem[_4911 + idx + 32]
                                        _1171 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_4927 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4927 + -mem[64] + 100
                                require _3071 - 1 < _3071
                                _4970 = mem[(32 * _3071 - 1) + _1265 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                if not mem[(32 * _3071 - 1) + _1265 + ceil32(return_data.size) + ceil32(return_data.size) + 357]:
                                    _5007 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5007] = 26
                                    mem[_5007 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1188 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _1265 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _1171 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _1188), 0, 160, address(this.address), block.timestamp + sub_1b61e055, 2, mem[mem[64] + 196 len 64]
                                else:
                                    require mem[(32 * _3071 - 1) + _1265 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                    if mem[(32 * _3071 - 1) + _1265 + ceil32(return_data.size) + ceil32(return_data.size) + 357] * slippageFactor / mem[(32 * _3071 - 1) + _1265 + ceil32(return_data.size) + ceil32(return_data.size) + 357] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _5039 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5039] = 26
                                    mem[_5039 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1188 / 2
                                    mem[mem[64] + 36] = _4970 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _1265 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _1171 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _1188), _4970 * slippageFactor / 1000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + sub_1b61e055
                        else:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1265 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1265 + 168] = 32
                                mem[_1265 + 200] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_1265 + idx + 232] = mem[_1265 + idx + 132]
                                    _1171 = mem[ceil32(return_data.size) + 96]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1265 + 232]
                            if mem[96] <= 0:
                                mem[_1265 + 164] = 2
                                mem[_1265 + 196] = address(_1200)
                                mem[_1265 + 228] = sub_7edd3da5Address
                                mem[64] = _1265 + 324
                                mem[_1265 + 260] = 26
                                mem[_1265 + 292] = 'SafeMath: division by zero'
                                mem[_1265 + 324] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_1265 + 328] = _1188 / 2
                                mem[_1265 + 360] = 64
                                mem[_1265 + 392] = 2
                                s = 0
                                t = _1265 + 196
                                u = _1265 + 424
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _1171 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _1265 + -mem[64] + 484]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3012 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3037 = mem[_3012]
                                require mem[_3012] <= test266151307()
                                require _3012 + mem[_3012] + 31 < _3012 + return_data.size
                                _3068 = mem[_3012 + mem[_3012]]
                                require mem[_3012 + mem[_3012]] <= test266151307()
                                require _3012 + ceil32(return_data.size) + (32 * mem[_3012 + mem[_3012]]) + 32 <= test266151307() and (32 * mem[_3012 + mem[_3012]]) + 32 >= 0
                                mem[64] = _3012 + ceil32(return_data.size) + (32 * mem[_3012 + mem[_3012]]) + 32
                                mem[_3012 + ceil32(return_data.size)] = _3068
                                require _3037 + (32 * _3068) + 32 <= return_data.size
                                s = 0
                                t = _3012 + _3037 + 32
                                u = _3012 + ceil32(return_data.size) + 32
                                while s < _3068:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _1171 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                _4908 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4908] = 30
                                mem[_4908 + 32] = 'SafeMath: subtraction overflow'
                                if 1 > _3068:
                                    _4924 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_4924 + idx + 68] = mem[_4908 + idx + 32]
                                        _1171 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_4924 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4924 + -mem[64] + 100
                                require _3068 - 1 < _3068
                                _4964 = mem[(32 * _3068 - 1) + _3012 + ceil32(return_data.size) + 32]
                                if not mem[(32 * _3068 - 1) + _3012 + ceil32(return_data.size) + 32]:
                                    _5004 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5004] = 26
                                    mem[_5004 + 32] = 'SafeMath: division by zero'
                                    _5061 = mem[64]
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1188 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    _5132 = mem[_1265 + 164]
                                    mem[mem[64] + 164] = mem[_1265 + 164]
                                    s = 0
                                    t = _1265 + 196
                                    u = mem[64] + 196
                                    while s < _5132:
                                        mem[u] = mem[t + 12 len 20]
                                        _1171 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_5061 + 100] = this.address
                                    mem[_5061 + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _5061 + (32 * _5132) + -mem[64] + 192]
                                else:
                                    require mem[(32 * _3068 - 1) + _3012 + ceil32(return_data.size) + 32]
                                    if mem[(32 * _3068 - 1) + _3012 + ceil32(return_data.size) + 32] * slippageFactor / mem[(32 * _3068 - 1) + _3012 + ceil32(return_data.size) + 32] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _5036 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5036] = 26
                                    mem[_5036 + 32] = 'SafeMath: division by zero'
                                    _5092 = mem[64]
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1188 / 2
                                    mem[mem[64] + 36] = _4964 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    _5148 = mem[_1265 + 164]
                                    mem[mem[64] + 164] = mem[_1265 + 164]
                                    s = 0
                                    t = _1265 + 196
                                    u = mem[64] + 196
                                    while s < _5148:
                                        mem[u] = mem[t + 12 len 20]
                                        _1171 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_5092 + 100] = this.address
                                    mem[_5092 + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _5092 + (32 * _5148) + -mem[64] + 192]
                            else:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_1265 + 164] = 2
                                mem[_1265 + 196] = address(_1200)
                                mem[_1265 + 228] = sub_7edd3da5Address
                                mem[64] = _1265 + 324
                                mem[_1265 + 260] = 26
                                mem[_1265 + 292] = 'SafeMath: division by zero'
                                mem[_1265 + 324] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_1265 + 328] = _1188 / 2
                                mem[_1265 + 360] = 64
                                mem[_1265 + 392] = 2
                                s = 0
                                t = _1265 + 196
                                u = _1265 + 424
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _1171 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _1265 + -mem[64] + 484]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3013 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3038 = mem[_3013]
                                require mem[_3013] <= test266151307()
                                require _3013 + mem[_3013] + 31 < _3013 + return_data.size
                                _3069 = mem[_3013 + mem[_3013]]
                                require mem[_3013 + mem[_3013]] <= test266151307()
                                require _3013 + ceil32(return_data.size) + (32 * mem[_3013 + mem[_3013]]) + 32 <= test266151307() and (32 * mem[_3013 + mem[_3013]]) + 32 >= 0
                                mem[64] = _3013 + ceil32(return_data.size) + (32 * mem[_3013 + mem[_3013]]) + 32
                                mem[_3013 + ceil32(return_data.size)] = _3069
                                require _3038 + (32 * _3069) + 32 <= return_data.size
                                s = 0
                                t = _3013 + _3038 + 32
                                u = _3013 + ceil32(return_data.size) + 32
                                while s < _3069:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _1171 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                _4909 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4909] = 30
                                mem[_4909 + 32] = 'SafeMath: subtraction overflow'
                                if 1 > _3069:
                                    _4925 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_4925 + idx + 68] = mem[_4909 + idx + 32]
                                        _1171 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_4925 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4925 + -mem[64] + 100
                                require _3069 - 1 < _3069
                                _4966 = mem[(32 * _3069 - 1) + _3013 + ceil32(return_data.size) + 32]
                                if not mem[(32 * _3069 - 1) + _3013 + ceil32(return_data.size) + 32]:
                                    _5005 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5005] = 26
                                    mem[_5005 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1188 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    _5133 = mem[_1265 + 164]
                                    mem[mem[64] + 164] = mem[_1265 + 164]
                                    s = 0
                                    t = _1265 + 196
                                    u = mem[64] + 196
                                    while s < _5133:
                                        mem[u] = mem[t + 12 len 20]
                                        _1171 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _1188), 0, 160, address(this.address), block.timestamp + sub_1b61e055, mem[mem[64] + 164 len (32 * _5133) + 32]
                                else:
                                    require mem[(32 * _3069 - 1) + _3013 + ceil32(return_data.size) + 32]
                                    if mem[(32 * _3069 - 1) + _3013 + ceil32(return_data.size) + 32] * slippageFactor / mem[(32 * _3069 - 1) + _3013 + ceil32(return_data.size) + 32] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _5037 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5037] = 26
                                    mem[_5037 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1188 / 2
                                    mem[mem[64] + 36] = _4966 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    _5149 = mem[_1265 + 164]
                                    mem[mem[64] + 164] = mem[_1265 + 164]
                                    s = 0
                                    t = _1265 + 196
                                    u = mem[64] + 196
                                    while s < _5149:
                                        mem[u] = mem[t + 12 len 20]
                                        _1171 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _1188), _4966 * slippageFactor / 1000, 160, address(this.address), block.timestamp + sub_1b61e055, mem[mem[64] + 164 len (32 * _5149) + 32]
                    else:
                        mem[_1265 + _1361 + 164] = 0
                        call address(_1200).mem[_1265 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_1265 + 168 len _1361 - 4]
                        if return_data.size:
                            mem[_1265 + 164] = return_data.size
                            mem[_1265 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1265 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1265 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_1265 + ceil32(return_data.size) + idx + 233] = mem[_1265 + idx + 132]
                                    _1171 = mem[ceil32(return_data.size) + 96]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1265 + ceil32(return_data.size) + 233]
                            if return_data.size <= 0:
                                mem[_1265 + ceil32(return_data.size) + 165] = 2
                                mem[_1265 + ceil32(return_data.size) + 197] = address(_1200)
                                mem[_1265 + ceil32(return_data.size) + 229] = sub_7edd3da5Address
                                mem[_1265 + ceil32(return_data.size) + 261] = 26
                                mem[_1265 + ceil32(return_data.size) + 293] = 'SafeMath: division by zero'
                                mem[_1265 + ceil32(return_data.size) + 325] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_1265 + ceil32(return_data.size) + 329] = _1188 / 2
                                mem[_1265 + ceil32(return_data.size) + 361] = 64
                                mem[_1265 + ceil32(return_data.size) + 393] = 2
                                s = 0
                                t = _1265 + ceil32(return_data.size) + 197
                                u = _1265 + ceil32(return_data.size) + 425
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _1171 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, _1188), Array(len=2, data=mem[_1265 + ceil32(return_data.size) + 425 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1265 + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _1265 + ceil32(return_data.size) + ceil32(return_data.size) + 325
                                require return_data.size >= 32
                                _3046 = mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32
                                require mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 <= test266151307()
                                require _1265 + ceil32(return_data.size) + mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 + 356 < _1265 + ceil32(return_data.size) + return_data.size + 325
                                _3074 = mem[_1265 + ceil32(return_data.size) + mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 + 325]
                                require mem[_1265 + ceil32(return_data.size) + mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 + 325] <= test266151307()
                                require _1265 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1265 + ceil32(return_data.size) + mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 + 325]) + 357 <= test266151307() and (32 * mem[_1265 + ceil32(return_data.size) + mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 + 325]) + 32 >= 0
                                mem[64] = _1265 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1265 + ceil32(return_data.size) + mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 + 325]) + 357
                                mem[_1265 + ceil32(return_data.size) + ceil32(return_data.size) + 325] = mem[_1265 + ceil32(return_data.size) + mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 + 325]
                                require _3046 + (32 * _3074) + 32 <= return_data.size
                                s = 0
                                t = _1265 + ceil32(return_data.size) + _3046 + 357
                                u = _1265 + ceil32(return_data.size) + ceil32(return_data.size) + 357
                                while s < _3074:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _1171 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                _4914 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4914] = 30
                                mem[_4914 + 32] = 'SafeMath: subtraction overflow'
                                if 1 > _3074:
                                    _4930 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_4930 + idx + 68] = mem[_4914 + idx + 32]
                                        _1171 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_4930 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4930 + -mem[64] + 100
                                require _3074 - 1 < _3074
                                _4976 = mem[(32 * _3074 - 1) + _1265 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                if not mem[(32 * _3074 - 1) + _1265 + ceil32(return_data.size) + ceil32(return_data.size) + 357]:
                                    _5010 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5010] = 26
                                    mem[_5010 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1188 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _1265 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _1171 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _1188), 0, 160, address(this.address), block.timestamp + sub_1b61e055, 2, mem[mem[64] + 196 len 64]
                                else:
                                    require mem[(32 * _3074 - 1) + _1265 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                    if mem[(32 * _3074 - 1) + _1265 + ceil32(return_data.size) + ceil32(return_data.size) + 357] * slippageFactor / mem[(32 * _3074 - 1) + _1265 + ceil32(return_data.size) + ceil32(return_data.size) + 357] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _5042 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5042] = 26
                                    mem[_5042 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1188 / 2
                                    mem[mem[64] + 36] = _4976 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _1265 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _1171 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _1188), _4976 * slippageFactor / 1000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + sub_1b61e055
                            else:
                                require return_data.size >= 32
                                require mem[_1265 + 196] == bool(mem[_1265 + 196])
                                if not mem[_1265 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_1265 + ceil32(return_data.size) + 165] = 2
                                mem[_1265 + ceil32(return_data.size) + 197] = address(_1200)
                                mem[_1265 + ceil32(return_data.size) + 229] = sub_7edd3da5Address
                                mem[_1265 + ceil32(return_data.size) + 261] = 26
                                mem[_1265 + ceil32(return_data.size) + 293] = 'SafeMath: division by zero'
                                mem[_1265 + ceil32(return_data.size) + 325] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_1265 + ceil32(return_data.size) + 329] = _1188 / 2
                                mem[_1265 + ceil32(return_data.size) + 361] = 64
                                mem[_1265 + ceil32(return_data.size) + 393] = 2
                                s = 0
                                t = _1265 + ceil32(return_data.size) + 197
                                u = _1265 + ceil32(return_data.size) + 425
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _1171 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, _1188), Array(len=2, data=mem[_1265 + ceil32(return_data.size) + 425 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1265 + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _1265 + ceil32(return_data.size) + ceil32(return_data.size) + 325
                                require return_data.size >= 32
                                _3047 = mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32
                                require mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 <= test266151307()
                                require _1265 + ceil32(return_data.size) + mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 + 356 < _1265 + ceil32(return_data.size) + return_data.size + 325
                                _3075 = mem[_1265 + ceil32(return_data.size) + mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 + 325]
                                require mem[_1265 + ceil32(return_data.size) + mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 + 325] <= test266151307()
                                require _1265 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1265 + ceil32(return_data.size) + mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 + 325]) + 357 <= test266151307() and (32 * mem[_1265 + ceil32(return_data.size) + mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 + 325]) + 32 >= 0
                                mem[64] = _1265 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1265 + ceil32(return_data.size) + mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 + 325]) + 357
                                mem[_1265 + ceil32(return_data.size) + ceil32(return_data.size) + 325] = mem[_1265 + ceil32(return_data.size) + mem[_1265 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1188) >> 32 + 325]
                                require _3047 + (32 * _3075) + 32 <= return_data.size
                                s = 0
                                t = _1265 + ceil32(return_data.size) + _3047 + 357
                                u = _1265 + ceil32(return_data.size) + ceil32(return_data.size) + 357
                                while s < _3075:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _1171 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                _4915 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4915] = 30
                                mem[_4915 + 32] = 'SafeMath: subtraction overflow'
                                if 1 > _3075:
                                    _4931 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_4931 + idx + 68] = mem[_4915 + idx + 32]
                                        _1171 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_4931 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4931 + -mem[64] + 100
                                require _3075 - 1 < _3075
                                _4978 = mem[(32 * _3075 - 1) + _1265 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                if not mem[(32 * _3075 - 1) + _1265 + ceil32(return_data.size) + ceil32(return_data.size) + 357]:
                                    _5011 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5011] = 26
                                    mem[_5011 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1188 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _1265 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _1171 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _1188), 0, 160, address(this.address), block.timestamp + sub_1b61e055, 2, mem[mem[64] + 196 len 64]
                                else:
                                    require mem[(32 * _3075 - 1) + _1265 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                                    if mem[(32 * _3075 - 1) + _1265 + ceil32(return_data.size) + ceil32(return_data.size) + 357] * slippageFactor / mem[(32 * _3075 - 1) + _1265 + ceil32(return_data.size) + ceil32(return_data.size) + 357] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _5043 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5043] = 26
                                    mem[_5043 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1188 / 2
                                    mem[mem[64] + 36] = _4978 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    s = 0
                                    t = _1265 + ceil32(return_data.size) + 197
                                    u = mem[64] + 196
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _1171 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _1188), _4978 * slippageFactor / 1000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + sub_1b61e055
                        else:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1265 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1265 + 168] = 32
                                mem[_1265 + 200] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_1265 + idx + 232] = mem[_1265 + idx + 132]
                                    _1171 = mem[ceil32(return_data.size) + 96]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1265 + 232]
                            if mem[96] <= 0:
                                mem[_1265 + 164] = 2
                                mem[_1265 + 196] = address(_1200)
                                mem[_1265 + 228] = sub_7edd3da5Address
                                mem[64] = _1265 + 324
                                mem[_1265 + 260] = 26
                                mem[_1265 + 292] = 'SafeMath: division by zero'
                                mem[_1265 + 324] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_1265 + 328] = _1188 / 2
                                mem[_1265 + 360] = 64
                                mem[_1265 + 392] = 2
                                s = 0
                                t = _1265 + 196
                                u = _1265 + 424
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _1171 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _1265 + -mem[64] + 484]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3016 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3043 = mem[_3016]
                                require mem[_3016] <= test266151307()
                                require _3016 + mem[_3016] + 31 < _3016 + return_data.size
                                _3072 = mem[_3016 + mem[_3016]]
                                require mem[_3016 + mem[_3016]] <= test266151307()
                                require _3016 + ceil32(return_data.size) + (32 * mem[_3016 + mem[_3016]]) + 32 <= test266151307() and (32 * mem[_3016 + mem[_3016]]) + 32 >= 0
                                mem[64] = _3016 + ceil32(return_data.size) + (32 * mem[_3016 + mem[_3016]]) + 32
                                mem[_3016 + ceil32(return_data.size)] = _3072
                                require _3043 + (32 * _3072) + 32 <= return_data.size
                                s = 0
                                t = _3016 + _3043 + 32
                                u = _3016 + ceil32(return_data.size) + 32
                                while s < _3072:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _1171 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                _4912 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4912] = 30
                                mem[_4912 + 32] = 'SafeMath: subtraction overflow'
                                if 1 > _3072:
                                    _4928 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_4928 + idx + 68] = mem[_4912 + idx + 32]
                                        _1171 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_4928 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4928 + -mem[64] + 100
                                require _3072 - 1 < _3072
                                _4972 = mem[(32 * _3072 - 1) + _3016 + ceil32(return_data.size) + 32]
                                if not mem[(32 * _3072 - 1) + _3016 + ceil32(return_data.size) + 32]:
                                    _5008 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5008] = 26
                                    mem[_5008 + 32] = 'SafeMath: division by zero'
                                    _5069 = mem[64]
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1188 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    _5136 = mem[_1265 + 164]
                                    mem[mem[64] + 164] = mem[_1265 + 164]
                                    s = 0
                                    t = _1265 + 196
                                    u = mem[64] + 196
                                    while s < _5136:
                                        mem[u] = mem[t + 12 len 20]
                                        _1171 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_5069 + 100] = this.address
                                    mem[_5069 + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _5069 + (32 * _5136) + -mem[64] + 192]
                                else:
                                    require mem[(32 * _3072 - 1) + _3016 + ceil32(return_data.size) + 32]
                                    if mem[(32 * _3072 - 1) + _3016 + ceil32(return_data.size) + 32] * slippageFactor / mem[(32 * _3072 - 1) + _3016 + ceil32(return_data.size) + 32] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _5040 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5040] = 26
                                    mem[_5040 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1188 / 2
                                    mem[mem[64] + 36] = _4972 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    _5152 = mem[_1265 + 164]
                                    mem[mem[64] + 164] = mem[_1265 + 164]
                                    s = 0
                                    t = _1265 + 196
                                    u = mem[64] + 196
                                    while s < _5152:
                                        mem[u] = mem[t + 12 len 20]
                                        _1171 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _1188), _4972 * slippageFactor / 1000, 160, address(this.address), block.timestamp + sub_1b61e055, mem[mem[64] + 164 len (32 * _5152) + 32]
                            else:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_1265 + 164] = 2
                                mem[_1265 + 196] = address(_1200)
                                mem[_1265 + 228] = sub_7edd3da5Address
                                mem[64] = _1265 + 324
                                mem[_1265 + 260] = 26
                                mem[_1265 + 292] = 'SafeMath: division by zero'
                                mem[_1265 + 324] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_1265 + 328] = _1188 / 2
                                mem[_1265 + 360] = 64
                                mem[_1265 + 392] = 2
                                s = 0
                                t = _1265 + 196
                                u = _1265 + 424
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _1171 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniRouterAddress)
                                staticcall uniRouterAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _1265 + -mem[64] + 484]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3017 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3044 = mem[_3017]
                                require mem[_3017] <= test266151307()
                                require _3017 + mem[_3017] + 31 < _3017 + return_data.size
                                _3073 = mem[_3017 + mem[_3017]]
                                require mem[_3017 + mem[_3017]] <= test266151307()
                                require _3017 + ceil32(return_data.size) + (32 * mem[_3017 + mem[_3017]]) + 32 <= test266151307() and (32 * mem[_3017 + mem[_3017]]) + 32 >= 0
                                mem[64] = _3017 + ceil32(return_data.size) + (32 * mem[_3017 + mem[_3017]]) + 32
                                mem[_3017 + ceil32(return_data.size)] = _3073
                                require _3044 + (32 * _3073) + 32 <= return_data.size
                                s = 0
                                t = _3017 + _3044 + 32
                                u = _3017 + ceil32(return_data.size) + 32
                                while s < _3073:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _1171 = mem[ceil32(return_data.size) + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                _4913 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4913] = 30
                                mem[_4913 + 32] = 'SafeMath: subtraction overflow'
                                if 1 > _3073:
                                    _4929 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_4929 + idx + 68] = mem[_4913 + idx + 32]
                                        _1171 = mem[ceil32(return_data.size) + 96]
                                        idx = idx + 32
                                        continue 
                                    mem[_4929 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4929 + -mem[64] + 100
                                require _3073 - 1 < _3073
                                _4974 = mem[(32 * _3073 - 1) + _3017 + ceil32(return_data.size) + 32]
                                if not mem[(32 * _3073 - 1) + _3017 + ceil32(return_data.size) + 32]:
                                    _5009 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5009] = 26
                                    mem[_5009 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1188 / 2
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    _5137 = mem[_1265 + 164]
                                    mem[mem[64] + 164] = mem[_1265 + 164]
                                    s = 0
                                    t = _1265 + 196
                                    u = mem[64] + 196
                                    while s < _5137:
                                        mem[u] = mem[t + 12 len 20]
                                        _1171 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, _1188), 0, 160, address(this.address), block.timestamp + sub_1b61e055, mem[mem[64] + 164 len (32 * _5137) + 32]
                                else:
                                    require mem[(32 * _3073 - 1) + _3017 + ceil32(return_data.size) + 32]
                                    if mem[(32 * _3073 - 1) + _3017 + ceil32(return_data.size) + 32] * slippageFactor / mem[(32 * _3073 - 1) + _3017 + ceil32(return_data.size) + 32] != slippageFactor:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _5041 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5041] = 26
                                    mem[_5041 + 32] = 'SafeMath: division by zero'
                                    _5102 = mem[64]
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _1188 / 2
                                    mem[mem[64] + 36] = _4974 * slippageFactor / 1000
                                    mem[mem[64] + 68] = 160
                                    _5153 = mem[_1265 + 164]
                                    mem[mem[64] + 164] = mem[_1265 + 164]
                                    s = 0
                                    t = _1265 + 196
                                    u = mem[64] + 196
                                    while s < _5153:
                                        mem[u] = mem[t + 12 len 20]
                                        _1171 = mem[ceil32(return_data.size) + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_5102 + 100] = this.address
                                    mem[_5102 + 132] = block.timestamp + sub_1b61e055
                                    require ext_code.size(uniRouterAddress)
                                    call uniRouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _5102 + (32 * _5153) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        _1171 = mem[ceil32(return_data.size) + 96]
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
    _1184 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1185 = mem[_1184]
    require mem[_1184] == mem[_1184]
    if mem[_1184] <= 0:
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
        _1201 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1202 = mem[_1201]
        require mem[_1201] == mem[_1201]
        if wantLockedTotal + mem[_1201] < wantLockedTotal:
            revert with 0, 'SafeMath: addition overflow'
        wantLockedTotal += mem[_1201]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = sub_1172cd2bAddress
        require ext_code.size(wantAddress)
        staticcall wantAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), sub_1172cd2bAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1215 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1220 = mem[_1215]
        require mem[_1215] == mem[_1215]
        if mem[_1215] + _1202 < mem[_1215]:
            revert with 0, 'SafeMath: addition overflow'
        _1227 = mem[64]
        mem[mem[64] + 36] = sub_1172cd2bAddress
        mem[mem[64] + 68] = _1220 + _1202
        _1240 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
        mem[64] = mem[64] + 164
        mem[_1227 + 100] = 32
        mem[_1227 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(wantAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        _1283 = mem[_1240]
        mem[_1227 + 164 len ceil32(mem[_1240])] = mem[_1240 + 32 len ceil32(mem[_1240])]
        if ceil32(_1283) > _1283:
            mem[_1227 + _1283 + 164] = 0
        call wantAddress with:
             gas gas_remaining wei
            args mem[_1227 + 168 len _1283 - 4]
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
            mem[_1227 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[_1227 + 196] == bool(mem[_1227 + 196])
                if not mem[_1227 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(sub_1172cd2bAddress)
        call sub_1172cd2bAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
             gas gas_remaining wei
            args wantAddress, _1202, address(this.address), 0
    else:
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = uniRouterAddress
        require ext_code.size(sub_7edd3da5Address)
        staticcall sub_7edd3da5Address.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), uniRouterAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1204 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1205 = mem[_1204]
        require mem[_1204] == mem[_1204]
        if mem[_1204] + _1185 < mem[_1204]:
            revert with 0, 'SafeMath: addition overflow'
        _1211 = mem[64]
        mem[mem[64] + 36] = uniRouterAddress
        mem[mem[64] + 68] = _1205 + _1185
        _1216 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
        mem[64] = mem[64] + 164
        mem[_1211 + 100] = 32
        mem[_1211 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(sub_7edd3da5Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        _1224 = mem[_1216]
        mem[_1211 + 164 len ceil32(mem[_1216])] = mem[_1216 + 32 len ceil32(mem[_1216])]
        if ceil32(_1224) <= _1224:
            call sub_7edd3da5Address with:
                 gas gas_remaining wei
                args mem[_1211 + 168 len _1224 - 4]
            if return_data.size:
                mem[_1211 + 164] = return_data.size
                mem[_1211 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    mem[_1211 + ceil32(return_data.size) + 165] = 2
                    mem[_1211 + ceil32(return_data.size) + 197] = sub_7edd3da5Address
                    mem[_1211 + ceil32(return_data.size) + 229] = wantAddress
                    mem[_1211 + ceil32(return_data.size) + 261] = 26
                    mem[_1211 + ceil32(return_data.size) + 293] = 'SafeMath: division by zero'
                    mem[_1211 + ceil32(return_data.size) + 325] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1211 + ceil32(return_data.size) + 329] = _1185 / 2
                    mem[_1211 + ceil32(return_data.size) + 361] = 64
                    mem[_1211 + ceil32(return_data.size) + 393] = 2
                    idx = 0
                    s = _1211 + ceil32(return_data.size) + 197
                    t = _1211 + ceil32(return_data.size) + 425
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniRouterAddress)
                    staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, _1185), Array(len=2, data=mem[_1211 + ceil32(return_data.size) + 425 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1211 + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1211 + ceil32(return_data.size) + ceil32(return_data.size) + 325
                    require return_data.size >= 32
                    _3028 = mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32
                    require mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 <= test266151307()
                    require _1211 + ceil32(return_data.size) + mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 + 356 < _1211 + ceil32(return_data.size) + return_data.size + 325
                    _3062 = mem[_1211 + ceil32(return_data.size) + mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 + 325]
                    require mem[_1211 + ceil32(return_data.size) + mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 + 325] <= test266151307()
                    require _1211 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1211 + ceil32(return_data.size) + mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 + 325]) + 357 <= test266151307() and (32 * mem[_1211 + ceil32(return_data.size) + mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 + 325]) + 32 >= 0
                    mem[64] = _1211 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1211 + ceil32(return_data.size) + mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 + 325]) + 357
                    mem[_1211 + ceil32(return_data.size) + ceil32(return_data.size) + 325] = mem[_1211 + ceil32(return_data.size) + mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 + 325]
                    require _3028 + (32 * _3062) + 32 <= return_data.size
                    idx = 0
                    s = _1211 + ceil32(return_data.size) + _3028 + 357
                    t = _1211 + ceil32(return_data.size) + ceil32(return_data.size) + 357
                    while idx < _3062:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _4902 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4902] = 30
                    mem[_4902 + 32] = 'SafeMath: subtraction overflow'
                    if 1 > _3062:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require _3062 - 1 < _3062
                    _4952 = mem[(32 * _3062 - 1) + _1211 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                    if not mem[(32 * _3062 - 1) + _1211 + ceil32(return_data.size) + ceil32(return_data.size) + 357]:
                        _4998 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4998] = 26
                        mem[_4998 + 32] = 'SafeMath: division by zero'
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1185 / 2
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = _1211 + ceil32(return_data.size) + 197
                        t = mem[64] + 196
                        while idx < 2:
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
                            args Mask(255, 1, _1185), 0, 160, address(this.address), block.timestamp + sub_1b61e055, 2, mem[mem[64] + 196 len 64]
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
                        _6889 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6905 = mem[_6889]
                        require mem[_6889] == mem[_6889]
                        if wantLockedTotal + mem[_6889] < wantLockedTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        wantLockedTotal += mem[_6889]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), sub_1172cd2bAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6985 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7001 = mem[_6985]
                        require mem[_6985] == mem[_6985]
                        if mem[_6985] + _6905 < mem[_6985]:
                            revert with 0, 'SafeMath: addition overflow'
                        _7033 = mem[64]
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        mem[mem[64] + 68] = _7001 + _6905
                        _7070 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_7033 + 100] = 32
                        mem[_7033 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _7166 = mem[_7070]
                        mem[_7033 + 164 len ceil32(mem[_7070])] = mem[_7070 + 32 len ceil32(mem[_7070])]
                        if ceil32(_7166) > _7166:
                            mem[_7033 + _7166 + 164] = 0
                        call wantAddress with:
                             gas gas_remaining wei
                            args mem[_7033 + 168 len _7166 - 4]
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
                            mem[_7033 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[_7033 + 196] == bool(mem[_7033 + 196])
                                if not mem[_7033 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(sub_1172cd2bAddress)
                        call sub_1172cd2bAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, _6905, address(this.address), 0
                    else:
                        require mem[(32 * _3062 - 1) + _1211 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                        if mem[(32 * _3062 - 1) + _1211 + ceil32(return_data.size) + ceil32(return_data.size) + 357] * slippageFactor / mem[(32 * _3062 - 1) + _1211 + ceil32(return_data.size) + ceil32(return_data.size) + 357] != slippageFactor:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _5030 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5030] = 26
                        mem[_5030 + 32] = 'SafeMath: division by zero'
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1185 / 2
                        mem[mem[64] + 36] = _4952 * slippageFactor / 1000
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = _1211 + ceil32(return_data.size) + 197
                        t = mem[64] + 196
                        while idx < 2:
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
                            args Mask(255, 1, _1185), _4952 * slippageFactor / 1000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + sub_1b61e055
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
                        _6888 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6904 = mem[_6888]
                        require mem[_6888] == mem[_6888]
                        if wantLockedTotal + mem[_6888] < wantLockedTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        wantLockedTotal += mem[_6888]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), sub_1172cd2bAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6984 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7000 = mem[_6984]
                        require mem[_6984] == mem[_6984]
                        if mem[_6984] + _6904 < mem[_6984]:
                            revert with 0, 'SafeMath: addition overflow'
                        _7032 = mem[64]
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        mem[mem[64] + 68] = _7000 + _6904
                        _7068 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_7032 + 100] = 32
                        mem[_7032 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _7164 = mem[_7068]
                        mem[_7032 + 164 len ceil32(mem[_7068])] = mem[_7068 + 32 len ceil32(mem[_7068])]
                        if ceil32(_7164) > _7164:
                            mem[_7032 + _7164 + 164] = 0
                        call wantAddress with:
                             gas gas_remaining wei
                            args mem[_7032 + 168 len _7164 - 4]
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
                            mem[_7032 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[_7032 + 196] == bool(mem[_7032 + 196])
                                if not mem[_7032 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(sub_1172cd2bAddress)
                        call sub_1172cd2bAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, _6904, address(this.address), 0
                else:
                    require return_data.size >= 32
                    require mem[_1211 + 196] == bool(mem[_1211 + 196])
                    if not mem[_1211 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_1211 + ceil32(return_data.size) + 165] = 2
                    mem[_1211 + ceil32(return_data.size) + 197] = sub_7edd3da5Address
                    mem[_1211 + ceil32(return_data.size) + 229] = wantAddress
                    mem[_1211 + ceil32(return_data.size) + 261] = 26
                    mem[_1211 + ceil32(return_data.size) + 293] = 'SafeMath: division by zero'
                    mem[_1211 + ceil32(return_data.size) + 325] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1211 + ceil32(return_data.size) + 329] = _1185 / 2
                    mem[_1211 + ceil32(return_data.size) + 361] = 64
                    mem[_1211 + ceil32(return_data.size) + 393] = 2
                    idx = 0
                    s = _1211 + ceil32(return_data.size) + 197
                    t = _1211 + ceil32(return_data.size) + 425
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniRouterAddress)
                    staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, _1185), Array(len=2, data=mem[_1211 + ceil32(return_data.size) + 425 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1211 + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1211 + ceil32(return_data.size) + ceil32(return_data.size) + 325
                    require return_data.size >= 32
                    _3029 = mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32
                    require mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 <= test266151307()
                    require _1211 + ceil32(return_data.size) + mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 + 356 < _1211 + ceil32(return_data.size) + return_data.size + 325
                    _3063 = mem[_1211 + ceil32(return_data.size) + mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 + 325]
                    require mem[_1211 + ceil32(return_data.size) + mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 + 325] <= test266151307()
                    require _1211 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1211 + ceil32(return_data.size) + mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 + 325]) + 357 <= test266151307() and (32 * mem[_1211 + ceil32(return_data.size) + mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 + 325]) + 32 >= 0
                    mem[64] = _1211 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1211 + ceil32(return_data.size) + mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 + 325]) + 357
                    mem[_1211 + ceil32(return_data.size) + ceil32(return_data.size) + 325] = mem[_1211 + ceil32(return_data.size) + mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 + 325]
                    require _3029 + (32 * _3063) + 32 <= return_data.size
                    idx = 0
                    s = _1211 + ceil32(return_data.size) + _3029 + 357
                    t = _1211 + ceil32(return_data.size) + ceil32(return_data.size) + 357
                    while idx < _3063:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _4903 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4903] = 30
                    mem[_4903 + 32] = 'SafeMath: subtraction overflow'
                    if 1 > _3063:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require _3063 - 1 < _3063
                    _4954 = mem[(32 * _3063 - 1) + _1211 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                    if not mem[(32 * _3063 - 1) + _1211 + ceil32(return_data.size) + ceil32(return_data.size) + 357]:
                        _4999 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4999] = 26
                        mem[_4999 + 32] = 'SafeMath: division by zero'
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1185 / 2
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = _1211 + ceil32(return_data.size) + 197
                        t = mem[64] + 196
                        while idx < 2:
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
                            args Mask(255, 1, _1185), 0, 160, address(this.address), block.timestamp + sub_1b61e055, 2, mem[mem[64] + 196 len 64]
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
                        _6891 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6907 = mem[_6891]
                        require mem[_6891] == mem[_6891]
                        if wantLockedTotal + mem[_6891] < wantLockedTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        wantLockedTotal += mem[_6891]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), sub_1172cd2bAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6987 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7003 = mem[_6987]
                        require mem[_6987] == mem[_6987]
                        if mem[_6987] + _6907 < mem[_6987]:
                            revert with 0, 'SafeMath: addition overflow'
                        _7035 = mem[64]
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        mem[mem[64] + 68] = _7003 + _6907
                        _7074 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_7035 + 100] = 32
                        mem[_7035 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _7170 = mem[_7074]
                        mem[_7035 + 164 len ceil32(mem[_7074])] = mem[_7074 + 32 len ceil32(mem[_7074])]
                        if ceil32(_7170) > _7170:
                            mem[_7035 + _7170 + 164] = 0
                        call wantAddress with:
                             gas gas_remaining wei
                            args mem[_7035 + 168 len _7170 - 4]
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
                            mem[_7035 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[_7035 + 196] == bool(mem[_7035 + 196])
                                if not mem[_7035 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(sub_1172cd2bAddress)
                        call sub_1172cd2bAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, _6907, address(this.address), 0
                    else:
                        require mem[(32 * _3063 - 1) + _1211 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                        if mem[(32 * _3063 - 1) + _1211 + ceil32(return_data.size) + ceil32(return_data.size) + 357] * slippageFactor / mem[(32 * _3063 - 1) + _1211 + ceil32(return_data.size) + ceil32(return_data.size) + 357] != slippageFactor:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _5031 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5031] = 26
                        mem[_5031 + 32] = 'SafeMath: division by zero'
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1185 / 2
                        mem[mem[64] + 36] = _4954 * slippageFactor / 1000
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = _1211 + ceil32(return_data.size) + 197
                        t = mem[64] + 196
                        while idx < 2:
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
                            args Mask(255, 1, _1185), _4954 * slippageFactor / 1000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + sub_1b61e055
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
                        _6890 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6906 = mem[_6890]
                        require mem[_6890] == mem[_6890]
                        if wantLockedTotal + mem[_6890] < wantLockedTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        wantLockedTotal += mem[_6890]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), sub_1172cd2bAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6986 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7002 = mem[_6986]
                        require mem[_6986] == mem[_6986]
                        if mem[_6986] + _6906 < mem[_6986]:
                            revert with 0, 'SafeMath: addition overflow'
                        _7034 = mem[64]
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        mem[mem[64] + 68] = _7002 + _6906
                        _7072 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_7034 + 100] = 32
                        mem[_7034 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _7168 = mem[_7072]
                        mem[_7034 + 164 len ceil32(mem[_7072])] = mem[_7072 + 32 len ceil32(mem[_7072])]
                        if ceil32(_7168) > _7168:
                            mem[_7034 + _7168 + 164] = 0
                        call wantAddress with:
                             gas gas_remaining wei
                            args mem[_7034 + 168 len _7168 - 4]
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
                            mem[_7034 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[_7034 + 196] == bool(mem[_7034 + 196])
                                if not mem[_7034 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(sub_1172cd2bAddress)
                        call sub_1172cd2bAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, _6906, address(this.address), 0
            else:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96] <= 0:
                    mem[_1211 + 164] = 2
                    mem[_1211 + 196] = sub_7edd3da5Address
                    mem[_1211 + 228] = wantAddress
                    mem[64] = _1211 + 324
                    mem[_1211 + 260] = 26
                    mem[_1211 + 292] = 'SafeMath: division by zero'
                    mem[_1211 + 324] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1211 + 328] = _1185 / 2
                    mem[_1211 + 360] = 64
                    mem[_1211 + 392] = 2
                    idx = 0
                    s = _1211 + 196
                    t = _1211 + 424
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniRouterAddress)
                    staticcall uniRouterAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1211 + -mem[64] + 484]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3004 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3025 = mem[_3004]
                    require mem[_3004] <= test266151307()
                    require _3004 + mem[_3004] + 31 < _3004 + return_data.size
                    _3060 = mem[_3004 + mem[_3004]]
                    require mem[_3004 + mem[_3004]] <= test266151307()
                    require _3004 + ceil32(return_data.size) + (32 * mem[_3004 + mem[_3004]]) + 32 <= test266151307() and (32 * mem[_3004 + mem[_3004]]) + 32 >= 0
                    mem[64] = _3004 + ceil32(return_data.size) + (32 * mem[_3004 + mem[_3004]]) + 32
                    mem[_3004 + ceil32(return_data.size)] = _3060
                    require _3025 + (32 * _3060) + 32 <= return_data.size
                    idx = 0
                    s = _3004 + _3025 + 32
                    t = _3004 + ceil32(return_data.size) + 32
                    while idx < _3060:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _4900 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4900] = 30
                    mem[_4900 + 32] = 'SafeMath: subtraction overflow'
                    if 1 > _3060:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require _3060 - 1 < _3060
                    _4948 = mem[(32 * _3060 - 1) + _3004 + ceil32(return_data.size) + 32]
                    if not mem[(32 * _3060 - 1) + _3004 + ceil32(return_data.size) + 32]:
                        _4996 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4996] = 26
                        mem[_4996 + 32] = 'SafeMath: division by zero'
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1185 / 2
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _5124 = mem[_1211 + 164]
                        mem[mem[64] + 164] = mem[_1211 + 164]
                        idx = 0
                        s = _1211 + 196
                        t = mem[64] + 196
                        while idx < _5124:
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
                            args Mask(255, 1, _1185), 0, 160, address(this.address), block.timestamp + sub_1b61e055, mem[mem[64] + 164 len (32 * _5124) + 32]
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
                        _6885 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6901 = mem[_6885]
                        require mem[_6885] == mem[_6885]
                        if wantLockedTotal + mem[_6885] < wantLockedTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        wantLockedTotal += mem[_6885]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), sub_1172cd2bAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6981 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6997 = mem[_6981]
                        require mem[_6981] == mem[_6981]
                        if mem[_6981] + _6901 < mem[_6981]:
                            revert with 0, 'SafeMath: addition overflow'
                        _7029 = mem[64]
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        mem[mem[64] + 68] = _6997 + _6901
                        _7062 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_7029 + 100] = 32
                        mem[_7029 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _7158 = mem[_7062]
                        mem[_7029 + 164 len ceil32(mem[_7062])] = mem[_7062 + 32 len ceil32(mem[_7062])]
                        if ceil32(_7158) > _7158:
                            mem[_7029 + _7158 + 164] = 0
                        call wantAddress with:
                             gas gas_remaining wei
                            args mem[_7029 + 168 len _7158 - 4]
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
                            mem[_7029 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[_7029 + 196] == bool(mem[_7029 + 196])
                                if not mem[_7029 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(sub_1172cd2bAddress)
                        call sub_1172cd2bAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, _6901, address(this.address), 0
                    else:
                        require mem[(32 * _3060 - 1) + _3004 + ceil32(return_data.size) + 32]
                        if mem[(32 * _3060 - 1) + _3004 + ceil32(return_data.size) + 32] * slippageFactor / mem[(32 * _3060 - 1) + _3004 + ceil32(return_data.size) + 32] != slippageFactor:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _5028 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5028] = 26
                        mem[_5028 + 32] = 'SafeMath: division by zero'
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1185 / 2
                        mem[mem[64] + 36] = _4948 * slippageFactor / 1000
                        mem[mem[64] + 68] = 160
                        _5140 = mem[_1211 + 164]
                        mem[mem[64] + 164] = mem[_1211 + 164]
                        idx = 0
                        s = _1211 + 196
                        t = mem[64] + 196
                        while idx < _5140:
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
                            args Mask(255, 1, _1185), _4948 * slippageFactor / 1000, 160, address(this.address), block.timestamp + sub_1b61e055, mem[mem[64] + 164 len (32 * _5140) + 32]
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
                        _6884 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6900 = mem[_6884]
                        require mem[_6884] == mem[_6884]
                        if wantLockedTotal + mem[_6884] < wantLockedTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        wantLockedTotal += mem[_6884]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), sub_1172cd2bAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6980 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6996 = mem[_6980]
                        require mem[_6980] == mem[_6980]
                        if mem[_6980] + _6900 < mem[_6980]:
                            revert with 0, 'SafeMath: addition overflow'
                        _7028 = mem[64]
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        mem[mem[64] + 68] = _6996 + _6900
                        _7060 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_7028 + 100] = 32
                        mem[_7028 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _7156 = mem[_7060]
                        mem[_7028 + 164 len ceil32(mem[_7060])] = mem[_7060 + 32 len ceil32(mem[_7060])]
                        if ceil32(_7156) > _7156:
                            mem[_7028 + _7156 + 164] = 0
                        call wantAddress with:
                             gas gas_remaining wei
                            args mem[_7028 + 168 len _7156 - 4]
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
                            mem[_7028 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[_7028 + 196] == bool(mem[_7028 + 196])
                                if not mem[_7028 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(sub_1172cd2bAddress)
                        call sub_1172cd2bAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, _6900, address(this.address), 0
                else:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_1211 + 164] = 2
                    mem[_1211 + 196] = sub_7edd3da5Address
                    mem[_1211 + 228] = wantAddress
                    mem[64] = _1211 + 324
                    mem[_1211 + 260] = 26
                    mem[_1211 + 292] = 'SafeMath: division by zero'
                    mem[_1211 + 324] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1211 + 328] = _1185 / 2
                    mem[_1211 + 360] = 64
                    mem[_1211 + 392] = 2
                    idx = 0
                    s = _1211 + 196
                    t = _1211 + 424
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniRouterAddress)
                    staticcall uniRouterAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1211 + -mem[64] + 484]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3005 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3026 = mem[_3005]
                    require mem[_3005] <= test266151307()
                    require _3005 + mem[_3005] + 31 < _3005 + return_data.size
                    _3061 = mem[_3005 + mem[_3005]]
                    require mem[_3005 + mem[_3005]] <= test266151307()
                    require _3005 + ceil32(return_data.size) + (32 * mem[_3005 + mem[_3005]]) + 32 <= test266151307() and (32 * mem[_3005 + mem[_3005]]) + 32 >= 0
                    mem[64] = _3005 + ceil32(return_data.size) + (32 * mem[_3005 + mem[_3005]]) + 32
                    mem[_3005 + ceil32(return_data.size)] = _3061
                    require _3026 + (32 * _3061) + 32 <= return_data.size
                    idx = 0
                    s = _3005 + _3026 + 32
                    t = _3005 + ceil32(return_data.size) + 32
                    while idx < _3061:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _4901 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4901] = 30
                    mem[_4901 + 32] = 'SafeMath: subtraction overflow'
                    if 1 > _3061:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require _3061 - 1 < _3061
                    _4950 = mem[(32 * _3061 - 1) + _3005 + ceil32(return_data.size) + 32]
                    if not mem[(32 * _3061 - 1) + _3005 + ceil32(return_data.size) + 32]:
                        _4997 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4997] = 26
                        mem[_4997 + 32] = 'SafeMath: division by zero'
                        _5047 = mem[64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1185 / 2
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _5125 = mem[_1211 + 164]
                        mem[mem[64] + 164] = mem[_1211 + 164]
                        idx = 0
                        s = _1211 + 196
                        t = mem[64] + 196
                        while idx < _5125:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5047 + 100] = this.address
                        mem[_5047 + 132] = block.timestamp + sub_1b61e055
                        require ext_code.size(uniRouterAddress)
                        call uniRouterAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _5047 + (32 * _5125) + -mem[64] + 192]
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
                        _6887 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6903 = mem[_6887]
                        require mem[_6887] == mem[_6887]
                        if wantLockedTotal + mem[_6887] < wantLockedTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        wantLockedTotal += mem[_6887]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), sub_1172cd2bAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6983 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6999 = mem[_6983]
                        require mem[_6983] == mem[_6983]
                        if mem[_6983] + _6903 < mem[_6983]:
                            revert with 0, 'SafeMath: addition overflow'
                        _7031 = mem[64]
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        mem[mem[64] + 68] = _6999 + _6903
                        _7066 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_7031 + 100] = 32
                        mem[_7031 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _7162 = mem[_7066]
                        mem[_7031 + 164 len ceil32(mem[_7066])] = mem[_7066 + 32 len ceil32(mem[_7066])]
                        if ceil32(_7162) > _7162:
                            mem[_7031 + _7162 + 164] = 0
                        call wantAddress with:
                             gas gas_remaining wei
                            args mem[_7031 + 168 len _7162 - 4]
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
                            mem[_7031 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[_7031 + 196] == bool(mem[_7031 + 196])
                                if not mem[_7031 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(sub_1172cd2bAddress)
                        call sub_1172cd2bAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, _6903, address(this.address), 0
                    else:
                        require mem[(32 * _3061 - 1) + _3005 + ceil32(return_data.size) + 32]
                        if mem[(32 * _3061 - 1) + _3005 + ceil32(return_data.size) + 32] * slippageFactor / mem[(32 * _3061 - 1) + _3005 + ceil32(return_data.size) + 32] != slippageFactor:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _5029 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5029] = 26
                        mem[_5029 + 32] = 'SafeMath: division by zero'
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1185 / 2
                        mem[mem[64] + 36] = _4950 * slippageFactor / 1000
                        mem[mem[64] + 68] = 160
                        _5141 = mem[_1211 + 164]
                        mem[mem[64] + 164] = mem[_1211 + 164]
                        idx = 0
                        s = _1211 + 196
                        t = mem[64] + 196
                        while idx < _5141:
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
                            args Mask(255, 1, _1185), _4950 * slippageFactor / 1000, 160, address(this.address), block.timestamp + sub_1b61e055, mem[mem[64] + 164 len (32 * _5141) + 32]
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
                        _6886 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6902 = mem[_6886]
                        require mem[_6886] == mem[_6886]
                        if wantLockedTotal + mem[_6886] < wantLockedTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        wantLockedTotal += mem[_6886]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), sub_1172cd2bAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6982 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6998 = mem[_6982]
                        require mem[_6982] == mem[_6982]
                        if mem[_6982] + _6902 < mem[_6982]:
                            revert with 0, 'SafeMath: addition overflow'
                        _7030 = mem[64]
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        mem[mem[64] + 68] = _6998 + _6902
                        _7064 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_7030 + 100] = 32
                        mem[_7030 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _7160 = mem[_7064]
                        mem[_7030 + 164 len ceil32(mem[_7064])] = mem[_7064 + 32 len ceil32(mem[_7064])]
                        if ceil32(_7160) > _7160:
                            mem[_7030 + _7160 + 164] = 0
                        call wantAddress with:
                             gas gas_remaining wei
                            args mem[_7030 + 168 len _7160 - 4]
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
                            mem[_7030 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[_7030 + 196] == bool(mem[_7030 + 196])
                                if not mem[_7030 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(sub_1172cd2bAddress)
                        call sub_1172cd2bAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, _6902, address(this.address), 0
        else:
            mem[_1211 + _1224 + 164] = 0
            call sub_7edd3da5Address with:
                 gas gas_remaining wei
                args mem[_1211 + 168 len _1224 - 4]
            if return_data.size:
                mem[_1211 + 164] = return_data.size
                mem[_1211 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    mem[_1211 + ceil32(return_data.size) + 165] = 2
                    mem[_1211 + ceil32(return_data.size) + 197] = sub_7edd3da5Address
                    mem[_1211 + ceil32(return_data.size) + 229] = wantAddress
                    mem[_1211 + ceil32(return_data.size) + 261] = 26
                    mem[_1211 + ceil32(return_data.size) + 293] = 'SafeMath: division by zero'
                    mem[_1211 + ceil32(return_data.size) + 325] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1211 + ceil32(return_data.size) + 329] = _1185 / 2
                    mem[_1211 + ceil32(return_data.size) + 361] = 64
                    mem[_1211 + ceil32(return_data.size) + 393] = 2
                    idx = 0
                    s = _1211 + ceil32(return_data.size) + 197
                    t = _1211 + ceil32(return_data.size) + 425
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniRouterAddress)
                    staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, _1185), Array(len=2, data=mem[_1211 + ceil32(return_data.size) + 425 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1211 + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1211 + ceil32(return_data.size) + ceil32(return_data.size) + 325
                    require return_data.size >= 32
                    _3034 = mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32
                    require mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 <= test266151307()
                    require _1211 + ceil32(return_data.size) + mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 + 356 < _1211 + ceil32(return_data.size) + return_data.size + 325
                    _3066 = mem[_1211 + ceil32(return_data.size) + mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 + 325]
                    require mem[_1211 + ceil32(return_data.size) + mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 + 325] <= test266151307()
                    require _1211 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1211 + ceil32(return_data.size) + mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 + 325]) + 357 <= test266151307() and (32 * mem[_1211 + ceil32(return_data.size) + mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 + 325]) + 32 >= 0
                    mem[64] = _1211 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1211 + ceil32(return_data.size) + mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 + 325]) + 357
                    mem[_1211 + ceil32(return_data.size) + ceil32(return_data.size) + 325] = mem[_1211 + ceil32(return_data.size) + mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 + 325]
                    require _3034 + (32 * _3066) + 32 <= return_data.size
                    idx = 0
                    s = _1211 + ceil32(return_data.size) + _3034 + 357
                    t = _1211 + ceil32(return_data.size) + ceil32(return_data.size) + 357
                    while idx < _3066:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _4906 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4906] = 30
                    mem[_4906 + 32] = 'SafeMath: subtraction overflow'
                    if 1 > _3066:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require _3066 - 1 < _3066
                    _4960 = mem[(32 * _3066 - 1) + _1211 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                    if not mem[(32 * _3066 - 1) + _1211 + ceil32(return_data.size) + ceil32(return_data.size) + 357]:
                        _5002 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5002] = 26
                        mem[_5002 + 32] = 'SafeMath: division by zero'
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1185 / 2
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = _1211 + ceil32(return_data.size) + 197
                        t = mem[64] + 196
                        while idx < 2:
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
                            args Mask(255, 1, _1185), 0, 160, address(this.address), block.timestamp + sub_1b61e055, 2, mem[mem[64] + 196 len 64]
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
                        _6897 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6913 = mem[_6897]
                        require mem[_6897] == mem[_6897]
                        if wantLockedTotal + mem[_6897] < wantLockedTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        wantLockedTotal += mem[_6897]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), sub_1172cd2bAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6993 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7009 = mem[_6993]
                        require mem[_6993] == mem[_6993]
                        if mem[_6993] + _6913 < mem[_6993]:
                            revert with 0, 'SafeMath: addition overflow'
                        _7041 = mem[64]
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        mem[mem[64] + 68] = _7009 + _6913
                        _7086 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_7041 + 100] = 32
                        mem[_7041 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _7182 = mem[_7086]
                        mem[_7041 + 164 len ceil32(mem[_7086])] = mem[_7086 + 32 len ceil32(mem[_7086])]
                        if ceil32(_7182) > _7182:
                            mem[_7041 + _7182 + 164] = 0
                        call wantAddress with:
                             gas gas_remaining wei
                            args mem[_7041 + 168 len _7182 - 4]
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
                            mem[_7041 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[_7041 + 196] == bool(mem[_7041 + 196])
                                if not mem[_7041 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(sub_1172cd2bAddress)
                        call sub_1172cd2bAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, _6913, address(this.address), 0
                    else:
                        require mem[(32 * _3066 - 1) + _1211 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                        if mem[(32 * _3066 - 1) + _1211 + ceil32(return_data.size) + ceil32(return_data.size) + 357] * slippageFactor / mem[(32 * _3066 - 1) + _1211 + ceil32(return_data.size) + ceil32(return_data.size) + 357] != slippageFactor:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _5034 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5034] = 26
                        mem[_5034 + 32] = 'SafeMath: division by zero'
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1185 / 2
                        mem[mem[64] + 36] = _4960 * slippageFactor / 1000
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = _1211 + ceil32(return_data.size) + 197
                        t = mem[64] + 196
                        while idx < 2:
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
                            args Mask(255, 1, _1185), _4960 * slippageFactor / 1000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + sub_1b61e055
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
                        _6896 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6912 = mem[_6896]
                        require mem[_6896] == mem[_6896]
                        if wantLockedTotal + mem[_6896] < wantLockedTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        wantLockedTotal += mem[_6896]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), sub_1172cd2bAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6992 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7008 = mem[_6992]
                        require mem[_6992] == mem[_6992]
                        if mem[_6992] + _6912 < mem[_6992]:
                            revert with 0, 'SafeMath: addition overflow'
                        _7040 = mem[64]
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        mem[mem[64] + 68] = _7008 + _6912
                        _7084 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_7040 + 100] = 32
                        mem[_7040 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _7180 = mem[_7084]
                        mem[_7040 + 164 len ceil32(mem[_7084])] = mem[_7084 + 32 len ceil32(mem[_7084])]
                        if ceil32(_7180) > _7180:
                            mem[_7040 + _7180 + 164] = 0
                        call wantAddress with:
                             gas gas_remaining wei
                            args mem[_7040 + 168 len _7180 - 4]
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
                            mem[_7040 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[_7040 + 196] == bool(mem[_7040 + 196])
                                if not mem[_7040 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(sub_1172cd2bAddress)
                        call sub_1172cd2bAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, _6912, address(this.address), 0
                else:
                    require return_data.size >= 32
                    require mem[_1211 + 196] == bool(mem[_1211 + 196])
                    if not mem[_1211 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_1211 + ceil32(return_data.size) + 165] = 2
                    mem[_1211 + ceil32(return_data.size) + 197] = sub_7edd3da5Address
                    mem[_1211 + ceil32(return_data.size) + 229] = wantAddress
                    mem[_1211 + ceil32(return_data.size) + 261] = 26
                    mem[_1211 + ceil32(return_data.size) + 293] = 'SafeMath: division by zero'
                    mem[_1211 + ceil32(return_data.size) + 325] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1211 + ceil32(return_data.size) + 329] = _1185 / 2
                    mem[_1211 + ceil32(return_data.size) + 361] = 64
                    mem[_1211 + ceil32(return_data.size) + 393] = 2
                    idx = 0
                    s = _1211 + ceil32(return_data.size) + 197
                    t = _1211 + ceil32(return_data.size) + 425
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniRouterAddress)
                    staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, _1185), Array(len=2, data=mem[_1211 + ceil32(return_data.size) + 425 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1211 + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1211 + ceil32(return_data.size) + ceil32(return_data.size) + 325
                    require return_data.size >= 32
                    _3035 = mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32
                    require mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 <= test266151307()
                    require _1211 + ceil32(return_data.size) + mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 + 356 < _1211 + ceil32(return_data.size) + return_data.size + 325
                    _3067 = mem[_1211 + ceil32(return_data.size) + mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 + 325]
                    require mem[_1211 + ceil32(return_data.size) + mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 + 325] <= test266151307()
                    require _1211 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1211 + ceil32(return_data.size) + mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 + 325]) + 357 <= test266151307() and (32 * mem[_1211 + ceil32(return_data.size) + mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 + 325]) + 32 >= 0
                    mem[64] = _1211 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1211 + ceil32(return_data.size) + mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 + 325]) + 357
                    mem[_1211 + ceil32(return_data.size) + ceil32(return_data.size) + 325] = mem[_1211 + ceil32(return_data.size) + mem[_1211 + ceil32(return_data.size) + 325 len 4], Mask(224, 32, _1185) >> 32 + 325]
                    require _3035 + (32 * _3067) + 32 <= return_data.size
                    idx = 0
                    s = _1211 + ceil32(return_data.size) + _3035 + 357
                    t = _1211 + ceil32(return_data.size) + ceil32(return_data.size) + 357
                    while idx < _3067:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _4907 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4907] = 30
                    mem[_4907 + 32] = 'SafeMath: subtraction overflow'
                    if 1 > _3067:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require _3067 - 1 < _3067
                    _4962 = mem[(32 * _3067 - 1) + _1211 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                    if not mem[(32 * _3067 - 1) + _1211 + ceil32(return_data.size) + ceil32(return_data.size) + 357]:
                        _5003 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5003] = 26
                        mem[_5003 + 32] = 'SafeMath: division by zero'
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1185 / 2
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = _1211 + ceil32(return_data.size) + 197
                        t = mem[64] + 196
                        while idx < 2:
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
                            args Mask(255, 1, _1185), 0, 160, address(this.address), block.timestamp + sub_1b61e055, 2, mem[mem[64] + 196 len 64]
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
                        _6899 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6915 = mem[_6899]
                        require mem[_6899] == mem[_6899]
                        if wantLockedTotal + mem[_6899] < wantLockedTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        wantLockedTotal += mem[_6899]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), sub_1172cd2bAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6995 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7011 = mem[_6995]
                        require mem[_6995] == mem[_6995]
                        if mem[_6995] + _6915 < mem[_6995]:
                            revert with 0, 'SafeMath: addition overflow'
                        _7043 = mem[64]
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        mem[mem[64] + 68] = _7011 + _6915
                        _7090 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_7043 + 100] = 32
                        mem[_7043 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _7186 = mem[_7090]
                        mem[_7043 + 164 len ceil32(mem[_7090])] = mem[_7090 + 32 len ceil32(mem[_7090])]
                        if ceil32(_7186) > _7186:
                            mem[_7043 + _7186 + 164] = 0
                        call wantAddress with:
                             gas gas_remaining wei
                            args mem[_7043 + 168 len _7186 - 4]
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
                            mem[_7043 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[_7043 + 196] == bool(mem[_7043 + 196])
                                if not mem[_7043 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(sub_1172cd2bAddress)
                        call sub_1172cd2bAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, _6915, address(this.address), 0
                    else:
                        require mem[(32 * _3067 - 1) + _1211 + ceil32(return_data.size) + ceil32(return_data.size) + 357]
                        if mem[(32 * _3067 - 1) + _1211 + ceil32(return_data.size) + ceil32(return_data.size) + 357] * slippageFactor / mem[(32 * _3067 - 1) + _1211 + ceil32(return_data.size) + ceil32(return_data.size) + 357] != slippageFactor:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _5035 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5035] = 26
                        mem[_5035 + 32] = 'SafeMath: division by zero'
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1185 / 2
                        mem[mem[64] + 36] = _4962 * slippageFactor / 1000
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = _1211 + ceil32(return_data.size) + 197
                        t = mem[64] + 196
                        while idx < 2:
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
                            args Mask(255, 1, _1185), _4962 * slippageFactor / 1000, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + sub_1b61e055
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
                        _6898 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6914 = mem[_6898]
                        require mem[_6898] == mem[_6898]
                        if wantLockedTotal + mem[_6898] < wantLockedTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        wantLockedTotal += mem[_6898]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), sub_1172cd2bAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6994 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7010 = mem[_6994]
                        require mem[_6994] == mem[_6994]
                        if mem[_6994] + _6914 < mem[_6994]:
                            revert with 0, 'SafeMath: addition overflow'
                        _7042 = mem[64]
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        mem[mem[64] + 68] = _7010 + _6914
                        _7088 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_7042 + 100] = 32
                        mem[_7042 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _7184 = mem[_7088]
                        mem[_7042 + 164 len ceil32(mem[_7088])] = mem[_7088 + 32 len ceil32(mem[_7088])]
                        if ceil32(_7184) > _7184:
                            mem[_7042 + _7184 + 164] = 0
                        call wantAddress with:
                             gas gas_remaining wei
                            args mem[_7042 + 168 len _7184 - 4]
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
                            mem[_7042 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[_7042 + 196] == bool(mem[_7042 + 196])
                                if not mem[_7042 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(sub_1172cd2bAddress)
                        call sub_1172cd2bAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, _6914, address(this.address), 0
            else:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96] <= 0:
                    mem[_1211 + 164] = 2
                    mem[_1211 + 196] = sub_7edd3da5Address
                    mem[_1211 + 228] = wantAddress
                    mem[64] = _1211 + 324
                    mem[_1211 + 260] = 26
                    mem[_1211 + 292] = 'SafeMath: division by zero'
                    mem[_1211 + 324] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1211 + 328] = _1185 / 2
                    mem[_1211 + 360] = 64
                    mem[_1211 + 392] = 2
                    idx = 0
                    s = _1211 + 196
                    t = _1211 + 424
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniRouterAddress)
                    staticcall uniRouterAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1211 + -mem[64] + 484]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3008 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3031 = mem[_3008]
                    require mem[_3008] <= test266151307()
                    require _3008 + mem[_3008] + 31 < _3008 + return_data.size
                    _3064 = mem[_3008 + mem[_3008]]
                    require mem[_3008 + mem[_3008]] <= test266151307()
                    require _3008 + ceil32(return_data.size) + (32 * mem[_3008 + mem[_3008]]) + 32 <= test266151307() and (32 * mem[_3008 + mem[_3008]]) + 32 >= 0
                    mem[64] = _3008 + ceil32(return_data.size) + (32 * mem[_3008 + mem[_3008]]) + 32
                    mem[_3008 + ceil32(return_data.size)] = _3064
                    require _3031 + (32 * _3064) + 32 <= return_data.size
                    idx = 0
                    s = _3008 + _3031 + 32
                    t = _3008 + ceil32(return_data.size) + 32
                    while idx < _3064:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _4904 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4904] = 30
                    mem[_4904 + 32] = 'SafeMath: subtraction overflow'
                    if 1 > _3064:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require _3064 - 1 < _3064
                    _4956 = mem[(32 * _3064 - 1) + _3008 + ceil32(return_data.size) + 32]
                    if not mem[(32 * _3064 - 1) + _3008 + ceil32(return_data.size) + 32]:
                        _5000 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5000] = 26
                        mem[_5000 + 32] = 'SafeMath: division by zero'
                        _5053 = mem[64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1185 / 2
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _5128 = mem[_1211 + 164]
                        mem[mem[64] + 164] = mem[_1211 + 164]
                        idx = 0
                        s = _1211 + 196
                        t = mem[64] + 196
                        while idx < _5128:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5053 + 100] = this.address
                        mem[_5053 + 132] = block.timestamp + sub_1b61e055
                        require ext_code.size(uniRouterAddress)
                        call uniRouterAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _5053 + (32 * _5128) + -mem[64] + 192]
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
                        _6893 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6909 = mem[_6893]
                        require mem[_6893] == mem[_6893]
                        if wantLockedTotal + mem[_6893] < wantLockedTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        wantLockedTotal += mem[_6893]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), sub_1172cd2bAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6989 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7005 = mem[_6989]
                        require mem[_6989] == mem[_6989]
                        if mem[_6989] + _6909 < mem[_6989]:
                            revert with 0, 'SafeMath: addition overflow'
                        _7037 = mem[64]
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        mem[mem[64] + 68] = _7005 + _6909
                        _7078 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_7037 + 100] = 32
                        mem[_7037 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _7174 = mem[_7078]
                        mem[_7037 + 164 len ceil32(mem[_7078])] = mem[_7078 + 32 len ceil32(mem[_7078])]
                        if ceil32(_7174) > _7174:
                            mem[_7037 + _7174 + 164] = 0
                        call wantAddress with:
                             gas gas_remaining wei
                            args mem[_7037 + 168 len _7174 - 4]
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
                            mem[_7037 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[_7037 + 196] == bool(mem[_7037 + 196])
                                if not mem[_7037 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(sub_1172cd2bAddress)
                        call sub_1172cd2bAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, _6909, address(this.address), 0
                    else:
                        require mem[(32 * _3064 - 1) + _3008 + ceil32(return_data.size) + 32]
                        if mem[(32 * _3064 - 1) + _3008 + ceil32(return_data.size) + 32] * slippageFactor / mem[(32 * _3064 - 1) + _3008 + ceil32(return_data.size) + 32] != slippageFactor:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _5032 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5032] = 26
                        mem[_5032 + 32] = 'SafeMath: division by zero'
                        _5084 = mem[64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1185 / 2
                        mem[mem[64] + 36] = _4956 * slippageFactor / 1000
                        mem[mem[64] + 68] = 160
                        _5144 = mem[_1211 + 164]
                        mem[mem[64] + 164] = mem[_1211 + 164]
                        idx = 0
                        s = _1211 + 196
                        t = mem[64] + 196
                        while idx < _5144:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5084 + 100] = this.address
                        mem[_5084 + 132] = block.timestamp + sub_1b61e055
                        require ext_code.size(uniRouterAddress)
                        call uniRouterAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _5084 + (32 * _5144) + -mem[64] + 192]
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
                        _6892 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6908 = mem[_6892]
                        require mem[_6892] == mem[_6892]
                        if wantLockedTotal + mem[_6892] < wantLockedTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        wantLockedTotal += mem[_6892]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), sub_1172cd2bAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6988 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7004 = mem[_6988]
                        require mem[_6988] == mem[_6988]
                        if mem[_6988] + _6908 < mem[_6988]:
                            revert with 0, 'SafeMath: addition overflow'
                        _7036 = mem[64]
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        mem[mem[64] + 68] = _7004 + _6908
                        _7076 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_7036 + 100] = 32
                        mem[_7036 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _7172 = mem[_7076]
                        mem[_7036 + 164 len ceil32(mem[_7076])] = mem[_7076 + 32 len ceil32(mem[_7076])]
                        if ceil32(_7172) > _7172:
                            mem[_7036 + _7172 + 164] = 0
                        call wantAddress with:
                             gas gas_remaining wei
                            args mem[_7036 + 168 len _7172 - 4]
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
                            mem[_7036 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[_7036 + 196] == bool(mem[_7036 + 196])
                                if not mem[_7036 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(sub_1172cd2bAddress)
                        call sub_1172cd2bAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, _6908, address(this.address), 0
                else:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_1211 + 164] = 2
                    mem[_1211 + 196] = sub_7edd3da5Address
                    mem[_1211 + 228] = wantAddress
                    mem[64] = _1211 + 324
                    mem[_1211 + 260] = 26
                    mem[_1211 + 292] = 'SafeMath: division by zero'
                    mem[_1211 + 324] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_1211 + 328] = _1185 / 2
                    mem[_1211 + 360] = 64
                    mem[_1211 + 392] = 2
                    idx = 0
                    s = _1211 + 196
                    t = _1211 + 424
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniRouterAddress)
                    staticcall uniRouterAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1211 + -mem[64] + 484]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3009 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3032 = mem[_3009]
                    require mem[_3009] <= test266151307()
                    require _3009 + mem[_3009] + 31 < _3009 + return_data.size
                    _3065 = mem[_3009 + mem[_3009]]
                    require mem[_3009 + mem[_3009]] <= test266151307()
                    require _3009 + ceil32(return_data.size) + (32 * mem[_3009 + mem[_3009]]) + 32 <= test266151307() and (32 * mem[_3009 + mem[_3009]]) + 32 >= 0
                    mem[64] = _3009 + ceil32(return_data.size) + (32 * mem[_3009 + mem[_3009]]) + 32
                    mem[_3009 + ceil32(return_data.size)] = _3065
                    require _3032 + (32 * _3065) + 32 <= return_data.size
                    idx = 0
                    s = _3009 + _3032 + 32
                    t = _3009 + ceil32(return_data.size) + 32
                    while idx < _3065:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _4905 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4905] = 30
                    mem[_4905 + 32] = 'SafeMath: subtraction overflow'
                    if 1 > _3065:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require _3065 - 1 < _3065
                    _4958 = mem[(32 * _3065 - 1) + _3009 + ceil32(return_data.size) + 32]
                    if not mem[(32 * _3065 - 1) + _3009 + ceil32(return_data.size) + 32]:
                        _5001 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5001] = 26
                        mem[_5001 + 32] = 'SafeMath: division by zero'
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1185 / 2
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _5129 = mem[_1211 + 164]
                        mem[mem[64] + 164] = mem[_1211 + 164]
                        idx = 0
                        s = _1211 + 196
                        t = mem[64] + 196
                        while idx < _5129:
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
                            args Mask(255, 1, _1185), 0, 160, address(this.address), block.timestamp + sub_1b61e055, mem[mem[64] + 164 len (32 * _5129) + 32]
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
                        _6895 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6911 = mem[_6895]
                        require mem[_6895] == mem[_6895]
                        if wantLockedTotal + mem[_6895] < wantLockedTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        wantLockedTotal += mem[_6895]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), sub_1172cd2bAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6991 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7007 = mem[_6991]
                        require mem[_6991] == mem[_6991]
                        if mem[_6991] + _6911 < mem[_6991]:
                            revert with 0, 'SafeMath: addition overflow'
                        _7039 = mem[64]
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        mem[mem[64] + 68] = _7007 + _6911
                        _7082 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_7039 + 100] = 32
                        mem[_7039 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _7178 = mem[_7082]
                        mem[_7039 + 164 len ceil32(mem[_7082])] = mem[_7082 + 32 len ceil32(mem[_7082])]
                        if ceil32(_7178) > _7178:
                            mem[_7039 + _7178 + 164] = 0
                        call wantAddress with:
                             gas gas_remaining wei
                            args mem[_7039 + 168 len _7178 - 4]
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
                            mem[_7039 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[_7039 + 196] == bool(mem[_7039 + 196])
                                if not mem[_7039 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(sub_1172cd2bAddress)
                        call sub_1172cd2bAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, _6911, address(this.address), 0
                    else:
                        require mem[(32 * _3065 - 1) + _3009 + ceil32(return_data.size) + 32]
                        if mem[(32 * _3065 - 1) + _3009 + ceil32(return_data.size) + 32] * slippageFactor / mem[(32 * _3065 - 1) + _3009 + ceil32(return_data.size) + 32] != slippageFactor:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _5033 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5033] = 26
                        mem[_5033 + 32] = 'SafeMath: division by zero'
                        _5086 = mem[64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1185 / 2
                        mem[mem[64] + 36] = _4958 * slippageFactor / 1000
                        mem[mem[64] + 68] = 160
                        _5145 = mem[_1211 + 164]
                        mem[mem[64] + 164] = mem[_1211 + 164]
                        idx = 0
                        s = _1211 + 196
                        t = mem[64] + 196
                        while idx < _5145:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5086 + 100] = this.address
                        mem[_5086 + 132] = block.timestamp + sub_1b61e055
                        require ext_code.size(uniRouterAddress)
                        call uniRouterAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _5086 + (32 * _5145) + -mem[64] + 192]
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
                        _6894 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6910 = mem[_6894]
                        require mem[_6894] == mem[_6894]
                        if wantLockedTotal + mem[_6894] < wantLockedTotal:
                            revert with 0, 'SafeMath: addition overflow'
                        wantLockedTotal += mem[_6894]
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), sub_1172cd2bAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6990 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7006 = mem[_6990]
                        require mem[_6990] == mem[_6990]
                        if mem[_6990] + _6910 < mem[_6990]:
                            revert with 0, 'SafeMath: addition overflow'
                        _7038 = mem[64]
                        mem[mem[64] + 36] = sub_1172cd2bAddress
                        mem[mem[64] + 68] = _7006 + _6910
                        _7080 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                        mem[64] = mem[64] + 164
                        mem[_7038 + 100] = 32
                        mem[_7038 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _7176 = mem[_7080]
                        mem[_7038 + 164 len ceil32(mem[_7080])] = mem[_7080 + 32 len ceil32(mem[_7080])]
                        if ceil32(_7176) > _7176:
                            mem[_7038 + _7176 + 164] = 0
                        call wantAddress with:
                             gas gas_remaining wei
                            args mem[_7038 + 168 len _7176 - 4]
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
                            mem[_7038 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[_7038 + 196] == bool(mem[_7038 + 196])
                                if not mem[_7038 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(sub_1172cd2bAddress)
                        call sub_1172cd2bAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, _6910, address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}



}
