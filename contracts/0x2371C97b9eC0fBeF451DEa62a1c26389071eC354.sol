contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, address arg2)
#  - harvest()
#  - withdraw(address arg1)
#
const getHarvestable = ext_call.return_data[0]

const balanceOfPool = ext_call.return_data[0]

const devFundMax = 100000

const treasuryMax = 100000

const getName = 'ritFtmLpV2'

const sub_29b5478a(?) = 0x30748322b6e34545dbe0788c421886aeb5297789

const sub_2d2e3a93(?) = 0x5cc61a78f164885776aa610fb0fe1257df78e59b

const weth = 0x7ceb23fd6bc0add59e62ac25578270cff1b9f619

const sub_6a0f3a10(?) = 0xefe02cb895b6e061fa227de683c04f3ce19f3a62

const performanceMax = 100000

const usdcBuyback = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48

const wbnb = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const sub_9dc9505b(?) = 0x841fad6eae12c286d1fd18d1d525dffa75c7effe

const sub_a0dbb829(?) = 10000

const sub_c2af6b58(?) = 0x5cc61a78f164885776aa610fb0fe1257df78e59b

const sub_c32b2b51(?) = 0xe41d2489571d322189246dafa5ebde1f4699f498

const sub_ce884d32(?) = 0xf16e81dce15b08f326220742020379b855b87df9

const WFTM = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c

const WMATIC = 0xd500b1d8e8ef31e21c99d1db9a6444d3adf1270


mapping of uint8 stor0;
mapping of uint8 stor1;
uint256 performanceFee;
uint256 treasuryFee;
uint256 devFundFee;
uint256 sub_5d158350;
uint256 sub_14b74d9a;
uint256 sub_7b756553;
uint8 buybackEnabled;
address mmTokenAddress; offset 8
address masterChefAddress;
address wantAddress;
address governanceAddress;
address controllerAddress;
address strategistAddress;
address timelockAddress;
address univ2Router2Address;
address sushiRouterAddress;
address sub_8ed8ea7eAddress;
address sub_50d7d613Address;
uint256 sub_6add50ab;

function sub_14b74d9a(?) {
    return sub_14b74d9a
}

function buybackEnabled() {
    return bool(buybackEnabled)
}

function want() {
    return wantAddress
}

function strategist() {
    return strategistAddress
}

function whiteList(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function sub_50d7d613(?) {
    return sub_50d7d613Address
}

function masterChef() {
    return masterChefAddress
}

function governance() {
    return governanceAddress
}

function sub_5d158350(?) {
    return sub_5d158350
}

function sub_6add50ab(?) {
    return sub_6add50ab
}

function sushiRouter() {
    return sushiRouterAddress
}

function sub_7b756553(?) {
    return sub_7b756553
}

function performanceFee() {
    return performanceFee
}

function sub_8ed8ea7e(?) {
    return sub_8ed8ea7eAddress
}

function mmToken() {
    return mmTokenAddress
}

function devFundFee() {
    return devFundFee
}

function univ2Router2() {
    return univ2Router2Address
}

function treasuryFee() {
    return treasuryFee
}

function timelock() {
    return timelockAddress
}

function sub_e13f8513(?) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function controller() {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function setDevFundFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    devFundFee = arg1
}

function sub_60bc488b(?) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    sub_8ed8ea7eAddress = arg1
}

function sub_caa26ca7(?) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    sub_50d7d613Address = arg1
}

function setTreasuryFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    treasuryFee = arg1
}

function setTimelock(address arg1) {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    timelockAddress = arg1
}

function setMmToken(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    mmTokenAddress = arg1
}

function setController(address arg1) {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    controllerAddress = arg1
}

function setPerformanceFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    performanceFee = arg1
}

function setUniRoute(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    univ2Router2Address = arg1
}

function setMasterChef(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    masterChefAddress = arg1
}

function setGovernance(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    governanceAddress = arg1
}

function setStrategist(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    strategistAddress = arg1
}

function setSushiRoute(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    sushiRouterAddress = arg1
}

function setDelayBlockRequired(uint256 arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    sub_5d158350 = arg1
}

function setBuybackEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    buybackEnabled = uint8(arg1)
}

function setWhiteList(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor0[address(arg1)] = uint8(arg2)
}

function setBenignCallers(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor1[address(arg1)] = uint8(arg2)
}

function setSwapBPS(uint256 arg1) {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, '!GovernanceStrategist'
    sub_6add50ab = arg1
}

