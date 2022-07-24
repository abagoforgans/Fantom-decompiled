contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(address arg1, uint256 arg2)
#
const controllerFeeUL = 300

const controllerFeeMax = 10000

const sub_3caf1def(?) = 10000

const sub_48d7041e(?) = 800

const buyBackRateMax = 10000

const withdrawFeeFactorMax = 10000

const buyBackAddress = 57005

const sub_7c717c09(?) = 9500

const withdrawFeeFactorLL = 9950

const sub_868f8135(?) = 500

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
uint256 sub_c52b971f;
address sub_285f3d55Address;
uint256 entranceFeeFactor;
uint256 sub_25c7ce6b;
uint256 withdrawFeeFactor;
uint256 sub_c7095c4b;
uint256 sub_9ccccc15;
mapping of uint256 stor27;
uint256 slippageFactor;
array of address sub_67eed8e0;
array of address earnedToToken0Path;
array of address earnedToToken1Path;
array of address token0ToEarnedPath;
array of address token1ToEarnedPath;
array of address sub_6597b04f;
array of address sub_6b99e24b;
address earned0Address;
array of address sub_07e2318d;

function token1ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < token1ToEarnedPath.length
    return token1ToEarnedPath[arg1]
}

function sub_07e2318d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_07e2318d.length
    return sub_07e2318d[arg1]
}

function sub_0ddea8c3(?) payable {
    return bool(uint8(stor2.field_8))
}

