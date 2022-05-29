contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - harvest()
#  - pause()
#  - withdrawAll()
#  - deposit()
#
const comptroller = 0x37517c5d880c5c282437a3da4d627b4457c10beb

const scream = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475

const wftm = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83

const FEE_DENOMINATOR = 10000


uint8 stor0;
uint8 stor0; offset 8
address sub_8ed8ea7eAddress; offset 16
uint256 stor0; offset 8
address wantAddress;
address sub_a7836e36Address;
array of address sub_f1ca0bbb;
uint256 targetBorrowLimit;
uint256 targetBorrowLimitHysteresis;
array of uint256 name;
address owner;
uint32 stor8;
address controllerAddress;
uint256 stor8;
address strategistAddress;
uint256 performanceFee;
uint256 strategistReward;
uint256 withdrawalFee;
uint256 harvesterReward;
uint8 stor14;
uint8 stor14; offset 8
uint256 stor14; offset 8

function targetBorrowLimitHysteresis() {
    return targetBorrowLimitHysteresis
}

function getName() {
    return name[0 len name.length]
}

function want() {
    return wantAddress
}

function strategist() {
    return strategistAddress
}

function targetBorrowLimit() {
    return targetBorrowLimit
}

function paused() {
    return bool(uint8(stor14.field_8))
}

function strategistReward() {
    return strategistReward
}

function performanceFee() {
    return performanceFee
}

function withdrawalFee() {
    return withdrawalFee
}

function owner() {
    return owner
}

function sub_8ed8ea7e(?) {
    return sub_8ed8ea7eAddress
}

function sub_9409ff9d(?) {
    return bool(uint8(stor14.field_0))
}

function sub_a7836e36(?) {
    return sub_a7836e36Address
}

function harvesterReward() {
    return harvesterReward
}

function sub_f1ca0bbb(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_f1ca0bbb.length
    return sub_f1ca0bbb[arg1]
}

function controller() {
    return address(controllerAddress)
}

function _fallback() payable {
    revert
}

function unpause() {
    if owner != msg.sender:
        revert with 0, '!owner'
    Mask(248, 0, stor14.field_8) = 0
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!owner'
    owner = arg1
}

function setWithdrawalFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!owner'
    withdrawalFee = arg1
}

function sub_bb37ec6d(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!owner'
    uint8(stor14.field_0) = uint8(arg1)
}

function setStrategist(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!owner'
    strategistAddress = arg1
}

function setPerformanceFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!owner'
    performanceFee = arg1
}

function setHarvesterReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!owner'
    harvesterReward = arg1
}

function setStrategistReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!owner'
    strategistReward = arg1
}

function setController(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!owner'
    address(controllerAddress) = arg1
}

function setTargetBorrowLimit(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!owner'
    targetBorrowLimit = arg1
    targetBorrowLimitHysteresis = arg2
}

function balanceOfWant() {
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_805f2d41(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '!owner'
    sub_8ed8ea7eAddress = address(cd[4])
    sub_f1ca0bbb.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while sub_f1ca0bbb.length > idx:
            sub_f1ca0bbb[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[36] + 36
        while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
            sub_f1ca0bbb[s] = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while sub_f1ca0bbb.length > idx:
            sub_f1ca0bbb[idx] = 0
            idx = idx + 1
            continue 
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    if wantAddress == arg1:
        revert with 0, 'want'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(stor8)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0]
        if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor8):
            revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    return ext_call.return_data[0]
}

