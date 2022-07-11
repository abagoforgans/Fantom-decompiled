contract main {




// =====================  Runtime code  =====================


#
#  - deposit(address arg1, uint256 arg2)
#  - earn()
#  - withdraw(address arg1, uint256 arg2)
#
const controllerFeeUL = 300

const controllerFeeMax = 10000

const sub_39714714(?) = 10

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
uint8 paused;
uint8 sub_0ddea8c3; offset 8
uint8 isAutoComp; offset 16
address farmContractAddress; offset 24
uint256 pid;
address wantAddress;
address token0Address;
address token1Address;
address earnedAddress;
address uniRouterAddress;
address sub_cb971847Address;
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
array of address sub_67eed8e0;
array of address earnedToToken0Path;
array of address earnedToToken1Path;
array of address token0ToEarnedPath;
array of address token1ToEarnedPath;
array of address sub_6597b04f;
array of address sub_6b99e24b;
uint32 stor31;
address poolAddress;
uint256 stor31;
uint256 sub_c567dada;
uint256 sub_3ab24b3e;
uint256 borrowRate;
uint256 borrowRateMax;
uint256 borrowDepth;
uint256 sub_9a14ff17;

function token1ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < token1ToEarnedPath.length
    return token1ToEarnedPath[arg1]
}

function sub_0ddea8c3(?) payable {
    return bool(sub_0ddea8c3)
}

function borrowRateMax() payable {
    return borrowRateMax
}

function lastEarnBlock() payable {
    return lastEarnBlock
}

function entranceFeeFactor() payable {
    return entranceFeeFactor
}

function poolAddress() payable {
    return address(poolAddress)
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

function sub_3ab24b3e(?) payable {
    return sub_3ab24b3e
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
    return bool(paused)
}

function sub_6597b04f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_6597b04f.length
    return sub_6597b04f[arg1]
}

function sub_67eed8e0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_67eed8e0.length
    return sub_67eed8e0[arg1]
}

function withdrawFeeFactor() payable {
    return withdrawFeeFactor
}

function uniRouterAddress() payable {
    return uniRouterAddress
}

function sub_6b99e24b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_6b99e24b.length
    return sub_6b99e24b[arg1]
}

function sub_7edd3da5(?) payable {
    return sub_7edd3da5Address
}

function token0Address() payable {
    return token0Address
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

function earnedToToken1Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToToken1Path.length
    return earnedToToken1Path[arg1]
}

function borrowDepth() payable {
    return borrowDepth
}

function sub_9a14ff17(?) payable {
    return sub_9a14ff17
}

function farmContractAddress() payable {
    return farmContractAddress
}

function sub_b3ed4599(?) payable {
    return sub_b3ed4599Address
}

function token0ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < token0ToEarnedPath.length
    return token0ToEarnedPath[arg1]
}

function sub_c567dada(?) payable {
    return sub_c567dada
}

function earnedToToken0Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToToken0Path.length
    return earnedToToken0Path[arg1]
}

function borrowRate() payable {
    return borrowRate
}

function sub_cb971847(?) payable {
    return sub_cb971847Address
}

function token1Address() payable {
    return token1Address
}

function isAutoComp() payable {
    return bool(isAutoComp)
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

function slippageFactor() payable {
    return slippageFactor
}

function _fallback() payable {
    revert
}

function convertDustToEarned() payable {
  stop
}

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    govAddress = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setBuybackRouterAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    sub_cb971847Address = arg1
}

function pause() payable {
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function setControllerFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 > 300:
        revert with 0, 'too high'
    controllerFee = arg1
}

function setbuyBackRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if buyBackRate > 800:
        revert with 0, 'too high'
    buyBackRate = arg1
}

function setDepositFeeFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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

function updateBalances() payable {
    require ext_code.size(address(poolAddress))
    call address(poolAddress).balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_c567dada = ext_call.return_data[0]
    require ext_code.size(address(poolAddress))
    call address(poolAddress).borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_3ab24b3e = ext_call.return_data[0]
    wantLockedTotal = sub_c567dada - sub_3ab24b3e
}

function inCaseTokensGetStuck(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 == earnedAddress:
        revert with 0, '!safe'
    if arg1 == wantAddress:
        revert with 0, '!safe'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, arg2
        if not transfer(address arg1, uint256 arg2), address(arg3) << 64:
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
}