function lastEarnBlock() payable {
    return lastEarnBlock
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

function sub_285f3d55(?) payable {
    return sub_285f3d55Address
}

function earned0Address() payable {
    return earned0Address
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

function sub_9ccccc15(?) payable {
    return sub_9ccccc15
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

function sub_c52b971f(?) payable {
    return sub_c52b971f
}

function sub_c7095c4b(?) payable {
    return sub_c7095c4b
}

function earnedToToken0Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToToken0Path.length
    return earnedToToken0Path[arg1]
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

function earn() payable {
  stop
}

function _fallback() payable {
    revert
}

function convertDustToEarned() payable {
  stop
}

function farm() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    stor1 = 1
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

function sub_bbcb2058(?) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 >= 500:
        revert with 0, 'too high'
    sub_9ccccc15 = arg1
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

function sub_41924a5f(?) payable {
    require calldata.size - 4 >= 64
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 + buyBackRate > 800:
        revert with 0, 'too high'
    sub_c52b971f = arg1
    sub_285f3d55Address = arg2
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

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
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
                if not uint8(stor2.field_16):
                    if wantLockedTotal + arg2 < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                stor27[address(arg1)] = block.timestamp
                stor1 = 1
                return arg2
            if sharesTotal <= 0:
                if sharesTotal + arg2 < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += arg2
                if not uint8(stor2.field_16):
                    if wantLockedTotal + arg2 < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                stor27[address(arg1)] = block.timestamp
                stor1 = 1
                return arg2
            if not arg2:
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += 0 / wantLockedTotal / 10000
                if not uint8(stor2.field_16):
                    if wantLockedTotal + arg2 < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                stor27[address(arg1)] = block.timestamp
                stor1 = 1
                return (0 / wantLockedTotal / 10000)
            require arg2
            if arg2 * sharesTotal / arg2 != sharesTotal:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
            if not arg2 * sharesTotal:
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += 0 / wantLockedTotal / 10000
                if not uint8(stor2.field_16):
                    if wantLockedTotal + arg2 < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                stor27[address(arg1)] = block.timestamp
                stor1 = 1
                return (0 / wantLockedTotal / 10000)
            require arg2 * sharesTotal
            if arg2 * sharesTotal * entranceFeeFactor / arg2 * sharesTotal != entranceFeeFactor:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
            if wantLockedTotal <= 0:
                revert with 0, 'SafeMath: division by zero'
            require wantLockedTotal
            if sharesTotal + (arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000
            if not uint8(stor2.field_16):
                if wantLockedTotal + arg2 < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
            stor27[address(arg1)] = block.timestamp
            stor1 = 1
            return (arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000)
        if not arg2:
            if wantLockedTotal <= 0:
                if sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                if not uint8(stor2.field_16):
                    if wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                stor27[address(arg1)] = block.timestamp
                stor1 = 1
                return 0
            if sharesTotal <= 0:
                if sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                if not uint8(stor2.field_16):
                    if wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                stor27[address(arg1)] = block.timestamp
                stor1 = 1
                return 0
            if wantLockedTotal <= 0:
                revert with 0, 'SafeMath: division by zero'
            require wantLockedTotal
            if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / wantLockedTotal / 10000
            if not uint8(stor2.field_16):
                if wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
            stor27[address(arg1)] = block.timestamp
            stor1 = 1
            return (0 / wantLockedTotal / 10000)
        require arg2
        if arg2 * sub_25c7ce6b / arg2 != sub_25c7ce6b:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
        if wantLockedTotal <= 0:
            if sharesTotal + (arg2 * sub_25c7ce6b / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += arg2 * sub_25c7ce6b / 10000
            if not uint8(stor2.field_16):
                if wantLockedTotal + (arg2 * sub_25c7ce6b / 10000) < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2 * sub_25c7ce6b / 10000
            stor27[address(arg1)] = block.timestamp
            stor1 = 1
            return (arg2 * sub_25c7ce6b / 10000)
        if sharesTotal <= 0:
            if sharesTotal + (arg2 * sub_25c7ce6b / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += arg2 * sub_25c7ce6b / 10000
            if not uint8(stor2.field_16):
                if wantLockedTotal + (arg2 * sub_25c7ce6b / 10000) < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2 * sub_25c7ce6b / 10000
            stor27[address(arg1)] = block.timestamp
            stor1 = 1
            return (arg2 * sub_25c7ce6b / 10000)
        if not arg2 * sub_25c7ce6b / 10000:
            if wantLockedTotal <= 0:
                revert with 0, 'SafeMath: division by zero'
            require wantLockedTotal
            if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / wantLockedTotal / 10000
            if not uint8(stor2.field_16):
                if wantLockedTotal + (arg2 * sub_25c7ce6b / 10000) < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2 * sub_25c7ce6b / 10000
            stor27[address(arg1)] = block.timestamp
            stor1 = 1
            return (0 / wantLockedTotal / 10000)
        require arg2 * sub_25c7ce6b / 10000
        if arg2 * sub_25c7ce6b / 10000 * sharesTotal / arg2 * sub_25c7ce6b / 10000 != sharesTotal:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[457 len 31]
        if not arg2 * sub_25c7ce6b / 10000 * sharesTotal:
            if wantLockedTotal <= 0:
                revert with 0, 'SafeMath: division by zero'
            require wantLockedTotal
            if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / wantLockedTotal / 10000
            if not uint8(stor2.field_16):
                if wantLockedTotal + (arg2 * sub_25c7ce6b / 10000) < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2 * sub_25c7ce6b / 10000
            stor27[address(arg1)] = block.timestamp
            stor1 = 1
            return (0 / wantLockedTotal / 10000)
        require arg2 * sub_25c7ce6b / 10000 * sharesTotal
        if arg2 * sub_25c7ce6b / 10000 * sharesTotal * entranceFeeFactor / arg2 * sub_25c7ce6b / 10000 * sharesTotal != entranceFeeFactor:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[457 len 31]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
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
                if not uint8(stor2.field_16):
                    if wantLockedTotal + arg2 < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                stor27[address(arg1)] = block.timestamp
                stor1 = 1
                return arg2
            if sharesTotal <= 0:
                if sharesTotal + arg2 < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += arg2
                if not uint8(stor2.field_16):
                    if wantLockedTotal + arg2 < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                stor27[address(arg1)] = block.timestamp
                stor1 = 1
                return arg2
            if not arg2:
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += 0 / wantLockedTotal / 10000
                if not uint8(stor2.field_16):
                    if wantLockedTotal + arg2 < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                stor27[address(arg1)] = block.timestamp
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
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += 0 / wantLockedTotal / 10000
                if not uint8(stor2.field_16):
                    if wantLockedTotal + arg2 < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                stor27[address(arg1)] = block.timestamp
                stor1 = 1
                return (0 / wantLockedTotal / 10000)
            require arg2 * sharesTotal
            if arg2 * sharesTotal * entranceFeeFactor / arg2 * sharesTotal != entranceFeeFactor:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            if wantLockedTotal <= 0:
                revert with 0, 'SafeMath: division by zero'
            require wantLockedTotal
            if sharesTotal + (arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000
            if not uint8(stor2.field_16):
                if wantLockedTotal + arg2 < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
            stor27[address(arg1)] = block.timestamp
            stor1 = 1
            return (arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000)
        if not arg2:
            if wantLockedTotal <= 0:
                if sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                if not uint8(stor2.field_16):
                    if wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                stor27[address(arg1)] = block.timestamp
                stor1 = 1
                return 0
            if sharesTotal <= 0:
                if sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                if not uint8(stor2.field_16):
                    if wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                stor27[address(arg1)] = block.timestamp
                stor1 = 1
                return 0
            if wantLockedTotal <= 0:
                revert with 0, 'SafeMath: division by zero'
            require wantLockedTotal
            if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / wantLockedTotal / 10000
            if not uint8(stor2.field_16):
                if wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
            stor27[address(arg1)] = block.timestamp
            stor1 = 1
            return (0 / wantLockedTotal / 10000)
        require arg2
        if arg2 * sub_25c7ce6b / arg2 != sub_25c7ce6b:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 394 len 31]
        if wantLockedTotal <= 0:
            if sharesTotal + (arg2 * sub_25c7ce6b / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += arg2 * sub_25c7ce6b / 10000
            if not uint8(stor2.field_16):
                if wantLockedTotal + (arg2 * sub_25c7ce6b / 10000) < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2 * sub_25c7ce6b / 10000
            stor27[address(arg1)] = block.timestamp
            stor1 = 1
            return (arg2 * sub_25c7ce6b / 10000)
        if sharesTotal <= 0:
            if sharesTotal + (arg2 * sub_25c7ce6b / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += arg2 * sub_25c7ce6b / 10000
            if not uint8(stor2.field_16):
                if wantLockedTotal + (arg2 * sub_25c7ce6b / 10000) < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2 * sub_25c7ce6b / 10000
            stor27[address(arg1)] = block.timestamp
            stor1 = 1
            return (arg2 * sub_25c7ce6b / 10000)
        if not arg2 * sub_25c7ce6b / 10000:
            if wantLockedTotal <= 0:
                revert with 0, 'SafeMath: division by zero'
            require wantLockedTotal
            if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / wantLockedTotal / 10000
            if not uint8(stor2.field_16):
                if wantLockedTotal + (arg2 * sub_25c7ce6b / 10000) < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2 * sub_25c7ce6b / 10000
            stor27[address(arg1)] = block.timestamp
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
            if wantLockedTotal <= 0:
                revert with 0, 'SafeMath: division by zero'
            require wantLockedTotal
            if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / wantLockedTotal / 10000
            if not uint8(stor2.field_16):
                if wantLockedTotal + (arg2 * sub_25c7ce6b / 10000) < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2 * sub_25c7ce6b / 10000
            stor27[address(arg1)] = block.timestamp
            stor1 = 1
            return (0 / wantLockedTotal / 10000)
        require arg2 * sub_25c7ce6b / 10000 * sharesTotal
        if arg2 * sub_25c7ce6b / 10000 * sharesTotal * entranceFeeFactor / arg2 * sub_25c7ce6b / 10000 * sharesTotal != entranceFeeFactor:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 458 len 31]
    ('eq', ('div', ('mul', ('div', ('mul', ('param', 'arg2'), ('stor', ('name', 'sub_25c7ce6b', 23))), 10000), ('stor', ('name', 'sharesTotal', 17)), ('stor', ('name', 'entranceFeeFactor', 22))), ('mul', ('div', ('mul', ('param', 'arg2'), ('stor', ('name', 'sub_25c7ce6b', 23))), 10000), ('stor', ('name', 'sharesTotal', 17)))), ('stor', ('name', 'entranceFeeFactor', 22)))
    if wantLockedTotal <= 0:
        revert with 0, 'SafeMath: division by zero'
    require wantLockedTotal
    if sharesTotal + (arg2 * sub_25c7ce6b / 10000 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000) < sharesTotal:
        revert with 0, 'SafeMath: addition overflow'
    sharesTotal += arg2 * sub_25c7ce6b / 10000 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000
    if not uint8(stor2.field_16):
        if wantLockedTotal + (arg2 * sub_25c7ce6b / 10000) < wantLockedTotal:
            revert with 0, 'SafeMath: addition overflow'
        wantLockedTotal += arg2 * sub_25c7ce6b / 10000
    stor27[address(arg1)] = block.timestamp
    stor1 = 1
    return (arg2 * sub_25c7ce6b / 10000 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000)
}



}
