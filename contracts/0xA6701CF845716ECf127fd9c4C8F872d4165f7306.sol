contract main {




// =====================  Runtime code  =====================


#
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
uint8 stor2;
uint8 stor2; offset 8
uint8 stor2; offset 16
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
address poolAddress;
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
    return bool(uint8(stor2.field_8))
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
    return poolAddress
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
    return bool(uint8(stor2.field_0))
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
    return bool(uint8(stor2.field_16))
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
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    uint8(stor2.field_0) = 1
    emit Paused(msg.sender);
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

function unpause() payable {
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if not uint8(stor2.field_0):
        revert with 0, 'Pausable: not paused'
    uint8(stor2.field_0) = 0
    emit Unpaused(msg.sender);
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
    require ext_code.size(poolAddress)
    call poolAddress.balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_c567dada = ext_call.return_data[0]
    require ext_code.size(poolAddress)
    call poolAddress.borrowBalanceCurrent(address arg1) with:
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
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2
        if not unknown_0xa9059cbb(?????), address(arg3) << 64:
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
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_9a14ff17:
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(poolAddress)
        call poolAddress.0xa0712d68 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(poolAddress)
        call poolAddress.balanceOfUnderlying(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_c567dada = ext_call.return_data[0]
        require ext_code.size(poolAddress)
        call poolAddress.borrowBalanceCurrent(address arg1) with:
             gas gas_remaining wei
            args this.address
    else:
        idx = 0
        s = mem[mem[64]]
        while idx < borrowDepth:
            require ext_code.size(poolAddress)
            call poolAddress.0xa0712d68 with:
                 gas gas_remaining wei
                args s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not s:
                _59 = mem[64]
                mem[64] = mem[64] + 64
                mem[_59] = 26
                mem[_59 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = 0
                require ext_code.size(poolAddress)
                call poolAddress.borrow(uint256 arg1) with:
                     gas gas_remaining wei
                    args 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = 0
                continue 
            require s
            if s * borrowRate / s != borrowRate:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _62 = mem[64]
            mem[64] = mem[64] + 64
            mem[_62] = 26
            mem[_62 + 32] = 'SafeMath: division by zero'
            mem[mem[64] + 4] = s * borrowRate / 100
            require ext_code.size(poolAddress)
            call poolAddress.borrow(uint256 arg1) with:
                 gas gas_remaining wei
                args (s * borrowRate / 100)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            s = s * borrowRate / 100
            continue 
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(poolAddress)
        call poolAddress.0xa0712d68 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(poolAddress)
        call poolAddress.balanceOfUnderlying(address arg1) with:
             gas gas_remaining wei
            args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_c567dada = ext_call.return_data[0]
        require ext_code.size(poolAddress)
        call poolAddress.borrowBalanceCurrent(address arg1) with:
             gas gas_remaining wei
            args address(this.address)
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
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[100] = this.address
    require ext_code.size(poolAddress)
    call poolAddress.borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = mem[mem[64]]
    t = ext_call.return_data[0]
    while t < s:
        require ext_code.size(poolAddress)
        if t <= 0:
            call poolAddress.borrowBalanceCurrent(address arg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _235 = mem[64]
                mem[64] = mem[64] + 64
                mem[_235] = 26
                mem[_235 + 32] = 'SafeMath: division by zero'
                if borrowRate <= 0:
                    _239 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_239 + idx + 68] = mem[_235 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_239 + 68] = mem[_239 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _239 + -mem[64] + 100
                require borrowRate
                require ext_code.size(poolAddress)
                call poolAddress.balanceOfUnderlying(address arg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _277 = mem[64]
                mem[64] = mem[64] + 64
                mem[_277] = 30
                mem[_277 + 32] = 'SafeMath: subtraction overflow'
                if 0 / borrowRate > ext_call.return_data[0]:
                    _288 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_288 + idx + 68] = mem[_277 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_288 + 68] = mem[_288 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _288 + -mem[64] + 100
                require ext_code.size(poolAddress)
                call poolAddress.redeemUnderlying(uint256 arg1) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] - (0 / borrowRate))
            else:
                require ext_call.return_data[0]
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _238 = mem[64]
                mem[64] = mem[64] + 64
                mem[_238] = 26
                mem[_238 + 32] = 'SafeMath: division by zero'
                if borrowRate <= 0:
                    _248 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_248 + idx + 68] = mem[_238 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_248 + 68] = mem[_248 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _248 + -mem[64] + 100
                require borrowRate
                require ext_code.size(poolAddress)
                call poolAddress.balanceOfUnderlying(address arg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _287 = mem[64]
                mem[64] = mem[64] + 64
                mem[_287] = 30
                mem[_287 + 32] = 'SafeMath: subtraction overflow'
                if 100 * ext_call.return_data[0] / borrowRate > ext_call.return_data[0]:
                    _299 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_299 + idx + 68] = mem[_287 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_299 + 68] = mem[_299 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _299 + -mem[64] + 100
                require ext_code.size(poolAddress)
                call poolAddress.redeemUnderlying(uint256 arg1) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] - (100 * ext_call.return_data[0] / borrowRate))
        else:
            call poolAddress.repayBorrow(uint256 arg1) with:
                 gas gas_remaining wei
                args t
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(poolAddress)
            call poolAddress.borrowBalanceCurrent(address arg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _252 = mem[64]
                mem[64] = mem[64] + 64
                mem[_252] = 26
                mem[_252 + 32] = 'SafeMath: division by zero'
                if borrowRate <= 0:
                    _261 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_261 + idx + 68] = mem[_252 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_261 + 68] = mem[_261 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _261 + -mem[64] + 100
                require borrowRate
                require ext_code.size(poolAddress)
                call poolAddress.balanceOfUnderlying(address arg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _306 = mem[64]
                mem[64] = mem[64] + 64
                mem[_306] = 30
                mem[_306 + 32] = 'SafeMath: subtraction overflow'
                if 0 / borrowRate > ext_call.return_data[0]:
                    _317 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_317 + idx + 68] = mem[_306 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_317 + 68] = mem[_317 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _317 + -mem[64] + 100
                require ext_code.size(poolAddress)
                call poolAddress.redeemUnderlying(uint256 arg1) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] - (0 / borrowRate))
            else:
                require ext_call.return_data[0]
                if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _260 = mem[64]
                mem[64] = mem[64] + 64
                mem[_260] = 26
                mem[_260 + 32] = 'SafeMath: division by zero'
                if borrowRate <= 0:
                    _272 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_272 + idx + 68] = mem[_260 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_272 + 68] = mem[_272 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _272 + -mem[64] + 100
                require borrowRate
                require ext_code.size(poolAddress)
                call poolAddress.balanceOfUnderlying(address arg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _316 = mem[64]
                mem[64] = mem[64] + 64
                mem[_316] = 30
                mem[_316 + 32] = 'SafeMath: subtraction overflow'
                if 100 * ext_call.return_data[0] / borrowRate > ext_call.return_data[0]:
                    _329 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_329 + idx + 68] = mem[_316 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_329 + 68] = mem[_329 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _329 + -mem[64] + 100
                require ext_code.size(poolAddress)
                call poolAddress.redeemUnderlying(uint256 arg1) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] - (100 * ext_call.return_data[0] / borrowRate))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = ext_call.return_data[0]
        t = ext_call.return_data[0]
        continue 
    require ext_code.size(poolAddress)
    call poolAddress.repayBorrow(uint256 arg1) with:
         gas gas_remaining wei
        args -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(poolAddress)
    staticcall poolAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(poolAddress)
    call poolAddress.redeem(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(poolAddress)
    call poolAddress.balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_c567dada = ext_call.return_data[0]
    require ext_code.size(poolAddress)
    call poolAddress.borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_3ab24b3e = ext_call.return_data[0]
    wantLockedTotal = sub_c567dada - sub_3ab24b3e
    borrowRate = arg1
    borrowDepth = arg2
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= sub_9a14ff17:
        idx = 0
        s = mem[mem[64]]
        while idx < borrowDepth:
            require ext_code.size(poolAddress)
            call poolAddress.0xa0712d68 with:
                 gas gas_remaining wei
                args s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not s:
                _445 = mem[64]
                mem[64] = mem[64] + 64
                mem[_445] = 26
                mem[_445 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = 0
                require ext_code.size(poolAddress)
                call poolAddress.borrow(uint256 arg1) with:
                     gas gas_remaining wei
                    args 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = 0
                continue 
            require s
            if s * borrowRate / s != borrowRate:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _448 = mem[64]
            mem[64] = mem[64] + 64
            mem[_448] = 26
            mem[_448 + 32] = 'SafeMath: division by zero'
            mem[mem[64] + 4] = s * borrowRate / 100
            require ext_code.size(poolAddress)
            call poolAddress.borrow(uint256 arg1) with:
                 gas gas_remaining wei
                args (s * borrowRate / 100)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            s = s * borrowRate / 100
            continue 
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(poolAddress)
    call poolAddress.0xa0712d68 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(poolAddress)
    call poolAddress.balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_c567dada = ext_call.return_data[0]
    require ext_code.size(poolAddress)
    call poolAddress.borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_3ab24b3e = ext_call.return_data[0]
    wantLockedTotal = sub_c567dada - sub_3ab24b3e
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    require ext_code.size(poolAddress)
    call poolAddress.balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_c567dada = ext_call.return_data[0]
    require ext_code.size(poolAddress)
    call poolAddress.borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_3ab24b3e = ext_call.return_data[0]
    wantLockedTotal = sub_c567dada - sub_3ab24b3e
    mem[132] = msg.sender
    mem[164] = this.address
    mem[196] = arg2
    mem[96] = 100
    mem[132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[128 len 4] = unknown_0x23b872dd(?????)
    mem[64] = 292
    mem[228] = 32
    mem[260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if ext_code.size(wantAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    call wantAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if sub_25c7ce6b >= 10000:
            if wantLockedTotal <= 0:
                if sharesTotal + arg2 < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += arg2
                mem[296] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[292] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_9a14ff17:
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = mem[mem[64]]
                    while idx < borrowDepth:
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _6752 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6752] = 26
                            mem[_6752 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(poolAddress)
                            call poolAddress.borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _6908 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6908] = 26
                        mem[_6908 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 100
                        require ext_code.size(poolAddress)
                        call poolAddress.borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 100
                        continue 
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_3ab24b3e = ext_call.return_data[0]
                wantLockedTotal = sub_c567dada - sub_3ab24b3e
                stor1 = 1
                return arg2
            if sharesTotal <= 0:
                if sharesTotal + arg2 < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += arg2
                mem[296] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[292] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_9a14ff17:
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = mem[mem[64]]
                    while idx < borrowDepth:
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _6753 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6753] = 26
                            mem[_6753 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(poolAddress)
                            call poolAddress.borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _6909 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6909] = 26
                        mem[_6909 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 100
                        require ext_code.size(poolAddress)
                        call poolAddress.borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 100
                        continue 
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_3ab24b3e = ext_call.return_data[0]
                wantLockedTotal = sub_c567dada - sub_3ab24b3e
                stor1 = 1
                return arg2
            if not arg2:
                mem[292] = 26
                mem[324] = 'SafeMath: division by zero'
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                mem[64] = 420
                mem[356] = 26
                mem[388] = 'SafeMath: division by zero'
                if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += 0 / wantLockedTotal / 10000
                mem[424] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[420] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_9a14ff17:
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = mem[mem[64]]
                    while idx < borrowDepth:
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _6756 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6756] = 26
                            mem[_6756 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(poolAddress)
                            call poolAddress.borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _6912 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6912] = 26
                        mem[_6912 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 100
                        require ext_code.size(poolAddress)
                        call poolAddress.borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 100
                        continue 
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_3ab24b3e = ext_call.return_data[0]
                wantLockedTotal = sub_c567dada - sub_3ab24b3e
                stor1 = 1
                return (0 / wantLockedTotal / 10000)
            require arg2
            if arg2 * sharesTotal / arg2 != sharesTotal:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
            if not arg2 * sharesTotal:
                mem[292] = 26
                mem[324] = 'SafeMath: division by zero'
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                mem[64] = 420
                mem[356] = 26
                mem[388] = 'SafeMath: division by zero'
                if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += 0 / wantLockedTotal / 10000
                mem[424] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[420] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_9a14ff17:
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = mem[mem[64]]
                    while idx < borrowDepth:
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _6755 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6755] = 26
                            mem[_6755 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(poolAddress)
                            call poolAddress.borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _6911 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6911] = 26
                        mem[_6911 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 100
                        require ext_code.size(poolAddress)
                        call poolAddress.borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 100
                        continue 
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_3ab24b3e = ext_call.return_data[0]
                wantLockedTotal = sub_c567dada - sub_3ab24b3e
                stor1 = 1
                return (0 / wantLockedTotal / 10000)
            require arg2 * sharesTotal
            if arg2 * sharesTotal * entranceFeeFactor / arg2 * sharesTotal != entranceFeeFactor:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
            mem[292] = 26
            mem[324] = 'SafeMath: division by zero'
            if wantLockedTotal <= 0:
                revert with 0, 'SafeMath: division by zero'
            require wantLockedTotal
            mem[64] = 420
            mem[356] = 26
            mem[388] = 'SafeMath: division by zero'
            if sharesTotal + (arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000
            mem[424] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[420] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_9a14ff17:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(poolAddress)
                call poolAddress.0xa0712d68 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(poolAddress)
                call poolAddress.balanceOfUnderlying(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_c567dada = ext_call.return_data[0]
                require ext_code.size(poolAddress)
                call poolAddress.borrowBalanceCurrent(address arg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                idx = 0
                s = mem[mem[64]]
                while idx < borrowDepth:
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not s:
                        _6754 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6754] = 26
                        mem[_6754 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = 0
                        require ext_code.size(poolAddress)
                        call poolAddress.borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = 0
                        continue 
                    require s
                    if s * borrowRate / s != borrowRate:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _6910 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6910] = 26
                    mem[_6910 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = s * borrowRate / 100
                    require ext_code.size(poolAddress)
                    call poolAddress.borrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args (s * borrowRate / 100)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s * borrowRate / 100
                    continue 
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(poolAddress)
                call poolAddress.0xa0712d68 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(poolAddress)
                call poolAddress.balanceOfUnderlying(address arg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_c567dada = ext_call.return_data[0]
                require ext_code.size(poolAddress)
                call poolAddress.borrowBalanceCurrent(address arg1) with:
                     gas gas_remaining wei
                    args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_3ab24b3e = ext_call.return_data[0]
            wantLockedTotal = sub_c567dada - sub_3ab24b3e
            stor1 = 1
            return (arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000)
        if not arg2:
            mem[64] = 356
            mem[292] = 26
            mem[324] = 'SafeMath: division by zero'
            if wantLockedTotal <= 0:
                if sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                mem[360] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[356] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_9a14ff17:
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = mem[mem[64]]
                    while idx < borrowDepth:
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _6762 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6762] = 26
                            mem[_6762 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(poolAddress)
                            call poolAddress.borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _6918 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6918] = 26
                        mem[_6918 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 100
                        require ext_code.size(poolAddress)
                        call poolAddress.borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 100
                        continue 
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_3ab24b3e = ext_call.return_data[0]
                wantLockedTotal = sub_c567dada - sub_3ab24b3e
                stor1 = 1
                return 0
            if sharesTotal <= 0:
                if sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                mem[360] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[356] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_9a14ff17:
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = mem[mem[64]]
                    while idx < borrowDepth:
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _6763 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6763] = 26
                            mem[_6763 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(poolAddress)
                            call poolAddress.borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _6919 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6919] = 26
                        mem[_6919 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 100
                        require ext_code.size(poolAddress)
                        call poolAddress.borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 100
                        continue 
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_3ab24b3e = ext_call.return_data[0]
                wantLockedTotal = sub_c567dada - sub_3ab24b3e
                stor1 = 1
                return 0
            mem[356] = 26
            mem[388] = 'SafeMath: division by zero'
            if wantLockedTotal <= 0:
                revert with 0, 'SafeMath: division by zero'
            require wantLockedTotal
            mem[64] = 484
            mem[420] = 26
            mem[452] = 'SafeMath: division by zero'
            if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / wantLockedTotal / 10000
            mem[488] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[484] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_9a14ff17:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(poolAddress)
                call poolAddress.0xa0712d68 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(poolAddress)
                call poolAddress.balanceOfUnderlying(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_c567dada = ext_call.return_data[0]
                require ext_code.size(poolAddress)
                call poolAddress.borrowBalanceCurrent(address arg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                idx = 0
                s = mem[mem[64]]
                while idx < borrowDepth:
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not s:
                        _6764 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6764] = 26
                        mem[_6764 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = 0
                        require ext_code.size(poolAddress)
                        call poolAddress.borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = 0
                        continue 
                    require s
                    if s * borrowRate / s != borrowRate:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _6920 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6920] = 26
                    mem[_6920 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = s * borrowRate / 100
                    require ext_code.size(poolAddress)
                    call poolAddress.borrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args (s * borrowRate / 100)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s * borrowRate / 100
                    continue 
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(poolAddress)
                call poolAddress.0xa0712d68 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(poolAddress)
                call poolAddress.balanceOfUnderlying(address arg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_c567dada = ext_call.return_data[0]
                require ext_code.size(poolAddress)
                call poolAddress.borrowBalanceCurrent(address arg1) with:
                     gas gas_remaining wei
                    args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_3ab24b3e = ext_call.return_data[0]
            wantLockedTotal = sub_c567dada - sub_3ab24b3e
            stor1 = 1
            return (0 / wantLockedTotal / 10000)
        require arg2
        if arg2 * sub_25c7ce6b / arg2 != sub_25c7ce6b:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
        mem[64] = 356
        mem[292] = 26
        mem[324] = 'SafeMath: division by zero'
        if wantLockedTotal <= 0:
            if sharesTotal + (arg2 * sub_25c7ce6b / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += arg2 * sub_25c7ce6b / 10000
            mem[360] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[356] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_9a14ff17:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(poolAddress)
                call poolAddress.0xa0712d68 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(poolAddress)
                call poolAddress.balanceOfUnderlying(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_c567dada = ext_call.return_data[0]
                require ext_code.size(poolAddress)
                call poolAddress.borrowBalanceCurrent(address arg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                idx = 0
                s = mem[mem[64]]
                while idx < borrowDepth:
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not s:
                        _6757 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6757] = 26
                        mem[_6757 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = 0
                        require ext_code.size(poolAddress)
                        call poolAddress.borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = 0
                        continue 
                    require s
                    if s * borrowRate / s != borrowRate:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _6913 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6913] = 26
                    mem[_6913 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = s * borrowRate / 100
                    require ext_code.size(poolAddress)
                    call poolAddress.borrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args (s * borrowRate / 100)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s * borrowRate / 100
                    continue 
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(poolAddress)
                call poolAddress.0xa0712d68 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(poolAddress)
                call poolAddress.balanceOfUnderlying(address arg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_c567dada = ext_call.return_data[0]
                require ext_code.size(poolAddress)
                call poolAddress.borrowBalanceCurrent(address arg1) with:
                     gas gas_remaining wei
                    args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_3ab24b3e = ext_call.return_data[0]
            wantLockedTotal = sub_c567dada - sub_3ab24b3e
            stor1 = 1
            return (arg2 * sub_25c7ce6b / 10000)
        if sharesTotal <= 0:
            if sharesTotal + (arg2 * sub_25c7ce6b / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += arg2 * sub_25c7ce6b / 10000
            mem[360] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[356] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_9a14ff17:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(poolAddress)
                call poolAddress.0xa0712d68 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(poolAddress)
                call poolAddress.balanceOfUnderlying(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_c567dada = ext_call.return_data[0]
                require ext_code.size(poolAddress)
                call poolAddress.borrowBalanceCurrent(address arg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                idx = 0
                s = mem[mem[64]]
                while idx < borrowDepth:
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not s:
                        _6758 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6758] = 26
                        mem[_6758 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = 0
                        require ext_code.size(poolAddress)
                        call poolAddress.borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = 0
                        continue 
                    require s
                    if s * borrowRate / s != borrowRate:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _6914 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6914] = 26
                    mem[_6914 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = s * borrowRate / 100
                    require ext_code.size(poolAddress)
                    call poolAddress.borrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args (s * borrowRate / 100)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s * borrowRate / 100
                    continue 
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(poolAddress)
                call poolAddress.0xa0712d68 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(poolAddress)
                call poolAddress.balanceOfUnderlying(address arg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_c567dada = ext_call.return_data[0]
                require ext_code.size(poolAddress)
                call poolAddress.borrowBalanceCurrent(address arg1) with:
                     gas gas_remaining wei
                    args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_3ab24b3e = ext_call.return_data[0]
            wantLockedTotal = sub_c567dada - sub_3ab24b3e
            stor1 = 1
            return (arg2 * sub_25c7ce6b / 10000)
        if not arg2 * sub_25c7ce6b / 10000:
            mem[356] = 26
            mem[388] = 'SafeMath: division by zero'
            if wantLockedTotal <= 0:
                revert with 0, 'SafeMath: division by zero'
            require wantLockedTotal
            mem[64] = 484
            mem[420] = 26
            mem[452] = 'SafeMath: division by zero'
            if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / wantLockedTotal / 10000
            mem[488] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[484] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_9a14ff17:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(poolAddress)
                call poolAddress.0xa0712d68 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(poolAddress)
                call poolAddress.balanceOfUnderlying(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_c567dada = ext_call.return_data[0]
                require ext_code.size(poolAddress)
                call poolAddress.borrowBalanceCurrent(address arg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                idx = 0
                s = mem[mem[64]]
                while idx < borrowDepth:
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not s:
                        _6761 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6761] = 26
                        mem[_6761 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = 0
                        require ext_code.size(poolAddress)
                        call poolAddress.borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = 0
                        continue 
                    require s
                    if s * borrowRate / s != borrowRate:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _6917 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6917] = 26
                    mem[_6917 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = s * borrowRate / 100
                    require ext_code.size(poolAddress)
                    call poolAddress.borrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args (s * borrowRate / 100)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s * borrowRate / 100
                    continue 
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(poolAddress)
                call poolAddress.0xa0712d68 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(poolAddress)
                call poolAddress.balanceOfUnderlying(address arg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_c567dada = ext_call.return_data[0]
                require ext_code.size(poolAddress)
                call poolAddress.borrowBalanceCurrent(address arg1) with:
                     gas gas_remaining wei
                    args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_3ab24b3e = ext_call.return_data[0]
            wantLockedTotal = sub_c567dada - sub_3ab24b3e
            stor1 = 1
            return (0 / wantLockedTotal / 10000)
        require arg2 * sub_25c7ce6b / 10000
        if arg2 * sub_25c7ce6b / 10000 * sharesTotal / arg2 * sub_25c7ce6b / 10000 != sharesTotal:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[457 len 31]
        if not arg2 * sub_25c7ce6b / 10000 * sharesTotal:
            mem[356] = 26
            mem[388] = 'SafeMath: division by zero'
            if wantLockedTotal <= 0:
                revert with 0, 'SafeMath: division by zero'
            require wantLockedTotal
            mem[64] = 484
            mem[420] = 26
            mem[452] = 'SafeMath: division by zero'
            if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / wantLockedTotal / 10000
            mem[488] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[484] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_9a14ff17:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(poolAddress)
                call poolAddress.0xa0712d68 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(poolAddress)
                call poolAddress.balanceOfUnderlying(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_c567dada = ext_call.return_data[0]
                require ext_code.size(poolAddress)
                call poolAddress.borrowBalanceCurrent(address arg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                idx = 0
                s = mem[mem[64]]
                while idx < borrowDepth:
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not s:
                        _6760 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6760] = 26
                        mem[_6760 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = 0
                        require ext_code.size(poolAddress)
                        call poolAddress.borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = 0
                        continue 
                    require s
                    if s * borrowRate / s != borrowRate:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _6916 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6916] = 26
                    mem[_6916 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = s * borrowRate / 100
                    require ext_code.size(poolAddress)
                    call poolAddress.borrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args (s * borrowRate / 100)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s * borrowRate / 100
                    continue 
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(poolAddress)
                call poolAddress.0xa0712d68 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(poolAddress)
                call poolAddress.balanceOfUnderlying(address arg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_c567dada = ext_call.return_data[0]
                require ext_code.size(poolAddress)
                call poolAddress.borrowBalanceCurrent(address arg1) with:
                     gas gas_remaining wei
                    args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_3ab24b3e = ext_call.return_data[0]
            wantLockedTotal = sub_c567dada - sub_3ab24b3e
            stor1 = 1
            return (0 / wantLockedTotal / 10000)
        require arg2 * sub_25c7ce6b / 10000 * sharesTotal
        if arg2 * sub_25c7ce6b / 10000 * sharesTotal * entranceFeeFactor / arg2 * sub_25c7ce6b / 10000 * sharesTotal != entranceFeeFactor:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[457 len 31]
        mem[356] = 26
        mem[388] = 'SafeMath: division by zero'
        if wantLockedTotal <= 0:
            revert with 0, 'SafeMath: division by zero'
        require wantLockedTotal
        mem[64] = 484
        mem[420] = 26
        mem[452] = 'SafeMath: division by zero'
        if sharesTotal + (arg2 * sub_25c7ce6b / 10000 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000) < sharesTotal:
            revert with 0, 'SafeMath: addition overflow'
        sharesTotal += arg2 * sub_25c7ce6b / 10000 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000
        mem[488] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[484] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < sub_9a14ff17:
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(poolAddress)
            call poolAddress.0xa0712d68 with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(poolAddress)
            call poolAddress.balanceOfUnderlying(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_c567dada = ext_call.return_data[0]
            require ext_code.size(poolAddress)
            call poolAddress.borrowBalanceCurrent(address arg1) with:
                 gas gas_remaining wei
                args this.address
        else:
            idx = 0
            s = mem[mem[64]]
            while idx < borrowDepth:
                require ext_code.size(poolAddress)
                call poolAddress.0xa0712d68 with:
                     gas gas_remaining wei
                    args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not s:
                    _6759 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6759] = 26
                    mem[_6759 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = 0
                    require ext_code.size(poolAddress)
                    call poolAddress.borrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = 0
                    continue 
                require s
                if s * borrowRate / s != borrowRate:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _6915 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6915] = 26
                mem[_6915 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = s * borrowRate / 100
                require ext_code.size(poolAddress)
                call poolAddress.borrow(uint256 arg1) with:
                     gas gas_remaining wei
                    args (s * borrowRate / 100)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = s * borrowRate / 100
                continue 
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(poolAddress)
            call poolAddress.0xa0712d68 with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(poolAddress)
            call poolAddress.balanceOfUnderlying(address arg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_c567dada = ext_call.return_data[0]
            require ext_code.size(poolAddress)
            call poolAddress.borrowBalanceCurrent(address arg1) with:
                 gas gas_remaining wei
                args address(this.address)
    else:
        mem[64] = ceil32(return_data.size) + 293
        mem[292] = return_data.size
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            if sub_25c7ce6b >= 10000:
                if wantLockedTotal <= 0:
                    if sharesTotal + arg2 < sharesTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    sharesTotal += arg2
                    mem[ceil32(return_data.size) + 297] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 293] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < sub_9a14ff17:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolAddress)
                        call poolAddress.balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_c567dada = ext_call.return_data[0]
                        require ext_code.size(poolAddress)
                        call poolAddress.borrowBalanceCurrent(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                    else:
                        idx = 0
                        s = mem[mem[64]]
                        while idx < borrowDepth:
                            require ext_code.size(poolAddress)
                            call poolAddress.0xa0712d68 with:
                                 gas gas_remaining wei
                                args s
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not s:
                                _6765 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6765] = 26
                                mem[_6765 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = 0
                                require ext_code.size(poolAddress)
                                call poolAddress.borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = 0
                                continue 
                            require s
                            if s * borrowRate / s != borrowRate:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _6921 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6921] = 26
                            mem[_6921 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = s * borrowRate / 100
                            require ext_code.size(poolAddress)
                            call poolAddress.borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (s * borrowRate / 100)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = s * borrowRate / 100
                            continue 
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolAddress)
                        call poolAddress.balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_c567dada = ext_call.return_data[0]
                        require ext_code.size(poolAddress)
                        call poolAddress.borrowBalanceCurrent(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_3ab24b3e = ext_call.return_data[0]
                    wantLockedTotal = sub_c567dada - sub_3ab24b3e
                    stor1 = 1
                    return arg2
                if sharesTotal <= 0:
                    if sharesTotal + arg2 < sharesTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    sharesTotal += arg2
                    mem[ceil32(return_data.size) + 297] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 293] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < sub_9a14ff17:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolAddress)
                        call poolAddress.balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_c567dada = ext_call.return_data[0]
                        require ext_code.size(poolAddress)
                        call poolAddress.borrowBalanceCurrent(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                    else:
                        idx = 0
                        s = mem[mem[64]]
                        while idx < borrowDepth:
                            require ext_code.size(poolAddress)
                            call poolAddress.0xa0712d68 with:
                                 gas gas_remaining wei
                                args s
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not s:
                                _6766 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6766] = 26
                                mem[_6766 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = 0
                                require ext_code.size(poolAddress)
                                call poolAddress.borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = 0
                                continue 
                            require s
                            if s * borrowRate / s != borrowRate:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _6922 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6922] = 26
                            mem[_6922 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = s * borrowRate / 100
                            require ext_code.size(poolAddress)
                            call poolAddress.borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (s * borrowRate / 100)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = s * borrowRate / 100
                            continue 
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolAddress)
                        call poolAddress.balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_c567dada = ext_call.return_data[0]
                        require ext_code.size(poolAddress)
                        call poolAddress.borrowBalanceCurrent(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_3ab24b3e = ext_call.return_data[0]
                    wantLockedTotal = sub_c567dada - sub_3ab24b3e
                    stor1 = 1
                    return arg2
                if not arg2:
                    mem[ceil32(return_data.size) + 293] = 26
                    mem[ceil32(return_data.size) + 325] = 'SafeMath: division by zero'
                    if wantLockedTotal <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require wantLockedTotal
                    mem[64] = ceil32(return_data.size) + 421
                    mem[ceil32(return_data.size) + 357] = 26
                    mem[ceil32(return_data.size) + 389] = 'SafeMath: division by zero'
                    if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    sharesTotal += 0 / wantLockedTotal / 10000
                    mem[ceil32(return_data.size) + 425] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 421] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < sub_9a14ff17:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolAddress)
                        call poolAddress.balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_c567dada = ext_call.return_data[0]
                        require ext_code.size(poolAddress)
                        call poolAddress.borrowBalanceCurrent(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                    else:
                        idx = 0
                        s = mem[mem[64]]
                        while idx < borrowDepth:
                            require ext_code.size(poolAddress)
                            call poolAddress.0xa0712d68 with:
                                 gas gas_remaining wei
                                args s
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not s:
                                _6769 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6769] = 26
                                mem[_6769 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = 0
                                require ext_code.size(poolAddress)
                                call poolAddress.borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = 0
                                continue 
                            require s
                            if s * borrowRate / s != borrowRate:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _6925 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6925] = 26
                            mem[_6925 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = s * borrowRate / 100
                            require ext_code.size(poolAddress)
                            call poolAddress.borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (s * borrowRate / 100)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = s * borrowRate / 100
                            continue 
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolAddress)
                        call poolAddress.balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_c567dada = ext_call.return_data[0]
                        require ext_code.size(poolAddress)
                        call poolAddress.borrowBalanceCurrent(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_3ab24b3e = ext_call.return_data[0]
                    wantLockedTotal = sub_c567dada - sub_3ab24b3e
                    stor1 = 1
                    return (0 / wantLockedTotal / 10000)
                require arg2
                if arg2 * sharesTotal / arg2 != sharesTotal:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                if not arg2 * sharesTotal:
                    mem[ceil32(return_data.size) + 293] = 26
                    mem[ceil32(return_data.size) + 325] = 'SafeMath: division by zero'
                    if wantLockedTotal <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require wantLockedTotal
                    mem[64] = ceil32(return_data.size) + 421
                    mem[ceil32(return_data.size) + 357] = 26
                    mem[ceil32(return_data.size) + 389] = 'SafeMath: division by zero'
                    if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    sharesTotal += 0 / wantLockedTotal / 10000
                    mem[ceil32(return_data.size) + 425] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 421] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < sub_9a14ff17:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolAddress)
                        call poolAddress.balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_c567dada = ext_call.return_data[0]
                        require ext_code.size(poolAddress)
                        call poolAddress.borrowBalanceCurrent(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                    else:
                        idx = 0
                        s = mem[mem[64]]
                        while idx < borrowDepth:
                            require ext_code.size(poolAddress)
                            call poolAddress.0xa0712d68 with:
                                 gas gas_remaining wei
                                args s
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not s:
                                _6768 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6768] = 26
                                mem[_6768 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = 0
                                require ext_code.size(poolAddress)
                                call poolAddress.borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = 0
                                continue 
                            require s
                            if s * borrowRate / s != borrowRate:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _6924 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6924] = 26
                            mem[_6924 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = s * borrowRate / 100
                            require ext_code.size(poolAddress)
                            call poolAddress.borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (s * borrowRate / 100)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = s * borrowRate / 100
                            continue 
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolAddress)
                        call poolAddress.balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_c567dada = ext_call.return_data[0]
                        require ext_code.size(poolAddress)
                        call poolAddress.borrowBalanceCurrent(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_3ab24b3e = ext_call.return_data[0]
                    wantLockedTotal = sub_c567dada - sub_3ab24b3e
                    stor1 = 1
                    return (0 / wantLockedTotal / 10000)
                require arg2 * sharesTotal
                if arg2 * sharesTotal * entranceFeeFactor / arg2 * sharesTotal != entranceFeeFactor:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                mem[ceil32(return_data.size) + 293] = 26
                mem[ceil32(return_data.size) + 325] = 'SafeMath: division by zero'
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                mem[64] = ceil32(return_data.size) + 421
                mem[ceil32(return_data.size) + 357] = 26
                mem[ceil32(return_data.size) + 389] = 'SafeMath: division by zero'
                if sharesTotal + (arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000) < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000
                mem[ceil32(return_data.size) + 425] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 421] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_9a14ff17:
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = mem[mem[64]]
                    while idx < borrowDepth:
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _6767 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6767] = 26
                            mem[_6767 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(poolAddress)
                            call poolAddress.borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _6923 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6923] = 26
                        mem[_6923 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 100
                        require ext_code.size(poolAddress)
                        call poolAddress.borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 100
                        continue 
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_3ab24b3e = ext_call.return_data[0]
                wantLockedTotal = sub_c567dada - sub_3ab24b3e
                stor1 = 1
                return (arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000)
            if not arg2:
                mem[64] = ceil32(return_data.size) + 357
                mem[ceil32(return_data.size) + 293] = 26
                mem[ceil32(return_data.size) + 325] = 'SafeMath: division by zero'
                if wantLockedTotal <= 0:
                    if sharesTotal < sharesTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[ceil32(return_data.size) + 361] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 357] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < sub_9a14ff17:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolAddress)
                        call poolAddress.balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_c567dada = ext_call.return_data[0]
                        require ext_code.size(poolAddress)
                        call poolAddress.borrowBalanceCurrent(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                    else:
                        idx = 0
                        s = mem[mem[64]]
                        while idx < borrowDepth:
                            require ext_code.size(poolAddress)
                            call poolAddress.0xa0712d68 with:
                                 gas gas_remaining wei
                                args s
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not s:
                                _6775 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6775] = 26
                                mem[_6775 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = 0
                                require ext_code.size(poolAddress)
                                call poolAddress.borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = 0
                                continue 
                            require s
                            if s * borrowRate / s != borrowRate:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _6931 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6931] = 26
                            mem[_6931 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = s * borrowRate / 100
                            require ext_code.size(poolAddress)
                            call poolAddress.borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (s * borrowRate / 100)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = s * borrowRate / 100
                            continue 
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolAddress)
                        call poolAddress.balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_c567dada = ext_call.return_data[0]
                        require ext_code.size(poolAddress)
                        call poolAddress.borrowBalanceCurrent(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_3ab24b3e = ext_call.return_data[0]
                    wantLockedTotal = sub_c567dada - sub_3ab24b3e
                    stor1 = 1
                    return 0
                if sharesTotal <= 0:
                    if sharesTotal < sharesTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[ceil32(return_data.size) + 361] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 357] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < sub_9a14ff17:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolAddress)
                        call poolAddress.balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_c567dada = ext_call.return_data[0]
                        require ext_code.size(poolAddress)
                        call poolAddress.borrowBalanceCurrent(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                    else:
                        idx = 0
                        s = mem[mem[64]]
                        while idx < borrowDepth:
                            require ext_code.size(poolAddress)
                            call poolAddress.0xa0712d68 with:
                                 gas gas_remaining wei
                                args s
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not s:
                                _6776 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6776] = 26
                                mem[_6776 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = 0
                                require ext_code.size(poolAddress)
                                call poolAddress.borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = 0
                                continue 
                            require s
                            if s * borrowRate / s != borrowRate:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _6932 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6932] = 26
                            mem[_6932 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = s * borrowRate / 100
                            require ext_code.size(poolAddress)
                            call poolAddress.borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (s * borrowRate / 100)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = s * borrowRate / 100
                            continue 
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolAddress)
                        call poolAddress.balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_c567dada = ext_call.return_data[0]
                        require ext_code.size(poolAddress)
                        call poolAddress.borrowBalanceCurrent(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_3ab24b3e = ext_call.return_data[0]
                    wantLockedTotal = sub_c567dada - sub_3ab24b3e
                    stor1 = 1
                    return 0
                mem[ceil32(return_data.size) + 357] = 26
                mem[ceil32(return_data.size) + 389] = 'SafeMath: division by zero'
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                mem[64] = ceil32(return_data.size) + 485
                mem[ceil32(return_data.size) + 421] = 26
                mem[ceil32(return_data.size) + 453] = 'SafeMath: division by zero'
                if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += 0 / wantLockedTotal / 10000
                mem[ceil32(return_data.size) + 489] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 485] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_9a14ff17:
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = mem[mem[64]]
                    while idx < borrowDepth:
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _6777 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6777] = 26
                            mem[_6777 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(poolAddress)
                            call poolAddress.borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _6933 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6933] = 26
                        mem[_6933 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 100
                        require ext_code.size(poolAddress)
                        call poolAddress.borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 100
                        continue 
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_3ab24b3e = ext_call.return_data[0]
                wantLockedTotal = sub_c567dada - sub_3ab24b3e
                stor1 = 1
                return (0 / wantLockedTotal / 10000)
            require arg2
            if arg2 * sub_25c7ce6b / arg2 != sub_25c7ce6b:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            mem[64] = ceil32(return_data.size) + 357
            mem[ceil32(return_data.size) + 293] = 26
            mem[ceil32(return_data.size) + 325] = 'SafeMath: division by zero'
            if wantLockedTotal <= 0:
                if sharesTotal + (arg2 * sub_25c7ce6b / 10000) < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += arg2 * sub_25c7ce6b / 10000
                mem[ceil32(return_data.size) + 361] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 357] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_9a14ff17:
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = mem[mem[64]]
                    while idx < borrowDepth:
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _6770 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6770] = 26
                            mem[_6770 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(poolAddress)
                            call poolAddress.borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _6926 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6926] = 26
                        mem[_6926 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 100
                        require ext_code.size(poolAddress)
                        call poolAddress.borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 100
                        continue 
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_3ab24b3e = ext_call.return_data[0]
                wantLockedTotal = sub_c567dada - sub_3ab24b3e
                stor1 = 1
                return (arg2 * sub_25c7ce6b / 10000)
            if sharesTotal <= 0:
                if sharesTotal + (arg2 * sub_25c7ce6b / 10000) < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += arg2 * sub_25c7ce6b / 10000
                mem[ceil32(return_data.size) + 361] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 357] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_9a14ff17:
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = mem[mem[64]]
                    while idx < borrowDepth:
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _6771 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6771] = 26
                            mem[_6771 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(poolAddress)
                            call poolAddress.borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _6927 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6927] = 26
                        mem[_6927 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 100
                        require ext_code.size(poolAddress)
                        call poolAddress.borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 100
                        continue 
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_3ab24b3e = ext_call.return_data[0]
                wantLockedTotal = sub_c567dada - sub_3ab24b3e
                stor1 = 1
                return (arg2 * sub_25c7ce6b / 10000)
            if not arg2 * sub_25c7ce6b / 10000:
                mem[ceil32(return_data.size) + 357] = 26
                mem[ceil32(return_data.size) + 389] = 'SafeMath: division by zero'
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                mem[64] = ceil32(return_data.size) + 485
                mem[ceil32(return_data.size) + 421] = 26
                mem[ceil32(return_data.size) + 453] = 'SafeMath: division by zero'
                if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += 0 / wantLockedTotal / 10000
                mem[ceil32(return_data.size) + 489] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 485] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_9a14ff17:
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = mem[mem[64]]
                    while idx < borrowDepth:
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _6774 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6774] = 26
                            mem[_6774 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(poolAddress)
                            call poolAddress.borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _6930 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6930] = 26
                        mem[_6930 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 100
                        require ext_code.size(poolAddress)
                        call poolAddress.borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 100
                        continue 
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_3ab24b3e = ext_call.return_data[0]
                wantLockedTotal = sub_c567dada - sub_3ab24b3e
                stor1 = 1
                return (0 / wantLockedTotal / 10000)
            require arg2 * sub_25c7ce6b / 10000
            if arg2 * sub_25c7ce6b / 10000 * sharesTotal / arg2 * sub_25c7ce6b / 10000 != sharesTotal:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 458 len 31]
            if not arg2 * sub_25c7ce6b / 10000 * sharesTotal:
                mem[ceil32(return_data.size) + 357] = 26
                mem[ceil32(return_data.size) + 389] = 'SafeMath: division by zero'
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                mem[64] = ceil32(return_data.size) + 485
                mem[ceil32(return_data.size) + 421] = 26
                mem[ceil32(return_data.size) + 453] = 'SafeMath: division by zero'
                if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += 0 / wantLockedTotal / 10000
                mem[ceil32(return_data.size) + 489] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 485] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_9a14ff17:
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = mem[mem[64]]
                    while idx < borrowDepth:
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _6773 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6773] = 26
                            mem[_6773 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(poolAddress)
                            call poolAddress.borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _6929 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6929] = 26
                        mem[_6929 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 100
                        require ext_code.size(poolAddress)
                        call poolAddress.borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 100
                        continue 
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_3ab24b3e = ext_call.return_data[0]
                wantLockedTotal = sub_c567dada - sub_3ab24b3e
                stor1 = 1
                return (0 / wantLockedTotal / 10000)
            require arg2 * sub_25c7ce6b / 10000 * sharesTotal
            if arg2 * sub_25c7ce6b / 10000 * sharesTotal * entranceFeeFactor / arg2 * sub_25c7ce6b / 10000 * sharesTotal != entranceFeeFactor:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 458 len 31]
            mem[ceil32(return_data.size) + 357] = 26
            mem[ceil32(return_data.size) + 389] = 'SafeMath: division by zero'
            if wantLockedTotal <= 0:
                revert with 0, 'SafeMath: division by zero'
            require wantLockedTotal
            mem[64] = ceil32(return_data.size) + 485
            mem[ceil32(return_data.size) + 421] = 26
            mem[ceil32(return_data.size) + 453] = 'SafeMath: division by zero'
            if sharesTotal + (arg2 * sub_25c7ce6b / 10000 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += arg2 * sub_25c7ce6b / 10000 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000
            mem[ceil32(return_data.size) + 489] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 485] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_9a14ff17:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(poolAddress)
                call poolAddress.0xa0712d68 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(poolAddress)
                call poolAddress.balanceOfUnderlying(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_c567dada = ext_call.return_data[0]
                require ext_code.size(poolAddress)
                call poolAddress.borrowBalanceCurrent(address arg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                idx = 0
                s = mem[mem[64]]
                while idx < borrowDepth:
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not s:
                        _6772 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6772] = 26
                        mem[_6772 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = 0
                        require ext_code.size(poolAddress)
                        call poolAddress.borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = 0
                        continue 
                    require s
                    if s * borrowRate / s != borrowRate:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _6928 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6928] = 26
                    mem[_6928 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = s * borrowRate / 100
                    require ext_code.size(poolAddress)
                    call poolAddress.borrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args (s * borrowRate / 100)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s * borrowRate / 100
                    continue 
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(poolAddress)
                call poolAddress.0xa0712d68 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(poolAddress)
                call poolAddress.balanceOfUnderlying(address arg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_c567dada = ext_call.return_data[0]
                require ext_code.size(poolAddress)
                call poolAddress.borrowBalanceCurrent(address arg1) with:
                     gas gas_remaining wei
                    args address(this.address)
        else:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
            if sub_25c7ce6b >= 10000:
                if wantLockedTotal <= 0:
                    if sharesTotal + arg2 < sharesTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    sharesTotal += arg2
                    mem[ceil32(return_data.size) + 297] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 293] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < sub_9a14ff17:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolAddress)
                        call poolAddress.balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_c567dada = ext_call.return_data[0]
                        require ext_code.size(poolAddress)
                        call poolAddress.borrowBalanceCurrent(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                    else:
                        idx = 0
                        s = mem[mem[64]]
                        while idx < borrowDepth:
                            require ext_code.size(poolAddress)
                            call poolAddress.0xa0712d68 with:
                                 gas gas_remaining wei
                                args s
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not s:
                                _6778 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6778] = 26
                                mem[_6778 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = 0
                                require ext_code.size(poolAddress)
                                call poolAddress.borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = 0
                                continue 
                            require s
                            if s * borrowRate / s != borrowRate:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _6934 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6934] = 26
                            mem[_6934 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = s * borrowRate / 100
                            require ext_code.size(poolAddress)
                            call poolAddress.borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (s * borrowRate / 100)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = s * borrowRate / 100
                            continue 
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolAddress)
                        call poolAddress.balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_c567dada = ext_call.return_data[0]
                        require ext_code.size(poolAddress)
                        call poolAddress.borrowBalanceCurrent(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_3ab24b3e = ext_call.return_data[0]
                    wantLockedTotal = sub_c567dada - sub_3ab24b3e
                    stor1 = 1
                    return arg2
                if sharesTotal <= 0:
                    if sharesTotal + arg2 < sharesTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    sharesTotal += arg2
                    mem[ceil32(return_data.size) + 297] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 293] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < sub_9a14ff17:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolAddress)
                        call poolAddress.balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_c567dada = ext_call.return_data[0]
                        require ext_code.size(poolAddress)
                        call poolAddress.borrowBalanceCurrent(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                    else:
                        idx = 0
                        s = mem[mem[64]]
                        while idx < borrowDepth:
                            require ext_code.size(poolAddress)
                            call poolAddress.0xa0712d68 with:
                                 gas gas_remaining wei
                                args s
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not s:
                                _6779 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6779] = 26
                                mem[_6779 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = 0
                                require ext_code.size(poolAddress)
                                call poolAddress.borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = 0
                                continue 
                            require s
                            if s * borrowRate / s != borrowRate:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _6935 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6935] = 26
                            mem[_6935 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = s * borrowRate / 100
                            require ext_code.size(poolAddress)
                            call poolAddress.borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (s * borrowRate / 100)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = s * borrowRate / 100
                            continue 
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolAddress)
                        call poolAddress.balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_c567dada = ext_call.return_data[0]
                        require ext_code.size(poolAddress)
                        call poolAddress.borrowBalanceCurrent(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_3ab24b3e = ext_call.return_data[0]
                    wantLockedTotal = sub_c567dada - sub_3ab24b3e
                    stor1 = 1
                    return arg2
                if not arg2:
                    mem[ceil32(return_data.size) + 293] = 26
                    mem[ceil32(return_data.size) + 325] = 'SafeMath: division by zero'
                    if wantLockedTotal <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require wantLockedTotal
                    mem[64] = ceil32(return_data.size) + 421
                    mem[ceil32(return_data.size) + 357] = 26
                    mem[ceil32(return_data.size) + 389] = 'SafeMath: division by zero'
                    if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    sharesTotal += 0 / wantLockedTotal / 10000
                    mem[ceil32(return_data.size) + 425] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 421] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < sub_9a14ff17:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolAddress)
                        call poolAddress.balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_c567dada = ext_call.return_data[0]
                        require ext_code.size(poolAddress)
                        call poolAddress.borrowBalanceCurrent(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                    else:
                        idx = 0
                        s = mem[mem[64]]
                        while idx < borrowDepth:
                            require ext_code.size(poolAddress)
                            call poolAddress.0xa0712d68 with:
                                 gas gas_remaining wei
                                args s
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not s:
                                _6782 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6782] = 26
                                mem[_6782 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = 0
                                require ext_code.size(poolAddress)
                                call poolAddress.borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = 0
                                continue 
                            require s
                            if s * borrowRate / s != borrowRate:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _6938 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6938] = 26
                            mem[_6938 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = s * borrowRate / 100
                            require ext_code.size(poolAddress)
                            call poolAddress.borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (s * borrowRate / 100)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = s * borrowRate / 100
                            continue 
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolAddress)
                        call poolAddress.balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_c567dada = ext_call.return_data[0]
                        require ext_code.size(poolAddress)
                        call poolAddress.borrowBalanceCurrent(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_3ab24b3e = ext_call.return_data[0]
                    wantLockedTotal = sub_c567dada - sub_3ab24b3e
                    stor1 = 1
                    return (0 / wantLockedTotal / 10000)
                require arg2
                if arg2 * sharesTotal / arg2 != sharesTotal:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                if not arg2 * sharesTotal:
                    mem[ceil32(return_data.size) + 293] = 26
                    mem[ceil32(return_data.size) + 325] = 'SafeMath: division by zero'
                    if wantLockedTotal <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require wantLockedTotal
                    mem[64] = ceil32(return_data.size) + 421
                    mem[ceil32(return_data.size) + 357] = 26
                    mem[ceil32(return_data.size) + 389] = 'SafeMath: division by zero'
                    if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    sharesTotal += 0 / wantLockedTotal / 10000
                    mem[ceil32(return_data.size) + 425] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 421] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < sub_9a14ff17:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolAddress)
                        call poolAddress.balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_c567dada = ext_call.return_data[0]
                        require ext_code.size(poolAddress)
                        call poolAddress.borrowBalanceCurrent(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                    else:
                        idx = 0
                        s = mem[mem[64]]
                        while idx < borrowDepth:
                            require ext_code.size(poolAddress)
                            call poolAddress.0xa0712d68 with:
                                 gas gas_remaining wei
                                args s
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not s:
                                _6781 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6781] = 26
                                mem[_6781 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = 0
                                require ext_code.size(poolAddress)
                                call poolAddress.borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = 0
                                continue 
                            require s
                            if s * borrowRate / s != borrowRate:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _6937 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6937] = 26
                            mem[_6937 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = s * borrowRate / 100
                            require ext_code.size(poolAddress)
                            call poolAddress.borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (s * borrowRate / 100)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = s * borrowRate / 100
                            continue 
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolAddress)
                        call poolAddress.balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_c567dada = ext_call.return_data[0]
                        require ext_code.size(poolAddress)
                        call poolAddress.borrowBalanceCurrent(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_3ab24b3e = ext_call.return_data[0]
                    wantLockedTotal = sub_c567dada - sub_3ab24b3e
                    stor1 = 1
                    return (0 / wantLockedTotal / 10000)
                require arg2 * sharesTotal
                if arg2 * sharesTotal * entranceFeeFactor / arg2 * sharesTotal != entranceFeeFactor:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                mem[ceil32(return_data.size) + 293] = 26
                mem[ceil32(return_data.size) + 325] = 'SafeMath: division by zero'
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                mem[64] = ceil32(return_data.size) + 421
                mem[ceil32(return_data.size) + 357] = 26
                mem[ceil32(return_data.size) + 389] = 'SafeMath: division by zero'
                if sharesTotal + (arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000) < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000
                mem[ceil32(return_data.size) + 425] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 421] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_9a14ff17:
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = mem[mem[64]]
                    while idx < borrowDepth:
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _6780 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6780] = 26
                            mem[_6780 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(poolAddress)
                            call poolAddress.borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _6936 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6936] = 26
                        mem[_6936 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 100
                        require ext_code.size(poolAddress)
                        call poolAddress.borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 100
                        continue 
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_3ab24b3e = ext_call.return_data[0]
                wantLockedTotal = sub_c567dada - sub_3ab24b3e
                stor1 = 1
                return (arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000)
            if not arg2:
                mem[64] = ceil32(return_data.size) + 357
                mem[ceil32(return_data.size) + 293] = 26
                mem[ceil32(return_data.size) + 325] = 'SafeMath: division by zero'
                if wantLockedTotal <= 0:
                    if sharesTotal < sharesTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[ceil32(return_data.size) + 361] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 357] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < sub_9a14ff17:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolAddress)
                        call poolAddress.balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_c567dada = ext_call.return_data[0]
                        require ext_code.size(poolAddress)
                        call poolAddress.borrowBalanceCurrent(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                    else:
                        idx = 0
                        s = mem[mem[64]]
                        while idx < borrowDepth:
                            require ext_code.size(poolAddress)
                            call poolAddress.0xa0712d68 with:
                                 gas gas_remaining wei
                                args s
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not s:
                                _6788 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6788] = 26
                                mem[_6788 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = 0
                                require ext_code.size(poolAddress)
                                call poolAddress.borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = 0
                                continue 
                            require s
                            if s * borrowRate / s != borrowRate:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _6944 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6944] = 26
                            mem[_6944 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = s * borrowRate / 100
                            require ext_code.size(poolAddress)
                            call poolAddress.borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (s * borrowRate / 100)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = s * borrowRate / 100
                            continue 
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolAddress)
                        call poolAddress.balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_c567dada = ext_call.return_data[0]
                        require ext_code.size(poolAddress)
                        call poolAddress.borrowBalanceCurrent(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_3ab24b3e = ext_call.return_data[0]
                    wantLockedTotal = sub_c567dada - sub_3ab24b3e
                    stor1 = 1
                    return 0
                if sharesTotal <= 0:
                    if sharesTotal < sharesTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[ceil32(return_data.size) + 361] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 357] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < sub_9a14ff17:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolAddress)
                        call poolAddress.balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_c567dada = ext_call.return_data[0]
                        require ext_code.size(poolAddress)
                        call poolAddress.borrowBalanceCurrent(address arg1) with:
                             gas gas_remaining wei
                            args this.address
                    else:
                        idx = 0
                        s = mem[mem[64]]
                        while idx < borrowDepth:
                            require ext_code.size(poolAddress)
                            call poolAddress.0xa0712d68 with:
                                 gas gas_remaining wei
                                args s
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not s:
                                _6789 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6789] = 26
                                mem[_6789 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = 0
                                require ext_code.size(poolAddress)
                                call poolAddress.borrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = 0
                                continue 
                            require s
                            if s * borrowRate / s != borrowRate:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _6945 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6945] = 26
                            mem[_6945 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = s * borrowRate / 100
                            require ext_code.size(poolAddress)
                            call poolAddress.borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (s * borrowRate / 100)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = s * borrowRate / 100
                            continue 
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolAddress)
                        call poolAddress.balanceOfUnderlying(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        sub_c567dada = ext_call.return_data[0]
                        require ext_code.size(poolAddress)
                        call poolAddress.borrowBalanceCurrent(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_3ab24b3e = ext_call.return_data[0]
                    wantLockedTotal = sub_c567dada - sub_3ab24b3e
                    stor1 = 1
                    return 0
                mem[ceil32(return_data.size) + 357] = 26
                mem[ceil32(return_data.size) + 389] = 'SafeMath: division by zero'
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                mem[64] = ceil32(return_data.size) + 485
                mem[ceil32(return_data.size) + 421] = 26
                mem[ceil32(return_data.size) + 453] = 'SafeMath: division by zero'
                if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += 0 / wantLockedTotal / 10000
                mem[ceil32(return_data.size) + 489] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 485] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_9a14ff17:
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = mem[mem[64]]
                    while idx < borrowDepth:
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _6790 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6790] = 26
                            mem[_6790 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(poolAddress)
                            call poolAddress.borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _6946 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6946] = 26
                        mem[_6946 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 100
                        require ext_code.size(poolAddress)
                        call poolAddress.borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 100
                        continue 
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_3ab24b3e = ext_call.return_data[0]
                wantLockedTotal = sub_c567dada - sub_3ab24b3e
                stor1 = 1
                return (0 / wantLockedTotal / 10000)
            require arg2
            if arg2 * sub_25c7ce6b / arg2 != sub_25c7ce6b:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            mem[64] = ceil32(return_data.size) + 357
            mem[ceil32(return_data.size) + 293] = 26
            mem[ceil32(return_data.size) + 325] = 'SafeMath: division by zero'
            if wantLockedTotal <= 0:
                if sharesTotal + (arg2 * sub_25c7ce6b / 10000) < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += arg2 * sub_25c7ce6b / 10000
                mem[ceil32(return_data.size) + 361] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 357] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_9a14ff17:
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = mem[mem[64]]
                    while idx < borrowDepth:
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _6783 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6783] = 26
                            mem[_6783 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(poolAddress)
                            call poolAddress.borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _6939 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6939] = 26
                        mem[_6939 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 100
                        require ext_code.size(poolAddress)
                        call poolAddress.borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 100
                        continue 
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_3ab24b3e = ext_call.return_data[0]
                wantLockedTotal = sub_c567dada - sub_3ab24b3e
                stor1 = 1
                return (arg2 * sub_25c7ce6b / 10000)
            if sharesTotal <= 0:
                if sharesTotal + (arg2 * sub_25c7ce6b / 10000) < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += arg2 * sub_25c7ce6b / 10000
                mem[ceil32(return_data.size) + 361] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 357] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_9a14ff17:
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = mem[mem[64]]
                    while idx < borrowDepth:
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _6784 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6784] = 26
                            mem[_6784 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(poolAddress)
                            call poolAddress.borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _6940 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6940] = 26
                        mem[_6940 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 100
                        require ext_code.size(poolAddress)
                        call poolAddress.borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 100
                        continue 
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_3ab24b3e = ext_call.return_data[0]
                wantLockedTotal = sub_c567dada - sub_3ab24b3e
                stor1 = 1
                return (arg2 * sub_25c7ce6b / 10000)
            if not arg2 * sub_25c7ce6b / 10000:
                mem[ceil32(return_data.size) + 357] = 26
                mem[ceil32(return_data.size) + 389] = 'SafeMath: division by zero'
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                mem[64] = ceil32(return_data.size) + 485
                mem[ceil32(return_data.size) + 421] = 26
                mem[ceil32(return_data.size) + 453] = 'SafeMath: division by zero'
                if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += 0 / wantLockedTotal / 10000
                mem[ceil32(return_data.size) + 489] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 485] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_9a14ff17:
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = mem[mem[64]]
                    while idx < borrowDepth:
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _6787 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6787] = 26
                            mem[_6787 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(poolAddress)
                            call poolAddress.borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _6943 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6943] = 26
                        mem[_6943 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 100
                        require ext_code.size(poolAddress)
                        call poolAddress.borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 100
                        continue 
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_3ab24b3e = ext_call.return_data[0]
                wantLockedTotal = sub_c567dada - sub_3ab24b3e
                stor1 = 1
                return (0 / wantLockedTotal / 10000)
            require arg2 * sub_25c7ce6b / 10000
            if arg2 * sub_25c7ce6b / 10000 * sharesTotal / arg2 * sub_25c7ce6b / 10000 != sharesTotal:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 458 len 31]
            if not arg2 * sub_25c7ce6b / 10000 * sharesTotal:
                mem[ceil32(return_data.size) + 357] = 26
                mem[ceil32(return_data.size) + 389] = 'SafeMath: division by zero'
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                mem[64] = ceil32(return_data.size) + 485
                mem[ceil32(return_data.size) + 421] = 26
                mem[ceil32(return_data.size) + 453] = 'SafeMath: division by zero'
                if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += 0 / wantLockedTotal / 10000
                mem[ceil32(return_data.size) + 489] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 485] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_9a14ff17:
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args this.address
                else:
                    idx = 0
                    s = mem[mem[64]]
                    while idx < borrowDepth:
                        require ext_code.size(poolAddress)
                        call poolAddress.0xa0712d68 with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            _6786 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6786] = 26
                            mem[_6786 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = 0
                            require ext_code.size(poolAddress)
                            call poolAddress.borrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = 0
                            continue 
                        require s
                        if s * borrowRate / s != borrowRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _6942 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6942] = 26
                        mem[_6942 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = s * borrowRate / 100
                        require ext_code.size(poolAddress)
                        call poolAddress.borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (s * borrowRate / 100)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = s * borrowRate / 100
                        continue 
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    call poolAddress.balanceOfUnderlying(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_c567dada = ext_call.return_data[0]
                    require ext_code.size(poolAddress)
                    call poolAddress.borrowBalanceCurrent(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_3ab24b3e = ext_call.return_data[0]
                wantLockedTotal = sub_c567dada - sub_3ab24b3e
                stor1 = 1
                return (0 / wantLockedTotal / 10000)
            require arg2 * sub_25c7ce6b / 10000 * sharesTotal
            if arg2 * sub_25c7ce6b / 10000 * sharesTotal * entranceFeeFactor / arg2 * sub_25c7ce6b / 10000 * sharesTotal != entranceFeeFactor:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 458 len 31]
            mem[ceil32(return_data.size) + 357] = 26
            mem[ceil32(return_data.size) + 389] = 'SafeMath: division by zero'
            if wantLockedTotal <= 0:
                revert with 0, 'SafeMath: division by zero'
            require wantLockedTotal
            mem[64] = ceil32(return_data.size) + 485
            mem[ceil32(return_data.size) + 421] = 26
            mem[ceil32(return_data.size) + 453] = 'SafeMath: division by zero'
            if sharesTotal + (arg2 * sub_25c7ce6b / 10000 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += arg2 * sub_25c7ce6b / 10000 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000
            mem[ceil32(return_data.size) + 489] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 485] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_9a14ff17:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(poolAddress)
                call poolAddress.0xa0712d68 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(poolAddress)
                call poolAddress.balanceOfUnderlying(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_c567dada = ext_call.return_data[0]
                require ext_code.size(poolAddress)
                call poolAddress.borrowBalanceCurrent(address arg1) with:
                     gas gas_remaining wei
                    args this.address
            else:
                idx = 0
                s = mem[mem[64]]
                while idx < borrowDepth:
                    require ext_code.size(poolAddress)
                    call poolAddress.0xa0712d68 with:
                         gas gas_remaining wei
                        args s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not s:
                        _6785 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6785] = 26
                        mem[_6785 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = 0
                        require ext_code.size(poolAddress)
                        call poolAddress.borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = 0
                        continue 
                    require s
                    if s * borrowRate / s != borrowRate:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _6941 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6941] = 26
                    mem[_6941 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = s * borrowRate / 100
                    require ext_code.size(poolAddress)
                    call poolAddress.borrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args (s * borrowRate / 100)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = idx + 1
                    s = s * borrowRate / 100
                    continue 
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(poolAddress)
                call poolAddress.0xa0712d68 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(poolAddress)
                call poolAddress.balanceOfUnderlying(address arg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                sub_c567dada = ext_call.return_data[0]
                require ext_code.size(poolAddress)
                call poolAddress.borrowBalanceCurrent(address arg1) with:
                     gas gas_remaining wei
                    args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_3ab24b3e = ext_call.return_data[0]
    wantLockedTotal = sub_c567dada - sub_3ab24b3e
    stor1 = 1
    return (arg2 * sub_25c7ce6b / 10000 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000)
}



}