function farm() payable {
    mem[64] = 96
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_9a14ff17:
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(this.address), address(poolAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(wantAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor31), uint32(stor31), Mask(224, 31, ext_call.return_data[0]) >> 31
        call wantAddress with:
           funct uint32(stor31)
             gas gas_remaining wei
            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor31), uint32(stor31), 2 * ext_call.return_data[0]
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor31):
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
        idx = 0
        s = mem[mem[64]]
        while idx < borrowDepth:
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), address(poolAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + s < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            _327 = mem[64]
            mem[mem[64] + 36] = address(poolAddress)
            mem[mem[64] + 68] = ext_call.return_data[0] + s
            _328 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_328 + 32] = mem[_328 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
            mem[64] = _327 + 164
            mem[_327 + 100] = 32
            mem[_327 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_327 + 270 len 26]
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            _370 = mem[_328]
            u = _328 + 32
            v = _327 + 164
            t = mem[_328]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[_327 + floor32(mem[_328]) + 164] = mem[_328 + -(mem[_328] % 32) + floor32(mem[_328]) + 64 len mem[_328] % 32] or Mask(8 * -(mem[_328] % 32) + 32, -(8 * -(mem[_328] % 32) + 32) + 256, mem[_327 + floor32(mem[_328]) + 164])
            call wantAddress.mem[_327 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_327 + 168 len _370 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_327 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_327 + 168] = 32
                    mem[_327 + 200] = 32
                    idx = 0
                    while idx < 32:
                        mem[_327 + idx + 232] = mem[_327 + idx + 132]
                        idx = idx + 32
                        continue 
                    revert with memory
                      from mem[64]
                       len _327 + -mem[64] + 264
                if mem[96] > 0:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_327 + 274 len 22]
                require ext_code.size(address(poolAddress))
                call address(poolAddress).mint(uint256 arg1) with:
                     gas gas_remaining wei
                    args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not s:
                    mem[64] = _327 + 228
                    mem[_327 + 164] = 26
                    mem[_327 + 196] = 'SafeMath: division by zero'
                    mem[_327 + 232] = 0
                    require ext_code.size(address(poolAddress))
                    call address(poolAddress).borrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args 0
                    mem[_327 + 228] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = 0
                    continue 
                require s
                if s * borrowRate / s != borrowRate:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_327 + 265 len 31]
                mem[64] = _327 + 228
                mem[_327 + 164] = 26
                mem[_327 + 196] = 'SafeMath: division by zero'
                mem[_327 + 232] = s * borrowRate / 100
                require ext_code.size(address(poolAddress))
                call address(poolAddress).borrow(uint256 arg1) with:
                     gas gas_remaining wei
                    args (s * borrowRate / 100)
                mem[_327 + 228] = ext_call.return_data[0]
            else:
                mem[_327 + 164] = return_data.size
                mem[_327 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_327 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_327 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[_327 + ceil32(return_data.size) + idx + 233] = mem[_327 + idx + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_327 + ceil32(return_data.size) + 233]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[_327 + 196]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_327 + ceil32(return_data.size) + 275 len 22]
                require ext_code.size(address(poolAddress))
                call address(poolAddress).mint(uint256 arg1) with:
                     gas gas_remaining wei
                    args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not s:
                    mem[64] = _327 + ceil32(return_data.size) + 229
                    mem[_327 + ceil32(return_data.size) + 165] = 26
                    mem[_327 + ceil32(return_data.size) + 197] = 'SafeMath: division by zero'
                    mem[_327 + ceil32(return_data.size) + 233] = 0
                    require ext_code.size(address(poolAddress))
                    call address(poolAddress).borrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args 0
                    mem[_327 + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = 0
                    continue 
                require s
                if s * borrowRate / s != borrowRate:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_327 + ceil32(return_data.size) + 266 len 31]
                mem[64] = _327 + ceil32(return_data.size) + 229
                mem[_327 + ceil32(return_data.size) + 165] = 26
                mem[_327 + ceil32(return_data.size) + 197] = 'SafeMath: division by zero'
                mem[_327 + ceil32(return_data.size) + 233] = s * borrowRate / 100
                require ext_code.size(address(poolAddress))
                call address(poolAddress).borrow(uint256 arg1) with:
                     gas gas_remaining wei
                    args (s * borrowRate / 100)
                mem[_327 + ceil32(return_data.size) + 229] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            s = s * borrowRate / 100
            continue 
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(this.address), address(poolAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        _357 = mem[64]
        mem[mem[64] + 36] = address(poolAddress)
        mem[mem[64] + 68] = 2 * ext_call.return_data[0]
        _358 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
        mem[64] = mem[64] + 164
        mem[_357 + 100] = 32
        mem[_357 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_357 + 270 len 26]
        if ext_code.size(wantAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        _397 = mem[_358]
        mem[_357 + 164 len floor32(mem[_358])] = mem[_358 + 32 len floor32(mem[_358])]
        mem[_357 + floor32(mem[_358]) + -(mem[_358] % 32) + 196 len mem[_358] % 32] = mem[_358 + -(mem[_358] % 32) + floor32(mem[_358]) + 64 len mem[_358] % 32]
        call wantAddress.mem[_357 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_357 + 168 len _397 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96] > 0:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_357 + 274 len 22]
        else:
            mem[_357 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_357 + 196]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_357 + ceil32(return_data.size) + 275 len 22]
    require ext_code.size(address(poolAddress))
    call address(poolAddress).mint(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(poolAddress))
    call address(poolAddress).balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_c567dada = ext_call.return_data[0]
    require ext_code.size(address(poolAddress))
    call address(poolAddress).borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_3ab24b3e = ext_call.return_data[0]
    wantLockedTotal = sub_c567dada - sub_3ab24b3e
    stor1 = 1
}