function sub_7062cfdf(?) {
    require calldata.size - 4 >= 288
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if not uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            if uint8(stor0.field_0):
                revert with 0, 
                            32,
                            46,
                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[ceil32(arg1.length) + 242 len 18]
        if not uint8(stor0.field_8):
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
    performanceFee = 50
    strategistReward = 10
    withdrawalFee = 10
    harvesterReward = 20
    name[] = Array(len=arg1.length, data=arg1[all])
    owner = arg2
    strategistAddress = arg3
    address(controllerAddress) = arg4
    wantAddress = arg5
    sub_a7836e36Address = arg6
    targetBorrowLimit = arg7
    targetBorrowLimitHysteresis = arg8
    mem[ceil32(arg1.length) + 128] = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475
    mem[ceil32(arg1.length) + 160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[ceil32(arg1.length) + 192] = wantAddress
    sub_f1ca0bbb.length = 3
    mem[0] = 3
    s = 0
    idx = ceil32(arg1.length) + 128
    while ceil32(arg1.length) + 224 > idx:
        sub_f1ca0bbb[s] = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 3
    while sub_f1ca0bbb.length > idx:
        sub_f1ca0bbb[idx] = 0
        idx = idx + 1
        continue 
    uint8(stor14.field_0) = uint8(arg9)
    mem[ceil32(arg1.length) + 256] = sub_a7836e36Address
    mem[ceil32(arg1.length) + 288] = 0xc299823800000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 292] = 32
    mem[ceil32(arg1.length) + 324] = 1
    mem[ceil32(arg1.length) + 356 len 0] = None
    require ext_code.size(0x37517c5d880c5c282437a3da4d627b4457c10beb)
    call 0x37517c5d880c5c282437a3da4d627b4457c10beb.enterMarkets(address[] arg1) with:
         gas gas_remaining wei
        args Array(len=1, data=mem[ceil32(arg1.length) + 356])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(arg1.length) + ceil32(return_data.size) + 288
    require return_data.size >= 32
    require mem[ceil32(arg1.length) + 288 len 4], 0 <= 4294967296
    require mem[ceil32(arg1.length) + 288 len 4], 0 + 32 <= return_data.size
    require mem[mem[ceil32(arg1.length) + 288 len 4], 0 + ceil32(arg1.length) + 288] <= 4294967296 and mem[ceil32(arg1.length) + 288 len 4], 0 + (32 * mem[mem[ceil32(arg1.length) + 288 len 4], 0 + ceil32(arg1.length) + 288]) + 32 <= return_data.size
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
}

function balanceOfStakedWantCurrent() {
    require ext_code.size(sub_a7836e36Address)
    call sub_a7836e36Address.borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not uint8(stor14.field_0):
        require ext_code.size(sub_a7836e36Address)
        call sub_a7836e36Address.balanceOfUnderlying(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -ext_call.return_data[0]
        require ext_call.return_data[0]
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] > 10^18 * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((10^18 * ext_call.return_data[0] / 10^18) - ext_call.return_data[0])
    require ext_code.size(0x37517c5d880c5c282437a3da4d627b4457c10beb)
    staticcall 0x37517c5d880c5c282437a3da4d627b4457c10beb.treasuryPercent() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(sub_a7836e36Address)
    call sub_a7836e36Address.balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -ext_call.return_data[0]
    require ext_call.return_data[0]
    if (10^18 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -ext_call.return_data[0] + 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] > (10^18 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^18 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - ext_call.return_data[0])
}

function borrowLimit() {
    require ext_code.size(0x37517c5d880c5c282437a3da4d627b4457c10beb)
    staticcall 0x37517c5d880c5c282437a3da4d627b4457c10beb.markets(address arg1) with:
            gas gas_remaining wei
           args sub_a7836e36Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(sub_a7836e36Address)
    call sub_a7836e36Address.balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_a7836e36Address)
        call sub_a7836e36Address.borrowBalanceCurrent(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[224 len 4]
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] != ext_call.return_data[32]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    ext_call.return_data[101 len 27],
                    mem[224 len 4]
    require ext_code.size(sub_a7836e36Address)
    call sub_a7836e36Address.borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
            return (0 / ext_call.return_data[0] * ext_call.return_data[32] / 10^18)
    else:
        if ext_call.return_data[0]:
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[224 len 4]
            if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                return (10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[32] / 10^18)
    revert
}

