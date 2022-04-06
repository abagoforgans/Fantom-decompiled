contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, address arg2)
#
const devFundMax = 100000

const treasuryMax = 100000

const getName = 'StrategyIceV1'

const weth = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2

const performanceMax = 100000

const usdcBuyback = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48

const sub_c32b2b51(?) = 0xe41d2489571d322189246dafa5ebde1f4699f498

const sub_ce884d32(?) = 0xf16e81dce15b08f326220742020379b855b87df9

const WFTM = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83


mapping of uint8 stor0;
uint256 performanceFee;
uint256 treasuryFee;
uint256 devFundFee;
uint256 sub_5d158350;
uint256 sub_14b74d9a;
uint256 sub_7b756553;
uint8 stor7;
address mmTokenAddress; offset 8
uint32 stor8;
address masterChefAddress;
uint256 stor8;
address crvAddress;
address wantAddress;
address governanceAddress;
uint32 stor12;
address controllerAddress;
uint256 stor12;
address strategistAddress;
address timelockAddress;
address univ2Router2Address;
address sushiRouterAddress;
address sub_2d63d99eAddress;
address iceAddress;

function sub_14b74d9a(?) {
    return sub_14b74d9a
}

function buybackEnabled() {
    return bool(stor7)
}

function want() {
    return wantAddress
}

function strategist() {
    return strategistAddress
}

function sub_2d63d99e(?) {
    return sub_2d63d99eAddress
}

