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
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
    mem[324 len 0] = 0
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
        require ext_code.size(wantAddress)
        staticcall wantAddress.0xdd62ed3e with:
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
            staticcall wantAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(poolAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + s < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            _311 = mem[64]
            mem[mem[64] + 36] = address(poolAddress)
            mem[mem[64] + 68] = ext_call.return_data[0] + s
            _312 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_312 + 32] = mem[_312 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
            mem[64] = _311 + 164
            mem[_311 + 100] = 32
            mem[_311 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_311 + 270 len 26]
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            _354 = mem[_312]
            u = _312 + 32
            v = mem[64]
            t = mem[_312]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[mem[64] + floor32(mem[_312])] = mem[_312 + floor32(mem[_312]) + -(mem[_312] % 32) + 64 len mem[_312] % 32] or Mask(8 * -(mem[_312] % 32) + 32, -(8 * -(mem[_312] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_312])])
            call wantAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _354 + _311 + -mem[64] + 160]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    _567 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_311 + 100]
                    _569 = mem[_311 + 100]
                    idx = 0
                    while idx < _569:
                        mem[_567 + idx + 68] = mem[_311 + idx + 132]
                        idx = idx + 32
                        continue 
                    if not _569 % 32:
                        revert with memory
                          from mem[64]
                           len _569 + _567 + -mem[64] + 68
                    mem[floor32(_569) + _567 + 68] = mem[floor32(_569) + _567 + -(_569 % 32) + 100 len _569 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_569) + _567 + -mem[64] + 100
                if mem[96] <= 0:
                    require ext_code.size(address(poolAddress))
                    call address(poolAddress).0xa0712d68 with:
                         gas gas_remaining wei
                        args s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not s:
                        _647 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_647] = 26
                        mem[_647 + 32] = 'SafeMath: division by zero'
                        mem[mem[64]] = 0xc5ebeaec00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 0
                        continue 
                    require s
                    if s * borrowRate / s != borrowRate:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _661 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_661] = 26
                    mem[_661 + 32] = 'SafeMath: division by zero'
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
                    require ext_code.size(address(poolAddress))
                    call address(poolAddress).0xa0712d68 with:
                         gas gas_remaining wei
                        args s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not s:
                        _667 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_667] = 26
                        mem[_667 + 32] = 'SafeMath: division by zero'
                        mem[mem[64]] = 0xc5ebeaec00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 0
                        continue 
                    require s
                    if s * borrowRate / s != borrowRate:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _675 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_675] = 26
                    mem[_675 + 32] = 'SafeMath: division by zero'
            else:
                _552 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_552] = return_data.size
                mem[_552 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    _571 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_311 + 100]
                    _573 = mem[_311 + 100]
                    idx = 0
                    while idx < _573:
                        mem[_571 + idx + 68] = mem[_311 + idx + 132]
                        idx = idx + 32
                        continue 
                    if not _573 % 32:
                        revert with memory
                          from mem[64]
                           len _573 + _571 + -mem[64] + 68
                    mem[floor32(_573) + _571 + 68] = mem[floor32(_573) + _571 + -(_573 % 32) + 100 len _573 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_573) + _571 + -mem[64] + 100
                if return_data.size <= 0:
                    require ext_code.size(address(poolAddress))
                    call address(poolAddress).0xa0712d68 with:
                         gas gas_remaining wei
                        args s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not s:
                        _648 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_648] = 26
                        mem[_648 + 32] = 'SafeMath: division by zero'
                        mem[mem[64]] = 0xc5ebeaec00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 0
                        continue 
                    require s
                    if s * borrowRate / s != borrowRate:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _664 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_664] = 26
                    mem[_664 + 32] = 'SafeMath: division by zero'
                else:
                    require return_data.size >= 32
                    if not mem[_552 + 32]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
                    require ext_code.size(address(poolAddress))
                    call address(poolAddress).0xa0712d68 with:
                         gas gas_remaining wei
                        args s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not s:
                        _668 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_668] = 26
                        mem[_668 + 32] = 'SafeMath: division by zero'
                        mem[mem[64]] = 0xc5ebeaec00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        require ext_code.size(address(poolAddress))
                        call address(poolAddress).borrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 0
                        continue 
                    require s
                    if s * borrowRate / s != borrowRate:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _678 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_678] = 26
                    mem[_678 + 32] = 'SafeMath: division by zero'
            mem[mem[64]] = 0xc5ebeaec00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s * borrowRate / 100
            require ext_code.size(address(poolAddress))
            call address(poolAddress).borrow(uint256 arg1) with:
                 gas gas_remaining wei
                args (s * borrowRate / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
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
        require ext_code.size(wantAddress)
        staticcall wantAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(poolAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        _341 = mem[64]
        mem[mem[64] + 36] = address(poolAddress)
        mem[mem[64] + 68] = 2 * ext_call.return_data[0]
        _342 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
        mem[64] = mem[64] + 164
        mem[_341 + 100] = 32
        mem[_341 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_341 + 270 len 26]
        if ext_code.size(wantAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        _381 = mem[_342]
        mem[_341 + 164 len floor32(mem[_342])] = mem[_342 + 32 len floor32(mem[_342])]
        mem[_341 + floor32(mem[_342]) + -(mem[_342] % 32) + 196 len mem[_342] % 32] = mem[_342 + floor32(mem[_342]) + -(mem[_342] % 32) + 64 len mem[_342] % 32]
        call wantAddress with:
             gas gas_remaining wei
            args mem[_341 + 168 len _381 - 4]
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
                                mem[_341 + 274 len 22]
        else:
            mem[_341 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_341 + 196]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_341 + ceil32(return_data.size) + 275 len 22]
    require ext_code.size(address(poolAddress))
    call address(poolAddress).0xa0712d68 with:
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
    staticcall wantAddress.0x70a08231 with:
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
        require ext_code.size(address(poolAddress))
        call address(poolAddress).borrowBalanceCurrent(address arg1) with:
             gas gas_remaining wei
            args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            _392 = mem[64]
            mem[64] = mem[64] + 64
            mem[_392] = 26
            mem[_392 + 32] = 'SafeMath: division by zero'
            if borrowRate <= 0:
                _398 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_398 + idx + 68] = mem[_392 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_398 + 68] = mem[_398 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _398 + -mem[64] + 100
            require borrowRate
            require ext_code.size(address(poolAddress))
            call address(poolAddress).balanceOfUnderlying(address arg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _423 = mem[64]
            mem[64] = mem[64] + 64
            mem[_423] = 30
            mem[_423 + 32] = 'SafeMath: subtraction overflow'
            if 0 / borrowRate > ext_call.return_data[0]:
                _427 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_427 + idx + 68] = mem[_423 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_427 + 68] = mem[_427 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _427 + -mem[64] + 100
            require ext_code.size(address(poolAddress))
            call address(poolAddress).redeemUnderlying(uint256 arg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] - (0 / borrowRate))
        else:
            require ext_call.return_data[0]
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _397 = mem[64]
            mem[64] = mem[64] + 64
            mem[_397] = 26
            mem[_397 + 32] = 'SafeMath: division by zero'
            if borrowRate <= 0:
                _402 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_402 + idx + 68] = mem[_397 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_402 + 68] = mem[_402 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _402 + -mem[64] + 100
            require borrowRate
            require ext_code.size(address(poolAddress))
            call address(poolAddress).balanceOfUnderlying(address arg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _426 = mem[64]
            mem[64] = mem[64] + 64
            mem[_426] = 30
            mem[_426 + 32] = 'SafeMath: subtraction overflow'
            if 100 * ext_call.return_data[0] / borrowRate > ext_call.return_data[0]:
                _431 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_431 + idx + 68] = mem[_426 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_431 + 68] = mem[_431 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _431 + -mem[64] + 100
            require ext_code.size(address(poolAddress))
            call address(poolAddress).redeemUnderlying(uint256 arg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] - (100 * ext_call.return_data[0] / borrowRate))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64]] = 0xe75270200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0]
        require ext_code.size(address(poolAddress))
        call address(poolAddress).repayBorrow(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = ext_call.return_data[0]
        t = ext_call.return_data[0]
        continue 
    require ext_code.size(address(poolAddress))
    staticcall address(poolAddress).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
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
        args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_c567dada = ext_call.return_data[0]
    require ext_code.size(address(poolAddress))
    call address(poolAddress).borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_3ab24b3e = ext_call.return_data[0]
    wantLockedTotal = sub_c567dada - sub_3ab24b3e
    borrowRate = arg1
    borrowDepth = arg2
    mem[mem[64] + 4] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_9a14ff17:
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(poolAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        _489 = mem[64]
        mem[mem[64] + 36] = address(poolAddress)
        mem[mem[64] + 68] = 2 * ext_call.return_data[0]
        _490 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
        mem[64] = mem[64] + 164
        mem[_489 + 100] = 32
        mem[_489 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_489 + 270 len 26]
        if ext_code.size(wantAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        _509 = mem[_490]
        mem[_489 + 164 len floor32(mem[_490])] = mem[_490 + 32 len floor32(mem[_490])]
        mem[_489 + floor32(mem[_490]) + -(mem[_490] % 32) + 196 len mem[_490] % 32] = mem[_490 + floor32(mem[_490]) + -(mem[_490] % 32) + 64 len mem[_490] % 32]
        call wantAddress with:
             gas gas_remaining wei
            args mem[_489 + 168 len _509 - 4]
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
                                mem[_489 + 274 len 22]
        else:
            mem[_489 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_489 + 196]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_489 + ceil32(return_data.size) + 275 len 22]
    else:
        idx = 0
        s = mem[mem[64]]
        while idx < borrowDepth:
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(poolAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + s < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            _782 = mem[64]
            mem[mem[64] + 36] = address(poolAddress)
            mem[mem[64] + 68] = ext_call.return_data[0] + s
            _783 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_783 + 32] = mem[_783 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
            mem[64] = _782 + 164
            mem[_782 + 100] = 32
            mem[_782 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_782 + 270 len 26]
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            _825 = mem[_783]
            u = _783 + 32
            v = _782 + 164
            t = mem[_783]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[_782 + floor32(mem[_783]) + 164] = mem[_783 + -(mem[_783] % 32) + floor32(mem[_783]) + 64 len mem[_783] % 32] or Mask(8 * -(mem[_783] % 32) + 32, -(8 * -(mem[_783] % 32) + 32) + 256, mem[_782 + floor32(mem[_783]) + 164])
            call wantAddress.mem[_782 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_782 + 168 len _825 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_782 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_782 + 168] = 32
                    mem[_782 + 200] = 32
                    idx = 0
                    while idx < 32:
                        mem[_782 + idx + 232] = mem[_782 + idx + 132]
                        idx = idx + 32
                        continue 
                    revert with memory
                      from mem[64]
                       len _782 + -mem[64] + 264
                if mem[96] > 0:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_782 + 274 len 22]
                require ext_code.size(address(poolAddress))
                call address(poolAddress).0xa0712d68 with:
                     gas gas_remaining wei
                    args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not s:
                    mem[64] = _782 + 228
                    mem[_782 + 164] = 26
                    mem[_782 + 196] = 'SafeMath: division by zero'
                    mem[_782 + 228] = 0xc5ebeaec00000000000000000000000000000000000000000000000000000000
                    mem[_782 + 232] = 0
                    require ext_code.size(address(poolAddress))
                    call address(poolAddress).borrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 0
                    continue 
                require s
                if s * borrowRate / s != borrowRate:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_782 + 265 len 31]
                mem[64] = _782 + 228
                mem[_782 + 164] = 26
                mem[_782 + 196] = 'SafeMath: division by zero'
                mem[_782 + 228] = 0xc5ebeaec00000000000000000000000000000000000000000000000000000000
                mem[_782 + 232] = s * borrowRate / 100
            else:
                mem[_782 + 164] = return_data.size
                mem[_782 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_782 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_782 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[_782 + ceil32(return_data.size) + idx + 233] = mem[_782 + idx + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_782 + ceil32(return_data.size) + 233]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[_782 + 196]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_782 + ceil32(return_data.size) + 275 len 22]
                require ext_code.size(address(poolAddress))
                call address(poolAddress).0xa0712d68 with:
                     gas gas_remaining wei
                    args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not s:
                    mem[64] = _782 + ceil32(return_data.size) + 229
                    mem[_782 + ceil32(return_data.size) + 165] = 26
                    mem[_782 + ceil32(return_data.size) + 197] = 'SafeMath: division by zero'
                    mem[_782 + ceil32(return_data.size) + 229] = 0xc5ebeaec00000000000000000000000000000000000000000000000000000000
                    mem[_782 + ceil32(return_data.size) + 233] = 0
                    require ext_code.size(address(poolAddress))
                    call address(poolAddress).borrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 0
                    continue 
                require s
                if s * borrowRate / s != borrowRate:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_782 + ceil32(return_data.size) + 266 len 31]
                mem[64] = _782 + ceil32(return_data.size) + 229
                mem[_782 + ceil32(return_data.size) + 165] = 26
                mem[_782 + ceil32(return_data.size) + 197] = 'SafeMath: division by zero'
                mem[_782 + ceil32(return_data.size) + 229] = 0xc5ebeaec00000000000000000000000000000000000000000000000000000000
                mem[_782 + ceil32(return_data.size) + 233] = s * borrowRate / 100
            require ext_code.size(address(poolAddress))
            call address(poolAddress).borrow(uint256 arg1) with:
                 gas gas_remaining wei
                args (s * borrowRate / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
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
        require ext_code.size(wantAddress)
        staticcall wantAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(poolAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        _812 = mem[64]
        mem[mem[64] + 36] = address(poolAddress)
        mem[mem[64] + 68] = 2 * ext_call.return_data[0]
        _813 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
        mem[64] = mem[64] + 164
        mem[_812 + 100] = 32
        mem[_812 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_812 + 270 len 26]
        if ext_code.size(wantAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        _852 = mem[_813]
        mem[_812 + 164 len floor32(mem[_813])] = mem[_813 + 32 len floor32(mem[_813])]
        mem[_812 + floor32(mem[_813]) + -(mem[_813] % 32) + 196 len mem[_813] % 32] = mem[_813 + -(mem[_813] % 32) + floor32(mem[_813]) + 64 len mem[_813] % 32]
        call wantAddress.mem[_812 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_812 + 168 len _852 - 4]
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
                                mem[_812 + 274 len 22]
        else:
            mem[_812 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_812 + 196]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_812 + ceil32(return_data.size) + 275 len 22]
    require ext_code.size(address(poolAddress))
    call address(poolAddress).0xa0712d68 with:
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