function rebalance(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 > borrowRateMax:
        revert with 0, '!rate'
    if arg2 > 10:
        revert with 0, '!depth'
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[100] = this.address
    require ext_code.size(address(poolAddress))
    call address(poolAddress).borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = mem[mem[64]]
    t = ext_call.return_data[0]
    while t < s:
        if t <= 0:
            require ext_code.size(address(poolAddress))
            call address(poolAddress).borrowBalanceCurrent(address arg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _1724 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1724] = 26
                mem[_1724 + 32] = 'SafeMath: division by zero'
                if borrowRate <= 0:
                    _1729 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1729 + idx + 68] = mem[_1724 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1729 + 68] = mem[_1729 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1729 + -mem[64] + 100
                require borrowRate
                require ext_code.size(address(poolAddress))
                call address(poolAddress).balanceOfUnderlying(address arg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1769 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1769] = 30
                mem[_1769 + 32] = 'SafeMath: subtraction overflow'
                if 0 / borrowRate > ext_call.return_data[0]:
                    _1775 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1775 + idx + 68] = mem[_1769 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1775 + 68] = mem[_1775 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1775 + -mem[64] + 100
                require ext_code.size(address(poolAddress))
                call address(poolAddress).redeemUnderlying(uint256 arg1) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] - (0 / borrowRate))
            else:
                require ext_call.return_data[0]
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1728 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1728] = 26
                mem[_1728 + 32] = 'SafeMath: division by zero'
                if borrowRate <= 0:
                    _1734 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1734 + idx + 68] = mem[_1728 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1734 + 68] = mem[_1734 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1734 + -mem[64] + 100
                require borrowRate
                require ext_code.size(address(poolAddress))
                call address(poolAddress).balanceOfUnderlying(address arg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1774 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1774] = 30
                mem[_1774 + 32] = 'SafeMath: subtraction overflow'
                if 100 * ext_call.return_data[0] / borrowRate > ext_call.return_data[0]:
                    _1788 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1788 + idx + 68] = mem[_1774 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1788 + 68] = mem[_1788 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1788 + -mem[64] + 100
                require ext_code.size(address(poolAddress))
                call address(poolAddress).redeemUnderlying(uint256 arg1) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] - (100 * ext_call.return_data[0] / borrowRate))
        else:
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), address(poolAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + t < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            _1721 = mem[64]
            mem[mem[64] + 36] = address(poolAddress)
            mem[mem[64] + 68] = ext_call.return_data[0] + t
            _1722 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_1722 + 32] = mem[_1722 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
            mem[64] = _1721 + 164
            mem[_1721 + 100] = 32
            mem[_1721 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1721 + 270 len 26]
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            _1749 = mem[_1722]
            s = _1722 + 32
            u = mem[64]
            idx = mem[_1722]
            while idx >= 32:
                mem[u] = mem[s]
                s = s + 32
                u = u + 32
                idx = idx - 32
                continue 
            mem[mem[64] + floor32(mem[_1722])] = mem[_1722 + floor32(mem[_1722]) + -(mem[_1722] % 32) + 64 len mem[_1722] % 32] or Mask(8 * -(mem[_1722] % 32) + 32, -(8 * -(mem[_1722] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1722])])
            call wantAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1749 + _1721 + -mem[64] + 160]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    _3421 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_1721 + 100]
                    _3423 = mem[_1721 + 100]
                    idx = 0
                    while idx < _3423:
                        mem[_3421 + idx + 68] = mem[_1721 + idx + 132]
                        idx = idx + 32
                        continue 
                    if not _3423 % 32:
                        revert with memory
                          from mem[64]
                           len _3423 + _3421 + -mem[64] + 68
                    mem[floor32(_3423) + _3421 + 68] = mem[floor32(_3423) + _3421 + -(_3423 % 32) + 100 len _3423 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_3423) + _3421 + -mem[64] + 100
                if mem[96] <= 0:
                    require ext_code.size(address(poolAddress))
                    call address(poolAddress).repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args t
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(poolAddress))
                    call address(poolAddress).borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        _3555 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3555] = 26
                        mem[_3555 + 32] = 'SafeMath: division by zero'
                        if borrowRate <= 0:
                            _3568 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_3568 + idx + 68] = mem[_3555 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3568 + 68] = mem[_3568 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _3568 + -mem[64] + 100
                        require borrowRate
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _3660 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3660] = 30
                        mem[_3660 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / borrowRate > ext_call.return_data[0]:
                            _3688 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3688 + idx + 68] = mem[_3660 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3688 + 68] = mem[_3688 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3688 + -mem[64] + 100
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - (0 / borrowRate))
                    else:
                        require ext_call.return_data[0]
                        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3567 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3567] = 26
                        mem[_3567 + 32] = 'SafeMath: division by zero'
                        if borrowRate <= 0:
                            _3593 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_3593 + idx + 68] = mem[_3567 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3593 + 68] = mem[_3593 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _3593 + -mem[64] + 100
                        require borrowRate
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _3687 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3687] = 30
                        mem[_3687 + 32] = 'SafeMath: subtraction overflow'
                        if 100 * ext_call.return_data[0] / borrowRate > ext_call.return_data[0]:
                            _3705 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3705 + idx + 68] = mem[_3687 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3705 + 68] = mem[_3705 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3705 + -mem[64] + 100
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - (100 * ext_call.return_data[0] / borrowRate))
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
                    require ext_code.size(address(poolAddress))
                    call address(poolAddress).repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args t
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(poolAddress))
                    call address(poolAddress).borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        _3583 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3583] = 26
                        mem[_3583 + 32] = 'SafeMath: division by zero'
                        if borrowRate <= 0:
                            _3606 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_3606 + idx + 68] = mem[_3583 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3606 + 68] = mem[_3606 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _3606 + -mem[64] + 100
                        require borrowRate
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _3700 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3700] = 30
                        mem[_3700 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / borrowRate > ext_call.return_data[0]:
                            _3728 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3728 + idx + 68] = mem[_3700 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3728 + 68] = mem[_3728 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3728 + -mem[64] + 100
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - (0 / borrowRate))
                    else:
                        require ext_call.return_data[0]
                        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3605 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3605] = 26
                        mem[_3605 + 32] = 'SafeMath: division by zero'
                        if borrowRate <= 0:
                            _3630 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_3630 + idx + 68] = mem[_3605 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3630 + 68] = mem[_3630 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _3630 + -mem[64] + 100
                        require borrowRate
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _3727 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3727] = 30
                        mem[_3727 + 32] = 'SafeMath: subtraction overflow'
                        if 100 * ext_call.return_data[0] / borrowRate > ext_call.return_data[0]:
                            _3758 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3758 + idx + 68] = mem[_3727 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3758 + 68] = mem[_3758 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3758 + -mem[64] + 100
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - (100 * ext_call.return_data[0] / borrowRate))
            else:
                _3404 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_3404] = return_data.size
                mem[_3404 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3425 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_1721 + 100]
                    _3427 = mem[_1721 + 100]
                    idx = 0
                    while idx < _3427:
                        mem[_3425 + idx + 68] = mem[_1721 + idx + 132]
                        idx = idx + 32
                        continue 
                    if not _3427 % 32:
                        revert with memory
                          from mem[64]
                           len _3427 + _3425 + -mem[64] + 68
                    mem[floor32(_3427) + _3425 + 68] = mem[floor32(_3427) + _3425 + -(_3427 % 32) + 100 len _3427 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_3427) + _3425 + -mem[64] + 100
                if return_data.size <= 0:
                    require ext_code.size(address(poolAddress))
                    call address(poolAddress).repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args t
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(poolAddress))
                    call address(poolAddress).borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        _3556 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3556] = 26
                        mem[_3556 + 32] = 'SafeMath: division by zero'
                        if borrowRate <= 0:
                            _3574 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_3574 + idx + 68] = mem[_3556 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3574 + 68] = mem[_3574 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _3574 + -mem[64] + 100
                        require borrowRate
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _3664 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3664] = 30
                        mem[_3664 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / borrowRate > ext_call.return_data[0]:
                            _3694 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3694 + idx + 68] = mem[_3664 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3694 + 68] = mem[_3694 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3694 + -mem[64] + 100
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - (0 / borrowRate))
                    else:
                        require ext_call.return_data[0]
                        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3573 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3573] = 26
                        mem[_3573 + 32] = 'SafeMath: division by zero'
                        if borrowRate <= 0:
                            _3597 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_3597 + idx + 68] = mem[_3573 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3597 + 68] = mem[_3597 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _3597 + -mem[64] + 100
                        require borrowRate
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _3693 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3693] = 30
                        mem[_3693 + 32] = 'SafeMath: subtraction overflow'
                        if 100 * ext_call.return_data[0] / borrowRate > ext_call.return_data[0]:
                            _3712 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3712 + idx + 68] = mem[_3693 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3712 + 68] = mem[_3712 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3712 + -mem[64] + 100
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - (100 * ext_call.return_data[0] / borrowRate))
                else:
                    require return_data.size >= 32
                    if not mem[_3404 + 32]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
                    require ext_code.size(address(poolAddress))
                    call address(poolAddress).repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args t
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(poolAddress))
                    call address(poolAddress).borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        _3584 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3584] = 26
                        mem[_3584 + 32] = 'SafeMath: division by zero'
                        if borrowRate <= 0:
                            _3614 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_3614 + idx + 68] = mem[_3584 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3614 + 68] = mem[_3614 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _3614 + -mem[64] + 100
                        require borrowRate
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _3702 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3702] = 30
                        mem[_3702 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / borrowRate > ext_call.return_data[0]:
                            _3734 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3734 + idx + 68] = mem[_3702 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3734 + 68] = mem[_3734 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3734 + -mem[64] + 100
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - (0 / borrowRate))
                    else:
                        require ext_call.return_data[0]
                        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3613 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3613] = 26
                        mem[_3613 + 32] = 'SafeMath: division by zero'
                        if borrowRate <= 0:
                            _3639 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_3639 + idx + 68] = mem[_3613 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3639 + 68] = mem[_3639 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _3639 + -mem[64] + 100
                        require borrowRate
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _3733 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3733] = 30
                        mem[_3733 + 32] = 'SafeMath: subtraction overflow'
                        if 100 * ext_call.return_data[0] / borrowRate > ext_call.return_data[0]:
                            _3769 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3769 + idx + 68] = mem[_3733 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3769 + 68] = mem[_3769 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3769 + -mem[64] + 100
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - (100 * ext_call.return_data[0] / borrowRate))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = ext_call.return_data[0]
        t = ext_call.return_data[0]
        continue 
    require ext_code.size(wantAddress)
    staticcall wantAddress.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), address(poolAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + t < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    _1713 = mem[64]
    mem[mem[64] + 36] = address(poolAddress)
    mem[mem[64] + 68] = ext_call.return_data[0] + t
    _1714 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
    mem[64] = mem[64] + 164
    mem[_1713 + 100] = 32
    mem[_1713 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1713 + 270 len 26]
    if ext_code.size(wantAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    _1739 = mem[_1714]
    mem[_1713 + 164 len floor32(mem[_1714])] = mem[_1714 + 32 len floor32(mem[_1714])]
    mem[_1713 + floor32(mem[_1714]) + -(mem[_1714] % 32) + 196 len mem[_1714] % 32] = mem[_1714 + floor32(mem[_1714]) + -(mem[_1714] % 32) + 64 len mem[_1714] % 32]
    call wantAddress with:
         gas gas_remaining wei
        args mem[_1713 + 168 len _1739 - 4]
    if not return_data.size:
        if not ext_call.success:
            if mem[96] > 0:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96] <= 0:
            require ext_code.size(address(poolAddress))
            call address(poolAddress).repayBorrow(uint256 arg1) with:
                 gas gas_remaining wei
                args t
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(poolAddress))
            staticcall address(poolAddress).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(poolAddress))
            call address(poolAddress).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(poolAddress))
            call address(poolAddress).balanceOfUnderlying(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_c567dada = ext_call.return_data[0]
            require ext_code.size(address(poolAddress))
            call address(poolAddress).borrowBalanceCurrent(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_3ab24b3e = ext_call.return_data[0]
            wantLockedTotal = sub_c567dada - sub_3ab24b3e
            borrowRate = arg1
            borrowDepth = arg2
            mem[_1713 + 168] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[_1713 + 164] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_9a14ff17:
                require ext_code.size(wantAddress)
                staticcall wantAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(wantAddress)
                staticcall wantAddress.allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(poolAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_1713 + 200] = address(poolAddress)
                mem[_1713 + 232] = 2 * ext_call.return_data[0]
                mem[_1713 + 164] = 68
                mem[_1713 + 196 len 4] = approve(address arg1, uint256 arg2)
                mem[_1713 + 264] = 32
                mem[_1713 + 296] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1713 + 434 len 26]
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[_1713 + 328 len 64] = 0, address(poolAddress), Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[_1713 + 420 len 4] = 0
                call wantAddress with:
                   funct uint32(stor31)
                     gas gas_remaining wei
                    args 2 * ext_call.return_data[0], 0, mem[_1713 + 392 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_1713 + 438 len 22]
                else:
                    mem[_1713 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_1713 + 360]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_1713 + ceil32(return_data.size) + 439 len 22]
            else:
                idx = 0
                s = mem[mem[64]]
                while idx < borrowDepth:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(poolAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + s < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    _5179 = mem[64]
                    mem[mem[64] + 36] = address(poolAddress)
                    mem[mem[64] + 68] = ext_call.return_data[0] + s
                    _5180 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_5180 + 32] = mem[_5180 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[64] = _5179 + 164
                    mem[_5179 + 100] = 32
                    mem[_5179 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_5179 + 270 len 26]
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _5330 = mem[_5180]
                    u = _5180 + 32
                    v = _5179 + 164
                    t = mem[_5180]
                    while t >= 32:
                        mem[v] = mem[u]
                        u = u + 32
                        v = v + 32
                        t = t - 32
                        continue 
                    mem[_5179 + floor32(mem[_5180]) + 164] = mem[_5180 + -(mem[_5180] % 32) + floor32(mem[_5180]) + 64 len mem[_5180] % 32] or Mask(8 * -(mem[_5180] % 32) + 32, -(8 * -(mem[_5180] % 32) + 32) + 256, mem[_5179 + floor32(mem[_5180]) + 164])
                    call wantAddress.mem[_5179 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_5179 + 168 len _5330 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_5179 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5179 + 168] = 32
                            mem[_5179 + 200] = 32
                            idx = 0
                            while idx < 32:
                                mem[_5179 + idx + 232] = mem[_5179 + idx + 132]
                                idx = idx + 32
                                continue 
                            revert with memory
                              from mem[64]
                               len _5179 + -mem[64] + 264
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_5179 + 274 len 22]
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).mint(uint256 arg1) with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            mem[64] = _5179 + 228
                            mem[_5179 + 164] = 26
                            mem[_5179 + 196] = 'SafeMath: division by zero'
                            mem[_5179 + 232] = 0
                            require ext_code.size(address(poolAddress))
                            call address(poolAddress).borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[_5179 + 228] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5179 + 265 len 31]
                        mem[64] = _5179 + 228
                        mem[_5179 + 164] = 26
                        mem[_5179 + 196] = 'SafeMath: division by zero'
                        mem[_5179 + 232] = s * borrowRate / 100
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 100)
                        mem[_5179 + 228] = ext_call.return_data[0]
                    else:
                        mem[_5179 + 164] = return_data.size
                        mem[_5179 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_5179 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5179 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[_5179 + ceil32(return_data.size) + idx + 233] = mem[_5179 + idx + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_5179 + ceil32(return_data.size) + 233]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_5179 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_5179 + ceil32(return_data.size) + 275 len 22]
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).mint(uint256 arg1) with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            mem[64] = _5179 + ceil32(return_data.size) + 229
                            mem[_5179 + ceil32(return_data.size) + 165] = 26
                            mem[_5179 + ceil32(return_data.size) + 197] = 'SafeMath: division by zero'
                            mem[_5179 + ceil32(return_data.size) + 233] = 0
                            require ext_code.size(address(poolAddress))
                            call address(poolAddress).borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[_5179 + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[_5179 + ceil32(return_data.size) + 266 len 31]
                        mem[64] = _5179 + ceil32(return_data.size) + 229
                        mem[_5179 + ceil32(return_data.size) + 165] = 26
                        mem[_5179 + ceil32(return_data.size) + 197] = 'SafeMath: division by zero'
                        mem[_5179 + ceil32(return_data.size) + 233] = s * borrowRate / 100
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 100)
                        mem[_5179 + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s * borrowRate / 100
                    continue 
                require ext_code.size(wantAddress)
                staticcall wantAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(wantAddress)
                staticcall wantAddress.allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(poolAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                _5305 = mem[64]
                mem[mem[64] + 36] = address(poolAddress)
                mem[mem[64] + 68] = 2 * ext_call.return_data[0]
                _5306 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                mem[64] = mem[64] + 164
                mem[_5305 + 100] = 32
                mem[_5305 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_5305 + 270 len 26]
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _5450 = mem[_5306]
                mem[_5305 + 164 len floor32(mem[_5306])] = mem[_5306 + 32 len floor32(mem[_5306])]
                mem[_5305 + floor32(mem[_5306]) + -(mem[_5306] % 32) + 196 len mem[_5306] % 32] = mem[_5306 + -(mem[_5306] % 32) + floor32(mem[_5306]) + 64 len mem[_5306] % 32]
                call wantAddress.mem[_5305 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_5305 + 168 len _5450 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_5305 + 274 len 22]
                else:
                    mem[_5305 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_5305 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_5305 + ceil32(return_data.size) + 275 len 22]
        else:
            require mem[96] >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[_1713 + 274 len 22]
            require ext_code.size(address(poolAddress))
            call address(poolAddress).repayBorrow(uint256 arg1) with:
                 gas gas_remaining wei
                args t
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(poolAddress))
            staticcall address(poolAddress).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(poolAddress))
            call address(poolAddress).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(poolAddress))
            call address(poolAddress).balanceOfUnderlying(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_c567dada = ext_call.return_data[0]
            require ext_code.size(address(poolAddress))
            call address(poolAddress).borrowBalanceCurrent(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_3ab24b3e = ext_call.return_data[0]
            wantLockedTotal = sub_c567dada - sub_3ab24b3e
            borrowRate = arg1
            borrowDepth = arg2
            mem[_1713 + 168] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[_1713 + 164] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_9a14ff17:
                require ext_code.size(wantAddress)
                staticcall wantAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(wantAddress)
                staticcall wantAddress.allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(poolAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_1713 + 200] = address(poolAddress)
                mem[_1713 + 232] = 2 * ext_call.return_data[0]
                mem[_1713 + 164] = 68
                mem[_1713 + 196 len 4] = approve(address arg1, uint256 arg2)
                mem[_1713 + 264] = 32
                mem[_1713 + 296] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1713 + 434 len 26]
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[_1713 + 328 len 64] = 0, address(poolAddress), Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[_1713 + 420 len 4] = 0
                call wantAddress with:
                   funct uint32(stor31)
                     gas gas_remaining wei
                    args 2 * ext_call.return_data[0], 0, mem[_1713 + 392 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_1713 + 438 len 22]
                else:
                    mem[_1713 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_1713 + 360]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_1713 + ceil32(return_data.size) + 439 len 22]
            else:
                idx = 0
                s = mem[mem[64]]
                while idx < borrowDepth:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(poolAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + s < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    _5184 = mem[64]
                    mem[mem[64] + 36] = address(poolAddress)
                    mem[mem[64] + 68] = ext_call.return_data[0] + s
                    _5185 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_5185 + 32] = mem[_5185 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[64] = _5184 + 164
                    mem[_5184 + 100] = 32
                    mem[_5184 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_5184 + 270 len 26]
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _5342 = mem[_5185]
                    u = _5185 + 32
                    v = _5184 + 164
                    t = mem[_5185]
                    while t >= 32:
                        mem[v] = mem[u]
                        u = u + 32
                        v = v + 32
                        t = t - 32
                        continue 
                    mem[_5184 + floor32(mem[_5185]) + 164] = mem[_5185 + -(mem[_5185] % 32) + floor32(mem[_5185]) + 64 len mem[_5185] % 32] or Mask(8 * -(mem[_5185] % 32) + 32, -(8 * -(mem[_5185] % 32) + 32) + 256, mem[_5184 + floor32(mem[_5185]) + 164])
                    call wantAddress.mem[_5184 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_5184 + 168 len _5342 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_5184 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5184 + 168] = 32
                            mem[_5184 + 200] = 32
                            idx = 0
                            while idx < 32:
                                mem[_5184 + idx + 232] = mem[_5184 + idx + 132]
                                idx = idx + 32
                                continue 
                            revert with memory
                              from mem[64]
                               len _5184 + -mem[64] + 264
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_5184 + 274 len 22]
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).mint(uint256 arg1) with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            mem[64] = _5184 + 228
                            mem[_5184 + 164] = 26
                            mem[_5184 + 196] = 'SafeMath: division by zero'
                            mem[_5184 + 232] = 0
                            require ext_code.size(address(poolAddress))
                            call address(poolAddress).borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[_5184 + 228] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5184 + 265 len 31]
                        mem[64] = _5184 + 228
                        mem[_5184 + 164] = 26
                        mem[_5184 + 196] = 'SafeMath: division by zero'
                        mem[_5184 + 232] = s * borrowRate / 100
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 100)
                        mem[_5184 + 228] = ext_call.return_data[0]
                    else:
                        mem[_5184 + 164] = return_data.size
                        mem[_5184 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_5184 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5184 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[_5184 + ceil32(return_data.size) + idx + 233] = mem[_5184 + idx + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_5184 + ceil32(return_data.size) + 233]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_5184 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_5184 + ceil32(return_data.size) + 275 len 22]
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).mint(uint256 arg1) with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            mem[64] = _5184 + ceil32(return_data.size) + 229
                            mem[_5184 + ceil32(return_data.size) + 165] = 26
                            mem[_5184 + ceil32(return_data.size) + 197] = 'SafeMath: division by zero'
                            mem[_5184 + ceil32(return_data.size) + 233] = 0
                            require ext_code.size(address(poolAddress))
                            call address(poolAddress).borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[_5184 + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[_5184 + ceil32(return_data.size) + 266 len 31]
                        mem[64] = _5184 + ceil32(return_data.size) + 229
                        mem[_5184 + ceil32(return_data.size) + 165] = 26
                        mem[_5184 + ceil32(return_data.size) + 197] = 'SafeMath: division by zero'
                        mem[_5184 + ceil32(return_data.size) + 233] = s * borrowRate / 100
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 100)
                        mem[_5184 + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s * borrowRate / 100
                    continue 
                require ext_code.size(wantAddress)
                staticcall wantAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(wantAddress)
                staticcall wantAddress.allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(poolAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                _5308 = mem[64]
                mem[mem[64] + 36] = address(poolAddress)
                mem[mem[64] + 68] = 2 * ext_call.return_data[0]
                _5309 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                mem[64] = mem[64] + 164
                mem[_5308 + 100] = 32
                mem[_5308 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_5308 + 270 len 26]
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _5458 = mem[_5309]
                mem[_5308 + 164 len floor32(mem[_5309])] = mem[_5309 + 32 len floor32(mem[_5309])]
                mem[_5308 + floor32(mem[_5309]) + -(mem[_5309] % 32) + 196 len mem[_5309] % 32] = mem[_5309 + floor32(mem[_5309]) + -(mem[_5309] % 32) + 64 len mem[_5309] % 32]
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_5308 + 168 len _5458 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_5308 + 274 len 22]
                else:
                    mem[_5308 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_5308 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_5308 + ceil32(return_data.size) + 275 len 22]
    else:
        mem[64] = _1713 + ceil32(return_data.size) + 165
        mem[_1713 + 164] = return_data.size
        mem[_1713 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            require ext_code.size(address(poolAddress))
            call address(poolAddress).repayBorrow(uint256 arg1) with:
                 gas gas_remaining wei
                args t
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(poolAddress))
            staticcall address(poolAddress).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(poolAddress))
            call address(poolAddress).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(poolAddress))
            call address(poolAddress).balanceOfUnderlying(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_c567dada = ext_call.return_data[0]
            require ext_code.size(address(poolAddress))
            call address(poolAddress).borrowBalanceCurrent(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_3ab24b3e = ext_call.return_data[0]
            wantLockedTotal = sub_c567dada - sub_3ab24b3e
            borrowRate = arg1
            borrowDepth = arg2
            mem[_1713 + ceil32(return_data.size) + 169] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[_1713 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_9a14ff17:
                require ext_code.size(wantAddress)
                staticcall wantAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(wantAddress)
                staticcall wantAddress.allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(poolAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_1713 + ceil32(return_data.size) + 201] = address(poolAddress)
                mem[_1713 + ceil32(return_data.size) + 233] = 2 * ext_call.return_data[0]
                mem[_1713 + ceil32(return_data.size) + 165] = 68
                mem[_1713 + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
                mem[_1713 + ceil32(return_data.size) + 265] = 32
                mem[_1713 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[_1713 + ceil32(return_data.size) + 435 len 26]
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[_1713 + ceil32(return_data.size) + 329 len 64] = 0, address(poolAddress), Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[_1713 + ceil32(return_data.size) + 421 len 4] = 0
                call wantAddress with:
                   funct uint32(stor31)
                     gas gas_remaining wei
                    args 2 * ext_call.return_data[0], 0, mem[_1713 + ceil32(return_data.size) + 393 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_1713 + ceil32(return_data.size) + 439 len 22]
                else:
                    mem[_1713 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_1713 + ceil32(return_data.size) + 361]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_1713 + (2 * ceil32(return_data.size)) + 440 len 22]
            else:
                idx = 0
                s = mem[mem[64]]
                while idx < borrowDepth:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(poolAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + s < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    _5189 = mem[64]
                    mem[mem[64] + 36] = address(poolAddress)
                    mem[mem[64] + 68] = ext_call.return_data[0] + s
                    _5190 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_5190 + 32] = mem[_5190 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[64] = _5189 + 164
                    mem[_5189 + 100] = 32
                    mem[_5189 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_5189 + 270 len 26]
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _5354 = mem[_5190]
                    u = _5190 + 32
                    v = _5189 + 164
                    t = mem[_5190]
                    while t >= 32:
                        mem[v] = mem[u]
                        u = u + 32
                        v = v + 32
                        t = t - 32
                        continue 
                    mem[_5189 + floor32(mem[_5190]) + 164] = mem[_5190 + -(mem[_5190] % 32) + floor32(mem[_5190]) + 64 len mem[_5190] % 32] or Mask(8 * -(mem[_5190] % 32) + 32, -(8 * -(mem[_5190] % 32) + 32) + 256, mem[_5189 + floor32(mem[_5190]) + 164])
                    call wantAddress.mem[_5189 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_5189 + 168 len _5354 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_5189 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5189 + 168] = 32
                            mem[_5189 + 200] = 32
                            idx = 0
                            while idx < 32:
                                mem[_5189 + idx + 232] = mem[_5189 + idx + 132]
                                idx = idx + 32
                                continue 
                            revert with memory
                              from mem[64]
                               len _5189 + -mem[64] + 264
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_5189 + 274 len 22]
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).mint(uint256 arg1) with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            mem[64] = _5189 + 228
                            mem[_5189 + 164] = 26
                            mem[_5189 + 196] = 'SafeMath: division by zero'
                            mem[_5189 + 232] = 0
                            require ext_code.size(address(poolAddress))
                            call address(poolAddress).borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[_5189 + 228] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5189 + 265 len 31]
                        mem[64] = _5189 + 228
                        mem[_5189 + 164] = 26
                        mem[_5189 + 196] = 'SafeMath: division by zero'
                        mem[_5189 + 232] = s * borrowRate / 100
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 100)
                        mem[_5189 + 228] = ext_call.return_data[0]
                    else:
                        mem[_5189 + 164] = return_data.size
                        mem[_5189 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_5189 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5189 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[_5189 + ceil32(return_data.size) + idx + 233] = mem[_5189 + idx + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_5189 + ceil32(return_data.size) + 233]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_5189 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_5189 + ceil32(return_data.size) + 275 len 22]
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).mint(uint256 arg1) with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            mem[64] = _5189 + ceil32(return_data.size) + 229
                            mem[_5189 + ceil32(return_data.size) + 165] = 26
                            mem[_5189 + ceil32(return_data.size) + 197] = 'SafeMath: division by zero'
                            mem[_5189 + ceil32(return_data.size) + 233] = 0
                            require ext_code.size(address(poolAddress))
                            call address(poolAddress).borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[_5189 + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[_5189 + ceil32(return_data.size) + 266 len 31]
                        mem[64] = _5189 + ceil32(return_data.size) + 229
                        mem[_5189 + ceil32(return_data.size) + 165] = 26
                        mem[_5189 + ceil32(return_data.size) + 197] = 'SafeMath: division by zero'
                        mem[_5189 + ceil32(return_data.size) + 233] = s * borrowRate / 100
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 100)
                        mem[_5189 + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s * borrowRate / 100
                    continue 
                require ext_code.size(wantAddress)
                staticcall wantAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(wantAddress)
                staticcall wantAddress.allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(poolAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                _5311 = mem[64]
                mem[mem[64] + 36] = address(poolAddress)
                mem[mem[64] + 68] = 2 * ext_call.return_data[0]
                _5312 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                mem[64] = mem[64] + 164
                mem[_5311 + 100] = 32
                mem[_5311 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_5311 + 270 len 26]
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _5466 = mem[_5312]
                mem[_5311 + 164 len floor32(mem[_5312])] = mem[_5312 + 32 len floor32(mem[_5312])]
                mem[_5311 + floor32(mem[_5312]) + -(mem[_5312] % 32) + 196 len mem[_5312] % 32] = mem[_5312 + -(mem[_5312] % 32) + floor32(mem[_5312]) + 64 len mem[_5312] % 32]
                call wantAddress.mem[_5311 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_5311 + 168 len _5466 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_5311 + 274 len 22]
                else:
                    mem[_5311 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_5311 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_5311 + ceil32(return_data.size) + 275 len 22]
        else:
            require return_data.size >= 32
            if not mem[_1713 + 196]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[_1713 + ceil32(return_data.size) + 275 len 22]
            require ext_code.size(address(poolAddress))
            call address(poolAddress).repayBorrow(uint256 arg1) with:
                 gas gas_remaining wei
                args t
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(poolAddress))
            staticcall address(poolAddress).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(poolAddress))
            call address(poolAddress).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(poolAddress))
            call address(poolAddress).balanceOfUnderlying(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_c567dada = ext_call.return_data[0]
            require ext_code.size(address(poolAddress))
            call address(poolAddress).borrowBalanceCurrent(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_3ab24b3e = ext_call.return_data[0]
            wantLockedTotal = sub_c567dada - sub_3ab24b3e
            borrowRate = arg1
            borrowDepth = arg2
            mem[_1713 + ceil32(return_data.size) + 169] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[_1713 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_9a14ff17:
                require ext_code.size(wantAddress)
                staticcall wantAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(wantAddress)
                staticcall wantAddress.allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(poolAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_1713 + ceil32(return_data.size) + 201] = address(poolAddress)
                mem[_1713 + ceil32(return_data.size) + 233] = 2 * ext_call.return_data[0]
                mem[_1713 + ceil32(return_data.size) + 165] = 68
                mem[_1713 + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
                mem[_1713 + ceil32(return_data.size) + 265] = 32
                mem[_1713 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[_1713 + ceil32(return_data.size) + 435 len 26]
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[_1713 + ceil32(return_data.size) + 329 len 64] = 0, address(poolAddress), Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[_1713 + ceil32(return_data.size) + 421 len 4] = 0
                call wantAddress with:
                   funct uint32(stor31)
                     gas gas_remaining wei
                    args 2 * ext_call.return_data[0], 0, mem[_1713 + ceil32(return_data.size) + 393 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_1713 + ceil32(return_data.size) + 439 len 22]
                else:
                    mem[_1713 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_1713 + ceil32(return_data.size) + 361]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_1713 + (2 * ceil32(return_data.size)) + 440 len 22]
            else:
                idx = 0
                s = mem[mem[64]]
                while idx < borrowDepth:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(this.address), address(poolAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + s < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    _5194 = mem[64]
                    mem[mem[64] + 36] = address(poolAddress)
                    mem[mem[64] + 68] = ext_call.return_data[0] + s
                    _5195 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_5195 + 32] = mem[_5195 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[64] = _5194 + 164
                    mem[_5194 + 100] = 32
                    mem[_5194 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_5194 + 270 len 26]
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _5366 = mem[_5195]
                    u = _5195 + 32
                    v = _5194 + 164
                    t = mem[_5195]
                    while t >= 32:
                        mem[v] = mem[u]
                        u = u + 32
                        v = v + 32
                        t = t - 32
                        continue 
                    mem[_5194 + floor32(mem[_5195]) + 164] = mem[_5195 + -(mem[_5195] % 32) + floor32(mem[_5195]) + 64 len mem[_5195] % 32] or Mask(8 * -(mem[_5195] % 32) + 32, -(8 * -(mem[_5195] % 32) + 32) + 256, mem[_5194 + floor32(mem[_5195]) + 164])
                    call wantAddress.mem[_5194 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_5194 + 168 len _5366 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_5194 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5194 + 168] = 32
                            mem[_5194 + 200] = 32
                            idx = 0
                            while idx < 32:
                                mem[_5194 + idx + 232] = mem[_5194 + idx + 132]
                                idx = idx + 32
                                continue 
                            revert with memory
                              from mem[64]
                               len _5194 + -mem[64] + 264
                        if mem[96] > 0:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_5194 + 274 len 22]
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).mint(uint256 arg1) with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            mem[64] = _5194 + 228
                            mem[_5194 + 164] = 26
                            mem[_5194 + 196] = 'SafeMath: division by zero'
                            mem[_5194 + 232] = 0
                            require ext_code.size(address(poolAddress))
                            call address(poolAddress).borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[_5194 + 228] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_5194 + 265 len 31]
                        mem[64] = _5194 + 228
                        mem[_5194 + 164] = 26
                        mem[_5194 + 196] = 'SafeMath: division by zero'
                        mem[_5194 + 232] = s * borrowRate / 100
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 100)
                        mem[_5194 + 228] = ext_call.return_data[0]
                    else:
                        mem[_5194 + 164] = return_data.size
                        mem[_5194 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_5194 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5194 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[_5194 + ceil32(return_data.size) + idx + 233] = mem[_5194 + idx + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_5194 + ceil32(return_data.size) + 233]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[_5194 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_5194 + ceil32(return_data.size) + 275 len 22]
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).mint(uint256 arg1) with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            mem[64] = _5194 + ceil32(return_data.size) + 229
                            mem[_5194 + ceil32(return_data.size) + 165] = 26
                            mem[_5194 + ceil32(return_data.size) + 197] = 'SafeMath: division by zero'
                            mem[_5194 + ceil32(return_data.size) + 233] = 0
                            require ext_code.size(address(poolAddress))
                            call address(poolAddress).borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[_5194 + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[_5194 + ceil32(return_data.size) + 266 len 31]
                        mem[64] = _5194 + ceil32(return_data.size) + 229
                        mem[_5194 + ceil32(return_data.size) + 165] = 26
                        mem[_5194 + ceil32(return_data.size) + 197] = 'SafeMath: division by zero'
                        mem[_5194 + ceil32(return_data.size) + 233] = s * borrowRate / 100
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 100)
                        mem[_5194 + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s * borrowRate / 100
                    continue 
                require ext_code.size(wantAddress)
                staticcall wantAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(wantAddress)
                staticcall wantAddress.allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), address(poolAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                _5314 = mem[64]
                mem[mem[64] + 36] = address(poolAddress)
                mem[mem[64] + 68] = 2 * ext_call.return_data[0]
                _5315 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                mem[64] = mem[64] + 164
                mem[_5314 + 100] = 32
                mem[_5314 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_5314 + 270 len 26]
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _5474 = mem[_5315]
                mem[_5314 + 164 len floor32(mem[_5315])] = mem[_5315 + 32 len floor32(mem[_5315])]
                mem[_5314 + floor32(mem[_5315]) + -(mem[_5315] % 32) + 196 len mem[_5315] % 32] = mem[_5315 + -(mem[_5315] % 32) + floor32(mem[_5315]) + 64 len mem[_5315] % 32]
                call wantAddress.mem[_5314 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_5314 + 168 len _5474 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_5314 + 274 len 22]
                else:
                    mem[_5314 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[_5314 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_5314 + ceil32(return_data.size) + 275 len 22]
    require ext_code.size(address(poolAddress))
    call address(poolAddress).mint(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(poolAddress))
    call address(poolAddress).balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_c567dada = ext_call.return_data[0]
    require ext_code.size(address(poolAddress))
    call address(poolAddress).borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_3ab24b3e = ext_call.return_data[0]
    wantLockedTotal = sub_c567dada - sub_3ab24b3e
}



}