function whiteList(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function ice() {
    return iceAddress
}

function masterChef() {
    return address(masterChefAddress)
}

function governance() {
    return governanceAddress
}

function sub_5d158350(?) {
    return sub_5d158350
}

function crv() {
    return crvAddress
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

function controller() {
    return address(controllerAddress)
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

function setBuybackEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor7 = uint8(arg1)
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

function setController(address arg1) {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    address(controllerAddress) = arg1
}

function setMasterChef(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    address(masterChefAddress) = arg1
}

function setWhiteList(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor0[address(arg1)] = uint8(arg2)
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

function balanceOfPool() {
    require ext_code.size(sub_2d63d99eAddress)
    staticcall sub_2d63d99eAddress.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[0]
}

function getHarvestable() {
    require ext_code.size(sub_2d63d99eAddress)
    staticcall sub_2d63d99eAddress.pendingIce(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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
        require ext_code.size(sub_2d63d99eAddress)
        call sub_2d63d99eAddress.deposit(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    if wantAddress == arg1:
        revert with 0, 'want'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor12)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor12):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    return ext_call.return_data[0]
}

function withdrawAll() {
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    require ext_code.size(sub_2d63d99eAddress)
    staticcall sub_2d63d99eAddress.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_2d63d99eAddress)
    call sub_2d63d99eAddress.withdraw(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(controllerAddress))
    staticcall address(controllerAddress).0xa622ee7c with:
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
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    return ext_call.return_data[0]
}

function balanceOf() {
    if sub_5d158350 <= 0:
        require ext_code.size(sub_2d63d99eAddress)
        staticcall sub_2d63d99eAddress.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
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
        require ext_code.size(sub_2d63d99eAddress)
        staticcall sub_2d63d99eAddress.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
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
        require ext_code.size(sub_2d63d99eAddress)
        staticcall sub_2d63d99eAddress.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
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
        require ext_code.size(sub_2d63d99eAddress)
        staticcall sub_2d63d99eAddress.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
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
        require ext_code.size(sub_2d63d99eAddress)
        staticcall sub_2d63d99eAddress.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args 0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
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
    require ext_code.size(sub_2d63d99eAddress)
    staticcall sub_2d63d99eAddress.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
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

function harvest() {
    if tx.origin == msg.sender:
        require ext_code.size(sub_2d63d99eAddress)
        call sub_2d63d99eAddress.withdraw(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0]:
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).0x61d027b3 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[388 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args 0, mem[452 len 4]
                else:
                    if performanceFee * ext_call.return_data[0] / ext_call.return_data[0] != performanceFee:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[388 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) >> 32
                    call wantAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) << 224, mem[452 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[420]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 499 len 22]
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_7b756553 = ext_call.return_data[0]
                sub_14b74d9a = block.number
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(sub_2d63d99eAddress)
                    call sub_2d63d99eAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            if performanceFee * ext_call.return_data[0] / ext_call.return_data[0] != performanceFee:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            mem[96] = 26
            mem[128] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if bool(stor7) != 1:
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).0x61d027b3 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[388 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, 0
                        call wantAddress with:
                             gas gas_remaining wei
                            args 0, mem[452 len 4]
                    else:
                        if performanceFee * ext_call.return_data[0] / ext_call.return_data[0] != performanceFee:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[388 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) >> 32
                        call wantAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) << 224, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 499 len 22]
                else:
                    if performanceFee * ext_call.return_data[0] / 100000 <= 0:
                        require ext_code.size(address(controllerAddress))
                        staticcall address(controllerAddress).0x61d027b3 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[388 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, 0
                            call wantAddress with:
                                 gas gas_remaining wei
                                args 0, mem[452 len 4]
                        else:
                            if performanceFee * ext_call.return_data[0] / ext_call.return_data[0] != performanceFee:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[388 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) >> 32
                            call wantAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                    else:
                        if 1 == bool(stor7):
                            require mmTokenAddress
                            if not performanceFee * ext_call.return_data[0] / 100000:
                                require ext_code.size(mmTokenAddress)
                                staticcall mmTokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mmTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(mmTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
                                call mmTokenAddress with:
                                   funct uint32(stor8)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[356]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 435 len 22]
                            else:
                                mem[160] = 3
                                mem[192] = iceAddress
                                mem[224] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                mem[256] = mmTokenAddress
                                mem[288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[292] = performanceFee * ext_call.return_data[0] / 100000
                                mem[324] = 0
                                mem[388] = this.address
                                mem[420] = block.timestamp
                                mem[356] = 160
                                mem[452] = 3
                                mem[484 len 0] = None
                                require ext_code.size(sushiRouterAddress)
                                call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args performanceFee * ext_call.return_data[0] / 100000, 0, 160, this.address, block.timestamp, 3, mem[484 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 288
                                require return_data.size >= 32
                                _3914 = mem[288 len 4], Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) >> 32
                                require mem[288 len 4], Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) >> 32 <= 4294967296
                                require mem[288 len 4], Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) >> 32 + 32 <= return_data.size
                                require mem[mem[288 len 4], Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) >> 32 + 288]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) >> 32 + 288]
                                _4203 = mem[_3914 + 288]
                                mem[ceil32(return_data.size) + 320 len floor32(mem[_3914 + 288])] = mem[_3914 + 320 len floor32(mem[_3914 + 288])]
                                require ext_code.size(mmTokenAddress)
                                staticcall mmTokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mmTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(mmTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(32 * _4203) + ceil32(return_data.size) + 484 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
                                call mmTokenAddress with:
                                   funct uint32(stor8)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _4203) + ceil32(return_data.size) + 548 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[(32 * _4203) + ceil32(return_data.size) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _4203) + ceil32(return_data.size) + 516]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _4203) + ceil32(return_data.size) + ceil32(return_data.size) + 595 len 22]
                            require ext_code.size(address(masterChefAddress))
                            call address(masterChefAddress).notifyBuybackReward(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                if performanceFee * ext_call.return_data[0] / 100000 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_7b756553 = ext_call.return_data[0] - (performanceFee * ext_call.return_data[0] / 100000)
                sub_14b74d9a = block.number
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(sub_2d63d99eAddress)
                    call sub_2d63d99eAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    else:
        if msg.sender == governanceAddress:
            require ext_code.size(sub_2d63d99eAddress)
            call sub_2d63d99eAddress.withdraw(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if ext_call.return_data[0]:
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).0x61d027b3 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[388 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, 0
                        call wantAddress with:
                             gas gas_remaining wei
                            args 0, mem[452 len 4]
                    else:
                        if performanceFee * ext_call.return_data[0] / ext_call.return_data[0] != performanceFee:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[388 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) >> 32
                        call wantAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) << 224, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 499 len 22]
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_7b756553 = ext_call.return_data[0]
                    sub_14b74d9a = block.number
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(sub_2d63d99eAddress)
                        call sub_2d63d99eAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                if performanceFee * ext_call.return_data[0] / ext_call.return_data[0] != performanceFee:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                mem[96] = 26
                mem[128] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if bool(stor7) != 1:
                        require ext_code.size(address(controllerAddress))
                        staticcall address(controllerAddress).0x61d027b3 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[388 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, 0
                            call wantAddress with:
                                 gas gas_remaining wei
                                args 0, mem[452 len 4]
                        else:
                            if performanceFee * ext_call.return_data[0] / ext_call.return_data[0] != performanceFee:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[388 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) >> 32
                            call wantAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                    else:
                        if performanceFee * ext_call.return_data[0] / 100000 <= 0:
                            require ext_code.size(address(controllerAddress))
                            staticcall address(controllerAddress).0x61d027b3 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[388 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, 0
                                call wantAddress with:
                                     gas gas_remaining wei
                                    args 0, mem[452 len 4]
                            else:
                                if performanceFee * ext_call.return_data[0] / ext_call.return_data[0] != performanceFee:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[388 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) >> 32
                                call wantAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) << 224, mem[452 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 499 len 22]
                        else:
                            if 1 == bool(stor7):
                                require mmTokenAddress
                                if not performanceFee * ext_call.return_data[0] / 100000:
                                    require ext_code.size(mmTokenAddress)
                                    staticcall mmTokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mmTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(mmTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
                                    call mmTokenAddress with:
                                       funct uint32(stor8)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[356]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 435 len 22]
                                else:
                                    mem[160] = 3
                                    mem[192] = iceAddress
                                    mem[224] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                    mem[256] = mmTokenAddress
                                    mem[288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[292] = performanceFee * ext_call.return_data[0] / 100000
                                    mem[324] = 0
                                    mem[388] = this.address
                                    mem[420] = block.timestamp
                                    mem[356] = 160
                                    mem[452] = 3
                                    mem[484 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args performanceFee * ext_call.return_data[0] / 100000, 0, 160, this.address, block.timestamp, 3, mem[484 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(return_data.size) + 288
                                    require return_data.size >= 32
                                    _3934 = mem[288 len 4], Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) >> 32
                                    require mem[288 len 4], Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) >> 32 <= 4294967296
                                    require mem[288 len 4], Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) >> 32 + 32 <= return_data.size
                                    require mem[mem[288 len 4], Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) >> 32 + 288]) + 32 <= return_data.size
                                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) >> 32 + 288]
                                    _4240 = mem[_3934 + 288]
                                    mem[ceil32(return_data.size) + 320 len floor32(mem[_3934 + 288])] = mem[_3934 + 320 len floor32(mem[_3934 + 288])]
                                    require ext_code.size(mmTokenAddress)
                                    staticcall mmTokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mmTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(mmTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[(32 * _4240) + ceil32(return_data.size) + 484 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
                                    call mmTokenAddress with:
                                       funct uint32(stor8)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _4240) + ceil32(return_data.size) + 548 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[(32 * _4240) + ceil32(return_data.size) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[(32 * _4240) + ceil32(return_data.size) + 516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _4240) + ceil32(return_data.size) + ceil32(return_data.size) + 595 len 22]
                                require ext_code.size(address(masterChefAddress))
                                call address(masterChefAddress).notifyBuybackReward(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    if performanceFee * ext_call.return_data[0] / 100000 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_7b756553 = ext_call.return_data[0] - (performanceFee * ext_call.return_data[0] / 100000)
                    sub_14b74d9a = block.number
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(sub_2d63d99eAddress)
                        call sub_2d63d99eAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        else:
            require msg.sender == strategistAddress
            require ext_code.size(sub_2d63d99eAddress)
            call sub_2d63d99eAddress.withdraw(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if ext_call.return_data[0]:
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).0x61d027b3 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[388 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, 0
                        call wantAddress with:
                             gas gas_remaining wei
                            args 0, mem[452 len 4]
                    else:
                        if performanceFee * ext_call.return_data[0] / ext_call.return_data[0] != performanceFee:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[388 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) >> 32
                        call wantAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) << 224, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 499 len 22]
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_7b756553 = ext_call.return_data[0]
                    sub_14b74d9a = block.number
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(sub_2d63d99eAddress)
                        call sub_2d63d99eAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                if performanceFee * ext_call.return_data[0] / ext_call.return_data[0] != performanceFee:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                mem[96] = 26
                mem[128] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if bool(stor7) != 1:
                        require ext_code.size(address(controllerAddress))
                        staticcall address(controllerAddress).0x61d027b3 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[388 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, 0
                            call wantAddress with:
                                 gas gas_remaining wei
                                args 0, mem[452 len 4]
                        else:
                            if performanceFee * ext_call.return_data[0] / ext_call.return_data[0] != performanceFee:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[388 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) >> 32
                            call wantAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                    else:
                        if performanceFee * ext_call.return_data[0] / 100000 <= 0:
                            require ext_code.size(address(controllerAddress))
                            staticcall address(controllerAddress).0x61d027b3 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[388 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, 0
                                call wantAddress with:
                                     gas gas_remaining wei
                                    args 0, mem[452 len 4]
                            else:
                                if performanceFee * ext_call.return_data[0] / ext_call.return_data[0] != performanceFee:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[388 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) >> 32
                                call wantAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) << 224, mem[452 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 499 len 22]
                        else:
                            if 1 == bool(stor7):
                                require mmTokenAddress
                                if not performanceFee * ext_call.return_data[0] / 100000:
                                    require ext_code.size(mmTokenAddress)
                                    staticcall mmTokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mmTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(mmTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
                                    call mmTokenAddress with:
                                       funct uint32(stor8)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[356]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 435 len 22]
                                else:
                                    mem[160] = 3
                                    mem[192] = iceAddress
                                    mem[224] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                    mem[256] = mmTokenAddress
                                    mem[288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[292] = performanceFee * ext_call.return_data[0] / 100000
                                    mem[324] = 0
                                    mem[388] = this.address
                                    mem[420] = block.timestamp
                                    mem[356] = 160
                                    mem[452] = 3
                                    mem[484 len 0] = None
                                    require ext_code.size(sushiRouterAddress)
                                    call sushiRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args performanceFee * ext_call.return_data[0] / 100000, 0, 160, this.address, block.timestamp, 3, mem[484 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(return_data.size) + 288
                                    require return_data.size >= 32
                                    _3954 = mem[288 len 4], Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) >> 32
                                    require mem[288 len 4], Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) >> 32 <= 4294967296
                                    require mem[288 len 4], Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) >> 32 + 32 <= return_data.size
                                    require mem[mem[288 len 4], Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) >> 32 + 288]) + 32 <= return_data.size
                                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, performanceFee * ext_call.return_data[0] / 100000) >> 32 + 288]
                                    _4277 = mem[_3954 + 288]
                                    mem[ceil32(return_data.size) + 320 len floor32(mem[_3954 + 288])] = mem[_3954 + 320 len floor32(mem[_3954 + 288])]
                                    require ext_code.size(mmTokenAddress)
                                    staticcall mmTokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mmTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(mmTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[(32 * _4277) + ceil32(return_data.size) + 484 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
                                    call mmTokenAddress with:
                                       funct uint32(stor8)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _4277) + ceil32(return_data.size) + 548 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[(32 * _4277) + ceil32(return_data.size) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[(32 * _4277) + ceil32(return_data.size) + 516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(32 * _4277) + ceil32(return_data.size) + ceil32(return_data.size) + 595 len 22]
                                require ext_code.size(address(masterChefAddress))
                                call address(masterChefAddress).notifyBuybackReward(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    if performanceFee * ext_call.return_data[0] / 100000 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_7b756553 = ext_call.return_data[0] - (performanceFee * ext_call.return_data[0] / 100000)
                    sub_14b74d9a = block.number
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(sub_2d63d99eAddress)
                        call sub_2d63d99eAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}



}