function balanceOfStakedWant() {
    require ext_code.size(sub_a7836e36Address)
    staticcall sub_a7836e36Address.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not uint8(stor14.field_0):
        require ext_code.size(sub_a7836e36Address)
        staticcall sub_a7836e36Address.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_a7836e36Address)
        staticcall sub_a7836e36Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -ext_call.return_data[0]
        require ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            if ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -ext_call.return_data[0]
        require ext_call.return_data[0] * ext_call.return_data[0] / 10^18
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] > 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18) - ext_call.return_data[0])
    require ext_code.size(0x37517c5d880c5c282437a3da4d627b4457c10beb)
    staticcall 0x37517c5d880c5c282437a3da4d627b4457c10beb.treasuryPercent() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(sub_a7836e36Address)
    staticcall sub_a7836e36Address.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_a7836e36Address)
    staticcall sub_a7836e36Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -ext_call.return_data[0]
    require ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        if ext_call.return_data[0] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -ext_call.return_data[0]
    require ext_call.return_data[0] * ext_call.return_data[0] / 10^18
    if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != -ext_call.return_data[0] + 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] > (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 10^18) - ext_call.return_data[0])
}

function balanceOf() {
    require ext_code.size(sub_a7836e36Address)
    staticcall sub_a7836e36Address.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not uint8(stor14.field_0):
        require ext_code.size(sub_a7836e36Address)
        staticcall sub_a7836e36Address.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_a7836e36Address)
        staticcall sub_a7836e36Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            else:
                return 0
        require ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            if ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            else:
                return 0
        require ext_call.return_data[0] * ext_call.return_data[0] / 10^18
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] > 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18)
    require ext_code.size(0x37517c5d880c5c282437a3da4d627b4457c10beb)
    staticcall 0x37517c5d880c5c282437a3da4d627b4457c10beb.treasuryPercent() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(sub_a7836e36Address)
    staticcall sub_a7836e36Address.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_a7836e36Address)
    staticcall sub_a7836e36Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        else:
            return 0
    require ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        if ext_call.return_data[0] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        else:
            return 0
    require ext_call.return_data[0] * ext_call.return_data[0] / 10^18
    if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != -ext_call.return_data[0] + 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] > (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 10^18 < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / 10^18)
}

function executeTransaction(address arg1, uint256 arg2, string arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + 160
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 160] = 0
    if owner != msg.sender:
        revert with 0, '!owner'
    if arg3.length:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = Mask(32, 224, sha3(arg3[all]))
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 196 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 196] = mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) + 256, mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 196])
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg4.length + 4
        mem[64] = arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 196
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 196 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])]
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 228 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 224 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32]
        call arg1.mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 196 len 4] with:
           value arg2 wei
             gas gas_remaining wei
            args mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 200 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            61,
                            0x7754696d656c6f636b3a3a657865637574655472616e73616374696f6e3a205472616e73616374696f6e20657865637574696f6e207265766572746564,
                            mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 325 len 3]
            return Array(len=arg3.length, data=arg3[all])
        if not ext_call.success:
            revert with 0, 
                        32,
                        61,
                        0x7754696d656c6f636b3a3a657865637574655472616e73616374696f6e3a205472616e73616374696f6e20657865637574696f6e207265766572746564,
                        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 326 len 3]
        return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] = mem[ceil32(arg3.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
    call arg1 with:
       funct Mask(32, -(8 * ceil32(arg4.length) + -arg4.length + 4) + 256, 0) >> -(8 * ceil32(arg4.length) + -arg4.length + 4) + 256
       value arg2 wei
         gas gas_remaining wei
        args mem[ceil32(arg3.length) + ceil32(arg4.length) + 164 len arg4.length - 4]
    if return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        61,
                        0x7754696d656c6f636b3a3a657865637574655472616e73616374696f6e3a205472616e73616374696f6e20657865637574696f6e207265766572746564,
                        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 290 len 3]
        return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    if not ext_call.success:
        revert with 0, 
                    32,
                    61,
                    0x7754696d656c6f636b3a3a657865637574655472616e73616374696f6e3a205472616e73616374696f6e20657865637574696f6e207265766572746564,
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 289 len 3]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 32
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = arg3.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 224 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), 
               mem[ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) + -arg4.length + 32],
               Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 256 len arg3.length % 32]
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), 
           mem[ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) + -arg4.length + 32],
           Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
           mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 224 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
}



}