function balanceOfWant() {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function execute(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    if not arg1:
        revert with 0, '!target'
    delegate arg1 with:
         gas gas_remaining - 5000 wei
        args arg2[all]
    if not delegate.return_code == 1:
        revert with ext_call.return_data[0 len return_data.size]
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function deposit() {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(0xefe02cb895b6e061fa227de683c04f3ce19f3a62)
        call 0xefe02cb895b6e061fa227de683c04f3ce19f3a62.deposit(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function withdrawAll() {
    if controllerAddress != msg.sender:
        revert with 0, '!controller'
    require ext_code.size(0xefe02cb895b6e061fa227de683c04f3ce19f3a62)
    staticcall 0xefe02cb895b6e061fa227de683c04f3ce19f3a62.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xefe02cb895b6e061fa227de683c04f3ce19f3a62)
    call 0xefe02cb895b6e061fa227de683c04f3ce19f3a62.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.vaults(address arg1) with:
            gas gas_remaining wei
           args wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, '!vault'
    mem[132] = ext_call.return_data[12 len 20]
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
    call wantAddress.mem[160 len 4] with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, ext_call.return_data[12 len 20], ext_call.return_data[0]
        if not 0, mem[132 len 28]:
            revert with 0, 32, 42, 0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    return ext_call.return_data[0]
}

function balanceOf() {
    if not sub_5d158350:
        require ext_code.size(0xefe02cb895b6e061fa227de683c04f3ce19f3a62)
        staticcall 0xefe02cb895b6e061fa227de683c04f3ce19f3a62.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (2 * ext_call.return_data[0])
    if sub_7b756553 <= 0:
        require ext_code.size(0xefe02cb895b6e061fa227de683c04f3ce19f3a62)
        staticcall 0xefe02cb895b6e061fa227de683c04f3ce19f3a62.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (2 * ext_call.return_data[0])
    if sub_14b74d9a > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.number - sub_14b74d9a >= sub_5d158350:
        require ext_code.size(0xefe02cb895b6e061fa227de683c04f3ce19f3a62)
        staticcall 0xefe02cb895b6e061fa227de683c04f3ce19f3a62.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (2 * ext_call.return_data[0])
    if sub_5d158350 + sub_14b74d9a < sub_14b74d9a:
        revert with 0, 'SafeMath: addition overflow'
    if block.number > sub_5d158350 + sub_14b74d9a:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_7b756553:
        if not sub_5d158350:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(0xefe02cb895b6e061fa227de683c04f3ce19f3a62)
        staticcall 0xefe02cb895b6e061fa227de683c04f3ce19f3a62.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 / sub_5d158350 / 10^18 > 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((2 * ext_call.return_data[0]) - (0 / sub_5d158350 / 10^18))
    if (sub_5d158350 * sub_7b756553) + (sub_14b74d9a * sub_7b756553) - (block.number * sub_7b756553) / sub_7b756553 != sub_5d158350 + sub_14b74d9a - block.number:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not (sub_5d158350 * sub_7b756553) + (sub_14b74d9a * sub_7b756553) - (block.number * sub_7b756553):
        if not sub_5d158350:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(0xefe02cb895b6e061fa227de683c04f3ce19f3a62)
        staticcall 0xefe02cb895b6e061fa227de683c04f3ce19f3a62.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 / sub_5d158350 / 10^18 > 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((2 * ext_call.return_data[0]) - (0 / sub_5d158350 / 10^18))
    if (10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / (sub_5d158350 * sub_7b756553) + (sub_14b74d9a * sub_7b756553) - (block.number * sub_7b756553) != 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not sub_5d158350:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(0xefe02cb895b6e061fa227de683c04f3ce19f3a62)
    staticcall 0xefe02cb895b6e061fa227de683c04f3ce19f3a62.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if (10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18 > 2 * ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((2 * ext_call.return_data[0]) - ((10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18))
}

function figureOutPath(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if mmTokenAddress != arg2:
        if 0x7ceb23fd6bc0add59e62ac25578270cff1b9f619 == arg1:
            mem[96] = 2
            mem[128] = arg1
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 64] = address(arg1), arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=address(arg1), arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _2297 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _2447 = mem[_2297 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_2297 + 192])] = mem[_2297 + 224 len floor32(mem[_2297 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _3972 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _2447) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2447) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _2447) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _2447) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _2447) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _2447) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2447) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2447) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _5422 = mem[(32 * _2447) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _2447) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _2447) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _2447) + ceil32(return_data.size) + mem[(32 * _2447) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _2447) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2447) + ceil32(return_data.size) + mem[(32 * _2447) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _2447) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2447) + ceil32(return_data.size) + mem[(32 * _2447) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _5497 = mem[(32 * _2447) + ceil32(return_data.size) + _5422 + 224]
            mem[(32 * _2447) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2447) + ceil32(return_data.size) + _5422 + 224])] = mem[(32 * _2447) + ceil32(return_data.size) + _5422 + 256 len floor32(mem[(32 * _2447) + ceil32(return_data.size) + _5422 + 224])]
            require 1 < mem[(32 * _2447) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _5497) + (32 * _2447) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3972 > mem[(32 * _2447) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _5497) + (32 * _2447) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _5497) + (32 * _2447) + (2 * ceil32(return_data.size)) + 352 len 64]
        if 0x7ceb23fd6bc0add59e62ac25578270cff1b9f619 == arg2:
            mem[96] = 2
            mem[128] = arg1
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 64] = address(arg1), arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=address(arg1), arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _2301 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _2449 = mem[_2301 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_2301 + 192])] = mem[_2301 + 224 len floor32(mem[_2301 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _3974 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _2449) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2449) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _2449) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _2449) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _2449) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _2449) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2449) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2449) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _5424 = mem[(32 * _2449) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _2449) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _2449) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _2449) + ceil32(return_data.size) + mem[(32 * _2449) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _2449) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2449) + ceil32(return_data.size) + mem[(32 * _2449) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _2449) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2449) + ceil32(return_data.size) + mem[(32 * _2449) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _5498 = mem[(32 * _2449) + ceil32(return_data.size) + _5424 + 224]
            mem[(32 * _2449) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2449) + ceil32(return_data.size) + _5424 + 224])] = mem[(32 * _2449) + ceil32(return_data.size) + _5424 + 256 len floor32(mem[(32 * _2449) + ceil32(return_data.size) + _5424 + 224])]
            require 1 < mem[(32 * _2449) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _5498) + (32 * _2449) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3974 > mem[(32 * _2449) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _5498) + (32 * _2449) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _5498) + (32 * _2449) + (2 * ceil32(return_data.size)) + 352 len 64]
        if 0x7700000000000000000000000021be370d5312f44cb42ce377bc9b8a0cef1a4c == arg1:
            mem[96] = 2
            mem[128] = arg1
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 64] = address(arg1), arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=address(arg1), arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _2305 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _2451 = mem[_2305 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_2305 + 192])] = mem[_2305 + 224 len floor32(mem[_2305 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _3976 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _2451) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2451) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _2451) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _2451) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _2451) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _2451) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2451) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2451) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _5426 = mem[(32 * _2451) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _2451) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _2451) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _2451) + ceil32(return_data.size) + mem[(32 * _2451) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _2451) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2451) + ceil32(return_data.size) + mem[(32 * _2451) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _2451) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2451) + ceil32(return_data.size) + mem[(32 * _2451) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _5499 = mem[(32 * _2451) + ceil32(return_data.size) + _5426 + 224]
            mem[(32 * _2451) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2451) + ceil32(return_data.size) + _5426 + 224])] = mem[(32 * _2451) + ceil32(return_data.size) + _5426 + 256 len floor32(mem[(32 * _2451) + ceil32(return_data.size) + _5426 + 224])]
            require 1 < mem[(32 * _2451) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _5499) + (32 * _2451) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3976 > mem[(32 * _2451) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _5499) + (32 * _2451) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _5499) + (32 * _2451) + (2 * ceil32(return_data.size)) + 352 len 64]
        if 0x7700000000000000000000000021be370d5312f44cb42ce377bc9b8a0cef1a4c == arg2:
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 64] = address(arg1), arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=address(arg1), arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _2309 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _2453 = mem[_2309 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_2309 + 192])] = mem[_2309 + 224 len floor32(mem[_2309 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _3978 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _2453) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2453) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _2453) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _2453) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _2453) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _2453) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2453) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2453) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _5428 = mem[(32 * _2453) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _2453) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _2453) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _2453) + ceil32(return_data.size) + mem[(32 * _2453) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _2453) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2453) + ceil32(return_data.size) + mem[(32 * _2453) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _2453) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2453) + ceil32(return_data.size) + mem[(32 * _2453) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _5500 = mem[(32 * _2453) + ceil32(return_data.size) + _5428 + 224]
            mem[(32 * _2453) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2453) + ceil32(return_data.size) + _5428 + 224])] = mem[(32 * _2453) + ceil32(return_data.size) + _5428 + 256 len floor32(mem[(32 * _2453) + ceil32(return_data.size) + _5428 + 224])]
            require 1 < mem[(32 * _2453) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _5500) + (32 * _2453) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3978 > mem[(32 * _2453) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _5500) + (32 * _2453) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _5500) + (32 * _2453) + (2 * ceil32(return_data.size)) + 352 len 64]
        if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 64] = address(arg1), arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=address(arg1), arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _2313 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _2455 = mem[_2313 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_2313 + 192])] = mem[_2313 + 224 len floor32(mem[_2313 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _3980 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _2455) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2455) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _2455) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _2455) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _2455) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _2455) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2455) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2455) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _5430 = mem[(32 * _2455) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _2455) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _2455) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _2455) + ceil32(return_data.size) + mem[(32 * _2455) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _2455) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2455) + ceil32(return_data.size) + mem[(32 * _2455) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _2455) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2455) + ceil32(return_data.size) + mem[(32 * _2455) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _5501 = mem[(32 * _2455) + ceil32(return_data.size) + _5430 + 224]
            mem[(32 * _2455) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2455) + ceil32(return_data.size) + _5430 + 224])] = mem[(32 * _2455) + ceil32(return_data.size) + _5430 + 256 len floor32(mem[(32 * _2455) + ceil32(return_data.size) + _5430 + 224])]
            require 1 < mem[(32 * _2455) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _5501) + (32 * _2455) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3980 > mem[(32 * _2455) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _5501) + (32 * _2455) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _5501) + (32 * _2455) + (2 * ceil32(return_data.size)) + 352 len 64]
        if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg2:
            mem[96] = 2
            mem[128] = arg1
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 64] = address(arg1), arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=address(arg1), arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _2317 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _2457 = mem[_2317 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_2317 + 192])] = mem[_2317 + 224 len floor32(mem[_2317 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _3982 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _2457) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2457) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _2457) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _2457) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _2457) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _2457) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2457) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2457) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _5432 = mem[(32 * _2457) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _2457) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _2457) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _2457) + ceil32(return_data.size) + mem[(32 * _2457) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _2457) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2457) + ceil32(return_data.size) + mem[(32 * _2457) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _2457) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2457) + ceil32(return_data.size) + mem[(32 * _2457) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _5502 = mem[(32 * _2457) + ceil32(return_data.size) + _5432 + 224]
            mem[(32 * _2457) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2457) + ceil32(return_data.size) + _5432 + 224])] = mem[(32 * _2457) + ceil32(return_data.size) + _5432 + 256 len floor32(mem[(32 * _2457) + ceil32(return_data.size) + _5432 + 224])]
            require 1 < mem[(32 * _2457) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _5502) + (32 * _2457) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3982 > mem[(32 * _2457) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _5502) + (32 * _2457) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _5502) + (32 * _2457) + (2 * ceil32(return_data.size)) + 352 len 64]
        if 0xd500b1d8e8ef31e21c99d1db9a6444d3adf1270 == arg1:
            mem[96] = 2
            mem[128] = arg1
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 64] = address(arg1), arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=address(arg1), arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _2321 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _2459 = mem[_2321 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_2321 + 192])] = mem[_2321 + 224 len floor32(mem[_2321 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _3984 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _2459) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2459) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _2459) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _2459) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _2459) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _2459) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2459) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2459) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _5434 = mem[(32 * _2459) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _2459) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _2459) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _2459) + ceil32(return_data.size) + mem[(32 * _2459) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _2459) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2459) + ceil32(return_data.size) + mem[(32 * _2459) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _2459) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2459) + ceil32(return_data.size) + mem[(32 * _2459) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _5503 = mem[(32 * _2459) + ceil32(return_data.size) + _5434 + 224]
            mem[(32 * _2459) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2459) + ceil32(return_data.size) + _5434 + 224])] = mem[(32 * _2459) + ceil32(return_data.size) + _5434 + 256 len floor32(mem[(32 * _2459) + ceil32(return_data.size) + _5434 + 224])]
            require 1 < mem[(32 * _2459) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _5503) + (32 * _2459) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3984 > mem[(32 * _2459) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _5503) + (32 * _2459) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _5503) + (32 * _2459) + (2 * ceil32(return_data.size)) + 352 len 64]
        if arg2 != 0xd500b1d8e8ef31e21c99d1db9a6444d3adf1270:
            mem[192] = arg2
            mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[228] = arg3
            mem[260] = 64
            mem[292] = 3
            mem[324 len 96] = address(arg1), 0x7ceb23fd6bc0add59e62ac25578270cff1b9f619, arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=3, data=address(arg1), 0x7ceb23fd6bc0add59e62ac25578270cff1b9f619, arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _2325 = mem[224 len 4], Mask(224, 32, arg3) >> 32
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _2461 = mem[_2325 + 224]
            mem[ceil32(return_data.size) + 256 len floor32(mem[_2325 + 224])] = mem[_2325 + 256 len floor32(mem[_2325 + 224])]
            require 2 < mem[ceil32(return_data.size) + 224]
            _3986 = mem[ceil32(return_data.size) + 320]
            mem[(32 * _2461) + ceil32(return_data.size) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2461) + ceil32(return_data.size) + 260] = arg3
            mem[(32 * _2461) + ceil32(return_data.size) + 292] = 64
            mem[(32 * _2461) + ceil32(return_data.size) + 324] = 3
            mem[(32 * _2461) + ceil32(return_data.size) + 356 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=3, data=mem[(32 * _2461) + ceil32(return_data.size) + 356 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2461) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2461) + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _5436 = mem[(32 * _2461) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _2461) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _2461) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _2461) + ceil32(return_data.size) + mem[(32 * _2461) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * _2461) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2461) + ceil32(return_data.size) + mem[(32 * _2461) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
            mem[(32 * _2461) + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _2461) + ceil32(return_data.size) + mem[(32 * _2461) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
            _5504 = mem[(32 * _2461) + ceil32(return_data.size) + _5436 + 256]
            mem[(32 * _2461) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _2461) + ceil32(return_data.size) + _5436 + 256])] = mem[(32 * _2461) + ceil32(return_data.size) + _5436 + 288 len floor32(mem[(32 * _2461) + ceil32(return_data.size) + _5436 + 256])]
            require 2 < mem[(32 * _2461) + (2 * ceil32(return_data.size)) + 256]
            mem[(32 * _5504) + (32 * _2461) + (2 * ceil32(return_data.size)) + 384 len 0] = None
            if _3986 > mem[(32 * _2461) + (2 * ceil32(return_data.size)) + 352]:
                return 1, Array(len=3, data=mem[(32 * _5504) + (32 * _2461) + (2 * ceil32(return_data.size)) + 384 len 96])
            return 0, 64, 3, mem[(32 * _5504) + (32 * _2461) + (2 * ceil32(return_data.size)) + 384 len 96]
        mem[96] = 2
        mem[128] = arg1
        mem[160] = arg2
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = 64
        mem[260] = 2
        mem[292 len 64] = address(arg1), arg2
        require ext_code.size(sushiRouterAddress)
        staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=address(arg1), arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _2329 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _2463 = mem[_2329 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_2329 + 192])] = mem[_2329 + 224 len floor32(mem[_2329 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        _3988 = mem[ceil32(return_data.size) + 256]
        mem[(32 * _2463) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _2463) + ceil32(return_data.size) + 228] = arg3
        mem[(32 * _2463) + ceil32(return_data.size) + 260] = 64
        mem[(32 * _2463) + ceil32(return_data.size) + 292] = 2
        mem[(32 * _2463) + ceil32(return_data.size) + 324 len 0] = None
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(32 * _2463) + ceil32(return_data.size) + 324 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _2463) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _2463) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _5438 = mem[(32 * _2463) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _2463) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _2463) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _2463) + ceil32(return_data.size) + mem[(32 * _2463) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _2463) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2463) + ceil32(return_data.size) + mem[(32 * _2463) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        mem[(32 * _2463) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2463) + ceil32(return_data.size) + mem[(32 * _2463) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        _5505 = mem[(32 * _2463) + ceil32(return_data.size) + _5438 + 224]
        mem[(32 * _2463) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2463) + ceil32(return_data.size) + _5438 + 224])] = mem[(32 * _2463) + ceil32(return_data.size) + _5438 + 256 len floor32(mem[(32 * _2463) + ceil32(return_data.size) + _5438 + 224])]
        require 1 < mem[(32 * _2463) + (2 * ceil32(return_data.size)) + 224]
        mem[(32 * _5505) + (32 * _2463) + (2 * ceil32(return_data.size)) + 352 len 0] = None
        if _3988 > mem[(32 * _2463) + (2 * ceil32(return_data.size)) + 288]:
            return 1, Array(len=2, data=mem[(32 * _5505) + (32 * _2463) + (2 * ceil32(return_data.size)) + 352 len 64])
        return 0, 64, 2, mem[(32 * _5505) + (32 * _2463) + (2 * ceil32(return_data.size)) + 352 len 64]
    if bool(buybackEnabled) != 1:
        if 0x7ceb23fd6bc0add59e62ac25578270cff1b9f619 == arg1:
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 64] = address(arg1), arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=address(arg1), arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _2333 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _2465 = mem[_2333 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_2333 + 192])] = mem[_2333 + 224 len floor32(mem[_2333 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _3990 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _2465) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2465) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _2465) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _2465) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _2465) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _2465) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2465) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2465) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _5440 = mem[(32 * _2465) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _2465) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _2465) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _2465) + ceil32(return_data.size) + mem[(32 * _2465) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _2465) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2465) + ceil32(return_data.size) + mem[(32 * _2465) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _2465) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2465) + ceil32(return_data.size) + mem[(32 * _2465) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _5506 = mem[(32 * _2465) + ceil32(return_data.size) + _5440 + 224]
            mem[(32 * _2465) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2465) + ceil32(return_data.size) + _5440 + 224])] = mem[(32 * _2465) + ceil32(return_data.size) + _5440 + 256 len floor32(mem[(32 * _2465) + ceil32(return_data.size) + _5440 + 224])]
            require 1 < mem[(32 * _2465) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _5506) + (32 * _2465) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3990 > mem[(32 * _2465) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _5506) + (32 * _2465) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _5506) + (32 * _2465) + (2 * ceil32(return_data.size)) + 352 len 64]
        if 0x7ceb23fd6bc0add59e62ac25578270cff1b9f619 == arg2:
            mem[96] = 2
            mem[128] = arg1
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 64] = address(arg1), arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=address(arg1), arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _2337 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _2467 = mem[_2337 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_2337 + 192])] = mem[_2337 + 224 len floor32(mem[_2337 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _3992 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _2467) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2467) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _2467) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _2467) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _2467) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _2467) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2467) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2467) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _5442 = mem[(32 * _2467) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _2467) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _2467) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _2467) + ceil32(return_data.size) + mem[(32 * _2467) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _2467) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2467) + ceil32(return_data.size) + mem[(32 * _2467) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _2467) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2467) + ceil32(return_data.size) + mem[(32 * _2467) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _5507 = mem[(32 * _2467) + ceil32(return_data.size) + _5442 + 224]
            mem[(32 * _2467) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2467) + ceil32(return_data.size) + _5442 + 224])] = mem[(32 * _2467) + ceil32(return_data.size) + _5442 + 256 len floor32(mem[(32 * _2467) + ceil32(return_data.size) + _5442 + 224])]
            require 1 < mem[(32 * _2467) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _5507) + (32 * _2467) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3992 > mem[(32 * _2467) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _5507) + (32 * _2467) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _5507) + (32 * _2467) + (2 * ceil32(return_data.size)) + 352 len 64]
        if 0x7700000000000000000000000021be370d5312f44cb42ce377bc9b8a0cef1a4c == arg1:
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 64] = address(arg1), arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=address(arg1), arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _2341 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _2469 = mem[_2341 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_2341 + 192])] = mem[_2341 + 224 len floor32(mem[_2341 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _3994 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _2469) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2469) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _2469) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _2469) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _2469) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _2469) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2469) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2469) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _5444 = mem[(32 * _2469) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _2469) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _2469) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _2469) + ceil32(return_data.size) + mem[(32 * _2469) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _2469) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2469) + ceil32(return_data.size) + mem[(32 * _2469) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _2469) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2469) + ceil32(return_data.size) + mem[(32 * _2469) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _5508 = mem[(32 * _2469) + ceil32(return_data.size) + _5444 + 224]
            mem[(32 * _2469) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2469) + ceil32(return_data.size) + _5444 + 224])] = mem[(32 * _2469) + ceil32(return_data.size) + _5444 + 256 len floor32(mem[(32 * _2469) + ceil32(return_data.size) + _5444 + 224])]
            require 1 < mem[(32 * _2469) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _5508) + (32 * _2469) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3994 > mem[(32 * _2469) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _5508) + (32 * _2469) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _5508) + (32 * _2469) + (2 * ceil32(return_data.size)) + 352 len 64]
        if 0x7700000000000000000000000021be370d5312f44cb42ce377bc9b8a0cef1a4c == arg2:
            mem[96] = 2
            mem[128] = arg1
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 64] = address(arg1), arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=address(arg1), arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _2345 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _2471 = mem[_2345 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_2345 + 192])] = mem[_2345 + 224 len floor32(mem[_2345 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _3996 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _2471) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2471) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _2471) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _2471) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _2471) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _2471) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2471) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2471) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _5446 = mem[(32 * _2471) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _2471) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _2471) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _2471) + ceil32(return_data.size) + mem[(32 * _2471) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _2471) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2471) + ceil32(return_data.size) + mem[(32 * _2471) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _2471) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2471) + ceil32(return_data.size) + mem[(32 * _2471) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _5509 = mem[(32 * _2471) + ceil32(return_data.size) + _5446 + 224]
            mem[(32 * _2471) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2471) + ceil32(return_data.size) + _5446 + 224])] = mem[(32 * _2471) + ceil32(return_data.size) + _5446 + 256 len floor32(mem[(32 * _2471) + ceil32(return_data.size) + _5446 + 224])]
            require 1 < mem[(32 * _2471) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _5509) + (32 * _2471) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3996 > mem[(32 * _2471) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _5509) + (32 * _2471) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _5509) + (32 * _2471) + (2 * ceil32(return_data.size)) + 352 len 64]
        if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 64] = address(arg1), arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=address(arg1), arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _2349 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _2473 = mem[_2349 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_2349 + 192])] = mem[_2349 + 224 len floor32(mem[_2349 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _3998 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _2473) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2473) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _2473) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _2473) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _2473) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _2473) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2473) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2473) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _5448 = mem[(32 * _2473) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _2473) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _2473) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _2473) + ceil32(return_data.size) + mem[(32 * _2473) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _2473) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2473) + ceil32(return_data.size) + mem[(32 * _2473) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _2473) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2473) + ceil32(return_data.size) + mem[(32 * _2473) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _5510 = mem[(32 * _2473) + ceil32(return_data.size) + _5448 + 224]
            mem[(32 * _2473) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2473) + ceil32(return_data.size) + _5448 + 224])] = mem[(32 * _2473) + ceil32(return_data.size) + _5448 + 256 len floor32(mem[(32 * _2473) + ceil32(return_data.size) + _5448 + 224])]
            require 1 < mem[(32 * _2473) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _5510) + (32 * _2473) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3998 > mem[(32 * _2473) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _5510) + (32 * _2473) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _5510) + (32 * _2473) + (2 * ceil32(return_data.size)) + 352 len 64]
        if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg2:
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 64] = address(arg1), arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=address(arg1), arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _2353 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _2475 = mem[_2353 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_2353 + 192])] = mem[_2353 + 224 len floor32(mem[_2353 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _4000 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _2475) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2475) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _2475) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _2475) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _2475) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _2475) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2475) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2475) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _5450 = mem[(32 * _2475) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _2475) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _2475) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _2475) + ceil32(return_data.size) + mem[(32 * _2475) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _2475) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2475) + ceil32(return_data.size) + mem[(32 * _2475) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _2475) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2475) + ceil32(return_data.size) + mem[(32 * _2475) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _5511 = mem[(32 * _2475) + ceil32(return_data.size) + _5450 + 224]
            mem[(32 * _2475) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2475) + ceil32(return_data.size) + _5450 + 224])] = mem[(32 * _2475) + ceil32(return_data.size) + _5450 + 256 len floor32(mem[(32 * _2475) + ceil32(return_data.size) + _5450 + 224])]
            require 1 < mem[(32 * _2475) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _5511) + (32 * _2475) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _4000 > mem[(32 * _2475) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _5511) + (32 * _2475) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _5511) + (32 * _2475) + (2 * ceil32(return_data.size)) + 352 len 64]
        if 0xd500b1d8e8ef31e21c99d1db9a6444d3adf1270 == arg1:
            mem[96] = 2
            mem[128] = arg1
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 64] = address(arg1), arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=address(arg1), arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _2357 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _2477 = mem[_2357 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_2357 + 192])] = mem[_2357 + 224 len floor32(mem[_2357 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _4002 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _2477) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2477) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _2477) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _2477) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _2477) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _2477) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2477) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2477) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _5452 = mem[(32 * _2477) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _2477) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _2477) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _2477) + ceil32(return_data.size) + mem[(32 * _2477) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _2477) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2477) + ceil32(return_data.size) + mem[(32 * _2477) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _2477) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2477) + ceil32(return_data.size) + mem[(32 * _2477) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _5512 = mem[(32 * _2477) + ceil32(return_data.size) + _5452 + 224]
            mem[(32 * _2477) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2477) + ceil32(return_data.size) + _5452 + 224])] = mem[(32 * _2477) + ceil32(return_data.size) + _5452 + 256 len floor32(mem[(32 * _2477) + ceil32(return_data.size) + _5452 + 224])]
            require 1 < mem[(32 * _2477) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _5512) + (32 * _2477) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _4002 > mem[(32 * _2477) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _5512) + (32 * _2477) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _5512) + (32 * _2477) + (2 * ceil32(return_data.size)) + 352 len 64]
        if arg2 != 0xd500b1d8e8ef31e21c99d1db9a6444d3adf1270:
            mem[192] = arg2
            mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[228] = arg3
            mem[260] = 64
            mem[292] = 3
            mem[324 len 96] = address(arg1), 0x7ceb23fd6bc0add59e62ac25578270cff1b9f619, arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=3, data=address(arg1), 0x7ceb23fd6bc0add59e62ac25578270cff1b9f619, arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _2361 = mem[224 len 4], Mask(224, 32, arg3) >> 32
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _2479 = mem[_2361 + 224]
            mem[ceil32(return_data.size) + 256 len floor32(mem[_2361 + 224])] = mem[_2361 + 256 len floor32(mem[_2361 + 224])]
            require 2 < mem[ceil32(return_data.size) + 224]
            _4004 = mem[ceil32(return_data.size) + 320]
            mem[(32 * _2479) + ceil32(return_data.size) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2479) + ceil32(return_data.size) + 260] = arg3
            mem[(32 * _2479) + ceil32(return_data.size) + 292] = 64
            mem[(32 * _2479) + ceil32(return_data.size) + 324] = 3
            mem[(32 * _2479) + ceil32(return_data.size) + 356 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=3, data=mem[(32 * _2479) + ceil32(return_data.size) + 356 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2479) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2479) + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _5454 = mem[(32 * _2479) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _2479) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _2479) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _2479) + ceil32(return_data.size) + mem[(32 * _2479) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * _2479) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2479) + ceil32(return_data.size) + mem[(32 * _2479) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
            mem[(32 * _2479) + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _2479) + ceil32(return_data.size) + mem[(32 * _2479) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
            _5513 = mem[(32 * _2479) + ceil32(return_data.size) + _5454 + 256]
            mem[(32 * _2479) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _2479) + ceil32(return_data.size) + _5454 + 256])] = mem[(32 * _2479) + ceil32(return_data.size) + _5454 + 288 len floor32(mem[(32 * _2479) + ceil32(return_data.size) + _5454 + 256])]
            require 2 < mem[(32 * _2479) + (2 * ceil32(return_data.size)) + 256]
            mem[(32 * _5513) + (32 * _2479) + (2 * ceil32(return_data.size)) + 384 len 0] = None
            if _4004 > mem[(32 * _2479) + (2 * ceil32(return_data.size)) + 352]:
                return 1, Array(len=3, data=mem[(32 * _5513) + (32 * _2479) + (2 * ceil32(return_data.size)) + 384 len 96])
            return 0, 64, 3, mem[(32 * _5513) + (32 * _2479) + (2 * ceil32(return_data.size)) + 384 len 96]
        mem[96] = 2
        mem[128] = arg1
        mem[160] = arg2
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = 64
        mem[260] = 2
        mem[292 len 64] = address(arg1), arg2
        require ext_code.size(sushiRouterAddress)
        staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=address(arg1), arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _2365 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _2481 = mem[_2365 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_2365 + 192])] = mem[_2365 + 224 len floor32(mem[_2365 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        _4006 = mem[ceil32(return_data.size) + 256]
        mem[(32 * _2481) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _2481) + ceil32(return_data.size) + 228] = arg3
        mem[(32 * _2481) + ceil32(return_data.size) + 260] = 64
        mem[(32 * _2481) + ceil32(return_data.size) + 292] = 2
        mem[(32 * _2481) + ceil32(return_data.size) + 324 len 0] = None
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(32 * _2481) + ceil32(return_data.size) + 324 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _2481) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _2481) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _5456 = mem[(32 * _2481) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _2481) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _2481) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _2481) + ceil32(return_data.size) + mem[(32 * _2481) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _2481) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2481) + ceil32(return_data.size) + mem[(32 * _2481) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        mem[(32 * _2481) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2481) + ceil32(return_data.size) + mem[(32 * _2481) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        _5514 = mem[(32 * _2481) + ceil32(return_data.size) + _5456 + 224]
        mem[(32 * _2481) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2481) + ceil32(return_data.size) + _5456 + 224])] = mem[(32 * _2481) + ceil32(return_data.size) + _5456 + 256 len floor32(mem[(32 * _2481) + ceil32(return_data.size) + _5456 + 224])]
        require 1 < mem[(32 * _2481) + (2 * ceil32(return_data.size)) + 224]
        mem[(32 * _5514) + (32 * _2481) + (2 * ceil32(return_data.size)) + 352 len 0] = None
        if _4006 > mem[(32 * _2481) + (2 * ceil32(return_data.size)) + 288]:
            return 1, Array(len=2, data=mem[(32 * _5514) + (32 * _2481) + (2 * ceil32(return_data.size)) + 352 len 64])
        return 0, 64, 2, mem[(32 * _5514) + (32 * _2481) + (2 * ceil32(return_data.size)) + 352 len 64]
    if 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 == arg1:
        mem[96] = 2
        mem[128] = arg1
        mem[160] = arg2
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = 64
        mem[260] = 2
        mem[292 len 64] = address(arg1), arg2
        require ext_code.size(sushiRouterAddress)
        staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=address(arg1), arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _2369 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _2483 = mem[_2369 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_2369 + 192])] = mem[_2369 + 224 len floor32(mem[_2369 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        _4008 = mem[ceil32(return_data.size) + 256]
        mem[(32 * _2483) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _2483) + ceil32(return_data.size) + 228] = arg3
        mem[(32 * _2483) + ceil32(return_data.size) + 260] = 64
        mem[(32 * _2483) + ceil32(return_data.size) + 292] = 2
        mem[(32 * _2483) + ceil32(return_data.size) + 324 len 0] = None
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(32 * _2483) + ceil32(return_data.size) + 324 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _2483) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _2483) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _5458 = mem[(32 * _2483) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _2483) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _2483) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _2483) + ceil32(return_data.size) + mem[(32 * _2483) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _2483) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2483) + ceil32(return_data.size) + mem[(32 * _2483) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        mem[(32 * _2483) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2483) + ceil32(return_data.size) + mem[(32 * _2483) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        _5515 = mem[(32 * _2483) + ceil32(return_data.size) + _5458 + 224]
        mem[(32 * _2483) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2483) + ceil32(return_data.size) + _5458 + 224])] = mem[(32 * _2483) + ceil32(return_data.size) + _5458 + 256 len floor32(mem[(32 * _2483) + ceil32(return_data.size) + _5458 + 224])]
        require 1 < mem[(32 * _2483) + (2 * ceil32(return_data.size)) + 224]
        mem[(32 * _5515) + (32 * _2483) + (2 * ceil32(return_data.size)) + 352 len 0] = None
        if _4008 > mem[(32 * _2483) + (2 * ceil32(return_data.size)) + 288]:
            return 1, Array(len=2, data=mem[(32 * _5515) + (32 * _2483) + (2 * ceil32(return_data.size)) + 352 len 64])
        return 0, 64, 2, mem[(32 * _5515) + (32 * _2483) + (2 * ceil32(return_data.size)) + 352 len 64]
    if 0x7700000000000000000000000021be370d5312f44cb42ce377bc9b8a0cef1a4c == arg1:
        mem[160] = arg2
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = 64
        mem[260] = 2
        mem[292 len 64] = address(arg1), arg2
        require ext_code.size(sushiRouterAddress)
        staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=address(arg1), arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _2373 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _2485 = mem[_2373 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_2373 + 192])] = mem[_2373 + 224 len floor32(mem[_2373 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        _4010 = mem[ceil32(return_data.size) + 256]
        mem[(32 * _2485) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _2485) + ceil32(return_data.size) + 228] = arg3
        mem[(32 * _2485) + ceil32(return_data.size) + 260] = 64
        mem[(32 * _2485) + ceil32(return_data.size) + 292] = 2
        mem[(32 * _2485) + ceil32(return_data.size) + 324 len 0] = None
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(32 * _2485) + ceil32(return_data.size) + 324 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _2485) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _2485) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _5460 = mem[(32 * _2485) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _2485) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _2485) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _2485) + ceil32(return_data.size) + mem[(32 * _2485) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _2485) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2485) + ceil32(return_data.size) + mem[(32 * _2485) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        mem[(32 * _2485) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2485) + ceil32(return_data.size) + mem[(32 * _2485) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        _5516 = mem[(32 * _2485) + ceil32(return_data.size) + _5460 + 224]
        mem[(32 * _2485) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2485) + ceil32(return_data.size) + _5460 + 224])] = mem[(32 * _2485) + ceil32(return_data.size) + _5460 + 256 len floor32(mem[(32 * _2485) + ceil32(return_data.size) + _5460 + 224])]
        require 1 < mem[(32 * _2485) + (2 * ceil32(return_data.size)) + 224]
        mem[(32 * _5516) + (32 * _2485) + (2 * ceil32(return_data.size)) + 352 len 0] = None
        if _4010 > mem[(32 * _2485) + (2 * ceil32(return_data.size)) + 288]:
            return 1, Array(len=2, data=mem[(32 * _5516) + (32 * _2485) + (2 * ceil32(return_data.size)) + 352 len 64])
        return 0, 64, 2, mem[(32 * _5516) + (32 * _2485) + (2 * ceil32(return_data.size)) + 352 len 64]
    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c == arg1:
        mem[96] = 2
        mem[128] = arg1
        mem[160] = arg2
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = 64
        mem[260] = 2
        mem[292 len 64] = address(arg1), arg2
        require ext_code.size(sushiRouterAddress)
        staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=address(arg1), arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _2377 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _2487 = mem[_2377 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_2377 + 192])] = mem[_2377 + 224 len floor32(mem[_2377 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        _4012 = mem[ceil32(return_data.size) + 256]
        mem[(32 * _2487) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _2487) + ceil32(return_data.size) + 228] = arg3
        mem[(32 * _2487) + ceil32(return_data.size) + 260] = 64
        mem[(32 * _2487) + ceil32(return_data.size) + 292] = 2
        mem[(32 * _2487) + ceil32(return_data.size) + 324 len 0] = None
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(32 * _2487) + ceil32(return_data.size) + 324 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _2487) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _2487) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _5462 = mem[(32 * _2487) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _2487) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _2487) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _2487) + ceil32(return_data.size) + mem[(32 * _2487) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _2487) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2487) + ceil32(return_data.size) + mem[(32 * _2487) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        mem[(32 * _2487) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2487) + ceil32(return_data.size) + mem[(32 * _2487) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        _5517 = mem[(32 * _2487) + ceil32(return_data.size) + _5462 + 224]
        mem[(32 * _2487) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2487) + ceil32(return_data.size) + _5462 + 224])] = mem[(32 * _2487) + ceil32(return_data.size) + _5462 + 256 len floor32(mem[(32 * _2487) + ceil32(return_data.size) + _5462 + 224])]
        require 1 < mem[(32 * _2487) + (2 * ceil32(return_data.size)) + 224]
        mem[(32 * _5517) + (32 * _2487) + (2 * ceil32(return_data.size)) + 352 len 0] = None
        if _4012 > mem[(32 * _2487) + (2 * ceil32(return_data.size)) + 288]:
            return 1, Array(len=2, data=mem[(32 * _5517) + (32 * _2487) + (2 * ceil32(return_data.size)) + 352 len 64])
        return 0, 64, 2, mem[(32 * _5517) + (32 * _2487) + (2 * ceil32(return_data.size)) + 352 len 64]
    if 0xd500b1d8e8ef31e21c99d1db9a6444d3adf1270 == arg1:
        mem[160] = arg2
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = 64
        mem[260] = 2
        mem[292 len 64] = address(arg1), arg2
        require ext_code.size(sushiRouterAddress)
        staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=address(arg1), arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _2393 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _2495 = mem[_2393 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_2393 + 192])] = mem[_2393 + 224 len floor32(mem[_2393 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        _4020 = mem[ceil32(return_data.size) + 256]
        mem[(32 * _2495) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _2495) + ceil32(return_data.size) + 228] = arg3
        mem[(32 * _2495) + ceil32(return_data.size) + 260] = 64
        mem[(32 * _2495) + ceil32(return_data.size) + 292] = 2
        mem[(32 * _2495) + ceil32(return_data.size) + 324 len 0] = None
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(32 * _2495) + ceil32(return_data.size) + 324 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _2495) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _2495) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _5470 = mem[(32 * _2495) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _2495) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _2495) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _2495) + ceil32(return_data.size) + mem[(32 * _2495) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _2495) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2495) + ceil32(return_data.size) + mem[(32 * _2495) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        mem[(32 * _2495) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2495) + ceil32(return_data.size) + mem[(32 * _2495) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        _5521 = mem[(32 * _2495) + ceil32(return_data.size) + _5470 + 224]
        mem[(32 * _2495) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2495) + ceil32(return_data.size) + _5470 + 224])] = mem[(32 * _2495) + ceil32(return_data.size) + _5470 + 256 len floor32(mem[(32 * _2495) + ceil32(return_data.size) + _5470 + 224])]
        require 1 < mem[(32 * _2495) + (2 * ceil32(return_data.size)) + 224]
        mem[(32 * _5521) + (32 * _2495) + (2 * ceil32(return_data.size)) + 352 len 0] = None
        if _4020 > mem[(32 * _2495) + (2 * ceil32(return_data.size)) + 288]:
            return 1, Array(len=2, data=mem[(32 * _5521) + (32 * _2495) + (2 * ceil32(return_data.size)) + 352 len 64])
        return 0, 64, 2, mem[(32 * _5521) + (32 * _2495) + (2 * ceil32(return_data.size)) + 352 len 64]
    if arg1 != 0x7ceb23fd6bc0add59e62ac25578270cff1b9f619:
        if arg1 != 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48:
            mem[192] = arg2
            mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[228] = arg3
            mem[260] = 64
            mem[292] = 3
            mem[324 len 96] = address(arg1), 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, arg2
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=3, data=address(arg1), 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48, arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _2381 = mem[224 len 4], Mask(224, 32, arg3) >> 32
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _2489 = mem[_2381 + 224]
            mem[ceil32(return_data.size) + 256 len floor32(mem[_2381 + 224])] = mem[_2381 + 256 len floor32(mem[_2381 + 224])]
            require 2 < mem[ceil32(return_data.size) + 224]
            _4014 = mem[ceil32(return_data.size) + 320]
            mem[(32 * _2489) + ceil32(return_data.size) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2489) + ceil32(return_data.size) + 260] = arg3
            mem[(32 * _2489) + ceil32(return_data.size) + 292] = 64
            mem[(32 * _2489) + ceil32(return_data.size) + 324] = 3
            mem[(32 * _2489) + ceil32(return_data.size) + 356 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=3, data=mem[(32 * _2489) + ceil32(return_data.size) + 356 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2489) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2489) + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _5464 = mem[(32 * _2489) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _2489) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _2489) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _2489) + ceil32(return_data.size) + mem[(32 * _2489) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * _2489) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2489) + ceil32(return_data.size) + mem[(32 * _2489) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
            mem[(32 * _2489) + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _2489) + ceil32(return_data.size) + mem[(32 * _2489) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
            _5518 = mem[(32 * _2489) + ceil32(return_data.size) + _5464 + 256]
            mem[(32 * _2489) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _2489) + ceil32(return_data.size) + _5464 + 256])] = mem[(32 * _2489) + ceil32(return_data.size) + _5464 + 288 len floor32(mem[(32 * _2489) + ceil32(return_data.size) + _5464 + 256])]
            require 2 < mem[(32 * _2489) + (2 * ceil32(return_data.size)) + 256]
            mem[(32 * _5518) + (32 * _2489) + (2 * ceil32(return_data.size)) + 384 len 0] = None
            if _4014 > mem[(32 * _2489) + (2 * ceil32(return_data.size)) + 352]:
                return 1, Array(len=3, data=mem[(32 * _5518) + (32 * _2489) + (2 * ceil32(return_data.size)) + 384 len 96])
            return 0, 64, 3, mem[(32 * _5518) + (32 * _2489) + (2 * ceil32(return_data.size)) + 384 len 96]
        mem[320] = arg2
        mem[352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[356] = arg3
        mem[388] = 64
        mem[420] = 3
        mem[452 len 0] = None
        require ext_code.size(sushiRouterAddress)
        staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=3, data=mem[452 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 352
        require return_data.size >= 32
        _2385 = mem[352 len 4], Mask(224, 32, arg3) >> 32
        require mem[352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[352 len 4], Mask(224, 32, arg3) >> 32 + 352] <= 4294967296 and mem[352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[352 len 4], Mask(224, 32, arg3) >> 32 + 352]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 352] = mem[mem[352 len 4], Mask(224, 32, arg3) >> 32 + 352]
        _2491 = mem[_2385 + 352]
        mem[ceil32(return_data.size) + 384 len floor32(mem[_2385 + 352])] = mem[_2385 + 384 len floor32(mem[_2385 + 352])]
        require 2 < mem[ceil32(return_data.size) + 352]
        _4016 = mem[ceil32(return_data.size) + 448]
        mem[(32 * _2491) + ceil32(return_data.size) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _2491) + ceil32(return_data.size) + 388] = arg3
        mem[(32 * _2491) + ceil32(return_data.size) + 420] = 64
        mem[(32 * _2491) + ceil32(return_data.size) + 452] = 3
        mem[(32 * _2491) + ceil32(return_data.size) + 484 len 0] = None
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=3, data=mem[(32 * _2491) + ceil32(return_data.size) + 484 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _2491) + ceil32(return_data.size) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _2491) + (2 * ceil32(return_data.size)) + 384
        require return_data.size >= 32
        _5466 = mem[(32 * _2491) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _2491) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _2491) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _2491) + ceil32(return_data.size) + mem[(32 * _2491) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 + 384] <= 4294967296 and mem[(32 * _2491) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2491) + ceil32(return_data.size) + mem[(32 * _2491) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 + 384]) + 32 <= return_data.size
        mem[(32 * _2491) + (2 * ceil32(return_data.size)) + 384] = mem[(32 * _2491) + ceil32(return_data.size) + mem[(32 * _2491) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 + 384]
        _5519 = mem[(32 * _2491) + ceil32(return_data.size) + _5466 + 384]
        mem[(32 * _2491) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[(32 * _2491) + ceil32(return_data.size) + _5466 + 384])] = mem[(32 * _2491) + ceil32(return_data.size) + _5466 + 416 len floor32(mem[(32 * _2491) + ceil32(return_data.size) + _5466 + 384])]
        require 2 < mem[(32 * _2491) + (2 * ceil32(return_data.size)) + 384]
        mem[(32 * _5519) + (32 * _2491) + (2 * ceil32(return_data.size)) + 512 len 0] = None
        if _4016 > mem[(32 * _2491) + (2 * ceil32(return_data.size)) + 480]:
            return 1, Array(len=3, data=mem[(32 * _5519) + (32 * _2491) + (2 * ceil32(return_data.size)) + 512 len 96])
        return 0, 64, 3, mem[(32 * _5519) + (32 * _2491) + (2 * ceil32(return_data.size)) + 512 len 96]
    mem[96] = 2
    mem[128] = arg1
    mem[160] = arg2
    mem[192] = 2
    mem[224] = arg1
    mem[256] = arg2
    mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[292] = arg3
    mem[324] = 64
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(sushiRouterAddress)
    staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[388 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 288
    require return_data.size >= 32
    _2389 = mem[288 len 4], Mask(224, 32, arg3) >> 32
    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
    _2493 = mem[_2389 + 288]
    mem[ceil32(return_data.size) + 320 len floor32(mem[_2389 + 288])] = mem[_2389 + 320 len floor32(mem[_2389 + 288])]
    require 1 < mem[ceil32(return_data.size) + 288]
    _4018 = mem[ceil32(return_data.size) + 352]
    mem[(32 * _2493) + ceil32(return_data.size) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _2493) + ceil32(return_data.size) + 324] = arg3
    mem[(32 * _2493) + ceil32(return_data.size) + 356] = 64
    mem[(32 * _2493) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _2493) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(univ2Router2Address)
    staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[(32 * _2493) + ceil32(return_data.size) + 420 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _2493) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _2493) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _5468 = mem[(32 * _2493) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
    require mem[(32 * _2493) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[(32 * _2493) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[(32 * _2493) + ceil32(return_data.size) + mem[(32 * _2493) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _2493) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2493) + ceil32(return_data.size) + mem[(32 * _2493) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
    mem[(32 * _2493) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _2493) + ceil32(return_data.size) + mem[(32 * _2493) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
    _5520 = mem[(32 * _2493) + ceil32(return_data.size) + _5468 + 320]
    mem[(32 * _2493) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _2493) + ceil32(return_data.size) + _5468 + 320])] = mem[(32 * _2493) + ceil32(return_data.size) + _5468 + 352 len floor32(mem[(32 * _2493) + ceil32(return_data.size) + _5468 + 320])]
    require 1 < mem[(32 * _2493) + (2 * ceil32(return_data.size)) + 320]
    mem[(32 * _5520) + (32 * _2493) + (2 * ceil32(return_data.size)) + 448 len 0] = None
    if _4018 > mem[(32 * _2493) + (2 * ceil32(return_data.size)) + 384]:
        return 1, Array(len=2, data=mem[(32 * _5520) + (32 * _2493) + (2 * ceil32(return_data.size)) + 448 len 64])
    return 0, 64, 2, mem[(32 * _5520) + (32 * _2493) + (2 * ceil32(return_data.size)) + 448 len 64]
}



}
